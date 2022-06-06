[translated]
module main

[typedef]
struct C.FILE {}

// vstart

fn index(&i8, int) &i8

fn index(&i8, int) &i8

[c: 'I_Error']
[c2v_variadic]
fn i_error(error ...&i8)

[c: 'DEH_String']
fn deh_string(s &i8) &i8

const ( // empty enum
)

[c: 'R_TextureNumForName']
fn r_texturenumforname(name &i8) int

[c: 'P_UseSpecialLine']
fn p_usespecialline(thing &Mobj_t, line &Line_t, side int) bool

[c: 'EV_DoDonut']
fn ev_dodonut(line &Line_t) int

[c: 'EV_LightTurnOn']
fn ev_lightturnon(line &Line_t, bright int)

[c: 'P_ChangeSwitchTexture']
fn p_changeswitchtexture(line &Line_t, useagain int)

[c: 'P_InitSwitchList']
fn p_initswitchlist()

[c: 'EV_DoPlat']
fn ev_doplat(line &Line_t, type_ Plattype_e, amount int) int

[c: 'EV_VerticalDoor']
fn ev_verticaldoor(line &Line_t, thing &Mobj_t)

[c: 'EV_DoDoor']
fn ev_dodoor(line &Line_t, type_ Vldoor_e) int

[c: 'EV_DoLockedDoor']
fn ev_dolockeddoor(line &Line_t, type_ Vldoor_e, thing &Mobj_t) int

[c: 'EV_DoCeiling']
fn ev_doceiling(line &Line_t, type_ Ceiling_e) int

[c: 'EV_BuildStairs']
fn ev_buildstairs(line &Line_t, type_ Stair_e) int

[c: 'EV_DoFloor']
fn ev_dofloor(line &Line_t, floortype Floor_e) int

[c: 'G_ExitLevel']
fn g_exitlevel()

[c: 'G_SecretExitLevel']
fn g_secretexitlevel()

[c: 'S_Start']
fn s_start()

[c: 'S_StartSound']
fn s_startsound(origin voidptr, sound_id int)

[export: 'alphSwitchList']
const (
	alphSwitchList = [Switchlist_t{c'SW1BRCOM', c'SW2BRCOM', 1},
		Switchlist_t{c'SW1BRN1', c'SW2BRN1', 1}, Switchlist_t{c'SW1BRN2', c'SW2BRN2', 1},
		Switchlist_t{c'SW1BRNGN', c'SW2BRNGN', 1}, Switchlist_t{c'SW1BROWN', c'SW2BROWN', 1},
		Switchlist_t{c'SW1COMM', c'SW2COMM', 1}, Switchlist_t{c'SW1COMP', c'SW2COMP', 1},
		Switchlist_t{c'SW1DIRT', c'SW2DIRT', 1}, Switchlist_t{c'SW1EXIT', c'SW2EXIT', 1},
		Switchlist_t{c'SW1GRAY', c'SW2GRAY', 1}, Switchlist_t{c'SW1GRAY1', c'SW2GRAY1', 1},
		Switchlist_t{c'SW1METAL', c'SW2METAL', 1}, Switchlist_t{c'SW1PIPE', c'SW2PIPE', 1},
		Switchlist_t{c'SW1SLAD', c'SW2SLAD', 1}, Switchlist_t{c'SW1STARG', c'SW2STARG', 1},
		Switchlist_t{c'SW1STON1', c'SW2STON1', 1}, Switchlist_t{c'SW1STON2', c'SW2STON2', 1},
		Switchlist_t{c'SW1STONE', c'SW2STONE', 1}, Switchlist_t{c'SW1STRTN', c'SW2STRTN', 1},
		Switchlist_t{c'SW1BLUE', c'SW2BLUE', 2}, Switchlist_t{c'SW1CMT', c'SW2CMT', 2},
		Switchlist_t{c'SW1GARG', c'SW2GARG', 2}, Switchlist_t{c'SW1GSTON', c'SW2GSTON', 2},
		Switchlist_t{c'SW1HOT', c'SW2HOT', 2}, Switchlist_t{c'SW1LION', c'SW2LION', 2},
		Switchlist_t{c'SW1SATYR', c'SW2SATYR', 2}, Switchlist_t{c'SW1SKIN', c'SW2SKIN', 2},
		Switchlist_t{c'SW1VINE', c'SW2VINE', 2}, Switchlist_t{c'SW1WOOD', c'SW2WOOD', 2},
		Switchlist_t{c'SW1PANEL', c'SW2PANEL', 3}, Switchlist_t{c'SW1ROCK', c'SW2ROCK', 3},
		Switchlist_t{c'SW1MET2', c'SW2MET2', 3}, Switchlist_t{c'SW1WDMET', c'SW2WDMET', 3},
		Switchlist_t{c'SW1BRIK', c'SW2BRIK', 3}, Switchlist_t{c'SW1MOD1', c'SW2MOD1', 3},
		Switchlist_t{c'SW1ZIM', c'SW2ZIM', 3}, Switchlist_t{c'SW1STON6', c'SW2STON6', 3},
		Switchlist_t{c'SW1TEK', c'SW2TEK', 3}, Switchlist_t{c'SW1MARB', c'SW2MARB', 3},
		Switchlist_t{c'SW1SKULL', c'SW2SKULL', 3}]!
)

[weak]
__global (
	switchlist [100]int
)

[weak]
__global (
	numswitches int
)

[c: 'P_InitSwitchList']
fn p_initswitchlist() {
	i := 0
	slindex := 0
	episode := 0

	match gamemode {
		.registered, .retail {
			episode = 2
		}
		.commercial /* case comp body kind=BinaryOperator is_enum=true */ {
			episode = 3
		}
		else {
			episode = 1
		}
	}
	slindex = 0
	for i = 0; i < (sizeof(alphSwitchList) / sizeof(*alphSwitchList)); i++ {
		if alphSwitchList[i].episode <= episode {
			switchlist[slindex++] = r_texturenumforname(deh_string(alphSwitchList[i].name1))
			switchlist[slindex++] = r_texturenumforname(deh_string(alphSwitchList[i].name2))
		}
	}
	numswitches = slindex / 2
	switchlist[slindex] = -1
}

[c: 'P_StartButton']
fn p_startbutton(line &Line_t, w Bwhere_e, texture int, time int) {
	i := 0
	for i = 0; i < 16; i++ {
		if buttonlist[i].btimer && buttonlist[i].line == line {
			return
		}
	}
	for i = 0; i < 16; i++ {
		if !buttonlist[i].btimer {
			buttonlist[i].line = line
			buttonlist[i].where = w
			buttonlist[i].btexture = texture
			buttonlist[i].btimer = time
			buttonlist[i].soundorg = &line.frontsector.soundorg
			return
		}
	}
	i_error(c'P_StartButton: no button slots left!')
}

[c: 'P_ChangeSwitchTexture']
fn p_changeswitchtexture(line &Line_t, useagain int) {
	textop := 0
	texmid := 0
	texbot := 0
	i := 0
	sound := 0
	if !useagain {
		line.special = 0
	}
	textop = sides[line.sidenum[0]].toptexture
	texmid = sides[line.sidenum[0]].midtexture
	texbot = sides[line.sidenum[0]].bottomtexture
	sound = Sfxenum_t.sfx_swtchn
	if line.special == 11 {
		sound = Sfxenum_t.sfx_swtchx
	}
	for i = 0; i < numswitches * 2; i++ {
		if switchlist[i] == textop {
			s_startsound(buttonlist[0].soundorg, sound)
			sides[line.sidenum[0]].toptexture = switchlist[i ^ 1]
			if useagain {
				p_startbutton(line, Bwhere_e.top, switchlist[i], 35)
			}
			return
		} else {
			if switchlist[i] == texmid {
				s_startsound(buttonlist[0].soundorg, sound)
				sides[line.sidenum[0]].midtexture = switchlist[i ^ 1]
				if useagain {
					p_startbutton(line, Bwhere_e.middle, switchlist[i], 35)
				}
				return
			} else {
				if switchlist[i] == texbot {
					s_startsound(buttonlist[0].soundorg, sound)
					sides[line.sidenum[0]].bottomtexture = switchlist[i ^ 1]
					if useagain {
						p_startbutton(line, Bwhere_e.bottom, switchlist[i], 35)
					}
					return
				}
			}
		}
	}
}

[c: 'P_UseSpecialLine']
fn p_usespecialline(thing &Mobj_t, line &Line_t, side int) bool {
	if side {
		match line.special {
			124 /* case comp body kind=BreakStmt is_enum=true */ {}
			else {
				return false
			}
		}
	}
	if !thing.player {
		if line.flags & 32 {
			return false
		}
		match line.special {
			1, 32, 33, 34 {}
			else {
				return false
			}
		}
	}
	match line.special {
		1, 26, 27, 28, 31, 32, 33, 34, 117, 118 {
			ev_verticaldoor(line, thing)
		}
		7 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_buildstairs(line, Stair_e.build8) {
				p_changeswitchtexture(line, 0)
			}
		}
		9 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dodonut(line) {
				p_changeswitchtexture(line, 0)
			}
		}
		11 /* case comp body kind=CallExpr is_enum=true */ {
			p_changeswitchtexture(line, 0)
			g_exitlevel()
		}
		14 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_doplat(line, Plattype_e.raiseandchange, 32) {
				p_changeswitchtexture(line, 0)
			}
		}
		15 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_doplat(line, Plattype_e.raiseandchange, 24) {
				p_changeswitchtexture(line, 0)
			}
		}
		18 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.raisefloortonearest) {
				p_changeswitchtexture(line, 0)
			}
		}
		20 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_doplat(line, Plattype_e.raisetonearestandchange, 0) {
				p_changeswitchtexture(line, 0)
			}
		}
		21 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_doplat(line, Plattype_e.downwaitupstay, 0) {
				p_changeswitchtexture(line, 0)
			}
		}
		23 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.lowerfloortolowest) {
				p_changeswitchtexture(line, 0)
			}
		}
		29 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dodoor(line, Vldoor_e.vld_normal) {
				p_changeswitchtexture(line, 0)
			}
		}
		41 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_doceiling(line, Ceiling_e.lowertofloor) {
				p_changeswitchtexture(line, 0)
			}
		}
		71 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.turbolower) {
				p_changeswitchtexture(line, 0)
			}
		}
		49 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_doceiling(line, Ceiling_e.crushandraise) {
				p_changeswitchtexture(line, 0)
			}
		}
		50 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dodoor(line, Vldoor_e.vld_close) {
				p_changeswitchtexture(line, 0)
			}
		}
		51 /* case comp body kind=CallExpr is_enum=true */ {
			p_changeswitchtexture(line, 0)
			g_secretexitlevel()
		}
		55 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.raisefloorcrush) {
				p_changeswitchtexture(line, 0)
			}
		}
		101 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.raisefloor) {
				p_changeswitchtexture(line, 0)
			}
		}
		102 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.lowerfloor) {
				p_changeswitchtexture(line, 0)
			}
		}
		103 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dodoor(line, Vldoor_e.vld_open) {
				p_changeswitchtexture(line, 0)
			}
		}
		111 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dodoor(line, Vldoor_e.vld_blazeraise) {
				p_changeswitchtexture(line, 0)
			}
		}
		112 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dodoor(line, Vldoor_e.vld_blazeopen) {
				p_changeswitchtexture(line, 0)
			}
		}
		113 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dodoor(line, Vldoor_e.vld_blazeclose) {
				p_changeswitchtexture(line, 0)
			}
		}
		122 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_doplat(line, Plattype_e.blazedwus, 0) {
				p_changeswitchtexture(line, 0)
			}
		}
		127 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_buildstairs(line, Stair_e.turbo16) {
				p_changeswitchtexture(line, 0)
			}
		}
		131 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.raisefloorturbo) {
				p_changeswitchtexture(line, 0)
			}
		}
		133, 135, 137 {
			if ev_dolockeddoor(line, .vld_blazeopen, thing) {
				p_changeswitchtexture(line, 0)
			}
		}
		140 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.raisefloor512) {
				p_changeswitchtexture(line, 0)
			}
		}
		42 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dodoor(line, Vldoor_e.vld_close) {
				p_changeswitchtexture(line, 1)
			}
		}
		43 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_doceiling(line, Ceiling_e.lowertofloor) {
				p_changeswitchtexture(line, 1)
			}
		}
		45 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.lowerfloor) {
				p_changeswitchtexture(line, 1)
			}
		}
		60 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.lowerfloortolowest) {
				p_changeswitchtexture(line, 1)
			}
		}
		61 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dodoor(line, Vldoor_e.vld_open) {
				p_changeswitchtexture(line, 1)
			}
		}
		62 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_doplat(line, Plattype_e.downwaitupstay, 1) {
				p_changeswitchtexture(line, 1)
			}
		}
		63 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dodoor(line, Vldoor_e.vld_normal) {
				p_changeswitchtexture(line, 1)
			}
		}
		64 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.raisefloor) {
				p_changeswitchtexture(line, 1)
			}
		}
		66 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_doplat(line, Plattype_e.raiseandchange, 24) {
				p_changeswitchtexture(line, 1)
			}
		}
		67 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_doplat(line, Plattype_e.raiseandchange, 32) {
				p_changeswitchtexture(line, 1)
			}
		}
		65 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.raisefloorcrush) {
				p_changeswitchtexture(line, 1)
			}
		}
		68 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_doplat(line, Plattype_e.raisetonearestandchange, 0) {
				p_changeswitchtexture(line, 1)
			}
		}
		69 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.raisefloortonearest) {
				p_changeswitchtexture(line, 1)
			}
		}
		70 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.turbolower) {
				p_changeswitchtexture(line, 1)
			}
		}
		114 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dodoor(line, Vldoor_e.vld_blazeraise) {
				p_changeswitchtexture(line, 1)
			}
		}
		115 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dodoor(line, Vldoor_e.vld_blazeopen) {
				p_changeswitchtexture(line, 1)
			}
		}
		116 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dodoor(line, Vldoor_e.vld_blazeclose) {
				p_changeswitchtexture(line, 1)
			}
		}
		123 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_doplat(line, Plattype_e.blazedwus, 0) {
				p_changeswitchtexture(line, 1)
			}
		}
		132 /* case comp body kind=IfStmt is_enum=true */ {
			if ev_dofloor(line, Floor_e.raisefloorturbo) {
				p_changeswitchtexture(line, 1)
			}
		}
		99, 134, 136 {
			if ev_dolockeddoor(line, .vld_blazeopen, thing) {
				p_changeswitchtexture(line, 1)
			}
		}
		138 /* case comp body kind=CallExpr is_enum=true */ {
			ev_lightturnon(line, 255)
			p_changeswitchtexture(line, 1)
		}
		139 /* case comp body kind=CallExpr is_enum=true */ {
			ev_lightturnon(line, 35)
			p_changeswitchtexture(line, 1)
		}
		else {}
	}
	return true
}
