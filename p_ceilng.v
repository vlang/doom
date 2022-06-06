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

[c: 'P_FindHighestCeilingSurrounding']
fn p_findhighestceilingsurrounding(sec &Sector_t) int

[c: 'P_FindSectorFromLineTag']
fn p_findsectorfromlinetag(line &Line_t, start int) int

[c: 'P_ActivateInStasis']
fn p_activateinstasis(tag int)

[weak]
__global (
	activeceilings [30]&Ceiling_t
)

[c: 'EV_DoCeiling']
fn ev_doceiling(line &Line_t, type_ Ceiling_e) int

[c: 'T_MoveCeiling']
fn t_moveceiling(ceiling &Ceiling_t)

[c: 'P_AddActiveCeiling']
fn p_addactiveceiling(c &Ceiling_t)

[c: 'P_RemoveActiveCeiling']
fn p_removeactiveceiling(c &Ceiling_t)

[c: 'EV_CeilingCrushStop']
fn ev_ceilingcrushstop(line &Line_t) int

[c: 'P_ActivateInStasisCeiling']
fn p_activateinstasisceiling(line &Line_t)

[c: 'T_MovePlane']
fn t_moveplane(sector &Sector_t, speed int, dest int, crush bool, floororceiling int, direction int) Result_e

[c: 'S_Start']
fn s_start()

[c: 'S_StartSound']
fn s_startsound(origin voidptr, sound_id int)

[weak]
__global (
	leveltime int
)

[c: 'T_MoveCeiling']
fn t_moveceiling(ceiling &Ceiling_t) {
	res := Result_e{}
	match ceiling.direction {
		0 /* case comp body kind=BreakStmt is_enum=false */ {}
		1 /* case comp body kind=BinaryOperator is_enum=false */ {
			res = t_moveplane(ceiling.sector, ceiling.speed, ceiling.topheight, false,
				1, ceiling.direction)
			if !(leveltime & 7) {
				match ceiling.type_ {
					.silentcrushandraise /* case comp body kind=BreakStmt is_enum=true */ {}
					else {
						0
						// null
						s_startsound(&ceiling.sector.soundorg, Sfxenum_t.sfx_stnmov)
					}
				}
			}
			if res == Result_e.pastdest {
				match ceiling.type_ {
					.raisetohighest /* case comp body kind=CallExpr is_enum=true */ {
						p_removeactiveceiling(ceiling)
					}
					.silentcrushandraise /* case comp body kind=CallExpr is_enum=true */ {
						s_startsound(&ceiling.sector.soundorg, Sfxenum_t.sfx_pstop)
					}
					.fastcrushandraise, .crushandraise {
						ceiling.direction = -1
					}
					else {}
				}
			}
		}
		-1 /* case comp body kind=BinaryOperator is_enum=false */ {
			res = t_moveplane(ceiling.sector, ceiling.speed, ceiling.bottomheight, ceiling.crush,
				1, ceiling.direction)
			if !(leveltime & 7) {
				match ceiling.type_ {
					.silentcrushandraise /* case comp body kind=BreakStmt is_enum=true */ {}
					else {
						0
						// null
						s_startsound(&ceiling.sector.soundorg, Sfxenum_t.sfx_stnmov)
					}
				}
			}
			if res == Result_e.pastdest {
				match ceiling.type_ {
					.silentcrushandraise /* case comp body kind=CallExpr is_enum=true */ {
						s_startsound(&ceiling.sector.soundorg, Sfxenum_t.sfx_pstop)
					}
					.crushandraise /* case comp body kind=BinaryOperator is_enum=true */ {
						ceiling.speed = (1 << 16)
					}
					.fastcrushandraise /* case comp body kind=BinaryOperator is_enum=true */ {
						ceiling.direction = 1
					}
					.lowerandcrush, .lowertofloor {
						p_removeactiveceiling(ceiling)
					}
					else {}
				}
			} else {
				if res == Result_e.crushed {
					match ceiling.type_ {
						.silentcrushandraise, .crushandraise, .lowerandcrush {
							ceiling.speed = (1 << 16) / 8
						}
						else {}
					}
				}
			}
		}
		else {}
	}
}

[c: 'EV_DoCeiling']
fn ev_doceiling(line &Line_t, type_ Ceiling_e) int {
	secnum := 0
	rtn := 0
	sec := &Sector_t(0)
	ceiling := &Ceiling_t(0)
	secnum = -1
	rtn = 0
	match type_ {
		.fastcrushandraise, .silentcrushandraise, .crushandraise {
			p_activateinstasisceiling(line)
		}
		else {}
	}
	secnum = p_findsectorfromlinetag(line, secnum)
	for secnum >= 0 {
		secnum = p_findsectorfromlinetag(line, secnum)
		sec = &sectors[secnum]
		if sec.specialdata {
			continue
		}
		rtn = 1
		ceiling = z_malloc(sizeof(*ceiling), 6, 0)
		p_addthinker(&ceiling.thinker)
		sec.specialdata = ceiling
		ceiling.thinker.function.acp1 = Actionf_p1(t_moveceiling)
		ceiling.sector = sec
		ceiling.crush = false
		match type_ {
			.fastcrushandraise /* case comp body kind=BinaryOperator is_enum=true */ {
				ceiling.crush = true
				ceiling.topheight = sec.ceilingheight
				ceiling.bottomheight = sec.floorheight + (8 * (1 << 16))
				ceiling.direction = -1
				ceiling.speed = (1 << 16) * 2
			}
			.silentcrushandraise, .crushandraise {
				ceiling.crush = true
				ceiling.topheight = sec.ceilingheight
			}
			.lowerandcrush, .lowertofloor {
				ceiling.bottomheight = sec.floorheight
				if type_ != Ceiling_e.lowertofloor {
					ceiling.bottomheight += 8 * (1 << 16)
				}
				ceiling.direction = -1
				ceiling.speed = (1 << 16)
			}
			.raisetohighest /* case comp body kind=BinaryOperator is_enum=true */ {
				ceiling.topheight = p_findhighestceilingsurrounding(sec)
				ceiling.direction = 1
				ceiling.speed = (1 << 16)
			}
			else {}
		}
		ceiling.tag = sec.tag
		ceiling.type_ = type_
		p_addactiveceiling(ceiling)
	}
	return rtn
}

[c: 'P_AddActiveCeiling']
fn p_addactiveceiling(c &Ceiling_t) {
	i := 0
	for i = 0; i < 30; i++ {
		if activeceilings[i] == (voidptr(0)) {
			activeceilings[i] = c
			return
		}
	}
}

[c: 'P_RemoveActiveCeiling']
fn p_removeactiveceiling(c &Ceiling_t) {
	i := 0
	for i = 0; i < 30; i++ {
		if activeceilings[i] == c {
			activeceilings[i].sector.specialdata = (voidptr(0))
			p_removethinker(&activeceilings[i].thinker)
			activeceilings[i] = (voidptr(0))
			break
		}
	}
}

[c: 'P_ActivateInStasisCeiling']
fn p_activateinstasisceiling(line &Line_t) {
	i := 0
	for i = 0; i < 30; i++ {
		if activeceilings[i] && (activeceilings[i].tag == line.tag)
			&& (activeceilings[i].direction == 0) {
			activeceilings[i].direction = activeceilings[i].olddirection
			activeceilings[i].thinker.function.acp1 = Actionf_p1(t_moveceiling)
		}
	}
}

[c: 'EV_CeilingCrushStop']
fn ev_ceilingcrushstop(line &Line_t) int {
	i := 0
	rtn := 0
	rtn = 0
	for i = 0; i < 30; i++ {
		if activeceilings[i] && (activeceilings[i].tag == line.tag)
			&& (activeceilings[i].direction != 0) {
			activeceilings[i].olddirection = activeceilings[i].direction
			activeceilings[i].thinker.function.acv = Actionf_v((voidptr(0)))
			activeceilings[i].direction = 0
			rtn = 1
		}
	}
	return rtn
}
