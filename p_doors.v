[translated]
module main


[typedef]
struct C.FILE {}


// vstart

[c:'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

[c:'DEH_String']
fn deh_string(s &i8) &i8


const ( // empty enum
)

[c:'R_TextureNumForName']
fn r_texturenumforname(name &i8) int

[c:'P_AddThinker']
fn p_addthinker(thinker &Thinker_t) 

[c:'P_RemoveThinker']
fn p_removethinker(thinker &Thinker_t) 

[c:'P_FindLowestCeilingSurrounding']
fn p_findlowestceilingsurrounding(sec &Sector_t) int

[c:'P_FindSectorFromLineTag']
fn p_findsectorfromlinetag(line &Line_t, start int) int

[c:'T_PlatRaise']
fn t_platraise(plat &Plat_t) 

[c:'EV_VerticalDoor']
fn ev_verticaldoor(line &Line_t, thing &Mobj_t) 

[c:'EV_DoDoor']
fn ev_dodoor(line &Line_t, type_ Vldoor_e) int

[c:'EV_DoLockedDoor']
fn ev_dolockeddoor(line &Line_t, type_ Vldoor_e, thing &Mobj_t) int

[c:'T_VerticalDoor']
fn t_verticaldoor(door &Vldoor_t) 

[c:'P_SpawnDoorCloseIn30']
fn p_spawndoorclosein30(sec &Sector_t) 

[c:'P_SpawnDoorRaiseIn5Mins']
fn p_spawndoorraisein5mins(sec &Sector_t, secnum int) 

[c:'T_MovePlane']
fn t_moveplane(sector &Sector_t, speed int, dest int, crush bool, floororceiling int, direction int) Result_e

[c2v_variadic]
[c:'I_Error']
fn i_error(error &i8) 

[c:'S_Start']
fn s_start() 

[c:'S_StartSound']
fn s_startsound(origin voidptr, sound_id int) 

[c:'T_VerticalDoor']
fn t_verticaldoor(door &Vldoor_t)  {
	res := Result_e{}
	match door.direction {
	 0// case comp body kind=IfStmt is_enum=false 
	{
	if !door.topcountdown -- {
		match door.type_ {
		 .vld_blazeraise// case comp body kind=BinaryOperator is_enum=true 
		{
		door.direction = -1
		s_startsound(&door.sector.soundorg, Sfxenum_t.sfx_bdcls)
		 }
		.vld_normal// case comp body kind=BinaryOperator is_enum=true 
		{
		door.direction = -1
		s_startsound(&door.sector.soundorg, Sfxenum_t.sfx_dorcls)
		 }
		.vld_close30thenopen// case comp body kind=BinaryOperator is_enum=true 
		{
		door.direction = 1
		s_startsound(&door.sector.soundorg, Sfxenum_t.sfx_doropn)
		}
		 else { 
		
		}
		}
	}
	 }
	2// case comp body kind=IfStmt is_enum=false 
	{
	if !door.topcountdown -- {
		match door.type_ {
		 .vld_raisein5mins// case comp body kind=BinaryOperator is_enum=true 
		{
		door.direction = 1
		door.type_ = Vldoor_e.vld_normal
		s_startsound(&door.sector.soundorg, Sfxenum_t.sfx_doropn)
		}
		 else { 
		
		}
		}
	}
	 }
	-1// case comp body kind=BinaryOperator is_enum=false 
	{
	res = t_moveplane(door.sector, door.speed, door.sector.floorheight, false, 1, door.direction)
	if res == Result_e.pastdest {
		match door.type_ {
		 .vld_blazeraise, .vld_blazeclose{
		door.sector.specialdata = (voidptr(0))
		p_removethinker(&door.thinker)
		s_startsound(&door.sector.soundorg, Sfxenum_t.sfx_bdcls)
		 }
		.vld_normal, .vld_close{
		door.sector.specialdata = (voidptr(0))
		p_removethinker(&door.thinker)
		 }
		.vld_close30thenopen// case comp body kind=BinaryOperator is_enum=true 
		{
		door.direction = 0
		door.topcountdown = 35 * 30
		}
		 else { 
		
		}
		}
	}
	else if res == Result_e.crushed {
		match door.type_ {
		 .vld_blazeclose, .vld_close{
		
		}
		 else { 
		door.direction = 1
		s_startsound(&door.sector.soundorg, Sfxenum_t.sfx_doropn)
		}
		}
	}
	 }
	1// case comp body kind=BinaryOperator is_enum=false 
	{
	res = t_moveplane(door.sector, door.speed, door.topheight, false, 1, door.direction)
	if res == Result_e.pastdest {
		match door.type_ {
		 .vld_blazeraise, .vld_normal{
		door.direction = 0
		door.topcountdown = door.topwait
		 }
		.vld_close30thenopen, .vld_blazeopen, .vld_open{
		door.sector.specialdata = (voidptr(0))
		p_removethinker(&door.thinker)
		}
		 else { 
		
		}
		}
	}
	}else{}
	}
}

[c:'EV_DoLockedDoor']
fn ev_dolockeddoor(line &Line_t, type_ Vldoor_e, thing &Mobj_t) int {
	p := &Player_t(0)
	p = thing.player
	if !p {
	return 0
	}
	match line.special {
	 99, 133{
	if !p {
	return 0
	}
	if !p.cards [int(Card_t.it_bluecard)]  && !p.cards [int(Card_t.it_blueskull)]  {
		p.message = deh_string(c'You need a blue key to activate this object')
		s_startsound((voidptr(0)), Sfxenum_t.sfx_oof)
		return 0
	}
	 }
	134, 135{
	if !p {
	return 0
	}
	if !p.cards [int(Card_t.it_redcard)]  && !p.cards [int(Card_t.it_redskull)]  {
		p.message = deh_string(c'You need a red key to activate this object')
		s_startsound((voidptr(0)), Sfxenum_t.sfx_oof)
		return 0
	}
	 }
	136, 137{
	if !p {
	return 0
	}
	if !p.cards [int(Card_t.it_yellowcard)]  && !p.cards [int(Card_t.it_yellowskull)]  {
		p.message = deh_string(c'You need a yellow key to activate this object')
		s_startsound((voidptr(0)), Sfxenum_t.sfx_oof)
		return 0
	}
	}else{}
	}
	return ev_dodoor(line, type_)
}

[c:'EV_DoDoor']
fn ev_dodoor(line &Line_t, type_ Vldoor_e) int {
	secnum := 0
	rtn := 0
	
	sec := &Sector_t(0)
	door := &Vldoor_t(0)
	secnum = -1
	rtn = 0
	secnum = p_findsectorfromlinetag(line, secnum)
	for secnum >= 0 {
		sec = &sectors [secnum] 
		if sec.specialdata {
		continue
		
		}
		rtn = 1
		door = z_malloc(sizeof(*door), 6, 0)
		p_addthinker(&door.thinker)
		sec.specialdata = door
		door.thinker.function.acp1 = Actionf_p1(t_verticaldoor)
		door.sector = sec
		door.type_ = type_
		door.topwait = 150
		door.speed = (1 << 16) * 2
		match type_ {
		 .vld_blazeclose// case comp body kind=BinaryOperator is_enum=true 
		{
		door.topheight = p_findlowestceilingsurrounding(sec)
		door.topheight -= 4 * (1 << 16)
		door.direction = -1
		door.speed = (1 << 16) * 2 * 4
		s_startsound(&door.sector.soundorg, Sfxenum_t.sfx_bdcls)
		 }
		.vld_close// case comp body kind=BinaryOperator is_enum=true 
		{
		door.topheight = p_findlowestceilingsurrounding(sec)
		door.topheight -= 4 * (1 << 16)
		door.direction = -1
		s_startsound(&door.sector.soundorg, Sfxenum_t.sfx_dorcls)
		 }
		.vld_close30thenopen// case comp body kind=BinaryOperator is_enum=true 
		{
		door.topheight = sec.ceilingheight
		door.direction = -1
		s_startsound(&door.sector.soundorg, Sfxenum_t.sfx_dorcls)
		 }
		.vld_blazeraise, .vld_blazeopen{
		door.direction = 1
		door.topheight = p_findlowestceilingsurrounding(sec)
		door.topheight -= 4 * (1 << 16)
		door.speed = (1 << 16) * 2 * 4
		if door.topheight != sec.ceilingheight {
		s_startsound(&door.sector.soundorg, Sfxenum_t.sfx_bdopn)
		}
		 }
		.vld_normal, .vld_open{
		door.direction = 1
		door.topheight = p_findlowestceilingsurrounding(sec)
		door.topheight -= 4 * (1 << 16)
		if door.topheight != sec.ceilingheight {
		s_startsound(&door.sector.soundorg, Sfxenum_t.sfx_doropn)
		}
		}
		 else { 
		
		}
		}
		secnum = p_findsectorfromlinetag(line, secnum)
	}
	return rtn
}

[c:'EV_VerticalDoor']
fn ev_verticaldoor(line &Line_t, thing &Mobj_t)  {
	player := &Player_t(0)
	sec := &Sector_t(0)
	door := &Vldoor_t(0)
	side := 0
	side = 0
	player = thing.player
	match line.special {
	 26, 32{
	if !player {
	return 
	}
	if !player.cards [int(Card_t.it_bluecard)]  && !player.cards [int(Card_t.it_blueskull)]  {
		player.message = deh_string(c'You need a blue key to open this door')
		s_startsound((voidptr(0)), Sfxenum_t.sfx_oof)
		return 
	}
	 }
	27, 34{
	if !player {
	return 
	}
	if !player.cards [int(Card_t.it_yellowcard)]  && !player.cards [int(Card_t.it_yellowskull)]  {
		player.message = deh_string(c'You need a yellow key to open this door')
		s_startsound((voidptr(0)), Sfxenum_t.sfx_oof)
		return 
	}
	 }
	28, 33{
	if !player {
	return 
	}
	if !player.cards [int(Card_t.it_redcard)]  && !player.cards [int(Card_t.it_redskull)]  {
		player.message = deh_string(c'You need a red key to open this door')
		s_startsound((voidptr(0)), Sfxenum_t.sfx_oof)
		return 
	}
	}else{}
	}
	if line.sidenum [side ^ 1]  == -1 {
		i_error(c'EV_VerticalDoor: DR special type on 1-sided linedef')
	}
	sec = sides [line.sidenum [side ^ 1] ] .sector
	if sec.specialdata {
		door = sec.specialdata
		match line.special {
		 1, 26, 27, 28, 117{
		if door.direction == -1 {
		door.direction = 1
		}
		else {
			if !thing.player {
			return 
			}
			if door.thinker.function.acp1 == Actionf_p1(t_verticaldoor) {
				door.direction = -1
			}
			else if door.thinker.function.acp1 == Actionf_p1(t_platraise) {
				plat := &Plat_t(0)
				plat = &Plat_t(door)
				plat.wait = -1
			}
			else {
				C.fprintf(C.__stderrp, c"EV_VerticalDoor: Tried to close something that wasn't a door.\n")
				door.direction = -1
			}
		}
		return 
		}else{}
		}
	}
	match line.special {
	 117, 118{
	0 /* null */
	s_startsound(&sec.soundorg, int(Sfxenum_t.sfx_bdopn))
	 }
	1, 31{
	0 /* null */
	s_startsound(&sec.soundorg, int(Sfxenum_t.sfx_doropn))
	}
	 else { 
	0 /* null */
	s_startsound(&sec.soundorg, int(Sfxenum_t.sfx_doropn))
	}
	}
	door = z_malloc(sizeof(*door), 6, 0)
	p_addthinker(&door.thinker)
	sec.specialdata = door
	door.thinker.function.acp1 = Actionf_p1(t_verticaldoor)
	door.sector = sec
	door.direction = 1
	door.speed = (1 << 16) * 2
	door.topwait = 150
	match line.special {
	 1, 26, 27, 28{
	door.type_ = .vld_normal
	 }
	31, 32, 33, 34{
	door.type_ = .vld_open
	line.special = 0
	 }
	117// case comp body kind=BinaryOperator is_enum=true 
	{
	door.type_ = Vldoor_e.vld_blazeraise
	door.speed = (1 << 16) * 2 * 4
	 }
	118// case comp body kind=BinaryOperator is_enum=true 
	{
	door.type_ = Vldoor_e.vld_blazeopen
	line.special = 0
	door.speed = (1 << 16) * 2 * 4
	}else{}
	}
	door.topheight = p_findlowestceilingsurrounding(sec)
	door.topheight -= 4 * (1 << 16)
}

[c:'P_SpawnDoorCloseIn30']
fn p_spawndoorclosein30(sec &Sector_t)  {
	door := &Vldoor_t(0)
	door = z_malloc(sizeof(*door), 6, 0)
	p_addthinker(&door.thinker)
	sec.specialdata = door
	sec.special = 0
	door.thinker.function.acp1 = Actionf_p1(t_verticaldoor)
	door.sector = sec
	door.direction = 0
	door.type_ = Vldoor_e.vld_normal
	door.speed = (1 << 16) * 2
	door.topcountdown = 30 * 35
}

[c:'P_SpawnDoorRaiseIn5Mins']
fn p_spawndoorraisein5mins(sec &Sector_t, secnum int)  {
	door := &Vldoor_t(0)
	door = z_malloc(sizeof(*door), 6, 0)
	p_addthinker(&door.thinker)
	sec.specialdata = door
	sec.special = 0
	door.thinker.function.acp1 = Actionf_p1(t_verticaldoor)
	door.sector = sec
	door.direction = 2
	door.type_ = Vldoor_e.vld_raisein5mins
	door.speed = (1 << 16) * 2
	door.topheight = p_findlowestceilingsurrounding(sec)
	door.topheight -= 4 * (1 << 16)
	door.topwait = 150
	door.topcountdown = 5 * 60 * 35
}

