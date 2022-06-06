[translated]
module main


[typedef]
struct C.FILE {}


// vstart

[c2v_variadic]
[c:'I_Error']
fn i_error(error &i8) 

[c:'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

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

[c:'R_PointInSubsector']
fn r_pointinsubsector(x int, y int) &Subsector_t

[c:'P_AddThinker']
fn p_addthinker(thinker &Thinker_t) 

[c:'P_RemoveThinker']
fn p_removethinker(thinker &Thinker_t) 

[c:'P_SetupPsprites']
fn p_setuppsprites(curplayer &Player_t) 

[c:'P_RespawnSpecials']
fn p_respawnspecials() 

[c:'P_SpawnMobj']
fn p_spawnmobj(x int, y int, z int, type_ Mobjtype_t) &Mobj_t

[c:'P_RemoveMobj']
fn p_removemobj(th &Mobj_t) 

[c:'P_SubstNullMobj']
fn p_substnullmobj(th &Mobj_t) &Mobj_t

[c:'P_SetMobjState']
fn p_setmobjstate(mobj &Mobj_t, state Statenum_t) bool

[c:'P_MobjThinker']
fn p_mobjthinker(mobj &Mobj_t) 

[c:'P_SpawnPuff']
fn p_spawnpuff(x int, y int, z int) 

[c:'P_SpawnBlood']
fn p_spawnblood(x int, y int, z int, damage int) 

[c:'P_SpawnMissile']
fn p_spawnmissile(source &Mobj_t, dest &Mobj_t, type_ Mobjtype_t) &Mobj_t

[c:'P_SpawnPlayerMissile']
fn p_spawnplayermissile(source &Mobj_t, type_ Mobjtype_t) 

[c:'P_AproxDistance']
fn p_aproxdistance(dx int, dy int) int

[c:'P_UnsetThingPosition']
fn p_unsetthingposition(thing &Mobj_t) 

[c:'P_SetThingPosition']
fn p_setthingposition(thing &Mobj_t) 

[c:'P_CheckPosition']
fn p_checkposition(thing &Mobj_t, x int, y int) bool

[c:'P_TryMove']
fn p_trymove(thing &Mobj_t, x int, y int) bool

[c:'P_SlideMove']
fn p_slidemove(mo &Mobj_t) 

[c:'P_AimLineAttack']
fn p_aimlineattack(t1 &Mobj_t, angle Angle_t, distance int) int

[c:'ST_Start']
fn st_start() 

[c:'HU_Start']
fn hu_start() 

[c:'S_Start']
fn s_start() 

[c:'S_StartSound']
fn s_startsound(origin voidptr, sound_id int) 

[c:'S_StopSound']
fn s_stopsound(origin &Mobj_t) 

[c:'G_PlayerReborn']
fn g_playerreborn(player int) 

[c:'P_SpawnMapThing']
fn p_spawnmapthing(mthing &Mapthing_t) 

[weak]__global ( test int 

)

[c:'P_SetMobjState']
fn p_setmobjstate(mobj &Mobj_t, state Statenum_t) bool {
	st := &State_t(0)
	cycle_counter := 0
	for {
	if state == Statenum_t.s_null {
		mobj.state = &State_t(Statenum_t.s_null)
		p_removemobj(mobj)
		return false
	}
	st = &states [state] 
	mobj.state = st
	mobj.tics = st.tics
	mobj.sprite = st.sprite
	mobj.frame = st.frame
	if st.action.acp1 {
	st.action.acp1(mobj)
	}
	state = st.nextstate
	if cycle_counter ++ > 1000000 {
		i_error(c'P_SetMobjState: Infinite state cycle detected!')
	}
	// while()
	if ! (!mobj.tics ) { break }
	}
	return true
}

[c:'P_ExplodeMissile']
fn p_explodemissile(mo &Mobj_t)  {
	mo.momx = 0
	mo.momy = 0
	mo.momz = 0
	p_setmobjstate(mo, mobjinfo [mo.type_] .deathstate)
	mo.tics -= p_random() & 3
	if mo.tics < 1 {
	mo.tics = 1
	}
	mo.flags &= ~Mobjflag_t.mf_missile
	if mo.info.deathsound {
	s_startsound(mo, mo.info.deathsound)
	}
}

[c:'P_XYMovement']
fn p_xymovement(mo &Mobj_t)  {
	ptryx := 0
	ptryy := 0
	player := &Player_t(0)
	xmove := 0
	ymove := 0
	if !mo.momx && !mo.momy {
		if mo.flags & Mobjflag_t.mf_skullfly {
			mo.flags &= ~Mobjflag_t.mf_skullfly
			mo.momx = 0
			mo.momy = 0
			mo.momz = 0
			p_setmobjstate(mo, mo.info.spawnstate)
		}
		return 
	}
	player = mo.player
	if mo.momx > (30 * (1 << 16)) {
	mo.momx = (30 * (1 << 16))
	}
	else if mo.momx < -(30 * (1 << 16)) {
	mo.momx = -(30 * (1 << 16))
	}
	if mo.momy > (30 * (1 << 16)) {
	mo.momy = (30 * (1 << 16))
	}
	else if mo.momy < -(30 * (1 << 16)) {
	mo.momy = -(30 * (1 << 16))
	}
	xmove = mo.momx
	ymove = mo.momy
	for {
	if xmove > (30 * (1 << 16)) / 2 || ymove > (30 * (1 << 16)) / 2 {
		ptryx = mo.x + xmove / 2
		ptryy = mo.y + ymove / 2
		xmove >>= 1
		ymove >>= 1
	}
	else {
		ptryx = mo.x + xmove
		ptryy = mo.y + ymove
		xmove = 0
		ymove = 0
	}
	if !p_trymove(mo, ptryx, ptryy) {
		if mo.player {
			p_slidemove(mo)
		}
		else if mo.flags & Mobjflag_t.mf_missile {
			if ceilingline && ceilingline.backsector && ceilingline.backsector.ceilingpic == skyflatnum {
				p_removemobj(mo)
				return 
			}
			p_explodemissile(mo)
		}
		else { // 3
		mo.momx = 0
		mo.momy = 0
}
	}
	// while()
	if ! (xmove || ymove ) { break }
	}
	if player && player.cheats & Cheat_t.cf_nomomentum {
		mo.momx = 0
		mo.momy = 0
		return 
	}
	if mo.flags & (Mobjflag_t.mf_missile | Mobjflag_t.mf_skullfly) {
	return 
	}
	if mo.z > mo.floorz {
	return 
	}
	if mo.flags & Mobjflag_t.mf_corpse {
		if mo.momx > (1 << 16) / 4 || mo.momx < -(1 << 16) / 4 || mo.momy > (1 << 16) / 4 || mo.momy < -(1 << 16) / 4 {
			if mo.floorz != mo.subsector.sector.floorheight {
			return 
			}
		}
	}
	if mo.momx > -4096 && mo.momx < 4096 && mo.momy > -4096 && mo.momy < 4096 && (!player || (player.cmd.forwardmove == 0 && player.cmd.sidemove == 0)) {
		if player && u32(((player.mo.state - states) - Statenum_t.s_play_run1)) < 4 {
		p_setmobjstate(player.mo, Statenum_t.s_play)
		}
		mo.momx = 0
		mo.momy = 0
	}
	else {
		mo.momx = fixedmul(mo.momx, 59392)
		mo.momy = fixedmul(mo.momy, 59392)
	}
}

[c:'P_ZMovement']
fn p_zmovement(mo &Mobj_t)  {
	dist := 0
	delta := 0
	if mo.player && mo.z < mo.floorz {
		mo.player.viewheight -= mo.floorz - mo.z
		mo.player.deltaviewheight = ((41 * (1 << 16)) - mo.player.viewheight) >> 3
	}
	mo.z += mo.momz
	if mo.flags & Mobjflag_t.mf_float && mo.target {
		if !(mo.flags & Mobjflag_t.mf_skullfly) && !(mo.flags & Mobjflag_t.mf_infloat) {
			dist = p_aproxdistance(mo.x - mo.target.x, mo.y - mo.target.y)
			delta = (mo.target.z + (mo.height >> 1)) - mo.z
			if delta < 0 && dist < -(delta * 3) {
			mo.z -= ((1 << 16) * 4)
			}
			else if delta > 0 && dist < (delta * 3) {
			mo.z += ((1 << 16) * 4)
			}
		}
	}
	if mo.z <= mo.floorz {
		correct_lost_soul_bounce := gameversion >= GameVersion_t.exe_ultimate
		if correct_lost_soul_bounce && mo.flags & Mobjflag_t.mf_skullfly {
			mo.momz = -mo.momz
		}
		if mo.momz < 0 {
			if mo.player && mo.momz < -(1 << 16) * 8 {
				mo.player.deltaviewheight = mo.momz >> 3
				s_startsound(mo, Sfxenum_t.sfx_oof)
			}
			mo.momz = 0
		}
		mo.z = mo.floorz
		if !correct_lost_soul_bounce && mo.flags & Mobjflag_t.mf_skullfly {
		mo.momz = -mo.momz
		}
		if (mo.flags & Mobjflag_t.mf_missile) && !(mo.flags & Mobjflag_t.mf_noclip) {
			p_explodemissile(mo)
			return 
		}
	}
	else if !(mo.flags & Mobjflag_t.mf_nogravity) {
		if mo.momz == 0 {
		mo.momz = -(1 << 16) * 2
		}
		else { // 3
		mo.momz -= (1 << 16)
}
	}
	if mo.z + mo.height > mo.ceilingz {
		if mo.momz > 0 {
		mo.momz = 0
		}
		{
			mo.z = mo.ceilingz - mo.height
		}
		if mo.flags & Mobjflag_t.mf_skullfly {
			mo.momz = -mo.momz
		}
		if (mo.flags & Mobjflag_t.mf_missile) && !(mo.flags & Mobjflag_t.mf_noclip) {
			p_explodemissile(mo)
			return 
		}
	}
}

[c:'P_NightmareRespawn']
fn p_nightmarerespawn(mobj &Mobj_t)  {
	x := 0
	y := 0
	z := 0
	ss := &Subsector_t(0)
	mo := &Mobj_t(0)
	mthing := &Mapthing_t(0)
	x = mobj.spawnpoint.x << 16
	y = mobj.spawnpoint.y << 16
	if !p_checkposition(mobj, x, y) {
	return 
	}
	mo = p_spawnmobj(mobj.x, mobj.y, mobj.subsector.sector.floorheight, Mobjtype_t.mt_tfog)
	s_startsound(mo, Sfxenum_t.sfx_telept)
	ss = r_pointinsubsector(x, y)
	mo = p_spawnmobj(x, y, ss.sector.floorheight, Mobjtype_t.mt_tfog)
	s_startsound(mo, Sfxenum_t.sfx_telept)
	mthing = &mobj.spawnpoint
	if mobj.info.flags & Mobjflag_t.mf_spawnceiling {
	z = 2147483647
	}
	else { // 3
	z = (-2147483647 - 1)
}
	mo = p_spawnmobj(x, y, z, mobj.type_)
	mo.spawnpoint = mobj.spawnpoint
	mo.angle = 536870912 * (mthing.angle / 45)
	if mthing.options & 8 {
	mo.flags |= Mobjflag_t.mf_ambush
	}
	mo.reactiontime = 18
	p_removemobj(mobj)
}

[c:'P_MobjThinker']
fn p_mobjthinker(mobj &Mobj_t)  {
	if mobj.momx || mobj.momy || (mobj.flags & Mobjflag_t.mf_skullfly) {
		p_xymovement(mobj)
		if mobj.thinker.function.acv == Actionf_v((-1)) {
		return 
		}
	}
	if (mobj.z != mobj.floorz) || mobj.momz {
		p_zmovement(mobj)
		if mobj.thinker.function.acv == Actionf_v((-1)) {
		return 
		}
	}
	if mobj.tics != -1 {
		mobj.tics --
		if !mobj.tics {
		if !p_setmobjstate(mobj, mobj.state.nextstate) {
		return 
		}
		}
	}
	else {
		if !(mobj.flags & Mobjflag_t.mf_countkill) {
		return 
		}
		if !respawnmonsters {
		return 
		}
		mobj.movecount ++
		if mobj.movecount < 12 * 35 {
		return 
		}
		if leveltime & 31 {
		return 
		}
		if p_random() > 4 {
		return 
		}
		p_nightmarerespawn(mobj)
	}
}

[c:'P_SpawnMobj']
fn p_spawnmobj(x int, y int, z int, type_ Mobjtype_t) &Mobj_t {
	mobj := &Mobj_t(0)
	st := &State_t(0)
	info := &Mobjinfo_t(0)
	mobj = z_malloc(sizeof(*mobj), 5, (voidptr(0)))
	C.memset(mobj, 0, sizeof(*mobj))
	info = &mobjinfo [type_] 
	mobj.type_ = type_
	mobj.info = info
	mobj.x = x
	mobj.y = y
	mobj.radius = info.radius
	mobj.height = info.height
	mobj.flags = info.flags
	mobj.health = info.spawnhealth
	if gameskill != Skill_t.sk_nightmare {
	mobj.reactiontime = info.reactiontime
	}
	mobj.lastlook = p_random() % 4
	st = &states [info.spawnstate] 
	mobj.state = st
	mobj.tics = st.tics
	mobj.sprite = st.sprite
	mobj.frame = st.frame
	p_setthingposition(mobj)
	mobj.floorz = mobj.subsector.sector.floorheight
	mobj.ceilingz = mobj.subsector.sector.ceilingheight
	if z == (-2147483647 - 1) {
	mobj.z = mobj.floorz
	}
	else if z == 2147483647 {
	mobj.z = mobj.ceilingz - mobj.info.height
	}
	else { // 3
	mobj.z = z
}
	mobj.thinker.function.acp1 = Actionf_p1(p_mobjthinker)
	p_addthinker(&mobj.thinker)
	return mobj
}

[c:'P_RemoveMobj']
fn p_removemobj(mobj &Mobj_t)  {
	if (mobj.flags & Mobjflag_t.mf_special) && !(mobj.flags & Mobjflag_t.mf_dropped) && (mobj.type_ != Mobjtype_t.mt_inv) && (mobj.type_ != Mobjtype_t.mt_ins) {
		itemrespawnque [iquehead]  = mobj.spawnpoint
		itemrespawntime [iquehead]  = leveltime
		iquehead = (iquehead + 1) & (128 - 1)
		if iquehead == iquetail {
		iquetail = (iquetail + 1) & (128 - 1)
		}
	}
	p_unsetthingposition(mobj)
	s_stopsound(mobj)
	p_removethinker(&Thinker_t(mobj))
}

[c:'P_RespawnSpecials']
fn p_respawnspecials()  {
	x := 0
	y := 0
	z := 0
	ss := &Subsector_t(0)
	mo := &Mobj_t(0)
	mthing := &Mapthing_t(0)
	i := 0
	if deathmatch != 2 {
	return 
	}
	if iquehead == iquetail {
	return 
	}
	if leveltime - itemrespawntime [iquetail]  < 30 * 35 {
	return 
	}
	mthing = &itemrespawnque [iquetail] 
	x = mthing.x << 16
	y = mthing.y << 16
	ss = r_pointinsubsector(x, y)
	mo = p_spawnmobj(x, y, ss.sector.floorheight, Mobjtype_t.mt_ifog)
	s_startsound(mo, Sfxenum_t.sfx_itmbk)
	for i = 0 ; i < Mobjtype_t.nummobjtypes ; i ++ {
		if mthing.type_ == mobjinfo [i] .doomednum {
		break
		
		}
	}
	if i >= Mobjtype_t.nummobjtypes {
		i_error(c'P_RespawnSpecials: Failed to find mobj type with doomednum %d when respawning thing. This would cause a buffer overrun in vanilla Doom', mthing.type_)
	}
	if mobjinfo [i] .flags & Mobjflag_t.mf_spawnceiling {
	z = 2147483647
	}
	else { // 3
	z = (-2147483647 - 1)
}
	mo = p_spawnmobj(x, y, z, i)
	mo.spawnpoint = *mthing
	mo.angle = 536870912 * (mthing.angle / 45)
	iquetail = (iquetail + 1) & (128 - 1)
}

[c:'P_SpawnPlayer']
fn p_spawnplayer(mthing &Mapthing_t)  {
	p := &Player_t(0)
	x := 0
	y := 0
	z := 0
	mobj := &Mobj_t(0)
	i := 0
	if mthing.type_ == 0 {
		return 
	}
	if !playeringame [mthing.type_ - 1]  {
	return 
	}
	p = &players [mthing.type_ - 1] 
	if p.playerstate == Playerstate_t.pst_reborn {
	g_playerreborn(mthing.type_ - 1)
	}
	x = mthing.x << 16
	y = mthing.y << 16
	z = (-2147483647 - 1)
	mobj = p_spawnmobj(x, y, z, Mobjtype_t.mt_player)
	if mthing.type_ > 1 {
	mobj.flags |= (mthing.type_ - 1) << Mobjflag_t.mf_transshift
	}
	mobj.angle = 536870912 * (mthing.angle / 45)
	mobj.player = p
	mobj.health = p.health
	p.mo = mobj
	p.playerstate = Playerstate_t.pst_live
	p.refire = 0
	p.message = (voidptr(0))
	p.damagecount = 0
	p.bonuscount = 0
	p.extralight = 0
	p.fixedcolormap = 0
	p.viewheight = (41 * (1 << 16))
	p_setuppsprites(p)
	if deathmatch {
	for i = 0 ; i < Card_t.numcards ; i ++ {
	p.cards [i]  = true
	}
	}
	if mthing.type_ - 1 == consoleplayer {
		st_start()
		hu_start()
	}
}

[c:'P_SpawnMapThing']
fn p_spawnmapthing(mthing &Mapthing_t)  {
	i := 0
	bit := 0
	mobj := &Mobj_t(0)
	x := 0
	y := 0
	z := 0
	if mthing.type_ == 11 {
		if 1 {
			C.memcpy(deathmatch_p, mthing, sizeof(*mthing))
			deathmatch_p ++
		}
		return 
	}
	if mthing.type_ <= 0 {
		return 
	}
	if mthing.type_ <= 4 {
		playerstarts [mthing.type_ - 1]  = *mthing
		playerstartsingame [mthing.type_ - 1]  = true
		if !deathmatch {
		p_spawnplayer(mthing)
		}
		return 
	}
	if !netgame && (mthing.options & 16) {
	return 
	}
	if gameskill == Skill_t.sk_baby {
	bit = 1
	}
	else if gameskill == Skill_t.sk_nightmare {
	bit = 4
	}
	else { // 3
	bit = 1 << (gameskill - 1)
}
	if !(mthing.options & bit) {
	return 
	}
	for i = 0 ; i < Mobjtype_t.nummobjtypes ; i ++ {
	if mthing.type_ == mobjinfo [i] .doomednum {
	break
	
	}
	}
	if i == Mobjtype_t.nummobjtypes {
	i_error(c'P_SpawnMapThing: Unknown type %i at (%i, %i)', mthing.type_, mthing.x, mthing.y)
	}
	if deathmatch && mobjinfo [i] .flags & Mobjflag_t.mf_notdmatch {
	return 
	}
	if nomonsters && (i == Mobjtype_t.mt_skull || (mobjinfo [i] .flags & Mobjflag_t.mf_countkill)) {
		return 
	}
	x = mthing.x << 16
	y = mthing.y << 16
	if mobjinfo [i] .flags & Mobjflag_t.mf_spawnceiling {
	z = 2147483647
	}
	else { // 3
	z = (-2147483647 - 1)
}
	mobj = p_spawnmobj(x, y, z, i)
	mobj.spawnpoint = *mthing
	if mobj.tics > 0 {
	mobj.tics = 1 + (p_random() % mobj.tics)
	}
	if mobj.flags & Mobjflag_t.mf_countkill {
	totalkills ++
	}
	if mobj.flags & Mobjflag_t.mf_countitem {
	totalitems ++
	}
	mobj.angle = 536870912 * (mthing.angle / 45)
	if mthing.options & 8 {
	mobj.flags |= Mobjflag_t.mf_ambush
	}
}

[c:'P_SpawnPuff']
fn p_spawnpuff(x int, y int, z int)  {
	th := &Mobj_t(0)
	z += (p_subrandom() << 10)
	th = p_spawnmobj(x, y, z, Mobjtype_t.mt_puff)
	th.momz = (1 << 16)
	th.tics -= p_random() & 3
	if th.tics < 1 {
	th.tics = 1
	}
	if attackrange == (64 * (1 << 16)) {
	p_setmobjstate(th, Statenum_t.s_puff3)
	}
}

[c:'P_SpawnBlood']
fn p_spawnblood(x int, y int, z int, damage int)  {
	th := &Mobj_t(0)
	z += (p_subrandom() << 10)
	th = p_spawnmobj(x, y, z, Mobjtype_t.mt_blood)
	th.momz = (1 << 16) * 2
	th.tics -= p_random() & 3
	if th.tics < 1 {
	th.tics = 1
	}
	if damage <= 12 && damage >= 9 {
	p_setmobjstate(th, Statenum_t.s_blood2)
	}
	else if damage < 9 {
	p_setmobjstate(th, Statenum_t.s_blood3)
	}
}

[c:'P_CheckMissileSpawn']
fn p_checkmissilespawn(th &Mobj_t)  {
	th.tics -= p_random() & 3
	if th.tics < 1 {
	th.tics = 1
	}
	th.x += (th.momx >> 1)
	th.y += (th.momy >> 1)
	th.z += (th.momz >> 1)
	if !p_trymove(th, th.x, th.y) {
	p_explodemissile(th)
	}
}

[c:'P_SubstNullMobj']
fn p_substnullmobj(mobj &Mobj_t) &Mobj_t {
	if mobj == (voidptr(0)) {
		dummy_mobj := Mobj_t{}
		dummy_mobj.x = 0
		dummy_mobj.y = 0
		dummy_mobj.z = 0
		dummy_mobj.flags = 0
		mobj = &dummy_mobj
	}
	return mobj
}

[c:'P_SpawnMissile']
fn p_spawnmissile(source &Mobj_t, dest &Mobj_t, type_ Mobjtype_t) &Mobj_t {
	th := &Mobj_t(0)
	an := u32(0)
	dist := 0
	th = p_spawnmobj(source.x, source.y, source.z + 4 * 8 * (1 << 16), type_)
	if th.info.seesound {
	s_startsound(th, th.info.seesound)
	}
	th.target = source
	an = r_pointtoangle2(source.x, source.y, dest.x, dest.y)
	if dest.flags & Mobjflag_t.mf_shadow {
	an += p_subrandom() << 20
	}
	th.angle = an
	an >>= 19
	th.momx = fixedmul(th.info.speed, finecosine [an] )
	th.momy = fixedmul(th.info.speed, finesine [an] )
	dist = p_aproxdistance(dest.x - source.x, dest.y - source.y)
	dist = dist / th.info.speed
	if dist < 1 {
	dist = 1
	}
	th.momz = (dest.z - source.z) / dist
	p_checkmissilespawn(th)
	return th
}

[c:'P_SpawnPlayerMissile']
fn p_spawnplayermissile(source &Mobj_t, type_ Mobjtype_t)  {
	th := &Mobj_t(0)
	an := u32(0)
	x := 0
	y := 0
	z := 0
	slope := 0
	an = source.angle
	slope = p_aimlineattack(source, an, 16 * 64 * (1 << 16))
	if !linetarget {
		an += 1 << 26
		slope = p_aimlineattack(source, an, 16 * 64 * (1 << 16))
		if !linetarget {
			an -= 2 << 26
			slope = p_aimlineattack(source, an, 16 * 64 * (1 << 16))
		}
		if !linetarget {
			an = source.angle
			slope = 0
		}
	}
	x = source.x
	y = source.y
	z = source.z + 4 * 8 * (1 << 16)
	th = p_spawnmobj(x, y, z, type_)
	if th.info.seesound {
	s_startsound(th, th.info.seesound)
	}
	th.target = source
	th.angle = an
	th.momx = fixedmul(th.info.speed, finecosine [an >> 19] )
	th.momy = fixedmul(th.info.speed, finesine [an >> 19] )
	th.momz = fixedmul(th.info.speed, slope)
	p_checkmissilespawn(th)
}

