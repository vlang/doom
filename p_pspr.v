[translated]
module main


[typedef]
struct C.FILE {}


// vstart

[c:'P_Random']
fn p_random() int

[c:'P_SubRandom']
fn p_subrandom() int

[c:'FixedMul']
fn fixedmul(a int, b int) int


const ( // empty enum
)

[c:'R_PointToAngle']
fn r_pointtoangle(x int, y int) Angle_t

[c:'R_PointToAngle2']
fn r_pointtoangle2(x1 int, y1 int, x2 int, y2 int) Angle_t

[c:'P_SetupPsprites']
fn p_setuppsprites(curplayer &Player_t) 

[c:'P_MovePsprites']
fn p_movepsprites(curplayer &Player_t) 

[c:'P_DropWeapon']
fn p_dropweapon(player &Player_t) 

[c:'P_SpawnMobj']
fn p_spawnmobj(x int, y int, z int, type_ Mobjtype_t) &Mobj_t

[c:'P_SetMobjState']
fn p_setmobjstate(mobj &Mobj_t, state Statenum_t) bool

[c:'P_SpawnPlayerMissile']
fn p_spawnplayermissile(source &Mobj_t, type_ Mobjtype_t) 

[c:'P_NoiseAlert']
fn p_noisealert(target &Mobj_t, emmiter &Mobj_t) 

[c:'P_AimLineAttack']
fn p_aimlineattack(t1 &Mobj_t, angle Angle_t, distance int) int

[c:'P_LineAttack']
fn p_lineattack(t1 &Mobj_t, angle Angle_t, distance int, slope int, damage int) 

[c:'P_DamageMobj']
fn p_damagemobj(target &Mobj_t, inflictor &Mobj_t, source &Mobj_t, damage int) 

[c:'S_Start']
fn s_start() 

[c:'S_StartSound']
fn s_startsound(origin voidptr, sound_id int) 

[c:'P_SetPsprite']
fn p_setpsprite(player &Player_t, position int, stnum Statenum_t)  {
	psp := &Pspdef_t(0)
	state := &State_t(0)
	psp = &player.psprites [position] 
	for {
	if !stnum {
		psp.state = (voidptr(0))
		break
		
	}
	state = &states [stnum] 
	psp.state = state
	psp.tics = state.tics
	if state.misc1 {
		psp.sx = state.misc1 << 16
		psp.sy = state.misc2 << 16
	}
	if state.action.acp2 {
		state.action.acp2(player, psp)
		if !psp.state {
		break
		
		}
	}
	stnum = psp.state.nextstate
	// while()
	if ! (!psp.tics ) { break }
	}
}

[weak]__global ( swingx int 

)

[weak]__global ( swingy int 

)

[c:'P_CalcSwing']
fn p_calcswing(player &Player_t)  {
	swing := 0
	angle := 0
	swing = player.bob
	angle = (8192 / 70 * leveltime) & (8192 - 1)
	swingx = fixedmul(swing, finesine [angle] )
	angle = (8192 / 70 * leveltime + 8192 / 2) & (8192 - 1)
	swingy = -fixedmul(swingx, finesine [angle] )
}

[c:'P_BringUpWeapon']
fn p_bringupweapon(player &Player_t)  {
	newstate := Statenum_t{}
	if player.pendingweapon == Weapontype_t.wp_nochange {
	player.pendingweapon = player.readyweapon
	}
	if player.pendingweapon == Weapontype_t.wp_chainsaw {
	s_startsound(player.mo, Sfxenum_t.sfx_sawup)
	}
	newstate = weaponinfo [player.pendingweapon] .upstate
	player.pendingweapon = Weapontype_t.wp_nochange
	player.psprites [int(Psprnum_t.ps_weapon)] .sy = 128 * (1 << 16)
	p_setpsprite(player, Psprnum_t.ps_weapon, newstate)
}

[c:'P_CheckAmmo']
fn p_checkammo(player &Player_t) bool {
	ammo := Ammotype_t{}
	count := 0
	ammo = weaponinfo [player.readyweapon] .ammo
	if player.readyweapon == Weapontype_t.wp_bfg {
	count = deh_bfg_cells_per_shot
	}
	else if player.readyweapon == Weapontype_t.wp_supershotgun {
	count = 2
	}
	else { // 3
	count = 1
}
	if ammo == Ammotype_t.am_noammo || player.ammo [ammo]  >= count {
	return true
	}
	for {
	if player.weaponowned [int(Weapontype_t.wp_plasma)]  && player.ammo [int(Ammotype_t.am_cell)]  && (gamemode != GameMode_t.shareware) {
		player.pendingweapon = Weapontype_t.wp_plasma
	}
	else if player.weaponowned [int(Weapontype_t.wp_supershotgun)]  && player.ammo [int(Ammotype_t.am_shell)]  > 2 && (gamemode == GameMode_t.commercial) {
		player.pendingweapon = Weapontype_t.wp_supershotgun
	}
	else if player.weaponowned [int(Weapontype_t.wp_chaingun)]  && player.ammo [int(Ammotype_t.am_clip)]  {
		player.pendingweapon = Weapontype_t.wp_chaingun
	}
	else if player.weaponowned [int(Weapontype_t.wp_shotgun)]  && player.ammo [int(Ammotype_t.am_shell)]  {
		player.pendingweapon = Weapontype_t.wp_shotgun
	}
	else if player.ammo [int(Ammotype_t.am_clip)]  {
		player.pendingweapon = Weapontype_t.wp_pistol
	}
	else if player.weaponowned [int(Weapontype_t.wp_chainsaw)]  {
		player.pendingweapon = Weapontype_t.wp_chainsaw
	}
	else if player.weaponowned [int(Weapontype_t.wp_missile)]  && player.ammo [int(Ammotype_t.am_misl)]  {
		player.pendingweapon = Weapontype_t.wp_missile
	}
	else if player.weaponowned [int(Weapontype_t.wp_bfg)]  && player.ammo [int(Ammotype_t.am_cell)]  > 40 && (gamemode != GameMode_t.shareware) {
		player.pendingweapon = Weapontype_t.wp_bfg
	}
	else {
		player.pendingweapon = Weapontype_t.wp_fist
	}
	// while()
	if ! (player.pendingweapon == Weapontype_t.wp_nochange ) { break }
	}
	p_setpsprite(player, Psprnum_t.ps_weapon, weaponinfo [player.readyweapon] .downstate)
	return false
}

[c:'P_FireWeapon']
fn p_fireweapon(player &Player_t)  {
	newstate := Statenum_t{}
	if !p_checkammo(player) {
	return 
	}
	p_setmobjstate(player.mo, Statenum_t.s_play_atk1)
	newstate = weaponinfo [player.readyweapon] .atkstate
	p_setpsprite(player, Psprnum_t.ps_weapon, newstate)
	p_noisealert(player.mo, player.mo)
}

[c:'P_DropWeapon']
fn p_dropweapon(player &Player_t)  {
	p_setpsprite(player, Psprnum_t.ps_weapon, weaponinfo [player.readyweapon] .downstate)
}

[c:'A_WeaponReady']
fn a_weaponready(player &Player_t, psp &Pspdef_t)  {
	newstate := Statenum_t{}
	angle := 0
	if player.mo.state == &states [int(Statenum_t.s_play_atk1)]  || player.mo.state == &states [int(Statenum_t.s_play_atk2)]  {
		p_setmobjstate(player.mo, Statenum_t.s_play)
	}
	if player.readyweapon == Weapontype_t.wp_chainsaw && psp.state == &states [int(Statenum_t.s_saw)]  {
		s_startsound(player.mo, Sfxenum_t.sfx_sawidl)
	}
	if player.pendingweapon != Weapontype_t.wp_nochange || !player.health {
		newstate = weaponinfo [player.readyweapon] .downstate
		p_setpsprite(player, Psprnum_t.ps_weapon, newstate)
		return 
	}
	if player.cmd.buttons & Buttoncode_t.bt_attack {
		if !player.attackdown || (player.readyweapon != Weapontype_t.wp_missile && player.readyweapon != Weapontype_t.wp_bfg) {
			player.attackdown = true
			p_fireweapon(player)
			return 
		}
	}
	else { // 3
	player.attackdown = false
}
	angle = (128 * leveltime) & (8192 - 1)
	psp.sx = (1 << 16) + fixedmul(player.bob, finecosine [angle] )
	angle &= 8192 / 2 - 1
	psp.sy = 32 * (1 << 16) + fixedmul(player.bob, finesine [angle] )
}

[c:'A_ReFire']
fn a_refire(player &Player_t, psp &Pspdef_t)  {
	if (player.cmd.buttons & Buttoncode_t.bt_attack) && player.pendingweapon == Weapontype_t.wp_nochange && player.health {
		player.refire ++
		p_fireweapon(player)
	}
	else {
		player.refire = 0
		p_checkammo(player)
	}
}

[c:'A_CheckReload']
fn a_checkreload(player &Player_t, psp &Pspdef_t)  {
	p_checkammo(player)
}

[c:'A_Lower']
fn a_lower(player &Player_t, psp &Pspdef_t)  {
	psp.sy += (1 << 16) * 6
	if psp.sy < 128 * (1 << 16) {
	return 
	}
	if player.playerstate == Playerstate_t.pst_dead {
		psp.sy = 128 * (1 << 16)
		return 
	}
	if !player.health {
		p_setpsprite(player, Psprnum_t.ps_weapon, Statenum_t.s_null)
		return 
	}
	player.readyweapon = player.pendingweapon
	p_bringupweapon(player)
}

[c:'A_Raise']
fn a_raise(player &Player_t, psp &Pspdef_t)  {
	newstate := Statenum_t{}
	psp.sy -= (1 << 16) * 6
	if psp.sy > 32 * (1 << 16) {
	return 
	}
	psp.sy = 32 * (1 << 16)
	newstate = weaponinfo [player.readyweapon] .readystate
	p_setpsprite(player, Psprnum_t.ps_weapon, newstate)
}

[c:'A_GunFlash']
fn a_gunflash(player &Player_t, psp &Pspdef_t)  {
	p_setmobjstate(player.mo, Statenum_t.s_play_atk2)
	p_setpsprite(player, Psprnum_t.ps_flash, weaponinfo [player.readyweapon] .flashstate)
}

[c:'A_Punch']
fn a_punch(player &Player_t, psp &Pspdef_t)  {
	angle := u32(0)
	damage := 0
	slope := 0
	damage = (p_random() % 10 + 1) << 1
	if player.powers [int(Powertype_t.pw_strength)]  {
	damage *= 10
	}
	angle = player.mo.angle
	angle += p_subrandom() << 18
	slope = p_aimlineattack(player.mo, angle, (64 * (1 << 16)))
	p_lineattack(player.mo, angle, (64 * (1 << 16)), slope, damage)
	if linetarget {
		s_startsound(player.mo, Sfxenum_t.sfx_punch)
		player.mo.angle = r_pointtoangle2(player.mo.x, player.mo.y, linetarget.x, linetarget.y)
	}
}

[c:'A_Saw']
fn a_saw(player &Player_t, psp &Pspdef_t)  {
	angle := u32(0)
	damage := 0
	slope := 0
	damage = 2 * (p_random() % 10 + 1)
	angle = player.mo.angle
	angle += p_subrandom() << 18
	slope = p_aimlineattack(player.mo, angle, (64 * (1 << 16)) + 1)
	p_lineattack(player.mo, angle, (64 * (1 << 16)) + 1, slope, damage)
	if !linetarget {
		s_startsound(player.mo, Sfxenum_t.sfx_sawful)
		return 
	}
	s_startsound(player.mo, Sfxenum_t.sfx_sawhit)
	angle = r_pointtoangle2(player.mo.x, player.mo.y, linetarget.x, linetarget.y)
	if angle - player.mo.angle > 2147483648 {
		if int((angle - player.mo.angle)) < -1073741824 / 20 {
		player.mo.angle = angle + 1073741824 / 21
		}
		else { // 3
		player.mo.angle -= 1073741824 / 20
}
	}
	else {
		if angle - player.mo.angle > 1073741824 / 20 {
		player.mo.angle = angle - 1073741824 / 21
		}
		else { // 3
		player.mo.angle += 1073741824 / 20
}
	}
	player.mo.flags |= Mobjflag_t.mf_justattacked
}

[c:'DecreaseAmmo']
fn decreaseammo(player &Player_t, ammonum int, amount int)  {
	if ammonum < Ammotype_t.numammo {
		player.ammo [ammonum]  -= amount
	}
	else {
		player.maxammo [ammonum - int(Ammotype_t.numammo)]  -= amount
	}
}

[c:'A_FireMissile']
fn a_firemissile(player &Player_t, psp &Pspdef_t)  {
	decreaseammo(player, weaponinfo [player.readyweapon] .ammo, 1)
	p_spawnplayermissile(player.mo, Mobjtype_t.mt_rocket)
}

[c:'A_FireBFG']
fn a_firebfg(player &Player_t, psp &Pspdef_t)  {
	decreaseammo(player, weaponinfo [player.readyweapon] .ammo, deh_bfg_cells_per_shot)
	p_spawnplayermissile(player.mo, Mobjtype_t.mt_bfg)
}

[c:'A_FirePlasma']
fn a_fireplasma(player &Player_t, psp &Pspdef_t)  {
	decreaseammo(player, weaponinfo [player.readyweapon] .ammo, 1)
	p_setpsprite(player, Psprnum_t.ps_flash, weaponinfo [player.readyweapon] .flashstate + (p_random() & 1))
	p_spawnplayermissile(player.mo, Mobjtype_t.mt_plasma)
}

[c:'P_BulletSlope']
fn p_bulletslope(mo &Mobj_t)  {
	an := u32(0)
	an = mo.angle
	bulletslope = p_aimlineattack(mo, an, 16 * 64 * (1 << 16))
	if !linetarget {
		an += 1 << 26
		bulletslope = p_aimlineattack(mo, an, 16 * 64 * (1 << 16))
		if !linetarget {
			an -= 2 << 26
			bulletslope = p_aimlineattack(mo, an, 16 * 64 * (1 << 16))
		}
	}
}

[c:'P_GunShot']
fn p_gunshot(mo &Mobj_t, accurate bool)  {
	angle := u32(0)
	damage := 0
	damage = 5 * (p_random() % 3 + 1)
	angle = mo.angle
	if !accurate {
	angle += p_subrandom() << 18
	}
	p_lineattack(mo, angle, (32 * 64 * (1 << 16)), bulletslope, damage)
}

[c:'A_FirePistol']
fn a_firepistol(player &Player_t, psp &Pspdef_t)  {
	s_startsound(player.mo, Sfxenum_t.sfx_pistol)
	p_setmobjstate(player.mo, Statenum_t.s_play_atk2)
	decreaseammo(player, weaponinfo [player.readyweapon] .ammo, 1)
	p_setpsprite(player, Psprnum_t.ps_flash, weaponinfo [player.readyweapon] .flashstate)
	p_bulletslope(player.mo)
	p_gunshot(player.mo, !player.refire)
}

[c:'A_FireShotgun']
fn a_fireshotgun(player &Player_t, psp &Pspdef_t)  {
	i := 0
	s_startsound(player.mo, Sfxenum_t.sfx_shotgn)
	p_setmobjstate(player.mo, Statenum_t.s_play_atk2)
	decreaseammo(player, weaponinfo [player.readyweapon] .ammo, 1)
	p_setpsprite(player, Psprnum_t.ps_flash, weaponinfo [player.readyweapon] .flashstate)
	p_bulletslope(player.mo)
	for i = 0 ; i < 7 ; i ++ {
	p_gunshot(player.mo, false)
	}
}

[c:'A_FireShotgun2']
fn a_fireshotgun2(player &Player_t, psp &Pspdef_t)  {
	i := 0
	angle := u32(0)
	damage := 0
	s_startsound(player.mo, Sfxenum_t.sfx_dshtgn)
	p_setmobjstate(player.mo, Statenum_t.s_play_atk2)
	decreaseammo(player, weaponinfo [player.readyweapon] .ammo, 2)
	p_setpsprite(player, Psprnum_t.ps_flash, weaponinfo [player.readyweapon] .flashstate)
	p_bulletslope(player.mo)
	for i = 0 ; i < 20 ; i ++ {
		damage = 5 * (p_random() % 3 + 1)
		angle = player.mo.angle
		angle += p_subrandom() << 19
		p_lineattack(player.mo, angle, (32 * 64 * (1 << 16)), bulletslope + (p_subrandom() << 5), damage)
	}
}

[c:'A_FireCGun']
fn a_firecgun(player &Player_t, psp &Pspdef_t)  {
	s_startsound(player.mo, Sfxenum_t.sfx_pistol)
	if !player.ammo [weaponinfo [player.readyweapon] .ammo]  {
	return 
	}
	p_setmobjstate(player.mo, Statenum_t.s_play_atk2)
	decreaseammo(player, weaponinfo [player.readyweapon] .ammo, 1)
	p_setpsprite(player, Psprnum_t.ps_flash, weaponinfo [player.readyweapon] .flashstate + psp.state - &states [int(Statenum_t.s_chain1)] )
	p_bulletslope(player.mo)
	p_gunshot(player.mo, !player.refire)
}

[c:'A_Light0']
fn a_light0(player &Player_t, psp &Pspdef_t)  {
	player.extralight = 0
}

[c:'A_Light1']
fn a_light1(player &Player_t, psp &Pspdef_t)  {
	player.extralight = 1
}

[c:'A_Light2']
fn a_light2(player &Player_t, psp &Pspdef_t)  {
	player.extralight = 2
}

[c:'A_BFGSpray']
fn a_bfgspray(mo &Mobj_t)  {
	i := 0
	j := 0
	damage := 0
	an := u32(0)
	for i = 0 ; i < 40 ; i ++ {
		an = mo.angle - 1073741824 / 2 + 1073741824 / 40 * i
		p_aimlineattack(mo.target, an, 16 * 64 * (1 << 16))
		if !linetarget {
		continue
		
		}
		p_spawnmobj(linetarget.x, linetarget.y, linetarget.z + (linetarget.height >> 2), Mobjtype_t.mt_extrabfg)
		damage = 0
		for j = 0 ; j < 15 ; j ++ {
		damage += (p_random() & 7) + 1
		}
		p_damagemobj(linetarget, mo.target, mo.target, damage)
	}
}

[c:'A_BFGsound']
fn a_bfgsound(player &Player_t, psp &Pspdef_t)  {
	s_startsound(player.mo, Sfxenum_t.sfx_bfg)
}

[c:'P_SetupPsprites']
fn p_setuppsprites(player &Player_t)  {
	i := 0
	for i = 0 ; i < Psprnum_t.numpsprites ; i ++ {
	player.psprites [i] .state = (voidptr(0))
	}
	player.pendingweapon = player.readyweapon
	p_bringupweapon(player)
}

[c:'P_MovePsprites']
fn p_movepsprites(player &Player_t)  {
	i := 0
	psp := &Pspdef_t(0)
	state := &State_t(0)
	psp = &player.psprites [0] 
	for i = 0 ; i < Psprnum_t.numpsprites ; i ++ {
		state = psp.state
		if (state) {
			if psp.tics != -1 {
				psp.tics --
				if !psp.tics {
				p_setpsprite(player, i, psp.state.nextstate)
				}
			}
		}
		psp ++
	}
	player.psprites [int(Psprnum_t.ps_flash)] .sx = player.psprites [int(Psprnum_t.ps_weapon)] .sx
	player.psprites [int(Psprnum_t.ps_flash)] .sy = player.psprites [int(Psprnum_t.ps_weapon)] .sy
}

