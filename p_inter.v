[translated]
module main


[typedef]
struct C.FILE {}


// vstart

[c:'I_StartSound']
fn i_startsound(sfxinfo &Sfxinfo_t, channel int, vol int, sep int, pitch int) int

[c:'DEH_String']
fn deh_string(s &i8) &i8


const ( // empty enum
)

[c:'FixedMul']
fn fixedmul(a int, b int) int

[c:'P_Random']
fn p_random() int

[c2v_variadic]
[c:'I_Error']
fn i_error(error &i8) 

[c:'I_Tactile']
fn i_tactile(on int, off int, total int) 

[c:'AM_Stop']
fn am_stop() 

[c:'R_PointToAngle']
fn r_pointtoangle(x int, y int) Angle_t

[c:'R_PointToAngle2']
fn r_pointtoangle2(x1 int, y1 int, x2 int, y2 int) Angle_t

[c:'P_DropWeapon']
fn p_dropweapon(player &Player_t) 

[c:'P_SpawnMobj']
fn p_spawnmobj(x int, y int, z int, type_ Mobjtype_t) &Mobj_t

[c:'P_RemoveMobj']
fn p_removemobj(th &Mobj_t) 

[c:'P_SetMobjState']
fn p_setmobjstate(mobj &Mobj_t, state Statenum_t) bool

[c:'P_TouchSpecialThing']
fn p_touchspecialthing(special &Mobj_t, toucher &Mobj_t) 

[c:'P_DamageMobj']
fn p_damagemobj(target &Mobj_t, inflictor &Mobj_t, source &Mobj_t, damage int) 

[c:'S_Start']
fn s_start() 

[c:'S_StartSound']
fn s_startsound(origin voidptr, sound_id int) 

[c:'P_GivePower']
fn p_givepower( &Player_t,  int) bool

[c:'P_GiveAmmo']
fn p_giveammo(player &Player_t, ammo Ammotype_t, num int) bool {
	oldammo := 0
	if ammo == Ammotype_t.am_noammo {
	return false
	}
	if ammo > Ammotype_t.numammo {
	i_error(c'P_GiveAmmo: bad type %i', ammo)
	}
	if player.ammo [ammo]  == player.maxammo [ammo]  {
	return false
	}
	if num {
	num *= clipammo [ammo] 
	}
	else { // 3
	num = clipammo [ammo]  / 2
}
	if gameskill == Skill_t.sk_baby || gameskill == Skill_t.sk_nightmare {
		num <<= 1
	}
	oldammo = player.ammo [ammo] 
	player.ammo [ammo]  += num
	if player.ammo [ammo]  > player.maxammo [ammo]  {
	player.ammo [ammo]  = player.maxammo [ammo] 
	}
	if oldammo {
	return true
	}
	match ammo {
	 .am_clip// case comp body kind=IfStmt is_enum=true 
	{
	if player.readyweapon == Weapontype_t.wp_fist {
		if player.weaponowned [int(Weapontype_t.wp_chaingun)]  {
		player.pendingweapon = Weapontype_t.wp_chaingun
		}
		else { // 3
		player.pendingweapon = Weapontype_t.wp_pistol
}
	}
	 }
	.am_shell// case comp body kind=IfStmt is_enum=true 
	{
	if player.readyweapon == Weapontype_t.wp_fist || player.readyweapon == Weapontype_t.wp_pistol {
		if player.weaponowned [int(Weapontype_t.wp_shotgun)]  {
		player.pendingweapon = Weapontype_t.wp_shotgun
		}
	}
	 }
	.am_cell// case comp body kind=IfStmt is_enum=true 
	{
	if player.readyweapon == Weapontype_t.wp_fist || player.readyweapon == Weapontype_t.wp_pistol {
		if player.weaponowned [int(Weapontype_t.wp_plasma)]  {
		player.pendingweapon = Weapontype_t.wp_plasma
		}
	}
	 }
	.am_misl// case comp body kind=IfStmt is_enum=true 
	{
	if player.readyweapon == Weapontype_t.wp_fist {
		if player.weaponowned [int(Weapontype_t.wp_missile)]  {
		player.pendingweapon = Weapontype_t.wp_missile
		}
	}
	}
	 else { 
	
	}
	}
	return true
}

[c:'P_GiveWeapon']
fn p_giveweapon(player &Player_t, weapon Weapontype_t, dropped bool) bool {
	gaveammo := false
	gaveweapon := false
	if netgame && (deathmatch != 2) && !dropped {
		if player.weaponowned [weapon]  {
		return false
		}
		player.bonuscount += 6
		player.weaponowned [weapon]  = true
		if deathmatch {
		p_giveammo(player, weaponinfo [weapon] .ammo, 5)
		}
		else { // 3
		p_giveammo(player, weaponinfo [weapon] .ammo, 2)
}
		player.pendingweapon = weapon
		if player == &players [consoleplayer]  {
		s_startsound((voidptr(0)), Sfxenum_t.sfx_wpnup)
		}
		return false
	}
	if weaponinfo [weapon] .ammo != Ammotype_t.am_noammo {
		if dropped {
		gaveammo = p_giveammo(player, weaponinfo [weapon] .ammo, 1)
		}
		else { // 3
		gaveammo = p_giveammo(player, weaponinfo [weapon] .ammo, 2)
}
	}
	else { // 3
	gaveammo = false
}
	if player.weaponowned [weapon]  {
	gaveweapon = false
	}
	else {
		gaveweapon = true
		player.weaponowned [weapon]  = true
		player.pendingweapon = weapon
	}
	return (gaveweapon || gaveammo)
}

[c:'P_GiveBody']
fn p_givebody(player &Player_t, num int) bool {
	if player.health >= 100 {
	return false
	}
	player.health += num
	if player.health > 100 {
	player.health = 100
	}
	player.mo.health = player.health
	return true
}

[c:'P_GiveArmor']
fn p_givearmor(player &Player_t, armortype int) bool {
	hits := 0
	hits = armortype * 100
	if player.armorpoints >= hits {
	return false
	}
	player.armortype = armortype
	player.armorpoints = hits
	return true
}

[c:'P_GiveCard']
fn p_givecard(player &Player_t, card Card_t)  {
	if player.cards [card]  {
	return 
	}
	player.bonuscount = 6
	player.cards [card]  = 1
}

[c:'P_GivePower']
fn p_givepower(player &Player_t, power int) bool {
	if power == Powertype_t.pw_invulnerability {
		player.powers [power]  = Powerduration_t.invulntics
		return true
	}
	if power == Powertype_t.pw_invisibility {
		player.powers [power]  = Powerduration_t.invistics
		player.mo.flags |= Mobjflag_t.mf_shadow
		return true
	}
	if power == Powertype_t.pw_infrared {
		player.powers [power]  = Powerduration_t.infratics
		return true
	}
	if power == Powertype_t.pw_ironfeet {
		player.powers [power]  = Powerduration_t.irontics
		return true
	}
	if power == Powertype_t.pw_strength {
		p_givebody(player, 100)
		player.powers [power]  = 1
		return true
	}
	if player.powers [power]  {
	return false
	}
	player.powers [power]  = 1
	return true
}

[c:'P_TouchSpecialThing']
fn p_touchspecialthing(special &Mobj_t, toucher &Mobj_t)  {
	player := &Player_t(0)
	i := 0
	delta := 0
	sound := Sfxenum_t.sfx_itemup
	delta = special.z - toucher.z
	if delta > toucher.height || delta < -8 * (1 << 16) {
		return 
	}
	player = toucher.player
	if toucher.health <= 0 {
	return 
	}
	match special.sprite {
	 .spr_arm1// case comp body kind=IfStmt is_enum=true 
	{
	if !p_givearmor(player, deh_green_armor_class) {
	return 
	}
	player.message = deh_string(c'Picked up the armor.')
	 }
	.spr_arm2// case comp body kind=IfStmt is_enum=true 
	{
	if !p_givearmor(player, deh_blue_armor_class) {
	return 
	}
	player.message = deh_string(c'Picked up the MegaArmor!')
	 }
	.spr_bon1// case comp body kind=UnaryOperator is_enum=true 
	{
	player.health ++
	if player.health > deh_max_health {
	player.health = deh_max_health
	}
	player.mo.health = player.health
	player.message = deh_string(c'Picked up a health bonus.')
	 }
	.spr_bon2// case comp body kind=UnaryOperator is_enum=true 
	{
	player.armorpoints ++
	if player.armorpoints > deh_max_armor && gameversion > GameVersion_t.exe_doom_1_2 {
	player.armorpoints = deh_max_armor
	}
	if !player.armortype {
	player.armortype = 1
	}
	player.message = deh_string(c'Picked up an armor bonus.')
	 }
	.spr_soul// case comp body kind=CompoundAssignOperator is_enum=true 
	{
	player.health += deh_soulsphere_health
	if player.health > deh_max_soulsphere {
	player.health = deh_max_soulsphere
	}
	player.mo.health = player.health
	player.message = deh_string(c'Supercharge!')
	if gameversion > GameVersion_t.exe_doom_1_2 {
	sound = Sfxenum_t.sfx_getpow
	}
	 }
	.spr_mega// case comp body kind=IfStmt is_enum=true 
	{
	if gamemode != GameMode_t.commercial {
	return 
	}
	player.health = deh_megasphere_health
	player.mo.health = player.health
	p_givearmor(player, 2)
	player.message = deh_string(c'MegaSphere!')
	if gameversion > GameVersion_t.exe_doom_1_2 {
	sound = Sfxenum_t.sfx_getpow
	}
	 }
	.spr_bkey// case comp body kind=IfStmt is_enum=true 
	{
	if !player.cards [int(Card_t.it_bluecard)]  {
	player.message = deh_string(c'Picked up a blue keycard.')
	}
	p_givecard(player, Card_t.it_bluecard)
	if !netgame {
	
	}
	return 
	 }
	.spr_ykey// case comp body kind=IfStmt is_enum=true 
	{
	if !player.cards [int(Card_t.it_yellowcard)]  {
	player.message = deh_string(c'Picked up a yellow keycard.')
	}
	p_givecard(player, Card_t.it_yellowcard)
	if !netgame {
	
	}
	return 
	 }
	.spr_rkey// case comp body kind=IfStmt is_enum=true 
	{
	if !player.cards [int(Card_t.it_redcard)]  {
	player.message = deh_string(c'Picked up a red keycard.')
	}
	p_givecard(player, Card_t.it_redcard)
	if !netgame {
	
	}
	return 
	 }
	.spr_bsku// case comp body kind=IfStmt is_enum=true 
	{
	if !player.cards [int(Card_t.it_blueskull)]  {
	player.message = deh_string(c'Picked up a blue skull key.')
	}
	p_givecard(player, Card_t.it_blueskull)
	if !netgame {
	
	}
	return 
	 }
	.spr_ysku// case comp body kind=IfStmt is_enum=true 
	{
	if !player.cards [int(Card_t.it_yellowskull)]  {
	player.message = deh_string(c'Picked up a yellow skull key.')
	}
	p_givecard(player, Card_t.it_yellowskull)
	if !netgame {
	
	}
	return 
	 }
	.spr_rsku// case comp body kind=IfStmt is_enum=true 
	{
	if !player.cards [int(Card_t.it_redskull)]  {
	player.message = deh_string(c'Picked up a red skull key.')
	}
	p_givecard(player, Card_t.it_redskull)
	if !netgame {
	
	}
	return 
	 }
	.spr_stim// case comp body kind=IfStmt is_enum=true 
	{
	if !p_givebody(player, 10) {
	return 
	}
	player.message = deh_string(c'Picked up a stimpack.')
	 }
	.spr_medi// case comp body kind=IfStmt is_enum=true 
	{
	if !p_givebody(player, 25) {
	return 
	}
	if player.health < 25 {
	player.message = deh_string(c'Picked up a medikit that you REALLY need!')
	}
	else { // 3
	player.message = deh_string(c'Picked up a medikit.')
}
	 }
	.spr_pinv// case comp body kind=IfStmt is_enum=true 
	{
	if !p_givepower(player, Powertype_t.pw_invulnerability) {
	return 
	}
	player.message = deh_string(c'Invulnerability!')
	if gameversion > GameVersion_t.exe_doom_1_2 {
	sound = Sfxenum_t.sfx_getpow
	}
	 }
	.spr_pstr// case comp body kind=IfStmt is_enum=true 
	{
	if !p_givepower(player, Powertype_t.pw_strength) {
	return 
	}
	player.message = deh_string(c'Berserk!')
	if player.readyweapon != Weapontype_t.wp_fist {
	player.pendingweapon = Weapontype_t.wp_fist
	}
	if gameversion > GameVersion_t.exe_doom_1_2 {
	sound = Sfxenum_t.sfx_getpow
	}
	 }
	.spr_pins// case comp body kind=IfStmt is_enum=true 
	{
	if !p_givepower(player, Powertype_t.pw_invisibility) {
	return 
	}
	player.message = deh_string(c'Partial Invisibility')
	if gameversion > GameVersion_t.exe_doom_1_2 {
	sound = Sfxenum_t.sfx_getpow
	}
	 }
	.spr_suit// case comp body kind=IfStmt is_enum=true 
	{
	if !p_givepower(player, Powertype_t.pw_ironfeet) {
	return 
	}
	player.message = deh_string(c'Radiation Shielding Suit')
	if gameversion > GameVersion_t.exe_doom_1_2 {
	sound = Sfxenum_t.sfx_getpow
	}
	 }
	.spr_pmap// case comp body kind=IfStmt is_enum=true 
	{
	if !p_givepower(player, Powertype_t.pw_allmap) {
	return 
	}
	player.message = deh_string(c'Computer Area Map')
	if gameversion > GameVersion_t.exe_doom_1_2 {
	sound = Sfxenum_t.sfx_getpow
	}
	 }
	.spr_pvis// case comp body kind=IfStmt is_enum=true 
	{
	if !p_givepower(player, Powertype_t.pw_infrared) {
	return 
	}
	player.message = deh_string(c'Light Amplification Visor')
	if gameversion > GameVersion_t.exe_doom_1_2 {
	sound = Sfxenum_t.sfx_getpow
	}
	 }
	.spr_clip// case comp body kind=IfStmt is_enum=true 
	{
	if special.flags & int(Mobjflag_t.mf_dropped) {
		if !p_giveammo(player, Ammotype_t.am_clip, 0) {
		return 
		}
	}
	else {
		if !p_giveammo(player, Ammotype_t.am_clip, 1) {
		return 
		}
	}
	player.message = deh_string(c'Picked up a clip.')
	 }
	.spr_ammo// case comp body kind=IfStmt is_enum=true 
	{
	if !p_giveammo(player, Ammotype_t.am_clip, 5) {
	return 
	}
	player.message = deh_string(c'Picked up a box of bullets.')
	 }
	.spr_rock// case comp body kind=IfStmt is_enum=true 
	{
	if !p_giveammo(player, Ammotype_t.am_misl, 1) {
	return 
	}
	player.message = deh_string(c'Picked up a rocket.')
	 }
	.spr_brok// case comp body kind=IfStmt is_enum=true 
	{
	if !p_giveammo(player, Ammotype_t.am_misl, 5) {
	return 
	}
	player.message = deh_string(c'Picked up a box of rockets.')
	 }
	.spr_cell// case comp body kind=IfStmt is_enum=true 
	{
	if !p_giveammo(player, Ammotype_t.am_cell, 1) {
	return 
	}
	player.message = deh_string(c'Picked up an energy cell.')
	 }
	.spr_celp// case comp body kind=IfStmt is_enum=true 
	{
	if !p_giveammo(player, Ammotype_t.am_cell, 5) {
	return 
	}
	player.message = deh_string(c'Picked up an energy cell pack.')
	 }
	.spr_shel// case comp body kind=IfStmt is_enum=true 
	{
	if !p_giveammo(player, Ammotype_t.am_shell, 1) {
	return 
	}
	player.message = deh_string(c'Picked up 4 shotgun shells.')
	 }
	.spr_sbox// case comp body kind=IfStmt is_enum=true 
	{
	if !p_giveammo(player, Ammotype_t.am_shell, 5) {
	return 
	}
	player.message = deh_string(c'Picked up a box of shotgun shells.')
	 }
	.spr_bpak// case comp body kind=IfStmt is_enum=true 
	{
	if !player.backpack {
		for i = 0 ; i < Ammotype_t.numammo ; i ++ {
		player.maxammo [i]  *= 2
		}
		player.backpack = true
	}
	for i = 0 ; i < Ammotype_t.numammo ; i ++ {
	p_giveammo(player, i, 1)
	}
	player.message = deh_string(c'Picked up a backpack full of ammo!')
	 }
	.spr_bfug// case comp body kind=IfStmt is_enum=true 
	{
	if !p_giveweapon(player, Weapontype_t.wp_bfg, false) {
	return 
	}
	player.message = deh_string(c'You got the BFG9000!  Oh, yes.')
	sound = Sfxenum_t.sfx_wpnup
	 }
	.spr_mgun// case comp body kind=IfStmt is_enum=true 
	{
	if !p_giveweapon(player, Weapontype_t.wp_chaingun, (special.flags & int(Mobjflag_t.mf_dropped)) != 0) {
	return 
	}
	player.message = deh_string(c'You got the chaingun!')
	sound = Sfxenum_t.sfx_wpnup
	 }
	.spr_csaw// case comp body kind=IfStmt is_enum=true 
	{
	if !p_giveweapon(player, Weapontype_t.wp_chainsaw, false) {
	return 
	}
	player.message = deh_string(c'A chainsaw!  Find some meat!')
	sound = Sfxenum_t.sfx_wpnup
	 }
	.spr_laun// case comp body kind=IfStmt is_enum=true 
	{
	if !p_giveweapon(player, Weapontype_t.wp_missile, false) {
	return 
	}
	player.message = deh_string(c'You got the rocket launcher!')
	sound = Sfxenum_t.sfx_wpnup
	 }
	.spr_plas// case comp body kind=IfStmt is_enum=true 
	{
	if !p_giveweapon(player, Weapontype_t.wp_plasma, false) {
	return 
	}
	player.message = deh_string(c'You got the plasma gun!')
	sound = Sfxenum_t.sfx_wpnup
	 }
	.spr_shot// case comp body kind=IfStmt is_enum=true 
	{
	if !p_giveweapon(player, Weapontype_t.wp_shotgun, (special.flags & int(Mobjflag_t.mf_dropped)) != 0) {
	return 
	}
	player.message = deh_string(c'You got the shotgun!')
	sound = Sfxenum_t.sfx_wpnup
	 }
	.spr_sgn2// case comp body kind=IfStmt is_enum=true 
	{
	if !p_giveweapon(player, Weapontype_t.wp_supershotgun, (special.flags & int(Mobjflag_t.mf_dropped)) != 0) {
	return 
	}
	player.message = deh_string(c'You got the super shotgun!')
	sound = Sfxenum_t.sfx_wpnup
	}
	 else { 
	i_error(c'P_SpecialThing: Unknown gettable thing')
	}
	}
	if special.flags & Mobjflag_t.mf_countitem {
	player.itemcount ++
	}
	p_removemobj(special)
	player.bonuscount += 6
	if player == &players [consoleplayer]  {
	s_startsound((voidptr(0)), sound)
	}
}

[c:'P_KillMobj']
fn p_killmobj(source &Mobj_t, target &Mobj_t)  {
	item := Mobjtype_t{}
	mo := &Mobj_t(0)
	target.flags &= ~(Mobjflag_t.mf_shootable | Mobjflag_t.mf_float | Mobjflag_t.mf_skullfly)
	if target.type_ != Mobjtype_t.mt_skull {
	target.flags &= ~Mobjflag_t.mf_nogravity
	}
	target.flags |= int(Mobjflag_t.mf_corpse) | int(Mobjflag_t.mf_dropoff)
	target.height >>= 2
	if source && source.player {
		if target.flags & Mobjflag_t.mf_countkill {
		source.player.killcount ++
		}
		if target.player {
		source.player.frags [target.player - players]  ++
		}
	}
	else if !netgame && (target.flags & Mobjflag_t.mf_countkill) {
		players [0] .killcount ++
	}
	if target.player {
		if !source {
		target.player.frags [target.player - players]  ++
		}
		target.flags &= ~Mobjflag_t.mf_solid
		target.player.playerstate = Playerstate_t.pst_dead
		p_dropweapon(target.player)
		if target.player == &players [consoleplayer]  && automapactive {
			am_stop()
		}
	}
	if target.health < -target.info.spawnhealth && target.info.xdeathstate {
		p_setmobjstate(target, target.info.xdeathstate)
	}
	else { // 3
	p_setmobjstate(target, target.info.deathstate)
}
	target.tics -= p_random() & 3
	if target.tics < 1 {
	target.tics = 1
	}
	if gameversion == GameVersion_t.exe_chex {
		return 
	}
	match target.type_ {
	 .mt_wolfss, .mt_possessed{
	item = .mt_clip
	 }
	.mt_shotguy// case comp body kind=BinaryOperator is_enum=true 
	{
	item = Mobjtype_t.mt_shotgun
	 }
	.mt_chainguy// case comp body kind=BinaryOperator is_enum=true 
	{
	item = Mobjtype_t.mt_chaingun
	}
	 else { 
	return 
	}
	}
	mo = p_spawnmobj(target.x, target.y, (-2147483647 - 1), item)
	mo.flags |= int(Mobjflag_t.mf_dropped)
}

[c:'P_DamageMobj']
fn p_damagemobj(target &Mobj_t, inflictor &Mobj_t, source &Mobj_t, damage int)  {
	ang := u32(0)
	saved := 0
	player := &Player_t(0)
	thrust := 0
	temp := 0
	if !(target.flags & Mobjflag_t.mf_shootable) {
	return 
	}
	if target.health <= 0 {
	return 
	}
	if target.flags & Mobjflag_t.mf_skullfly {
		target.momx = 0
		target.momy = 0
		target.momz = 0
	}
	player = target.player
	if player && gameskill == Skill_t.sk_baby {
	damage >>= 1
	}
	if inflictor && !(target.flags & Mobjflag_t.mf_noclip) && (!source || !source.player || source.player.readyweapon != Weapontype_t.wp_chainsaw) {
		ang = r_pointtoangle2(inflictor.x, inflictor.y, target.x, target.y)
		thrust = damage * ((1 << 16) >> 3) * 100 / target.info.mass
		if damage < 40 && damage > target.health && target.z - inflictor.z > 64 * (1 << 16) && (p_random() & 1) {
			ang += 2147483648
			thrust *= 4
		}
		ang >>= 19
		target.momx += fixedmul(thrust, finecosine [ang] )
		target.momy += fixedmul(thrust, finesine [ang] )
	}
	if player {
		if target.subsector.sector.special == 11 && damage >= target.health {
			damage = target.health - 1
		}
		if damage < 1000 && ((player.cheats & Cheat_t.cf_godmode) || player.powers [int(Powertype_t.pw_invulnerability)] ) {
			return 
		}
		if player.armortype {
			if player.armortype == 1 {
			saved = damage / 3
			}
			else { // 3
			saved = damage / 2
}
			if player.armorpoints <= saved {
				saved = player.armorpoints
				player.armortype = 0
			}
			player.armorpoints -= saved
			damage -= saved
		}
		player.health -= damage
		if player.health < 0 {
		player.health = 0
		}
		player.attacker = source
		player.damagecount += damage
		if player.damagecount > 100 {
		player.damagecount = 100
		}
		temp = if damage < 100{ damage } else {100}
		if player == &players [consoleplayer]  {
		i_tactile(40, 10, 40 + temp * 2)
		}
	}
	target.health -= damage
	if target.health <= 0 {
		p_killmobj(source, target)
		return 
	}
	if (p_random() < target.info.painchance) && !(target.flags & Mobjflag_t.mf_skullfly) {
		target.flags |= Mobjflag_t.mf_justhit
		p_setmobjstate(target, target.info.painstate)
	}
	target.reactiontime = 0
	if (!target.threshold || target.type_ == Mobjtype_t.mt_vile) && source && (source != target || gameversion <= GameVersion_t.exe_doom_1_2) && source.type_ != Mobjtype_t.mt_vile {
		target.target = source
		target.threshold = 100
		if target.state == &states [target.info.spawnstate]  && target.info.seestate != Statenum_t.s_null {
		p_setmobjstate(target, target.info.seestate)
		}
	}
}

