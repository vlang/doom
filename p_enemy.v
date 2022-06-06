[translated]
module main


[typedef]
struct C.FILE {}


// vstart

fn rand() int

fn system( &i8) int

[c:'_Exit']
fn _exit( int) 

[c:'_Exit']
fn _exit( int) 

fn random() int

[c:'P_Random']
fn p_random() int

[c:'P_SubRandom']
fn p_subrandom() int

[c2v_variadic]
[c:'I_Error']
fn i_error(error &i8) 

[c:'FixedMul']
fn fixedmul(a int, b int) int


const ( // empty enum
)

[c:'R_PointToAngle']
fn r_pointtoangle(x int, y int) Angle_t

[c:'R_PointToAngle2']
fn r_pointtoangle2(x1 int, y1 int, x2 int, y2 int) Angle_t

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

[c:'P_SpawnMissile']
fn p_spawnmissile(source &Mobj_t, dest &Mobj_t, type_ Mobjtype_t) &Mobj_t

[c:'P_NoiseAlert']
fn p_noisealert(target &Mobj_t, emmiter &Mobj_t) 

[c:'P_AproxDistance']
fn p_aproxdistance(dx int, dy int) int

[c:'P_LineOpening']
fn p_lineopening(linedef &Line_t) 

[c:'P_BlockThingsIterator']
fn p_blockthingsiterator(x int, y int, func fn (&Mobj_t) bool) bool

[c:'P_UnsetThingPosition']
fn p_unsetthingposition(thing &Mobj_t) 

[c:'P_SetThingPosition']
fn p_setthingposition(thing &Mobj_t) 

[c:'P_CheckPosition']
fn p_checkposition(thing &Mobj_t, x int, y int) bool

[c:'P_TryMove']
fn p_trymove(thing &Mobj_t, x int, y int) bool

[c:'P_TeleportMove']
fn p_teleportmove(thing &Mobj_t, x int, y int) bool

[c:'P_CheckSight']
fn p_checksight(t1 &Mobj_t, t2 &Mobj_t) bool

[c:'P_AimLineAttack']
fn p_aimlineattack(t1 &Mobj_t, angle Angle_t, distance int) int

[c:'P_LineAttack']
fn p_lineattack(t1 &Mobj_t, angle Angle_t, distance int, slope int, damage int) 

[c:'P_RadiusAttack']
fn p_radiusattack(spot &Mobj_t, source &Mobj_t, damage int) 

[c:'P_DamageMobj']
fn p_damagemobj(target &Mobj_t, inflictor &Mobj_t, source &Mobj_t, damage int) 

[c:'P_UseSpecialLine']
fn p_usespecialline(thing &Mobj_t, line &Line_t, side int) bool

[c:'EV_DoDoor']
fn ev_dodoor(line &Line_t, type_ Vldoor_e) int

[c:'EV_DoFloor']
fn ev_dofloor(line &Line_t, floortype Floor_e) int

[c:'S_Start']
fn s_start() 

[c:'S_StartSound']
fn s_startsound(origin voidptr, sound_id int) 

[c:'G_ExitLevel']
fn g_exitlevel() 

enum Dirtype_t {
	di_east
	di_northeast
	di_north
	di_northwest
	di_west
	di_southwest
	di_south
	di_southeast
	di_nodir
	numdirs
}

[export:'opposite']
const (
opposite   = [Dirtype_t.di_west, Dirtype_t.di_southwest, Dirtype_t.di_south, Dirtype_t.di_southeast, Dirtype_t.di_east, Dirtype_t.di_northeast, Dirtype_t.di_north, Dirtype_t.di_northwest, Dirtype_t.di_nodir]!

)

[export:'diags']
const (
diags   = [Dirtype_t.di_northwest, Dirtype_t.di_northeast, Dirtype_t.di_southwest, Dirtype_t.di_southeast]!

)

[c:'A_Fall']
fn a_fall(actor &Mobj_t) 

[weak]__global ( soundtarget &Mobj_t 

)

[c:'P_RecursiveSound']
fn p_recursivesound(sec &Sector_t, soundblocks int)  {
	i := 0
	check := &Line_t(0)
	other := &Sector_t(0)
	if 1 {
	return 
	}
	if sec.validcount == validcount && sec.soundtraversed <= soundblocks + 1 {
		return 
	}
	sec.validcount = validcount
	sec.soundtraversed = soundblocks + 1
	sec.soundtarget = soundtarget
	for i = 0 ; i < sec.linecount ; i ++ {
		check = sec.lines [i] 
		if !(check.flags & 4) {
		continue
		
		}
		p_lineopening(check)
		if openrange <= 0 {
		continue
		
		}
		if sides [check.sidenum [0] ] .sector == sec {
		other = sides [check.sidenum [1] ] .sector
		}
		else { // 3
		other = sides [check.sidenum [0] ] .sector
}
		if check.flags & 64 {
			if !soundblocks {
			p_recursivesound(other, 1)
			}
		}
		else { // 3
		p_recursivesound(other, soundblocks)
}
	}
}

[c:'P_NoiseAlert']
fn p_noisealert(target &Mobj_t, emmiter &Mobj_t)  {
	soundtarget = target
	validcount ++
	p_recursivesound(emmiter.subsector.sector, 0)
}

[c:'P_CheckMeleeRange']
fn p_checkmeleerange(actor &Mobj_t) bool {
	pl := &Mobj_t(0)
	dist := 0
	range := 0
	if !actor.target {
	return false
	}
	pl = actor.target
	dist = p_aproxdistance(pl.x - actor.x, pl.y - actor.y)
	if gameversion <= GameVersion_t.exe_doom_1_2 {
	range = (64 * (1 << 16))
	}
	else { // 3
	range = (64 * (1 << 16)) - 20 * (1 << 16) + pl.info.radius
}
	if dist >= range {
	return false
	}
	if !p_checksight(actor, actor.target) {
	return false
	}
	return true
}

[c:'P_CheckMissileRange']
fn p_checkmissilerange(actor &Mobj_t) bool {
	dist := 0
	if !p_checksight(actor, actor.target) {
	return false
	}
	if actor.flags & Mobjflag_t.mf_justhit {
		actor.flags &= ~Mobjflag_t.mf_justhit
		return true
	}
	if actor.reactiontime {
	return false
	}
	dist = p_aproxdistance(actor.x - actor.target.x, actor.y - actor.target.y) - 64 * (1 << 16)
	if !actor.info.meleestate {
	dist -= 128 * (1 << 16)
	}
	dist >>= 16
	if actor.type_ == Mobjtype_t.mt_vile {
		if dist > 14 * 64 {
		return false
		}
	}
	if actor.type_ == Mobjtype_t.mt_undead {
		if dist < 196 {
		return false
		}
		dist >>= 1
	}
	if actor.type_ == Mobjtype_t.mt_cyborg || actor.type_ == Mobjtype_t.mt_spider || actor.type_ == Mobjtype_t.mt_skull {
		dist >>= 1
	}
	if dist > 200 {
	dist = 200
	}
	if actor.type_ == Mobjtype_t.mt_cyborg && dist > 160 {
	dist = 160
	}
	if p_random() < dist {
	return false
	}
	return true
}

[export:'xspeed']
const (
xspeed   = [(1 << 16), 47000, 0, -47000, -(1 << 16), -47000, 0, 47000]!

)

[export:'yspeed']
const (
yspeed   = [0, 47000, (1 << 16), 47000, 0, -47000, -(1 << 16), -47000]!

)

[c:'P_Move']
fn p_move(actor &Mobj_t) bool {
	tryx := 0
	tryy := 0
	ld := &Line_t(0)
	try_ok := false
	good := false
	if actor.movedir == Dirtype_t.di_nodir {
	return false
	}
	if u32(actor.movedir) >= 8 {
	i_error(c'Weird actor->movedir!')
	}
	tryx = actor.x + actor.info.speed * xspeed [actor.movedir] 
	tryy = actor.y + actor.info.speed * yspeed [actor.movedir] 
	try_ok = p_trymove(actor, tryx, tryy)
	if !try_ok {
		if actor.flags & Mobjflag_t.mf_float && floatok {
			if actor.z < tmfloorz {
			actor.z += ((1 << 16) * 4)
			}
			else { // 3
			actor.z -= ((1 << 16) * 4)
}
			actor.flags |= Mobjflag_t.mf_infloat
			return true
		}
		if !numspechit {
		return false
		}
		actor.movedir = Dirtype_t.di_nodir
		good = false
		for numspechit -- {
			ld = spechit [numspechit] 
			if p_usespecialline(actor, ld, 0) {
			good = true
			}
		}
		return good
	}
	else {
		actor.flags &= ~Mobjflag_t.mf_infloat
	}
	if !(actor.flags & Mobjflag_t.mf_float) {
	actor.z = actor.floorz
	}
	return true
}

[c:'P_TryWalk']
fn p_trywalk(actor &Mobj_t) bool {
	if !p_move(actor) {
		return false
	}
	actor.movecount = p_random() & 15
	return true
}

[c:'P_NewChaseDir']
fn p_newchasedir(actor &Mobj_t)  {
	deltax := 0
	deltay := 0
	d := [3]Dirtype_t{}
	tdir := 0
	olddir := u32(0)
	turnaround := u32(0)
	if !actor.target {
	i_error(c'P_NewChaseDir: called with no target')
	}
	olddir = actor.movedir
	turnaround = opposite [olddir] 
	deltax = actor.target.x - actor.x
	deltay = actor.target.y - actor.y
	if deltax > 10 * (1 << 16) {
	d [1]  = Dirtype_t.di_east
	}
	else if deltax < -10 * (1 << 16) {
	d [1]  = Dirtype_t.di_west
	}
	else { // 3
	d [1]  = Dirtype_t.di_nodir
}
	if deltay < -10 * (1 << 16) {
	d [2]  = Dirtype_t.di_south
	}
	else if deltay > 10 * (1 << 16) {
	d [2]  = Dirtype_t.di_north
	}
	else { // 3
	d [2]  = Dirtype_t.di_nodir
}
	if d [1]  != Dirtype_t.di_nodir && d [2]  != Dirtype_t.di_nodir {
		actor.movedir = diags [((deltay < 0) << 1) + (deltax > 0)] 
		if actor.movedir != int(turnaround) && p_trywalk(actor) {
		return 
		}
	}
	if p_random() > 200 || C.abs(deltay) > C.abs(deltax) {
		tdir = d [1] 
		d [1]  = d [2] 
		d [2]  = tdir
	}
	if d [1]  == turnaround {
	d [1]  = Dirtype_t.di_nodir
	}
	if d [2]  == turnaround {
	d [2]  = Dirtype_t.di_nodir
	}
	if d [1]  != Dirtype_t.di_nodir {
		actor.movedir = d [1] 
		if p_trywalk(actor) {
			return 
		}
	}
	if d [2]  != Dirtype_t.di_nodir {
		actor.movedir = d [2] 
		if p_trywalk(actor) {
		return 
		}
	}
	if olddir != Dirtype_t.di_nodir {
		actor.movedir = olddir
		if p_trywalk(actor) {
		return 
		}
	}
	if p_random() & 1 {
		for tdir = Dirtype_t.di_east ; tdir <= Dirtype_t.di_southeast ; tdir ++ {
			if tdir != int(turnaround) {
				actor.movedir = tdir
				if p_trywalk(actor) {
				return 
				}
			}
		}
	}
	else {
		for tdir = Dirtype_t.di_southeast ; tdir != (Dirtype_t.di_east - 1) ; tdir -- {
			if tdir != int(turnaround) {
				actor.movedir = tdir
				if p_trywalk(actor) {
				return 
				}
			}
		}
	}
	if turnaround != Dirtype_t.di_nodir {
		actor.movedir = turnaround
		if p_trywalk(actor) {
		return 
		}
	}
	actor.movedir = Dirtype_t.di_nodir
}

[c:'P_LookForPlayers']
fn p_lookforplayers(actor &Mobj_t, allaround bool) bool {
	c := 0
	stop := 0
	player := &Player_t(0)
	an := u32(0)
	dist := 0
	c = 0
	stop = (actor.lastlook - 1) & 3
	for  ;  ; actor.lastlook = (actor.lastlook + 1) & 3 {
		if !playeringame [actor.lastlook]  {
		continue
		
		}
		if c ++ == 2 || actor.lastlook == stop {
			return false
		}
		player = &players [actor.lastlook] 
		if player.health <= 0 {
		continue
		
		}
		if !p_checksight(actor, player.mo) {
		continue
		
		}
		if !allaround {
			an = r_pointtoangle2(actor.x, actor.y, player.mo.x, player.mo.y) - actor.angle
			if an > 1073741824 && an < 3221225472 {
				dist = p_aproxdistance(player.mo.x - actor.x, player.mo.y - actor.y)
				if dist > (64 * (1 << 16)) {
				continue
				
				}
			}
		}
		actor.target = player.mo
		return true
	}
	return false
}

[c:'A_KeenDie']
fn a_keendie(mo &Mobj_t)  {
	th := &Thinker_t(0)
	mo2 := &Mobj_t(0)
	junk := Line_t{}
	a_fall(mo)
	for th = thinkercap.next ; th != &thinkercap ; th = th.next {
		if th.function.acp1 != Actionf_p1(p_mobjthinker) {
		continue
		
		}
		mo2 = &Mobj_t(th)
		if mo2 != mo && mo2.type_ == mo.type_ && mo2.health > 0 {
			return 
		}
	}
	junk.tag = 666
	ev_dodoor(&junk, Vldoor_e.vld_open)
}

[c:'A_Look']
fn a_look(actor &Mobj_t)  {
	targ := &Mobj_t(0)
	actor.threshold = 0
	targ = actor.subsector.sector.soundtarget
	if targ && (targ.flags & Mobjflag_t.mf_shootable) {
		actor.target = targ
		if actor.flags & Mobjflag_t.mf_ambush {
			if p_checksight(actor, actor.target) {
			goto seeyou /* id: 0x143b4bc40 */
			}
		}
		else { // 3
		goto seeyou /* id: 0x143b4bc40 */
		
}
	}
	if !p_lookforplayers(actor, false) {
	return 
	}
	/*RRRREG seeyou id=0x143b4bc40 */
	seeyou: 
	if actor.info.seesound {
		sound := 0
		x := int(Sfxenum_t.sfx_posit1)
		match Sfxenum_t(actor.info.seesound) {
		 .sfx_posit1, .sfx_posit2, .sfx_posit3{
		sound = x + p_random() % 3
		 }
		.sfx_bgsit1, .sfx_bgsit2{
		sound = x + p_random() % 2
		}
		 else { 
		sound = actor.info.seesound
		}
		}
		if actor.type_ == Mobjtype_t.mt_spider || actor.type_ == Mobjtype_t.mt_cyborg {
			s_startsound((voidptr(0)), sound)
		}
		else { // 3
		s_startsound(actor, sound)
}
	}
	p_setmobjstate(actor, actor.info.seestate)
}

[c:'A_Chase']
fn a_chase(actor &Mobj_t)  {
	delta := 0
	if actor.reactiontime {
	actor.reactiontime --
	}
	if actor.threshold {
		if gameversion > GameVersion_t.exe_doom_1_2 && (!actor.target || actor.target.health <= 0) {
			actor.threshold = 0
		}
		else { // 3
		actor.threshold --
}
	}
	if actor.movedir < 8 {
		actor.angle &= (7 << 29)
		delta = actor.angle - (actor.movedir << 29)
		if delta > 0 {
		actor.angle -= 1073741824 / 2
		}
		else if delta < 0 {
		actor.angle += 1073741824 / 2
		}
	}
	if !actor.target || !(actor.target.flags & Mobjflag_t.mf_shootable) {
		if p_lookforplayers(actor, true) {
		return 
		}
		p_setmobjstate(actor, actor.info.spawnstate)
		return 
	}
	if actor.flags & Mobjflag_t.mf_justattacked {
		actor.flags &= ~Mobjflag_t.mf_justattacked
		if gameskill != Skill_t.sk_nightmare && !fastparm {
		p_newchasedir(actor)
		}
		return 
	}
	if actor.info.meleestate && p_checkmeleerange(actor) {
		if actor.info.attacksound {
		s_startsound(actor, actor.info.attacksound)
		}
		p_setmobjstate(actor, actor.info.meleestate)
		return 
	}
	if actor.info.missilestate {
		if gameskill < Skill_t.sk_nightmare && !fastparm && actor.movecount {
			goto nomissile /* id: 0x143b4f6d0 */
		}
		if !p_checkmissilerange(actor) {
		goto nomissile /* id: 0x143b4f6d0 */
		}
		p_setmobjstate(actor, actor.info.missilestate)
		actor.flags |= Mobjflag_t.mf_justattacked
		return 
	}
	/*RRRREG nomissile id=0x143b4f6d0 */
	nomissile: 
	if netgame && !actor.threshold && !p_checksight(actor, actor.target) {
		if p_lookforplayers(actor, true) {
		return 
		}
	}
	if actor.movecount -- < 0 || !p_move(actor) {
		p_newchasedir(actor)
	}
	if actor.info.activesound && p_random() < 3 {
		s_startsound(actor, actor.info.activesound)
	}
}

[c:'A_FaceTarget']
fn a_facetarget(actor &Mobj_t)  {
	if !actor.target {
	return 
	}
	actor.flags &= ~Mobjflag_t.mf_ambush
	actor.angle = r_pointtoangle2(actor.x, actor.y, actor.target.x, actor.target.y)
	if actor.target.flags & Mobjflag_t.mf_shadow {
	actor.angle += p_subrandom() << 21
	}
}

[c:'A_PosAttack']
fn a_posattack(actor &Mobj_t)  {
	angle := 0
	damage := 0
	slope := 0
	if !actor.target {
	return 
	}
	a_facetarget(actor)
	angle = actor.angle
	slope = p_aimlineattack(actor, angle, (32 * 64 * (1 << 16)))
	s_startsound(actor, Sfxenum_t.sfx_pistol)
	angle += p_subrandom() << 20
	damage = ((p_random() % 5) + 1) * 3
	p_lineattack(actor, angle, (32 * 64 * (1 << 16)), slope, damage)
}

[c:'A_SPosAttack']
fn a_sposattack(actor &Mobj_t)  {
	i := 0
	angle := 0
	bangle := 0
	damage := 0
	slope := 0
	if !actor.target {
	return 
	}
	s_startsound(actor, Sfxenum_t.sfx_shotgn)
	a_facetarget(actor)
	bangle = actor.angle
	slope = p_aimlineattack(actor, bangle, (32 * 64 * (1 << 16)))
	for i = 0 ; i < 3 ; i ++ {
		angle = bangle + (p_subrandom() << 20)
		damage = ((p_random() % 5) + 1) * 3
		p_lineattack(actor, angle, (32 * 64 * (1 << 16)), slope, damage)
	}
}

[c:'A_CPosAttack']
fn a_cposattack(actor &Mobj_t)  {
	angle := 0
	bangle := 0
	damage := 0
	slope := 0
	if !actor.target {
	return 
	}
	s_startsound(actor, Sfxenum_t.sfx_shotgn)
	a_facetarget(actor)
	bangle = actor.angle
	slope = p_aimlineattack(actor, bangle, (32 * 64 * (1 << 16)))
	angle = bangle + (p_subrandom() << 20)
	damage = ((p_random() % 5) + 1) * 3
	p_lineattack(actor, angle, (32 * 64 * (1 << 16)), slope, damage)
}

[c:'A_CPosRefire']
fn a_cposrefire(actor &Mobj_t)  {
	a_facetarget(actor)
	if p_random() < 40 {
	return 
	}
	if !actor.target || actor.target.health <= 0 || !p_checksight(actor, actor.target) {
		p_setmobjstate(actor, actor.info.seestate)
	}
}

[c:'A_SpidRefire']
fn a_spidrefire(actor &Mobj_t)  {
	a_facetarget(actor)
	if p_random() < 10 {
	return 
	}
	if !actor.target || actor.target.health <= 0 || !p_checksight(actor, actor.target) {
		p_setmobjstate(actor, actor.info.seestate)
	}
}

[c:'A_BspiAttack']
fn a_bspiattack(actor &Mobj_t)  {
	if !actor.target {
	return 
	}
	a_facetarget(actor)
	p_spawnmissile(actor, actor.target, Mobjtype_t.mt_arachplaz)
}

[c:'A_TroopAttack']
fn a_troopattack(actor &Mobj_t)  {
	damage := 0
	if !actor.target {
	return 
	}
	a_facetarget(actor)
	if p_checkmeleerange(actor) {
		s_startsound(actor, Sfxenum_t.sfx_claw)
		damage = (p_random() % 8 + 1) * 3
		p_damagemobj(actor.target, actor, actor, damage)
		return 
	}
	p_spawnmissile(actor, actor.target, Mobjtype_t.mt_troopshot)
}

[c:'A_SargAttack']
fn a_sargattack(actor &Mobj_t)  {
	damage := 0
	if !actor.target {
	return 
	}
	a_facetarget(actor)
	if gameversion > GameVersion_t.exe_doom_1_2 {
		if !p_checkmeleerange(actor) {
		return 
		}
	}
	damage = ((p_random() % 10) + 1) * 4
	if gameversion <= GameVersion_t.exe_doom_1_2 {
	p_lineattack(actor, actor.angle, (64 * (1 << 16)), 0, damage)
	}
	else { // 3
	p_damagemobj(actor.target, actor, actor, damage)
}
}

[c:'A_HeadAttack']
fn a_headattack(actor &Mobj_t)  {
	damage := 0
	if !actor.target {
	return 
	}
	a_facetarget(actor)
	if p_checkmeleerange(actor) {
		damage = (p_random() % 6 + 1) * 10
		p_damagemobj(actor.target, actor, actor, damage)
		return 
	}
	p_spawnmissile(actor, actor.target, Mobjtype_t.mt_headshot)
}

[c:'A_CyberAttack']
fn a_cyberattack(actor &Mobj_t)  {
	if !actor.target {
	return 
	}
	a_facetarget(actor)
	p_spawnmissile(actor, actor.target, Mobjtype_t.mt_rocket)
}

[c:'A_BruisAttack']
fn a_bruisattack(actor &Mobj_t)  {
	damage := 0
	if !actor.target {
	return 
	}
	if p_checkmeleerange(actor) {
		s_startsound(actor, Sfxenum_t.sfx_claw)
		damage = (p_random() % 8 + 1) * 10
		p_damagemobj(actor.target, actor, actor, damage)
		return 
	}
	p_spawnmissile(actor, actor.target, Mobjtype_t.mt_bruisershot)
}

[c:'A_SkelMissile']
fn a_skelmissile(actor &Mobj_t)  {
	mo := &Mobj_t(0)
	if !actor.target {
	return 
	}
	a_facetarget(actor)
	actor.z += 16 * (1 << 16)
	mo = p_spawnmissile(actor, actor.target, Mobjtype_t.mt_tracer)
	actor.z -= 16 * (1 << 16)
	mo.x += mo.momx
	mo.y += mo.momy
	mo.tracer = actor.target
}

/*!*/[weak] __global ( TRACEANGLE  = int (201326592)
)

[c:'A_Tracer']
fn a_tracer(actor &Mobj_t)  {
	exact := u32(0)
	dist := 0
	slope := 0
	dest := &Mobj_t(0)
	th := &Mobj_t(0)
	if gametic & 3 {
	return 
	}
	p_spawnpuff(actor.x, actor.y, actor.z)
	th = p_spawnmobj(actor.x - actor.momx, actor.y - actor.momy, actor.z, Mobjtype_t.mt_smoke)
	th.momz = (1 << 16)
	th.tics -= p_random() & 3
	if th.tics < 1 {
	th.tics = 1
	}
	dest = actor.tracer
	if !dest || dest.health <= 0 {
	return 
	}
	exact = r_pointtoangle2(actor.x, actor.y, dest.x, dest.y)
	if exact != actor.angle {
		if exact - actor.angle > 2147483648 {
			actor.angle -= TRACEANGLE
			if exact - actor.angle < 2147483648 {
			actor.angle = exact
			}
		}
		else {
			actor.angle += TRACEANGLE
			if exact - actor.angle > 2147483648 {
			actor.angle = exact
			}
		}
	}
	exact = actor.angle >> 19
	actor.momx = fixedmul(actor.info.speed, finecosine [exact] )
	actor.momy = fixedmul(actor.info.speed, finesine [exact] )
	dist = p_aproxdistance(dest.x - actor.x, dest.y - actor.y)
	dist = dist / actor.info.speed
	if dist < 1 {
	dist = 1
	}
	slope = (dest.z + 40 * (1 << 16) - actor.z) / dist
	if slope < actor.momz {
	actor.momz -= (1 << 16) / 8
	}
	else { // 3
	actor.momz += (1 << 16) / 8
}
}

[c:'A_SkelWhoosh']
fn a_skelwhoosh(actor &Mobj_t)  {
	if !actor.target {
	return 
	}
	a_facetarget(actor)
	s_startsound(actor, Sfxenum_t.sfx_skeswg)
}

[c:'A_SkelFist']
fn a_skelfist(actor &Mobj_t)  {
	damage := 0
	if !actor.target {
	return 
	}
	a_facetarget(actor)
	if p_checkmeleerange(actor) {
		damage = ((p_random() % 10) + 1) * 6
		s_startsound(actor, Sfxenum_t.sfx_skepch)
		p_damagemobj(actor.target, actor, actor, damage)
	}
}

[weak]__global ( corpsehit &Mobj_t 

)

[weak]__global ( vileobj &Mobj_t 

)

[weak]__global ( viletryx int 

)

[weak]__global ( viletryy int 

)

[c:'PIT_VileCheck']
fn pit_vilecheck(thing &Mobj_t) bool {
	maxdist := 0
	check := false
	if !(thing.flags & Mobjflag_t.mf_corpse) {
	return true
	}
	if thing.tics != -1 {
	return true
	}
	if thing.info.raisestate == Statenum_t.s_null {
	return true
	}
	maxdist = thing.info.radius + mobjinfo [int(Mobjtype_t.mt_vile)] .radius
	if C.abs(thing.x - viletryx) > maxdist || C.abs(thing.y - viletryy) > maxdist {
	return true
	}
	corpsehit = thing
	corpsehit.momx = 0
	corpsehit.momy = 0
	corpsehit.height <<= 2
	check = p_checkposition(corpsehit, corpsehit.x, corpsehit.y)
	corpsehit.height >>= 2
	if !check {
	return true
	}
	return false
}

[c:'A_VileChase']
fn a_vilechase(actor &Mobj_t)  {
	xl := 0
	xh := 0
	yl := 0
	yh := 0
	bx := 0
	by := 0
	info := &Mobjinfo_t(0)
	temp := &Mobj_t(0)
	if actor.movedir != Dirtype_t.di_nodir {
		viletryx = actor.x + actor.info.speed * xspeed [actor.movedir] 
		viletryy = actor.y + actor.info.speed * yspeed [actor.movedir] 
		xl = (viletryx - bmaporgx - 32 * (1 << 16) * 2) >> (16 + 7)
		xh = (viletryx - bmaporgx + 32 * (1 << 16) * 2) >> (16 + 7)
		yl = (viletryy - bmaporgy - 32 * (1 << 16) * 2) >> (16 + 7)
		yh = (viletryy - bmaporgy + 32 * (1 << 16) * 2) >> (16 + 7)
		vileobj = actor
		for bx = xl ; bx <= xh ; bx ++ {
			for by = yl ; by <= yh ; by ++ {
				if !p_blockthingsiterator(bx, by, pit_vilecheck) {
					temp = actor.target
					actor.target = corpsehit
					a_facetarget(actor)
					actor.target = temp
					p_setmobjstate(actor, Statenum_t.s_vile_heal1)
					s_startsound(corpsehit, Sfxenum_t.sfx_slop)
					info = corpsehit.info
					p_setmobjstate(corpsehit, info.raisestate)
					corpsehit.height <<= 2
					corpsehit.flags = info.flags
					corpsehit.health = info.spawnhealth
					corpsehit.target = (voidptr(0))
					return 
				}
			}
		}
	}
	a_chase(actor)
}

[c:'A_VileStart']
fn a_vilestart(actor &Mobj_t)  {
	s_startsound(actor, Sfxenum_t.sfx_vilatk)
}

[c:'A_Fire']
fn a_fire(actor &Mobj_t) 

[c:'A_StartFire']
fn a_startfire(actor &Mobj_t)  {
	s_startsound(actor, Sfxenum_t.sfx_flamst)
	a_fire(actor)
}

[c:'A_FireCrackle']
fn a_firecrackle(actor &Mobj_t)  {
	s_startsound(actor, Sfxenum_t.sfx_flame)
	a_fire(actor)
}

[c:'A_Fire']
fn a_fire(actor &Mobj_t)  {
	dest := &Mobj_t(0)
	target := &Mobj_t(0)
	an := u32(0)
	dest = actor.tracer
	if !dest {
	return 
	}
	target = p_substnullmobj(actor.target)
	if !p_checksight(target, dest) {
	return 
	}
	an = dest.angle >> 19
	p_unsetthingposition(actor)
	actor.x = dest.x + fixedmul(24 * (1 << 16), finecosine [an] )
	actor.y = dest.y + fixedmul(24 * (1 << 16), finesine [an] )
	actor.z = dest.z
	p_setthingposition(actor)
}

[c:'A_VileTarget']
fn a_viletarget(actor &Mobj_t)  {
	fog := &Mobj_t(0)
	if !actor.target {
	return 
	}
	a_facetarget(actor)
	fog = p_spawnmobj(actor.target.x, actor.target.x, actor.target.z, Mobjtype_t.mt_fire)
	actor.tracer = fog
	fog.target = actor
	fog.tracer = actor.target
	a_fire(fog)
}

[c:'A_VileAttack']
fn a_vileattack(actor &Mobj_t)  {
	fire := &Mobj_t(0)
	an := 0
	if !actor.target {
	return 
	}
	a_facetarget(actor)
	if !p_checksight(actor, actor.target) {
	return 
	}
	s_startsound(actor, Sfxenum_t.sfx_barexp)
	p_damagemobj(actor.target, actor, actor, 20)
	actor.target.momz = 1000 * (1 << 16) / actor.target.info.mass
	an = actor.angle >> 19
	fire = actor.tracer
	if !fire {
	return 
	}
	fire.x = actor.target.x - fixedmul(24 * (1 << 16), finecosine [an] )
	fire.y = actor.target.y - fixedmul(24 * (1 << 16), finesine [an] )
	p_radiusattack(fire, actor, 70)
}

[c:'A_FatRaise']
fn a_fatraise(actor &Mobj_t)  {
	a_facetarget(actor)
	s_startsound(actor, Sfxenum_t.sfx_manatk)
}

[c:'A_FatAttack1']
fn a_fatattack1(actor &Mobj_t)  {
	mo := &Mobj_t(0)
	target := &Mobj_t(0)
	an := 0
	a_facetarget(actor)
	actor.angle += (1073741824 / 8)
	target = p_substnullmobj(actor.target)
	p_spawnmissile(actor, target, Mobjtype_t.mt_fatshot)
	mo = p_spawnmissile(actor, target, Mobjtype_t.mt_fatshot)
	mo.angle += (1073741824 / 8)
	an = mo.angle >> 19
	mo.momx = fixedmul(mo.info.speed, finecosine [an] )
	mo.momy = fixedmul(mo.info.speed, finesine [an] )
}

[c:'A_FatAttack2']
fn a_fatattack2(actor &Mobj_t)  {
	mo := &Mobj_t(0)
	target := &Mobj_t(0)
	an := 0
	a_facetarget(actor)
	actor.angle -= (1073741824 / 8)
	target = p_substnullmobj(actor.target)
	p_spawnmissile(actor, target, Mobjtype_t.mt_fatshot)
	mo = p_spawnmissile(actor, target, Mobjtype_t.mt_fatshot)
	mo.angle -= (1073741824 / 8) * 2
	an = mo.angle >> 19
	mo.momx = fixedmul(mo.info.speed, finecosine [an] )
	mo.momy = fixedmul(mo.info.speed, finesine [an] )
}

[c:'A_FatAttack3']
fn a_fatattack3(actor &Mobj_t)  {
	mo := &Mobj_t(0)
	target := &Mobj_t(0)
	an := 0
	a_facetarget(actor)
	target = p_substnullmobj(actor.target)
	mo = p_spawnmissile(actor, target, Mobjtype_t.mt_fatshot)
	mo.angle -= (1073741824 / 8) / 2
	an = mo.angle >> 19
	mo.momx = fixedmul(mo.info.speed, finecosine [an] )
	mo.momy = fixedmul(mo.info.speed, finesine [an] )
	mo = p_spawnmissile(actor, target, Mobjtype_t.mt_fatshot)
	mo.angle += (1073741824 / 8) / 2
	an = mo.angle >> 19
	mo.momx = fixedmul(mo.info.speed, finecosine [an] )
	mo.momy = fixedmul(mo.info.speed, finesine [an] )
}

[c:'A_SkullAttack']
fn a_skullattack(actor &Mobj_t)  {
	dest := &Mobj_t(0)
	an := u32(0)
	dist := 0
	if !actor.target {
	return 
	}
	dest = actor.target
	actor.flags |= Mobjflag_t.mf_skullfly
	s_startsound(actor, actor.info.attacksound)
	a_facetarget(actor)
	an = actor.angle >> 19
	actor.momx = fixedmul((20 * (1 << 16)), finecosine [an] )
	actor.momy = fixedmul((20 * (1 << 16)), finesine [an] )
	dist = p_aproxdistance(dest.x - actor.x, dest.y - actor.y)
	dist = dist / (20 * (1 << 16))
	if dist < 1 {
	dist = 1
	}
	actor.momz = (dest.z + (dest.height >> 1) - actor.z) / dist
}

[c:'A_PainShootSkull']
fn a_painshootskull(actor &Mobj_t, angle Angle_t)  {
	x := 0
	y := 0
	z := 0
	newmobj := &Mobj_t(0)
	an := u32(0)
	prestep := 0
	count := 0
	currentthinker := &Thinker_t(0)
	count = 0
	currentthinker = thinkercap.next
	for currentthinker != &thinkercap {
		if (currentthinker.function.acp1 == Actionf_p1(p_mobjthinker)) && (&Mobj_t(currentthinker)).type_ == Mobjtype_t.mt_skull {
		count ++
		}
		currentthinker = currentthinker.next
	}
	if count > 20 {
	return 
	}
	an = angle >> 19
	prestep = 4 * (1 << 16) + 3 * (actor.info.radius + mobjinfo [int(Mobjtype_t.mt_skull)] .radius) / 2
	x = actor.x + fixedmul(prestep, finecosine [an] )
	y = actor.y + fixedmul(prestep, finesine [an] )
	z = actor.z + 8 * (1 << 16)
	newmobj = p_spawnmobj(x, y, z, Mobjtype_t.mt_skull)
	if !p_trymove(newmobj, newmobj.x, newmobj.y) {
		p_damagemobj(newmobj, actor, actor, 10000)
		return 
	}
	newmobj.target = actor.target
	a_skullattack(newmobj)
}

[c:'A_PainAttack']
fn a_painattack(actor &Mobj_t)  {
	if !actor.target {
	return 
	}
	a_facetarget(actor)
	a_painshootskull(actor, actor.angle)
}

[c:'A_PainDie']
fn a_paindie(actor &Mobj_t)  {
	a_fall(actor)
	a_painshootskull(actor, actor.angle + 1073741824)
	a_painshootskull(actor, actor.angle + 2147483648)
	a_painshootskull(actor, actor.angle + 3221225472)
}

[c:'A_Scream']
fn a_scream(actor &Mobj_t)  {
	sound := 0
	if actor.info.deathsound == 0 {
	return 
	}
	x := Sfxenum_t.sfx_podth1
	match Sfxenum_t(actor.info.deathsound) {
	 .sfx_podth1, .sfx_podth2, .sfx_podth3{
	sound = x + p_random() % 3
	 }
	.sfx_bgdth1, .sfx_bgdth2{
	sound = x + p_random() % 2
	}
	 else { 
	sound = actor.info.deathsound
	}
	}
	if actor.type_ == Mobjtype_t.mt_spider || actor.type_ == Mobjtype_t.mt_cyborg {
		s_startsound((voidptr(0)), sound)
	}
	else { // 3
	s_startsound(actor, sound)
}
}

[c:'A_XScream']
fn a_xscream(actor &Mobj_t)  {
	s_startsound(actor, Sfxenum_t.sfx_slop)
}

[c:'A_Pain']
fn a_pain(actor &Mobj_t)  {
	if actor.info.painsound {
	s_startsound(actor, actor.info.painsound)
	}
}

[c:'A_Fall']
fn a_fall(actor &Mobj_t)  {
	actor.flags &= ~Mobjflag_t.mf_solid
}

[c:'A_Explode']
fn a_explode(thingy &Mobj_t)  {
	p_radiusattack(thingy, thingy.target, 128)
}

[c:'CheckBossEnd']
fn checkbossend(motype Mobjtype_t) bool {
	if gameversion < GameVersion_t.exe_ultimate {
		if gamemap != 8 {
			return false
		}
		if motype == Mobjtype_t.mt_bruiser && gameepisode != 1 {
			return false
		}
		return true
	}
	else {
		match gameepisode {
		 1// case comp body kind=ReturnStmt is_enum=false 
		{
		return gamemap == 8 && motype == Mobjtype_t.mt_bruiser
		 }
		2// case comp body kind=ReturnStmt is_enum=false 
		{
		return gamemap == 8 && motype == Mobjtype_t.mt_cyborg
		 }
		3// case comp body kind=ReturnStmt is_enum=false 
		{
		return gamemap == 8 && motype == Mobjtype_t.mt_spider
		 }
		4// case comp body kind=ReturnStmt is_enum=false 
		{
		return (gamemap == 6 && motype == Mobjtype_t.mt_cyborg) || (gamemap == 8 && motype == Mobjtype_t.mt_spider)
		}
		 else { 
		return gamemap == 8
		}
		}
	}
}

[c:'A_BossDeath']
fn a_bossdeath(mo &Mobj_t)  {
	th := &Thinker_t(0)
	mo2 := &Mobj_t(0)
	junk := Line_t{}
	i := 0
	if gamemode == GameMode_t.commercial {
		if gamemap != 7 {
		return 
		}
		if (mo.type_ != Mobjtype_t.mt_fatso) && (mo.type_ != Mobjtype_t.mt_baby) {
		return 
		}
	}
	else {
		if !checkbossend(mo.type_) {
			return 
		}
	}
	for i = 0 ; i < 4 ; i ++ {
	if playeringame [i]  && players [i] .health > 0 {
	break
	
	}
	}
	if i == 4 {
	return 
	}
	for th = thinkercap.next ; th != &thinkercap ; th = th.next {
		if th.function.acp1 != Actionf_p1(p_mobjthinker) {
		continue
		
		}
		mo2 = &Mobj_t(th)
		if mo2 != mo && mo2.type_ == mo.type_ && mo2.health > 0 {
			return 
		}
	}
	if gamemode == GameMode_t.commercial {
		if gamemap == 7 {
			if mo.type_ == Mobjtype_t.mt_fatso {
				junk.tag = 666
				ev_dofloor(&junk, Floor_e.lowerfloortolowest)
				return 
			}
			if mo.type_ == Mobjtype_t.mt_baby {
				junk.tag = 667
				ev_dofloor(&junk, Floor_e.raisetotexture)
				return 
			}
		}
	}
	else {
		match gameepisode {
		 1// case comp body kind=BinaryOperator is_enum=false 
		{
		junk.tag = 666
		ev_dofloor(&junk, Floor_e.lowerfloortolowest)
		return 
		 }
		4// case comp body kind=IfStmt is_enum=false 
		{
		if gamemap == 6 {
			junk.tag = 666
			ev_dodoor(&junk, Vldoor_e.vld_blazeopen)
			return 
		}
		else if gamemap == 8 {
			junk.tag = 666
			ev_dofloor(&junk, Floor_e.lowerfloortolowest)
			return 
		}
		}else{}
		}
	}
	g_exitlevel()
}

[c:'A_Hoof']
fn a_hoof(mo &Mobj_t)  {
	s_startsound(mo, Sfxenum_t.sfx_hoof)
	a_chase(mo)
}

[c:'A_Metal']
fn a_metal(mo &Mobj_t)  {
	s_startsound(mo, Sfxenum_t.sfx_metal)
	a_chase(mo)
}

[c:'A_BabyMetal']
fn a_babymetal(mo &Mobj_t)  {
	s_startsound(mo, Sfxenum_t.sfx_bspwlk)
	a_chase(mo)
}

[c:'A_OpenShotgun2']
fn a_openshotgun2(player &Player_t, psp &Pspdef_t)  {
	s_startsound(player.mo, Sfxenum_t.sfx_dbopn)
}

[c:'A_LoadShotgun2']
fn a_loadshotgun2(player &Player_t, psp &Pspdef_t)  {
	s_startsound(player.mo, Sfxenum_t.sfx_dbload)
}

[c:'A_ReFire']
fn a_refire(player &Player_t, psp &Pspdef_t) 

[c:'A_CloseShotgun2']
fn a_closeshotgun2(player &Player_t, psp &Pspdef_t)  {
	s_startsound(player.mo, Sfxenum_t.sfx_dbcls)
	a_refire(player, psp)
}

[weak]__global ( braintargets [32]&Mobj_t 

)

[weak]__global ( numbraintargets int 

)

/*!*/[weak] __global ( braintargeton  = int (0)
)

[c:'A_BrainAwake']
fn a_brainawake(mo &Mobj_t)  {
	thinker := &Thinker_t(0)
	m := &Mobj_t(0)
	numbraintargets = 0
	braintargeton = 0
	thinker = thinkercap.next
	for thinker = thinkercap.next ; thinker != &thinkercap ; thinker = thinker.next {
		if thinker.function.acp1 != Actionf_p1(p_mobjthinker) {
		continue
		
		}
		m = &Mobj_t(thinker)
		if m.type_ == Mobjtype_t.mt_bosstarget {
			braintargets [numbraintargets]  = m
			numbraintargets ++
		}
	}
	s_startsound((voidptr(0)), Sfxenum_t.sfx_bossit)
}

[c:'A_BrainPain']
fn a_brainpain(mo &Mobj_t)  {
	s_startsound((voidptr(0)), Sfxenum_t.sfx_bospn)
}

[c:'A_BrainScream']
fn a_brainscream(mo &Mobj_t)  {
	x := 0
	y := 0
	z := 0
	th := &Mobj_t(0)
	for x = mo.x - 196 * (1 << 16) ; x < mo.x + 320 * (1 << 16) ; x += (1 << 16) * 8 {
		y = mo.y - 320 * (1 << 16)
		z = 128 + p_random() * 2 * (1 << 16)
		th = p_spawnmobj(x, y, z, Mobjtype_t.mt_rocket)
		th.momz = p_random() * 512
		p_setmobjstate(th, Statenum_t.s_brainexplode1)
		th.tics -= p_random() & 7
		if th.tics < 1 {
		th.tics = 1
		}
	}
	s_startsound((voidptr(0)), Sfxenum_t.sfx_bosdth)
}

[c:'A_BrainExplode']
fn a_brainexplode(mo &Mobj_t)  {
	x := 0
	y := 0
	z := 0
	th := &Mobj_t(0)
	x = mo.x + p_subrandom() * 2048
	y = mo.y
	z = 128 + p_random() * 2 * (1 << 16)
	th = p_spawnmobj(x, y, z, Mobjtype_t.mt_rocket)
	th.momz = p_random() * 512
	p_setmobjstate(th, Statenum_t.s_brainexplode1)
	th.tics -= p_random() & 7
	if th.tics < 1 {
	th.tics = 1
	}
}

[c:'A_BrainDie']
fn a_braindie(mo &Mobj_t)  {
	g_exitlevel()
}

[c:'A_BrainSpit']
fn a_brainspit(mo &Mobj_t)  {
	targ := &Mobj_t(0)
	newmobj := &Mobj_t(0)
	easy := 0
	easy ^= 1
	if gameskill <= Skill_t.sk_easy && (!easy) {
	return 
	}
	targ = braintargets [braintargeton] 
	if numbraintargets == 0 {
		i_error(c'A_BrainSpit: numbraintargets was 0 (vanilla crashes here)')
	}
	braintargeton = (braintargeton + 1) % numbraintargets
	newmobj = p_spawnmissile(mo, targ, Mobjtype_t.mt_spawnshot)
	newmobj.target = targ
	newmobj.reactiontime = ((targ.y - mo.y) / newmobj.momy) / newmobj.state.tics
	s_startsound((voidptr(0)), Sfxenum_t.sfx_bospit)
}

[c:'A_SpawnFly']
fn a_spawnfly(mo &Mobj_t) 

[c:'A_SpawnSound']
fn a_spawnsound(mo &Mobj_t)  {
	s_startsound(mo, Sfxenum_t.sfx_boscub)
	a_spawnfly(mo)
}

[c:'A_SpawnFly']
fn a_spawnfly(mo &Mobj_t)  {
	newmobj := &Mobj_t(0)
	fog := &Mobj_t(0)
	targ := &Mobj_t(0)
	r := 0
	type_ := Mobjtype_t{}
	if mo.reactiontime -- {
	return 
	}
	targ = p_substnullmobj(mo.target)
	fog = p_spawnmobj(targ.x, targ.y, targ.z, Mobjtype_t.mt_spawnfire)
	s_startsound(fog, Sfxenum_t.sfx_telept)
	r = p_random()
	if r < 50 {
	type_ = Mobjtype_t.mt_troop
	}
	else if r < 90 {
	type_ = Mobjtype_t.mt_sergeant
	}
	else if r < 120 {
	type_ = Mobjtype_t.mt_shadows
	}
	else if r < 130 {
	type_ = Mobjtype_t.mt_pain
	}
	else if r < 160 {
	type_ = Mobjtype_t.mt_head
	}
	else if r < 162 {
	type_ = Mobjtype_t.mt_vile
	}
	else if r < 172 {
	type_ = Mobjtype_t.mt_undead
	}
	else if r < 192 {
	type_ = Mobjtype_t.mt_baby
	}
	else if r < 222 {
	type_ = Mobjtype_t.mt_fatso
	}
	else if r < 246 {
	type_ = Mobjtype_t.mt_knight
	}
	else { // 3
	type_ = Mobjtype_t.mt_bruiser
}
	newmobj = p_spawnmobj(targ.x, targ.y, targ.z, type_)
	if p_lookforplayers(newmobj, true) {
	p_setmobjstate(newmobj, newmobj.info.seestate)
	}
	p_teleportmove(newmobj, newmobj.x, newmobj.y)
	p_removemobj(mo)
}

[c:'A_PlayerScream']
fn a_playerscream(mo &Mobj_t)  {
	sound := Sfxenum_t.sfx_pldeth
	if (gamemode == GameMode_t.commercial) && (mo.health < -50) {
		sound = Sfxenum_t.sfx_pdiehi
	}
	s_startsound(mo, sound)
}

