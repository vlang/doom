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


const ( // empty enum
)

[c:'P_AddThinker']
fn p_addthinker(thinker &Thinker_t) 

[c:'P_RemoveThinker']
fn p_removethinker(thinker &Thinker_t) 

[c:'P_FindLowestFloorSurrounding']
fn p_findlowestfloorsurrounding(sec &Sector_t) int

[c:'P_FindHighestFloorSurrounding']
fn p_findhighestfloorsurrounding(sec &Sector_t) int

[c:'P_FindNextHighestFloor']
fn p_findnexthighestfloor(sec &Sector_t, currentheight int) int

[c:'P_FindSectorFromLineTag']
fn p_findsectorfromlinetag(line &Line_t, start int) int

[c:'T_PlatRaise']
fn t_platraise(plat &Plat_t) 

[c:'EV_DoPlat']
fn ev_doplat(line &Line_t, type_ Plattype_e, amount int) int

[c:'P_AddActivePlat']
fn p_addactiveplat(plat &Plat_t) 

[c:'P_RemoveActivePlat']
fn p_removeactiveplat(plat &Plat_t) 

[c:'EV_StopPlat']
fn ev_stopplat(line &Line_t) 

[c:'P_ActivateInStasis']
fn p_activateinstasis(tag int) 

[c:'T_MovePlane']
fn t_moveplane(sector &Sector_t, speed int, dest int, crush bool, floororceiling int, direction int) Result_e

[c:'S_Start']
fn s_start() 

[c:'S_StartSound']
fn s_startsound(origin voidptr, sound_id int) 

[c:'T_PlatRaise']
fn t_platraise(plat &Plat_t)  {
	res := Result_e{}
	match plat.status {
	 .up// case comp body kind=BinaryOperator is_enum=true 
	{
	res = t_moveplane(plat.sector, plat.speed, plat.high, plat.crush, 0, 1)
	if plat.type_ == Plattype_e.raiseandchange || plat.type_ == Plattype_e.raisetonearestandchange {
		if !(leveltime & 7) {
		s_startsound(&plat.sector.soundorg, Sfxenum_t.sfx_stnmov)
		}
	}
	if res == Result_e.crushed && (!plat.crush) {
		plat.count = plat.wait
		plat.status = Plat_e.down
		s_startsound(&plat.sector.soundorg, Sfxenum_t.sfx_pstart)
	}
	else {
		if res == Result_e.pastdest {
			plat.count = plat.wait
			plat.status = Plat_e.waiting
			s_startsound(&plat.sector.soundorg, Sfxenum_t.sfx_pstop)
			match plat.type_ {
			 .blazedwus, .downwaitupstay{
			p_removeactiveplat(plat)
			 }
			.raiseandchange, .raisetonearestandchange{
			p_removeactiveplat(plat)
			}
			 else { 
			
			}
			}
		}
	}
	 }
	.down// case comp body kind=BinaryOperator is_enum=true 
	{
	res = t_moveplane(plat.sector, plat.speed, plat.low, false, 0, -1)
	if res == Result_e.pastdest {
		plat.count = plat.wait
		plat.status = Plat_e.waiting
		s_startsound(&plat.sector.soundorg, Sfxenum_t.sfx_pstop)
	}
	 }
	.waiting// case comp body kind=IfStmt is_enum=true 
	{
	if !plat.count -- {
		if plat.sector.floorheight == plat.low {
		plat.status = Plat_e.up
		}
		else { // 3
		plat.status = Plat_e.down
}
		s_startsound(&plat.sector.soundorg, Sfxenum_t.sfx_pstart)
	}
	 }
	.in_stasis// case comp body kind=BreakStmt is_enum=true 
	{
	
	}else{}
	}
}

[c:'EV_DoPlat']
fn ev_doplat(line &Line_t, type_ Plattype_e, amount int) int {
	plat := &Plat_t(0)
	secnum := 0
	rtn := 0
	sec := &Sector_t(0)
	secnum = -1
	rtn = 0
	match type_ {
	 .perpetualraise// case comp body kind=CallExpr is_enum=true 
	{
	p_activateinstasis(line.tag)
	}
	 else { 
	
	}
	}
	secnum = p_findsectorfromlinetag(line, secnum)
	for secnum >= 0 {
		sec = &sectors [secnum] 
		if sec.specialdata {
			secnum = p_findsectorfromlinetag(line, secnum)
			continue
			
		}
		rtn = 1
		plat = z_malloc(sizeof(*plat), 6, 0)
		p_addthinker(&plat.thinker)
		plat.type_ = type_
		plat.sector = sec
		plat.sector.specialdata = plat
		plat.thinker.function.acp1 = Actionf_p1(t_platraise)
		plat.crush = false
		plat.tag = line.tag
		match type_ {
		 .raisetonearestandchange// case comp body kind=BinaryOperator is_enum=true 
		{
		plat.speed = (1 << 16) / 2
		sec.floorpic = sides [line.sidenum [0] ] .sector.floorpic
		plat.high = p_findnexthighestfloor(sec, sec.floorheight)
		plat.wait = 0
		plat.status = Plat_e.up
		sec.special = 0
		s_startsound(&sec.soundorg, Sfxenum_t.sfx_stnmov)
		 }
		.raiseandchange// case comp body kind=BinaryOperator is_enum=true 
		{
		plat.speed = (1 << 16) / 2
		sec.floorpic = sides [line.sidenum [0] ] .sector.floorpic
		plat.high = sec.floorheight + amount * (1 << 16)
		plat.wait = 0
		plat.status = Plat_e.up
		s_startsound(&sec.soundorg, Sfxenum_t.sfx_stnmov)
		 }
		.downwaitupstay// case comp body kind=BinaryOperator is_enum=true 
		{
		plat.speed = (1 << 16) * 4
		plat.low = p_findlowestfloorsurrounding(sec)
		if plat.low > sec.floorheight {
		plat.low = sec.floorheight
		}
		plat.high = sec.floorheight
		plat.wait = 35 * 3
		plat.status = Plat_e.down
		s_startsound(&sec.soundorg, Sfxenum_t.sfx_pstart)
		 }
		.blazedwus// case comp body kind=BinaryOperator is_enum=true 
		{
		plat.speed = (1 << 16) * 8
		plat.low = p_findlowestfloorsurrounding(sec)
		if plat.low > sec.floorheight {
		plat.low = sec.floorheight
		}
		plat.high = sec.floorheight
		plat.wait = 35 * 3
		plat.status = Plat_e.down
		s_startsound(&sec.soundorg, Sfxenum_t.sfx_pstart)
		 }
		.perpetualraise// case comp body kind=BinaryOperator is_enum=true 
		{
		plat.speed = (1 << 16)
		plat.low = p_findlowestfloorsurrounding(sec)
		if plat.low > sec.floorheight {
		plat.low = sec.floorheight
		}
		plat.high = p_findhighestfloorsurrounding(sec)
		if plat.high < sec.floorheight {
		plat.high = sec.floorheight
		}
		plat.wait = 35 * 3
		plat.status = p_random() & 1
		s_startsound(&sec.soundorg, Sfxenum_t.sfx_pstart)
		}else{}
		}
		p_addactiveplat(plat)
		secnum = p_findsectorfromlinetag(line, secnum)
	}
	return rtn
}

[c:'P_ActivateInStasis']
fn p_activateinstasis(tag int)  {
	i := 0
	for i = 0 ; i < 30 ; i ++ {
	if activeplats [i]  && (activeplats [i] ).tag == tag && (activeplats [i] ).status == Plat_e.in_stasis {
		activeplats [i] .status = (activeplats [i] ).oldstatus
		activeplats [i] .thinker.function.acp1 = Actionf_p1(t_platraise)
	}
	}
}

[c:'EV_StopPlat']
fn ev_stopplat(line &Line_t)  {
	j := 0
	for j = 0 ; j < 30 ; j ++ {
	if activeplats [j]  && (activeplats [j] .status != Plat_e.in_stasis) && (activeplats [j] .tag == line.tag) {
		activeplats [j] .oldstatus = (activeplats [j] ).status
		activeplats [j] .status = Plat_e.in_stasis
		activeplats [j] .thinker.function.acv = Actionf_v((voidptr(0)))
	}
	}
}

[c:'P_AddActivePlat']
fn p_addactiveplat(plat &Plat_t)  {
	i := 0
	for i = 0 ; i < 30 ; i ++ {
	if activeplats [i]  == (voidptr(0)) {
		activeplats [i]  = plat
		return 
	}
	}
	i_error(c'P_AddActivePlat: no more plats!')
}

[c:'P_RemoveActivePlat']
fn p_removeactiveplat(plat &Plat_t)  {
	i := 0
	for i = 0 ; i < 30 ; i ++ {
	if plat == activeplats [i]  {
		(activeplats [i] ).sector.specialdata = (voidptr(0))
		p_removethinker(&(activeplats [i] ).thinker)
		activeplats [i]  = (voidptr(0))
		return 
	}
	}
	i_error(c"P_RemoveActivePlat: can't find plat!")
}

