[translated]
module main


[typedef]
struct C.FILE {}


// vstart

[c:'FixedMul']
fn fixedmul(a int, b int) int


const ( // empty enum
)

[c:'R_PointToAngle']
fn r_pointtoangle(x int, y int) Angle_t

[c:'R_PointToAngle2']
fn r_pointtoangle2(x1 int, y1 int, x2 int, y2 int) Angle_t

[c:'P_MovePsprites']
fn p_movepsprites(curplayer &Player_t) 

[c:'P_PlayerThink']
fn p_playerthink(player &Player_t) 

[c:'P_SetMobjState']
fn p_setmobjstate(mobj &Mobj_t, state Statenum_t) bool

[c:'P_UseLines']
fn p_uselines(player &Player_t) 

[c:'P_PlayerInSpecialSector']
fn p_playerinspecialsector(player &Player_t) 

[weak]__global ( onground bool 

)

[c:'P_Thrust']
fn p_thrust(player &Player_t, angle Angle_t, move int)  {
	angle >>= 19
	player.mo.momx += fixedmul(move, finecosine [angle] )
	player.mo.momy += fixedmul(move, finesine [angle] )
}

[c:'P_CalcHeight']
fn p_calcheight(player &Player_t)  {
	angle := 0
	bob := 0
	player.bob = fixedmul(player.mo.momx, player.mo.momx) + fixedmul(player.mo.momy, player.mo.momy)
	player.bob >>= 2
	if player.bob > 1048576 {
	player.bob = 1048576
	}
	if (player.cheats & Cheat_t.cf_nomomentum) || !onground {
		player.viewz = player.mo.z + (41 * (1 << 16))
		if player.viewz > player.mo.ceilingz - 4 * (1 << 16) {
		player.viewz = player.mo.ceilingz - 4 * (1 << 16)
		}
		player.viewz = player.mo.z + player.viewheight
		return 
	}
	angle = (8192 / 20 * leveltime) & (8192 - 1)
	bob = fixedmul(player.bob / 2, finesine [angle] )
	if player.playerstate == Playerstate_t.pst_live {
		player.viewheight += player.deltaviewheight
		if player.viewheight > (41 * (1 << 16)) {
			player.viewheight = (41 * (1 << 16))
			player.deltaviewheight = 0
		}
		if player.viewheight < (41 * (1 << 16)) / 2 {
			player.viewheight = (41 * (1 << 16)) / 2
			if player.deltaviewheight <= 0 {
			player.deltaviewheight = 1
			}
		}
		if player.deltaviewheight {
			player.deltaviewheight += (1 << 16) / 4
			if !player.deltaviewheight {
			player.deltaviewheight = 1
			}
		}
	}
	player.viewz = player.mo.z + player.viewheight + bob
	if player.viewz > player.mo.ceilingz - 4 * (1 << 16) {
	player.viewz = player.mo.ceilingz - 4 * (1 << 16)
	}
}

[c:'P_MovePlayer']
fn p_moveplayer(player &Player_t)  {
	cmd := &Ticcmd_t(0)
	cmd = &player.cmd
	player.mo.angle += (cmd.angleturn << 16)
	onground = (player.mo.z <= player.mo.floorz)
	if cmd.forwardmove && onground {
	p_thrust(player, player.mo.angle, cmd.forwardmove * 2048)
	}
	if cmd.sidemove && onground {
	p_thrust(player, player.mo.angle - 1073741824, cmd.sidemove * 2048)
	}
	if (cmd.forwardmove || cmd.sidemove) && player.mo.state == &states [int(Statenum_t.s_play)]  {
		p_setmobjstate(player.mo, Statenum_t.s_play_run1)
	}
}

[c:'P_DeathThink']
fn p_deaththink(player &Player_t)  {
	angle := u32(0)
	delta := u32(0)
	p_movepsprites(player)
	if player.viewheight > 6 * (1 << 16) {
	player.viewheight -= (1 << 16)
	}
	if player.viewheight < 6 * (1 << 16) {
	player.viewheight = 6 * (1 << 16)
	}
	player.deltaviewheight = 0
	onground = (player.mo.z <= player.mo.floorz)
	p_calcheight(player)
	if player.attacker && player.attacker != player.mo {
		angle = r_pointtoangle2(player.mo.x, player.mo.y, player.attacker.x, player.attacker.y)
		delta = angle - player.mo.angle
		if delta < (1073741824 / 18) || delta > u32(-(1073741824 / 18)) {
			player.mo.angle = angle
			if player.damagecount {
			player.damagecount --
			}
		}
		else if delta < 2147483648 {
		player.mo.angle += (1073741824 / 18)
		}
		else { // 3
		player.mo.angle -= (1073741824 / 18)
}
	}
	else if player.damagecount {
	player.damagecount --
	}
	if player.cmd.buttons & Buttoncode_t.bt_use {
	player.playerstate = Playerstate_t.pst_reborn
	}
}

[c:'P_PlayerThink']
fn p_playerthink(player &Player_t)  {
	cmd := &Ticcmd_t(0)
	newweapon := Weapontype_t{}
	if player.cheats & Cheat_t.cf_noclip {
	player.mo.flags |= Mobjflag_t.mf_noclip
	}
	else { // 3
	player.mo.flags &= ~Mobjflag_t.mf_noclip
}
	cmd = &player.cmd
	if player.mo.flags & Mobjflag_t.mf_justattacked {
		cmd.angleturn = 0
		cmd.forwardmove = 51200 / 512
		cmd.sidemove = 0
		player.mo.flags &= ~Mobjflag_t.mf_justattacked
	}
	if player.playerstate == Playerstate_t.pst_dead {
		p_deaththink(player)
		return 
	}
	if player.mo.reactiontime {
	player.mo.reactiontime --
	}
	else { // 3
	p_moveplayer(player)
}
	p_calcheight(player)
	if player.mo.subsector.sector.special {
	p_playerinspecialsector(player)
	}
	if cmd.buttons & Buttoncode_t.bt_special {
	cmd.buttons = 0
	}
	if cmd.buttons & Buttoncode_t.bt_change {
		newweapon = (cmd.buttons & Buttoncode_t.bt_weaponmask) >> Buttoncode_t.bt_weaponshift
		if newweapon == Weapontype_t.wp_fist && player.weaponowned [int(Weapontype_t.wp_chainsaw)]  && !(player.readyweapon == Weapontype_t.wp_chainsaw && player.powers [int(Powertype_t.pw_strength)] ) {
			newweapon = Weapontype_t.wp_chainsaw
		}
		if (gamemode == GameMode_t.commercial) && newweapon == Weapontype_t.wp_shotgun && player.weaponowned [int(Weapontype_t.wp_supershotgun)]  && player.readyweapon != Weapontype_t.wp_supershotgun {
			newweapon = Weapontype_t.wp_supershotgun
		}
		if player.weaponowned [newweapon]  && newweapon != player.readyweapon {
			if (newweapon != Weapontype_t.wp_plasma && newweapon != Weapontype_t.wp_bfg) || (gamemode != GameMode_t.shareware) {
				player.pendingweapon = newweapon
			}
		}
	}
	if cmd.buttons & Buttoncode_t.bt_use {
		if !player.usedown {
			p_uselines(player)
			player.usedown = true
		}
	}
	else { // 3
	player.usedown = false
}
	p_movepsprites(player)
	if player.powers [int(Powertype_t.pw_strength)]  {
	player.powers [int(Powertype_t.pw_strength)]  ++
	}
	if player.powers [int(Powertype_t.pw_invulnerability)]  {
	player.powers [int(Powertype_t.pw_invulnerability)]  --
	}
	if player.powers [int(Powertype_t.pw_invisibility)]  {
	if !player.powers [int(Powertype_t.pw_invisibility)]  -- {
	player.mo.flags &= ~Mobjflag_t.mf_shadow
	}
	}
	if player.powers [int(Powertype_t.pw_infrared)]  {
	player.powers [int(Powertype_t.pw_infrared)]  --
	}
	if player.powers [int(Powertype_t.pw_ironfeet)]  {
	player.powers [int(Powertype_t.pw_ironfeet)]  --
	}
	if player.damagecount {
	player.damagecount --
	}
	if player.bonuscount {
	player.bonuscount --
	}
	if player.powers [int(Powertype_t.pw_invulnerability)]  {
		if player.powers [int(Powertype_t.pw_invulnerability)]  > 4 * 32 || (player.powers [int(Powertype_t.pw_invulnerability)]  & 8) {
		player.fixedcolormap = 32
		}
		else { // 3
		player.fixedcolormap = 0
}
	}
	else if player.powers [int(Powertype_t.pw_infrared)]  {
		if player.powers [int(Powertype_t.pw_infrared)]  > 4 * 32 || (player.powers [int(Powertype_t.pw_infrared)]  & 8) {
			player.fixedcolormap = 1
		}
		else { // 3
		player.fixedcolormap = 0
}
	}
	else { // 3
	player.fixedcolormap = 0
}
}

