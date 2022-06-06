[translated]
module main

[typedef]
struct C.FILE {}

// vstart

fn rand() int

fn system(&i8) int

fn random() int

[c: 'FixedMul']
fn fixedmul(a int, b int) int

[c: 'FixedDiv']
fn fixeddiv(a int, b int) int

const ( // empty enum
)

fn ffs(int) int

[c: 'P_Random']
fn p_random() int

[c: 'P_SubRandom']
fn p_subrandom() int

[c: 'I_Error']
[c2v_variadic]
fn i_error(error ...&i8)

[c: 'M_CheckParm']
fn m_checkparm(check &i8) int

[c: 'M_CheckParmWithArgs']
fn m_checkparmwithargs(check &i8, num_args int) int

[c: 'M_StrToInt']
fn m_strtoint(str &i8, result &int) bool

const ( // empty enum
)

[c: 'R_PointToAngle']
fn r_pointtoangle(x int, y int) Angle_t

[c: 'R_PointToAngle2']
fn r_pointtoangle2(x1 int, y1 int, x2 int, y2 int) Angle_t

[c: 'R_PointInSubsector']
fn r_pointinsubsector(x int, y int) &Subsector_t

[c: 'P_SpawnMobj']
fn p_spawnmobj(x int, y int, z int, type_ Mobjtype_t) &Mobj_t

[c: 'P_RemoveMobj']
fn p_removemobj(th &Mobj_t)

[c: 'P_SubstNullMobj']
fn p_substnullmobj(th &Mobj_t) &Mobj_t

[c: 'P_SetMobjState']
fn p_setmobjstate(mobj &Mobj_t, state Statenum_t) bool

[c: 'P_SpawnPuff']
fn p_spawnpuff(x int, y int, z int)

[c: 'P_SpawnBlood']
fn p_spawnblood(x int, y int, z int, damage int)

[c: 'P_AproxDistance']
fn p_aproxdistance(dx int, dy int) int

[c: 'P_PointOnLineSide']
fn p_pointonlineside(x int, y int, line &Line_t) int

[c: 'P_BoxOnLineSide']
fn p_boxonlineside(tmbox &int, ld &Line_t) int

[c: 'P_LineOpening']
fn p_lineopening(linedef &Line_t)

[c: 'P_BlockLinesIterator']
fn p_blocklinesiterator(x int, y int, func fn (&Line_t) bool) bool

[c: 'P_BlockThingsIterator']
fn p_blockthingsiterator(x int, y int, func fn (&Mobj_t) bool) bool

[c: 'P_PathTraverse']
fn p_pathtraverse(x1 int, y1 int, x2 int, y2 int, flags int, trav fn (&Intercept_t) bool) bool

[c: 'P_UnsetThingPosition']
fn p_unsetthingposition(thing &Mobj_t)

[c: 'P_SetThingPosition']
fn p_setthingposition(thing &Mobj_t)

[c: 'P_CheckPosition']
fn p_checkposition(thing &Mobj_t, x int, y int) bool

[c: 'P_TryMove']
fn p_trymove(thing &Mobj_t, x int, y int) bool

[c: 'P_TeleportMove']
fn p_teleportmove(thing &Mobj_t, x int, y int) bool

[c: 'P_SlideMove']
fn p_slidemove(mo &Mobj_t)

[c: 'P_CheckSight']
fn p_checksight(t1 &Mobj_t, t2 &Mobj_t) bool

[c: 'P_UseLines']
fn p_uselines(player &Player_t)

[c: 'P_ChangeSector']
fn p_changesector(sector &Sector_t, crunch bool) bool

[c: 'P_AimLineAttack']
fn p_aimlineattack(t1 &Mobj_t, angle Angle_t, distance int) int

[c: 'P_LineAttack']
fn p_lineattack(t1 &Mobj_t, angle Angle_t, distance int, slope int, damage int)

[c: 'P_RadiusAttack']
fn p_radiusattack(spot &Mobj_t, source &Mobj_t, damage int)

[c: 'P_TouchSpecialThing']
fn p_touchspecialthing(special &Mobj_t, toucher &Mobj_t)

[c: 'P_DamageMobj']
fn p_damagemobj(target &Mobj_t, inflictor &Mobj_t, source &Mobj_t, damage int)

[c: 'P_UseSpecialLine']
fn p_usespecialline(thing &Mobj_t, line &Line_t, side int) bool

[c: 'P_ShootSpecialLine']
fn p_shootspecialline(thing &Mobj_t, line &Line_t)

[c: 'P_CrossSpecialLine']
fn p_crossspecialline(linenum int, side int, thing &Mobj_t)

[c: 'S_Start']
fn s_start()

[c: 'S_StartSound']
fn s_startsound(origin voidptr, sound_id int)

[weak]
__global (
	tmbbox [4]int
)

[weak]
__global (
	tmthing &Mobj_t
)

[weak]
__global (
	tmflags int
)

[weak]
__global (
	tmx int
)

[weak]
__global (
	tmy int
)

[weak]
__global (
	tmdropoffz int
)

[c: 'PIT_StompThing']
fn pit_stompthing(thing &Mobj_t) bool {
	blockdist := 0
	if !(thing.flags & Mobjflag_t.mf_shootable) {
		return true
	}
	blockdist = thing.radius + tmthing.radius
	if C.abs(thing.x - tmx) >= blockdist || C.abs(thing.y - tmy) >= blockdist {
		return true
	}
	if thing == tmthing {
		return true
	}
	if !tmthing.player && gamemap != 30 {
		return false
	}
	p_damagemobj(thing, tmthing, tmthing, 10000)
	return true
}

[c: 'P_TeleportMove']
fn p_teleportmove(thing &Mobj_t, x int, y int) bool {
	xl := 0
	xh := 0
	yl := 0
	yh := 0
	bx := 0
	by := 0
	newsubsec := &Subsector_t(0)
	tmthing = thing
	tmflags = thing.flags
	tmx = x
	tmy = y
	tmbbox[int(boxtop)] = y + tmthing.radius
	tmbbox[int(boxbottom)] = y - tmthing.radius
	tmbbox[int(boxright)] = x + tmthing.radius
	tmbbox[int(boxleft)] = x - tmthing.radius
	newsubsec = r_pointinsubsector(x, y)
	ceilingline = (voidptr(0))
	tmfloorz = newsubsec.sector.floorheight
	tmdropoffz = newsubsec.sector.floorheight
	tmceilingz = newsubsec.sector.ceilingheight
	validcount++
	numspechit = 0
	xl = (tmbbox[int(boxleft)] - bmaporgx - 32 * (1 << 16)) >> (16 + 7)
	xh = (tmbbox[int(boxright)] - bmaporgx + 32 * (1 << 16)) >> (16 + 7)
	yl = (tmbbox[int(boxbottom)] - bmaporgy - 32 * (1 << 16)) >> (16 + 7)
	yh = (tmbbox[int(boxtop)] - bmaporgy + 32 * (1 << 16)) >> (16 + 7)
	for bx = xl; bx <= xh; bx++ {
		for by = yl; by <= yh; by++ {
			if !p_blockthingsiterator(bx, by, pit_stompthing) {
				return false
			}
		}
	}
	p_unsetthingposition(thing)
	thing.floorz = tmfloorz
	thing.ceilingz = tmceilingz
	thing.x = x
	thing.y = y
	p_setthingposition(thing)
	return true
}

[c: 'SpechitOverrun']
fn spechitoverrun(ld &Line_t)

[c: 'PIT_CheckLine']
fn pit_checkline(ld &Line_t) bool {
	if tmbbox[int(boxright)] <= ld.bbox[int(boxleft)]
		|| tmbbox[int(boxleft)] >= ld.bbox[int(boxright)]
		|| tmbbox[int(boxtop)] <= ld.bbox[int(boxbottom)]
		|| tmbbox[int(boxbottom)] >= ld.bbox[int(boxtop)] {
		return true
	}
	if p_boxonlineside(tmbbox, ld) != -1 {
		return true
	}
	if !ld.backsector {
		return false
	}
	if !(tmthing.flags & Mobjflag_t.mf_missile) {
		if ld.flags & 1 {
			return false
		}
		if !tmthing.player && ld.flags & 2 {
			return false
		}
	}
	p_lineopening(ld)
	if opentop < tmceilingz {
		tmceilingz = opentop
		ceilingline = ld
	}
	if openbottom > tmfloorz {
		tmfloorz = openbottom
	}
	if lowfloor < tmdropoffz {
		tmdropoffz = lowfloor
	}
	if ld.special {
		spechit[numspechit] = ld
		numspechit++
		if numspechit > 8 {
			spechitoverrun(ld)
		}
	}
	return true
}

[c: 'PIT_CheckThing']
fn pit_checkthing(thing &Mobj_t) bool {
	blockdist := 0
	solid := false
	damage := 0
	if !(thing.flags & (Mobjflag_t.mf_solid | Mobjflag_t.mf_special | Mobjflag_t.mf_shootable)) {
		return true
	}
	blockdist = thing.radius + tmthing.radius
	if C.abs(thing.x - tmx) >= blockdist || C.abs(thing.y - tmy) >= blockdist {
		return true
	}
	if thing == tmthing {
		return true
	}
	if tmthing.flags & Mobjflag_t.mf_skullfly {
		damage = ((p_random() % 8) + 1) * tmthing.info.damage
		p_damagemobj(thing, tmthing, tmthing, damage)
		tmthing.flags &= ~Mobjflag_t.mf_skullfly
		tmthing.momx = 0
		tmthing.momy = 0
		tmthing.momz = 0
		p_setmobjstate(tmthing, tmthing.info.spawnstate)
		return false
	}
	if tmthing.flags & Mobjflag_t.mf_missile {
		if tmthing.z > thing.z + thing.height {
			return true
		}
		if tmthing.z + tmthing.height < thing.z {
			return true
		}
		if tmthing.target && (tmthing.target.type_ == thing.type_
			|| (tmthing.target.type_ == Mobjtype_t.mt_knight
			&& thing.type_ == Mobjtype_t.mt_bruiser)
			|| (tmthing.target.type_ == Mobjtype_t.mt_bruiser
			&& thing.type_ == Mobjtype_t.mt_knight)) {
			if thing == tmthing.target {
				return true
			}
			if thing.type_ != Mobjtype_t.mt_player && !deh_species_infighting {
				return false
			}
		}
		if !(thing.flags & Mobjflag_t.mf_shootable) {
			return !(thing.flags & Mobjflag_t.mf_solid)
		}
		damage = ((p_random() % 8) + 1) * tmthing.info.damage
		p_damagemobj(thing, tmthing, tmthing.target, damage)
		return false
	}
	if thing.flags & Mobjflag_t.mf_special {
		solid = (thing.flags & Mobjflag_t.mf_solid) != 0
		if tmflags & Mobjflag_t.mf_pickup {
			p_touchspecialthing(thing, tmthing)
		}
		return !solid
	}
	return !(thing.flags & Mobjflag_t.mf_solid)
}

[c: 'P_CheckPosition']
fn p_checkposition(thing &Mobj_t, x int, y int) bool {
	xl := 0
	xh := 0
	yl := 0
	yh := 0
	bx := 0
	by := 0
	newsubsec := &Subsector_t(0)
	tmthing = thing
	tmflags = thing.flags
	tmx = x
	tmy = y
	tmbbox[int(boxtop)] = y + tmthing.radius
	tmbbox[int(boxbottom)] = y - tmthing.radius
	tmbbox[int(boxright)] = x + tmthing.radius
	tmbbox[int(boxleft)] = x - tmthing.radius
	newsubsec = r_pointinsubsector(x, y)
	ceilingline = (voidptr(0))
	tmfloorz = newsubsec.sector.floorheight
	tmdropoffz = newsubsec.sector.floorheight
	tmceilingz = newsubsec.sector.ceilingheight
	validcount++
	numspechit = 0
	if tmflags & Mobjflag_t.mf_noclip {
		return true
	}
	xl = (tmbbox[int(boxleft)] - bmaporgx - 32 * (1 << 16)) >> (16 + 7)
	xh = (tmbbox[int(boxright)] - bmaporgx + 32 * (1 << 16)) >> (16 + 7)
	yl = (tmbbox[int(boxbottom)] - bmaporgy - 32 * (1 << 16)) >> (16 + 7)
	yh = (tmbbox[int(boxtop)] - bmaporgy + 32 * (1 << 16)) >> (16 + 7)
	for bx = xl; bx <= xh; bx++ {
		for by = yl; by <= yh; by++ {
			if !p_blockthingsiterator(bx, by, pit_checkthing) {
				return false
			}
		}
	}
	xl = (tmbbox[int(boxleft)] - bmaporgx) >> (16 + 7)
	xh = (tmbbox[int(boxright)] - bmaporgx) >> (16 + 7)
	yl = (tmbbox[int(boxbottom)] - bmaporgy) >> (16 + 7)
	yh = (tmbbox[int(boxtop)] - bmaporgy) >> (16 + 7)
	for bx = xl; bx <= xh; bx++ {
		for by = yl; by <= yh; by++ {
			if !p_blocklinesiterator(bx, by, pit_checkline) {
				return false
			}
		}
	}
	return true
}

[c: 'P_TryMove']
fn p_trymove(thing &Mobj_t, x int, y int) bool {
	oldx := 0
	oldy := 0
	side := 0
	oldside := 0
	ld := &Line_t(0)
	floatok = false
	if !p_checkposition(thing, x, y) {
		return false
	}
	if !(thing.flags & Mobjflag_t.mf_noclip) {
		if tmceilingz - tmfloorz < thing.height {
			return false
		}
		floatok = true
		if !(thing.flags & Mobjflag_t.mf_teleport) && tmceilingz - thing.z < thing.height {
			return false
		}
		if !(thing.flags & Mobjflag_t.mf_teleport) && tmfloorz - thing.z > 24 * (1 << 16) {
			return false
		}
		if !(thing.flags & (Mobjflag_t.mf_dropoff | Mobjflag_t.mf_float))
			&& tmfloorz - tmdropoffz > 24 * (1 << 16) {
			return false
		}
	}
	p_unsetthingposition(thing)
	oldx = thing.x
	oldy = thing.y
	thing.floorz = tmfloorz
	thing.ceilingz = tmceilingz
	thing.x = x
	thing.y = y
	p_setthingposition(thing)
	if !(thing.flags & (Mobjflag_t.mf_teleport | Mobjflag_t.mf_noclip)) {
		for numspechit-- {
			ld = spechit[numspechit]
			side = p_pointonlineside(thing.x, thing.y, ld)
			oldside = p_pointonlineside(oldx, oldy, ld)
			if side != oldside {
				if ld.special {
					p_crossspecialline(ld - lines, oldside, thing)
				}
			}
		}
	}
	return true
}

[c: 'P_ThingHeightClip']
fn p_thingheightclip(thing &Mobj_t) bool {
	onfloor := false
	onfloor = (thing.z == thing.floorz)
	p_checkposition(thing, thing.x, thing.y)
	thing.floorz = tmfloorz
	thing.ceilingz = tmceilingz
	if onfloor {
		thing.z = thing.floorz
	} else {
		if thing.z + thing.height > thing.ceilingz {
			thing.z = thing.ceilingz - thing.height
		}
	}
	if thing.ceilingz - thing.floorz < thing.height {
		return false
	}
	return true
}

[weak]
__global (
	bestslidefrac int
)

[weak]
__global (
	secondslidefrac int
)

[weak]
__global (
	bestslideline &Line_t
)

[weak]
__global (
	secondslideline &Line_t
)

[weak]
__global (
	slidemo &Mobj_t
)

[weak]
__global (
	tmxmove int
)

[weak]
__global (
	tmymove int
)

[c: 'P_HitSlideLine']
fn p_hitslideline(ld &Line_t) {
	side := 0
	lineangle := u32(0)
	moveangle := u32(0)
	deltaangle := u32(0)
	movelen := 0
	newlen := 0
	if ld.slopetype == Slopetype_t.st_horizontal {
		tmymove = 0
		return
	}
	if ld.slopetype == Slopetype_t.st_vertical {
		tmxmove = 0
		return
	}
	side = p_pointonlineside(slidemo.x, slidemo.y, ld)
	lineangle = r_pointtoangle2(0, 0, ld.dx, ld.dy)
	if side == 1 {
		lineangle += 2147483648
	}
	moveangle = r_pointtoangle2(0, 0, tmxmove, tmymove)
	deltaangle = moveangle - lineangle
	if deltaangle > 2147483648 {
		deltaangle += 2147483648
	}
	lineangle >>= 19
	deltaangle >>= 19
	movelen = p_aproxdistance(tmxmove, tmymove)
	newlen = fixedmul(movelen, finecosine[deltaangle])
	tmxmove = fixedmul(newlen, finecosine[lineangle])
	tmymove = fixedmul(newlen, finesine[lineangle])
}

[c: 'PTR_SlideTraverse']
fn ptr_slidetraverse(in_ &Intercept_t) bool {
	li := &Line_t(0)
	if !in_.isaline {
		i_error(c'PTR_SlideTraverse: not a line?')
	}
	li = in_.d.line
	if !(li.flags & 4) {
		if p_pointonlineside(slidemo.x, slidemo.y, li) {
			return true
		}
		goto isblocking
		// id: 0x146b4d2c0
	}
	p_lineopening(li)
	if openrange < slidemo.height {
		goto isblocking
		// id: 0x146b4d2c0
	}
	if opentop - slidemo.z < slidemo.height {
		goto isblocking
		// id: 0x146b4d2c0
	}
	if openbottom - slidemo.z > 24 * (1 << 16) {
		goto isblocking
		// id: 0x146b4d2c0
	}
	return true
	// RRRREG isblocking id=0x146b4d2c0
	isblocking:
	if in_.frac < bestslidefrac {
		secondslidefrac = bestslidefrac
		secondslideline = bestslideline
		bestslidefrac = in_.frac
		bestslideline = li
	}
	return false
}

[c: 'P_SlideMove']
fn p_slidemove(mo &Mobj_t) {
	leadx := 0
	leady := 0
	trailx := 0
	traily := 0
	newx := 0
	newy := 0
	hitcount := 0
	slidemo = mo
	hitcount = 0
	// RRRREG retry id=0x146b4ec00
	retry:
	if hitcount++ == 3 {
		goto stairstep
		// id: 0x146b4eb80
	}
	if mo.momx > 0 {
		leadx = mo.x + mo.radius
		trailx = mo.x - mo.radius
	} else {
		leadx = mo.x - mo.radius
		trailx = mo.x + mo.radius
	}
	if mo.momy > 0 {
		leady = mo.y + mo.radius
		traily = mo.y - mo.radius
	} else {
		leady = mo.y - mo.radius
		traily = mo.y + mo.radius
	}
	bestslidefrac = (1 << 16) + 1
	p_pathtraverse(leadx, leady, leadx + mo.momx, leady + mo.momy, 1, ptr_slidetraverse)
	p_pathtraverse(trailx, leady, trailx + mo.momx, leady + mo.momy, 1, ptr_slidetraverse)
	p_pathtraverse(leadx, traily, leadx + mo.momx, traily + mo.momy, 1, ptr_slidetraverse)
	if bestslidefrac == (1 << 16) + 1 {
		// RRRREG stairstep id=0x146b4eb80
		stairstep:
		if !p_trymove(mo, mo.x, mo.y + mo.momy) {
			p_trymove(mo, mo.x + mo.momx, mo.y)
		}
		return
	}
	bestslidefrac -= 2048
	if bestslidefrac > 0 {
		newx = fixedmul(mo.momx, bestslidefrac)
		newy = fixedmul(mo.momy, bestslidefrac)
		if !p_trymove(mo, mo.x + newx, mo.y + newy) {
			goto stairstep
			// id: 0x146b4eb80
		}
	}
	bestslidefrac = (1 << 16) - (bestslidefrac + 2048)
	if bestslidefrac > (1 << 16) {
		bestslidefrac = (1 << 16)
	}
	if bestslidefrac <= 0 {
		return
	}
	tmxmove = fixedmul(mo.momx, bestslidefrac)
	tmymove = fixedmul(mo.momy, bestslidefrac)
	p_hitslideline(bestslideline)
	mo.momx = tmxmove
	mo.momy = tmymove
	if !p_trymove(mo, mo.x + tmxmove, mo.y + tmymove) {
		goto retry
		// id: 0x146b4ec00
	}
}

[weak]
__global (
	shootthing &Mobj_t
)

[weak]
__global (
	shootz int
)

[weak]
__global (
	la_damage int
)

[weak]
__global (
	attackrange int
)

[weak]
__global (
	aimslope int
)

[c: 'PTR_AimTraverse']
fn ptr_aimtraverse(in_ &Intercept_t) bool {
	li := &Line_t(0)
	th := &Mobj_t(0)
	slope := 0
	thingtopslope := 0
	thingbottomslope := 0
	dist := 0
	if in_.isaline {
		li = in_.d.line
		if !(li.flags & 4) {
			return false
		}
		p_lineopening(li)
		if openbottom >= opentop {
			return false
		}
		dist = fixedmul(attackrange, in_.frac)
		if li.backsector == (voidptr(0)) || li.frontsector.floorheight != li.backsector.floorheight {
			slope = fixeddiv(openbottom - shootz, dist)
			if slope > bottomslope {
				bottomslope = slope
			}
		}
		if
			li.backsector == (voidptr(0)) || li.frontsector.ceilingheight != li.backsector.ceilingheight {
			slope = fixeddiv(opentop - shootz, dist)
			if slope < topslope {
				topslope = slope
			}
		}
		if topslope <= bottomslope {
			return false
		}
		return true
	}
	th = in_.d.thing
	if th == shootthing {
		return true
	}
	if !(th.flags & Mobjflag_t.mf_shootable) {
		return true
	}
	dist = fixedmul(attackrange, in_.frac)
	thingtopslope = fixeddiv(th.z + th.height - shootz, dist)
	if thingtopslope < bottomslope {
		return true
	}
	thingbottomslope = fixeddiv(th.z - shootz, dist)
	if thingbottomslope > topslope {
		return true
	}
	if thingtopslope > topslope {
		thingtopslope = topslope
	}
	if thingbottomslope < bottomslope {
		thingbottomslope = bottomslope
	}
	aimslope = (thingtopslope + thingbottomslope) / 2
	linetarget = th
	return false
}

[c: 'PTR_ShootTraverse']
fn ptr_shoottraverse(in_ &Intercept_t) bool {
	x := 0
	y := 0
	z := 0
	frac := 0
	li := &Line_t(0)
	th := &Mobj_t(0)
	slope := 0
	dist := 0
	thingtopslope := 0
	thingbottomslope := 0
	if in_.isaline {
		li = in_.d.line
		if li.special {
			p_shootspecialline(shootthing, li)
		}
		if !(li.flags & 4) {
			goto hitline
			// id: 0x146b553c8
		}
		p_lineopening(li)
		dist = fixedmul(attackrange, in_.frac)
		if li.backsector == (voidptr(0)) {
			slope = fixeddiv(openbottom - shootz, dist)
			if slope > aimslope {
				goto hitline
				// id: 0x146b553c8
			}
			slope = fixeddiv(opentop - shootz, dist)
			if slope < aimslope {
				goto hitline
				// id: 0x146b553c8
			}
		} else {
			if li.frontsector.floorheight != li.backsector.floorheight {
				slope = fixeddiv(openbottom - shootz, dist)
				if slope > aimslope {
					goto hitline
					// id: 0x146b553c8
				}
			}
			if li.frontsector.ceilingheight != li.backsector.ceilingheight {
				slope = fixeddiv(opentop - shootz, dist)
				if slope < aimslope {
					goto hitline
					// id: 0x146b553c8
				}
			}
		}
		return true
		// RRRREG hitline id=0x146b553c8
		hitline:
		frac = in_.frac - fixeddiv(4 * (1 << 16), attackrange)
		x = trace.x + fixedmul(trace.dx, frac)
		y = trace.y + fixedmul(trace.dy, frac)
		z = shootz + fixedmul(aimslope, fixedmul(frac, attackrange))
		if li.frontsector.ceilingpic == skyflatnum {
			if z > li.frontsector.ceilingheight {
				return false
			}
			if li.backsector && li.backsector.ceilingpic == skyflatnum {
				return false
			}
		}
		p_spawnpuff(x, y, z)
		return false
	}
	th = in_.d.thing
	if th == shootthing {
		return true
	}
	if !(th.flags & Mobjflag_t.mf_shootable) {
		return true
	}
	dist = fixedmul(attackrange, in_.frac)
	thingtopslope = fixeddiv(th.z + th.height - shootz, dist)
	if thingtopslope < aimslope {
		return true
	}
	thingbottomslope = fixeddiv(th.z - shootz, dist)
	if thingbottomslope > aimslope {
		return true
	}
	frac = in_.frac - fixeddiv(10 * (1 << 16), attackrange)
	x = trace.x + fixedmul(trace.dx, frac)
	y = trace.y + fixedmul(trace.dy, frac)
	z = shootz + fixedmul(aimslope, fixedmul(frac, attackrange))
	if in_.d.thing.flags & Mobjflag_t.mf_noblood {
		p_spawnpuff(x, y, z)
	} else { // 3
		p_spawnblood(x, y, z, la_damage)
	}
	if la_damage {
		p_damagemobj(th, shootthing, shootthing, la_damage)
	}
	return false
}

[c: 'P_AimLineAttack']
fn p_aimlineattack(t1 &Mobj_t, angle Angle_t, distance int) int {
	x2 := 0
	y2 := 0
	t1 = p_substnullmobj(t1)
	angle >>= 19
	shootthing = t1
	x2 = t1.x + (distance >> 16) * finecosine[angle]
	y2 = t1.y + (distance >> 16) * finesine[angle]
	shootz = t1.z + (t1.height >> 1) + 8 * (1 << 16)
	topslope = (200 / 2) * (1 << 16) / (320 / 2)
	bottomslope = -(200 / 2) * (1 << 16) / (320 / 2)
	attackrange = distance
	linetarget = (voidptr(0))
	p_pathtraverse(t1.x, t1.y, x2, y2, 1 | 2, ptr_aimtraverse)
	if linetarget {
		return aimslope
	}
	return 0
}

[c: 'P_LineAttack']
fn p_lineattack(t1 &Mobj_t, angle Angle_t, distance int, slope int, damage int) {
	x2 := 0
	y2 := 0
	angle >>= 19
	shootthing = t1
	la_damage = damage
	x2 = t1.x + (distance >> 16) * finecosine[angle]
	y2 = t1.y + (distance >> 16) * finesine[angle]
	shootz = t1.z + (t1.height >> 1) + 8 * (1 << 16)
	attackrange = distance
	aimslope = slope
	p_pathtraverse(t1.x, t1.y, x2, y2, 1 | 2, ptr_shoottraverse)
}

[weak]
__global (
	usething &Mobj_t
)

[c: 'PTR_UseTraverse']
fn ptr_usetraverse(in_ &Intercept_t) bool {
	side := 0
	if !in_.d.line.special {
		p_lineopening(in_.d.line)
		if openrange <= 0 {
			s_startsound(usething, Sfxenum_t.sfx_noway)
			return false
		}
		return true
	}
	side = 0
	if p_pointonlineside(usething.x, usething.y, in_.d.line) == 1 {
		side = 1
	}
	p_usespecialline(usething, in_.d.line, side)
	return false
}

[c: 'P_UseLines']
fn p_uselines(player &Player_t) {
	angle := 0
	x1 := 0
	y1 := 0
	x2 := 0
	y2 := 0
	usething = player.mo
	angle = player.mo.angle >> 19
	x1 = player.mo.x
	y1 = player.mo.y
	x2 = x1 + ((64 * (1 << 16)) >> 16) * finecosine[angle]
	y2 = y1 + ((64 * (1 << 16)) >> 16) * finesine[angle]
	p_pathtraverse(x1, y1, x2, y2, 1, ptr_usetraverse)
}

[weak]
__global (
	bombsource &Mobj_t
)

[weak]
__global (
	bombspot &Mobj_t
)

[weak]
__global (
	bombdamage int
)

[c: 'PIT_RadiusAttack']
fn pit_radiusattack(thing &Mobj_t) bool {
	dx := 0
	dy := 0
	dist := 0
	if !(thing.flags & Mobjflag_t.mf_shootable) {
		return true
	}
	if thing.type_ == Mobjtype_t.mt_cyborg || thing.type_ == Mobjtype_t.mt_spider {
		return true
	}
	dx = C.abs(thing.x - bombspot.x)
	dy = C.abs(thing.y - bombspot.y)
	dist = if dx > dy { dx } else { dy }
	dist = (dist - thing.radius) >> 16
	if dist < 0 {
		dist = 0
	}
	if dist >= bombdamage {
		return true
	}
	if p_checksight(thing, bombspot) {
		p_damagemobj(thing, bombspot, bombsource, bombdamage - dist)
	}
	return true
}

[c: 'P_RadiusAttack']
fn p_radiusattack(spot &Mobj_t, source &Mobj_t, damage int) {
	x := 0
	y := 0
	xl := 0
	xh := 0
	yl := 0
	yh := 0
	dist := 0
	dist = (damage + 32 * (1 << 16)) << 16
	yh = (spot.y + dist - bmaporgy) >> (16 + 7)
	yl = (spot.y - dist - bmaporgy) >> (16 + 7)
	xh = (spot.x + dist - bmaporgx) >> (16 + 7)
	xl = (spot.x - dist - bmaporgx) >> (16 + 7)
	bombspot = spot
	bombsource = source
	bombdamage = damage
	for y = yl; y <= yh; y++ {
		for x = xl; x <= xh; x++ {
			p_blockthingsiterator(x, y, pit_radiusattack)
		}
	}
}

[weak]
__global (
	crushchange bool
)

[weak]
__global (
	nofit bool
)

[c: 'PIT_ChangeSector']
fn pit_changesector(thing &Mobj_t) bool {
	mo := &Mobj_t(0)
	if p_thingheightclip(thing) {
		return true
	}
	if thing.health <= 0 {
		p_setmobjstate(thing, Statenum_t.s_gibs)
		if gameversion > GameVersion_t.exe_doom_1_2 {
			thing.flags &= ~Mobjflag_t.mf_solid
		}
		thing.height = 0
		thing.radius = 0
		return true
	}
	if thing.flags & Mobjflag_t.mf_dropped {
		p_removemobj(thing)
		return true
	}
	if !(thing.flags & Mobjflag_t.mf_shootable) {
		return true
	}
	nofit = true
	if crushchange && !(leveltime & 3) {
		p_damagemobj(thing, (voidptr(0)), (voidptr(0)), 10)
		mo = p_spawnmobj(thing.x, thing.y, thing.z + thing.height / 2, Mobjtype_t.mt_blood)
		mo.momx = p_subrandom() << 12
		mo.momy = p_subrandom() << 12
	}
	return true
}

[c: 'P_ChangeSector']
fn p_changesector(sector &Sector_t, crunch bool) bool {
	x := 0
	y := 0
	nofit = false
	crushchange = crunch
	for x = sector.blockbox[int(boxleft)]; x <= sector.blockbox[int(boxright)]; x++ {
		for y = sector.blockbox[int(boxbottom)]; y <= sector.blockbox[int(boxtop)]; y++ {
			p_blockthingsiterator(x, y, pit_changesector)
		}
	}
	return nofit
}

[c: 'SpechitOverrun']
fn spechitoverrun(ld &Line_t) {
	baseaddr := 0
	addr := u32(0)
	if baseaddr == 0 {
		p := 0
		p = m_checkparmwithargs(c'-spechit', 1)
		if p > 0 {
			m_strtoint(myargv[p + 1], &int(&baseaddr))
		} else {
			baseaddr = 29400216
		}
	}
	addr = baseaddr + (ld - lines) * 62
	match numspechit {
		9, 10, 11, 12 {
			tmbbox[numspechit - 9] = addr
		}
		13 /* case comp body kind=BinaryOperator is_enum=false */ {
			crushchange = addr
		}
		14 /* case comp body kind=BinaryOperator is_enum=false */ {
			nofit = addr
		}
		else {
			C.fprintf(C.__stderrp, c'SpechitOverrun: Warning: unable to emulatean overrun where numspechit=%i\n',
				numspechit)
		}
	}
}
