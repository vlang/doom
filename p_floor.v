[translated]
module main

[typedef]
struct C.FILE {}

// vstart

[c: 'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

const ( // empty enum
)

[c: 'P_AddThinker']
fn p_addthinker(thinker &Thinker_t)

[c: 'P_RemoveThinker']
fn p_removethinker(thinker &Thinker_t)

[c: 'P_ChangeSector']
fn p_changesector(sector &Sector_t, crunch bool) bool

[c: 'twoSided']
fn twosided(sector int, line int) int

[c: 'getSector']
fn getsector(currentsector int, line int, side int) &Sector_t

[c: 'getSide']
fn getside(currentsector int, line int, side int) &Side_t

[c: 'P_FindLowestFloorSurrounding']
fn p_findlowestfloorsurrounding(sec &Sector_t) int

[c: 'P_FindHighestFloorSurrounding']
fn p_findhighestfloorsurrounding(sec &Sector_t) int

[c: 'P_FindNextHighestFloor']
fn p_findnexthighestfloor(sec &Sector_t, currentheight int) int

[c: 'P_FindLowestCeilingSurrounding']
fn p_findlowestceilingsurrounding(sec &Sector_t) int

[c: 'P_FindSectorFromLineTag']
fn p_findsectorfromlinetag(line &Line_t, start int) int

[c: 'T_MovePlane']
fn t_moveplane(sector &Sector_t, speed int, dest int, crush bool, floororceiling int, direction int) Result_e

[c: 'EV_BuildStairs']
fn ev_buildstairs(line &Line_t, type_ Stair_e) int

[c: 'EV_DoFloor']
fn ev_dofloor(line &Line_t, floortype Floor_e) int

[c: 'T_MoveFloor']
fn t_movefloor(floor &Floormove_t)

[c: 'S_Start']
fn s_start()

[c: 'S_StartSound']
fn s_startsound(origin voidptr, sound_id int)

[c: 'T_MovePlane']
fn t_moveplane(sector &Sector_t, speed int, dest int, crush bool, floororceiling int, direction int) Result_e {
	flag := false
	lastpos := 0
	match floororceiling {
		0 /* case comp body kind=SwitchStmt is_enum=false */ {
			match direction {
				-1 /* case comp body kind=IfStmt is_enum=false */ {
					if sector.floorheight - speed < dest {
						lastpos = sector.floorheight
						sector.floorheight = dest
						flag = p_changesector(sector, crush)
						if flag == true {
							sector.floorheight = lastpos
							p_changesector(sector, crush)
						}
						return Result_e.pastdest
					} else {
						lastpos = sector.floorheight
						sector.floorheight -= speed
						flag = p_changesector(sector, crush)
						if flag == true {
							sector.floorheight = lastpos
							p_changesector(sector, crush)
							return Result_e.crushed
						}
					}
				}
				1 /* case comp body kind=IfStmt is_enum=false */ {
					if sector.floorheight + speed > dest {
						lastpos = sector.floorheight
						sector.floorheight = dest
						flag = p_changesector(sector, crush)
						if flag == true {
							sector.floorheight = lastpos
							p_changesector(sector, crush)
						}
						return Result_e.pastdest
					} else {
						lastpos = sector.floorheight
						sector.floorheight += speed
						flag = p_changesector(sector, crush)
						if flag == true {
							if crush == true {
								return Result_e.crushed
							}
							sector.floorheight = lastpos
							p_changesector(sector, crush)
							return Result_e.crushed
						}
					}
				}
				else {}
			}
		}
		1 /* case comp body kind=SwitchStmt is_enum=false */ {
			match direction {
				-1 /* case comp body kind=IfStmt is_enum=false */ {
					if sector.ceilingheight - speed < dest {
						lastpos = sector.ceilingheight
						sector.ceilingheight = dest
						flag = p_changesector(sector, crush)
						if flag == true {
							sector.ceilingheight = lastpos
							p_changesector(sector, crush)
						}
						return Result_e.pastdest
					} else {
						lastpos = sector.ceilingheight
						sector.ceilingheight -= speed
						flag = p_changesector(sector, crush)
						if flag == true {
							if crush == true {
								return Result_e.crushed
							}
							sector.ceilingheight = lastpos
							p_changesector(sector, crush)
							return Result_e.crushed
						}
					}
				}
				1 /* case comp body kind=IfStmt is_enum=false */ {
					if sector.ceilingheight + speed > dest {
						lastpos = sector.ceilingheight
						sector.ceilingheight = dest
						flag = p_changesector(sector, crush)
						if flag == true {
							sector.ceilingheight = lastpos
							p_changesector(sector, crush)
						}
						return Result_e.pastdest
					} else {
						lastpos = sector.ceilingheight
						sector.ceilingheight += speed
						flag = p_changesector(sector, crush)
					}
				}
				else {}
			}
		}
		else {}
	}
	return Result_e.ok
}

[c: 'T_MoveFloor']
fn t_movefloor(floor &Floormove_t) {
	res := Result_e{}
	res = t_moveplane(floor.sector, floor.speed, floor.floordestheight, floor.crush, 0,
		floor.direction)
	if !(leveltime & 7) {
		s_startsound(&floor.sector.soundorg, Sfxenum_t.sfx_stnmov)
	}
	if res == Result_e.pastdest {
		floor.sector.specialdata = (voidptr(0))
		if floor.direction == 1 {
			match floor.type_ {
				.donutraise /* case comp body kind=BinaryOperator is_enum=true */ {
					floor.sector.special = floor.newspecial
					floor.sector.floorpic = floor.texture
				}
				else {}
			}
		} else if floor.direction == -1 {
			match floor.type_ {
				.lowerandchange /* case comp body kind=BinaryOperator is_enum=true */ {
					floor.sector.special = floor.newspecial
					floor.sector.floorpic = floor.texture
				}
				else {}
			}
		}
		p_removethinker(&floor.thinker)
		s_startsound(&floor.sector.soundorg, Sfxenum_t.sfx_pstop)
	}
}

[c: 'EV_DoFloor']
fn ev_dofloor(line &Line_t, floortype Floor_e) int {
	secnum := 0
	rtn := 0
	i := 0
	sec := &Sector_t(0)
	floor := &Floormove_t(0)
	secnum = p_findsectorfromlinetag(line, secnum)
	rtn = 0
	for secnum >= 0 {
		sec = &sectors[secnum]
		if sec.specialdata {
			continue
		}
		rtn = 1
		floor = z_malloc(sizeof(*floor), 6, 0)
		p_addthinker(&floor.thinker)
		sec.specialdata = floor
		floor.thinker.function.acp1 = Actionf_p1(t_movefloor)
		floor.type_ = floortype
		floor.crush = false
		match floortype {
			.lowerfloor /* case comp body kind=BinaryOperator is_enum=true */ {
				floor.direction = -1
				floor.sector = sec
				floor.speed = (1 << 16)
				floor.floordestheight = p_findhighestfloorsurrounding(sec)
			}
			.lowerfloortolowest /* case comp body kind=BinaryOperator is_enum=true */ {
				floor.direction = -1
				floor.sector = sec
				floor.speed = (1 << 16)
				floor.floordestheight = p_findlowestfloorsurrounding(sec)
			}
			.turbolower /* case comp body kind=BinaryOperator is_enum=true */ {
				floor.direction = -1
				floor.sector = sec
				floor.speed = (1 << 16) * 4
				floor.floordestheight = p_findhighestfloorsurrounding(sec)
				if gameversion <= GameVersion_t.exe_doom_1_2
					|| floor.floordestheight != sec.floorheight {
					floor.floordestheight += 8 * (1 << 16)
				}
			}
			.raisefloorcrush /* case comp body kind=BinaryOperator is_enum=true */ {
				floor.crush = true
			}
			.raisefloor /* case comp body kind=BinaryOperator is_enum=true */ {
				floor.direction = 1
				floor.sector = sec
				floor.speed = (1 << 16)
				floor.floordestheight = p_findlowestceilingsurrounding(sec)
				if floor.floordestheight > sec.ceilingheight {
					floor.floordestheight = sec.ceilingheight
				}
				floor.floordestheight -= (8 * (1 << 16)) * (floortype == Floor_e.raisefloorcrush)
			}
			.raisefloorturbo /* case comp body kind=BinaryOperator is_enum=true */ {
				floor.direction = 1
				floor.sector = sec
				floor.speed = (1 << 16) * 4
				floor.floordestheight = p_findnexthighestfloor(sec, sec.floorheight)
			}
			.raisefloortonearest /* case comp body kind=BinaryOperator is_enum=true */ {
				floor.direction = 1
				floor.sector = sec
				floor.speed = (1 << 16)
				floor.floordestheight = p_findnexthighestfloor(sec, sec.floorheight)
			}
			.raisefloor24 /* case comp body kind=BinaryOperator is_enum=true */ {
				floor.direction = 1
				floor.sector = sec
				floor.speed = (1 << 16)
				floor.floordestheight = floor.sector.floorheight + 24 * (1 << 16)
			}
			.raisefloor512 /* case comp body kind=BinaryOperator is_enum=true */ {
				floor.direction = 1
				floor.sector = sec
				floor.speed = (1 << 16)
				floor.floordestheight = floor.sector.floorheight + 512 * (1 << 16)
			}
			.raisefloor24andchange /* case comp body kind=BinaryOperator is_enum=true */ {
				floor.direction = 1
				floor.sector = sec
				floor.speed = (1 << 16)
				floor.floordestheight = floor.sector.floorheight + 24 * (1 << 16)
				sec.floorpic = line.frontsector.floorpic
				sec.special = line.frontsector.special
			}
			.lowerandchange /* case comp body kind=BinaryOperator is_enum=true */ {
				floor.direction = -1
				floor.sector = sec
				floor.speed = (1 << 16)
				floor.floordestheight = p_findlowestfloorsurrounding(sec)
				floor.texture = sec.floorpic
				for i = 0; i < sec.linecount; i++ {
					if twosided(secnum, i) {
						if getside(secnum, i, 0).sector - sectors == secnum {
							sec = getsector(secnum, i, 1)
							if sec.floorheight == floor.floordestheight {
								floor.texture = sec.floorpic
								floor.newspecial = sec.special
							}
						} else {
							sec = getsector(secnum, i, 0)
							if sec.floorheight == floor.floordestheight {
								floor.texture = sec.floorpic
								floor.newspecial = sec.special
							}
						}
					}
				}
			}
			else {}
		}
		secnum = p_findsectorfromlinetag(line, secnum)
	}
	return rtn
}

[c: 'EV_BuildStairs']
fn ev_buildstairs(line &Line_t, type_ Stair_e) int {
	secnum := 0
	height := 0
	i := 0
	newsecnum := 0
	texture := 0
	ok := 0
	rtn := 0
	sec := &Sector_t(0)
	tsec := &Sector_t(0)
	floor := &Floormove_t(0)
	stairsize := 0
	speed := 0
	secnum = -1
	rtn = 0
	secnum = p_findsectorfromlinetag(line, secnum)
	for secnum >= 0 {
		sec = &sectors[secnum]
		if sec.specialdata {
			continue
		}
		rtn = 1
		floor = z_malloc(sizeof(*floor), 6, 0)
		p_addthinker(&floor.thinker)
		sec.specialdata = floor
		floor.thinker.function.acp1 = Actionf_p1(t_movefloor)
		floor.direction = 1
		floor.sector = sec
		match type_ {
			.build8 /* case comp body kind=BinaryOperator is_enum=true */ {
				speed = (1 << 16) / 4
				stairsize = 8 * (1 << 16)
			}
			.turbo16 /* case comp body kind=BinaryOperator is_enum=true */ {
				speed = (1 << 16) * 4
				stairsize = 16 * (1 << 16)
			}
			else {}
		}
		floor.speed = speed
		height = sec.floorheight + stairsize
		floor.floordestheight = height
		floor.type_ = Floor_e.lowerfloor
		floor.crush = 10
		texture = sec.floorpic
		for {
			ok = 0
			for i = 0; i < sec.linecount; i++ {
				if !((sec.lines[i]).flags & 4) {
					continue
				}
				tsec = (sec.lines[i]).frontsector
				newsecnum = tsec - sectors
				if secnum != newsecnum {
					continue
				}
				tsec = (sec.lines[i]).backsector
				newsecnum = tsec - sectors
				if tsec.floorpic != texture {
					continue
				}
				height += stairsize
				if tsec.specialdata {
					continue
				}
				sec = tsec
				secnum = newsecnum
				floor = z_malloc(sizeof(*floor), 6, 0)
				p_addthinker(&floor.thinker)
				sec.specialdata = floor
				floor.thinker.function.acp1 = Actionf_p1(t_movefloor)
				floor.direction = 1
				floor.sector = sec
				floor.speed = speed
				floor.floordestheight = height
				floor.type_ = Floor_e.lowerfloor
				floor.crush = 10
				ok = 1
				break
			}
			// while()
			if !ok {
				break
			}
		}
		secnum = p_findsectorfromlinetag(line, secnum)
	}
	return rtn
}
