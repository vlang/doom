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


const ( // empty enum
)

[c:'DEH_String']
fn deh_string(s &i8) &i8

[c2v_variadic]
[c:'I_Error']
fn i_error(error &i8) 

[c:'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

[c:'M_CheckParm']
fn m_checkparm(check &i8) int

[c:'M_CheckParmWithArgs']
fn m_checkparmwithargs(check &i8, num_args int) int

[c:'M_StrToInt']
fn m_strtoint(str &i8, result &int) bool

[c:'P_Random']
fn p_random() int

[c:'W_CheckNumForName']
fn w_checknumforname(name &i8) Lumpindex_t

[c:'R_FlatNumForName']
fn r_flatnumforname(name &i8) int

[c:'R_TextureNumForName']
fn r_texturenumforname(name &i8) int

[c:'R_CheckTextureNumForName']
fn r_checktexturenumforname(name &i8) int

[c:'P_AddThinker']
fn p_addthinker(thinker &Thinker_t) 

[c:'P_DamageMobj']
fn p_damagemobj(target &Mobj_t, inflictor &Mobj_t, source &Mobj_t, damage int) 

[c:'P_InitPicAnims']
fn p_initpicanims() 

[c:'P_SpawnSpecials']
fn p_spawnspecials() 

[c:'P_UpdateSpecials']
fn p_updatespecials() 

[c:'P_ShootSpecialLine']
fn p_shootspecialline(thing &Mobj_t, line &Line_t) 

[c:'P_CrossSpecialLine']
fn p_crossspecialline(linenum int, side int, thing &Mobj_t) 

[c:'P_PlayerInSpecialSector']
fn p_playerinspecialsector(player &Player_t) 

[c:'twoSided']
fn twosided(sector int, line int) int

[c:'getSector']
fn getsector(currentsector int, line int, side int) &Sector_t

[c:'getSide']
fn getside(currentsector int, line int, side int) &Side_t

[c:'P_FindLowestFloorSurrounding']
fn p_findlowestfloorsurrounding(sec &Sector_t) int

[c:'P_FindHighestFloorSurrounding']
fn p_findhighestfloorsurrounding(sec &Sector_t) int

[c:'P_FindNextHighestFloor']
fn p_findnexthighestfloor(sec &Sector_t, currentheight int) int

[c:'P_FindLowestCeilingSurrounding']
fn p_findlowestceilingsurrounding(sec &Sector_t) int

[c:'P_FindHighestCeilingSurrounding']
fn p_findhighestceilingsurrounding(sec &Sector_t) int

[c:'P_FindSectorFromLineTag']
fn p_findsectorfromlinetag(line &Line_t, start int) int

[c:'P_FindMinSurroundingLight']
fn p_findminsurroundinglight(sector &Sector_t, max int) int

[c:'getNextSector']
fn getnextsector(line &Line_t, sec &Sector_t) &Sector_t

[c:'EV_DoDonut']
fn ev_dodonut(line &Line_t) int

[c:'P_SpawnFireFlicker']
fn p_spawnfireflicker(sector &Sector_t) 

[c:'P_SpawnLightFlash']
fn p_spawnlightflash(sector &Sector_t) 

[c:'P_SpawnStrobeFlash']
fn p_spawnstrobeflash(sector &Sector_t, fastorslow int, insync int) 

[c:'EV_StartLightStrobing']
fn ev_startlightstrobing(line &Line_t) 

[c:'EV_TurnTagLightsOff']
fn ev_turntaglightsoff(line &Line_t) 

[c:'EV_LightTurnOn']
fn ev_lightturnon(line &Line_t, bright int) 

[c:'P_SpawnGlowingLight']
fn p_spawnglowinglight(sector &Sector_t) 

[c:'P_ChangeSwitchTexture']
fn p_changeswitchtexture(line &Line_t, useagain int) 

[c:'EV_DoPlat']
fn ev_doplat(line &Line_t, type_ Plattype_e, amount int) int

[c:'EV_StopPlat']
fn ev_stopplat(line &Line_t) 

[c:'EV_DoDoor']
fn ev_dodoor(line &Line_t, type_ Vldoor_e) int

[c:'P_SpawnDoorCloseIn30']
fn p_spawndoorclosein30(sec &Sector_t) 

[c:'P_SpawnDoorRaiseIn5Mins']
fn p_spawndoorraisein5mins(sec &Sector_t, secnum int) 

[c:'EV_DoCeiling']
fn ev_doceiling(line &Line_t, type_ Ceiling_e) int

[c:'EV_CeilingCrushStop']
fn ev_ceilingcrushstop(line &Line_t) int

[c:'EV_BuildStairs']
fn ev_buildstairs(line &Line_t, type_ Stair_e) int

[c:'EV_DoFloor']
fn ev_dofloor(line &Line_t, floortype Floor_e) int

[c:'T_MoveFloor']
fn t_movefloor(floor &Floormove_t) 

[c:'EV_Teleport']
fn ev_teleport(line &Line_t, side int, thing &Mobj_t) int

[c:'G_ExitLevel']
fn g_exitlevel() 

[c:'G_SecretExitLevel']
fn g_secretexitlevel() 

[c:'S_Start']
fn s_start() 

[c:'S_StartSound']
fn s_startsound(origin voidptr, sound_id int) 

struct Animplane_t { 
	istexture bool
	picnum int
	basepic int
	numpics int
	speed int
}
struct Animdef_t { 
	istexture int
	endname [9]i8
	startname [9]i8
	speed int
}
[weak]__global ( lastanim &Animplane_t 

)

[export:'animdefs']
const (
animdefs   = [Animdef_t {
false, c'NUKAGE3', c'NUKAGE1', 8}
, Animdef_t {
false, c'FWATER4', c'FWATER1', 8}
, Animdef_t {
false, c'SWATER4', c'SWATER1', 8}
, Animdef_t {
false, c'LAVA4', c'LAVA1', 8}
, Animdef_t {
false, c'BLOOD3', c'BLOOD1', 8}
, Animdef_t {
false, c'RROCK08', c'RROCK05', 8}
, Animdef_t {
false, c'SLIME04', c'SLIME01', 8}
, Animdef_t {
false, c'SLIME08', c'SLIME05', 8}
, Animdef_t {
false, c'SLIME12', c'SLIME09', 8}
, Animdef_t {
true, c'BLODGR4', c'BLODGR1', 8}
, Animdef_t {
true, c'SLADRIP3', c'SLADRIP1', 8}
, Animdef_t {
true, c'BLODRIP4', c'BLODRIP1', 8}
, Animdef_t {
true, c'FIREWALL', c'FIREWALA', 8}
, Animdef_t {
true, c'GSTFONT3', c'GSTFONT1', 8}
, Animdef_t {
true, c'FIRELAVA', c'FIRELAV3', 8}
, Animdef_t {
true, c'FIREMAG3', c'FIREMAG1', 8}
, Animdef_t {
true, c'FIREBLU2', c'FIREBLU1', 8}
, Animdef_t {
true, c'ROCKRED3', c'ROCKRED1', 8}
, Animdef_t {
true, c'BFALL4', c'BFALL1', 8}
, Animdef_t {
true, c'SFALL4', c'SFALL1', 8}
, Animdef_t {
true, c'WFALL4', c'WFALL1', 8}
, Animdef_t {
true, c'DBRAIN4', c'DBRAIN1', 8}
, Animdef_t {
-1, c'', c'', 0}
]!

)

[weak]__global ( numlinespecials i16 

)

[weak]__global ( linespeciallist [64]&Line_t 

)

[c:'P_InitPicAnims']
fn p_initpicanims()  {
	i := 0
	lastanim = anims
	for i = 0 ; animdefs [i] .istexture != -1 ; i ++ {
		startname := &i8(0)
		endname := &i8(0)
		
		startname = deh_string(animdefs [i] .startname)
		endname = deh_string(animdefs [i] .endname)
		if animdefs [i] .istexture {
			if r_checktexturenumforname(startname) == -1 {
			continue
			
			}
			lastanim.picnum = r_texturenumforname(endname)
			lastanim.basepic = r_texturenumforname(startname)
		}
		else {
			if w_checknumforname(startname) == -1 {
			continue
			
			}
			lastanim.picnum = r_flatnumforname(endname)
			lastanim.basepic = r_flatnumforname(startname)
		}
		lastanim.istexture = animdefs [i] .istexture
		lastanim.numpics = lastanim.picnum - lastanim.basepic + 1
		if lastanim.numpics < 2 {
		i_error(c'P_InitPicAnims: bad cycle from %s to %s', startname, endname)
		}
		lastanim.speed = animdefs [i] .speed
		lastanim ++
	}
}

[c:'getSide']
fn getside(currentsector int, line int, side int) &Side_t {
	return &sides [(sectors [currentsector] .lines [line] ).sidenum [side] ] 
}

[c:'getSector']
fn getsector(currentsector int, line int, side int) &Sector_t {
	return sides [(sectors [currentsector] .lines [line] ).sidenum [side] ] .sector
}

[c:'twoSided']
fn twosided(sector int, line int) int {
	return (sectors [sector] .lines [line] ).flags & 4
}

[c:'getNextSector']
fn getnextsector(line &Line_t, sec &Sector_t) &Sector_t {
	if !(line.flags & 4) {
	return (voidptr(0))
	}
	if line.frontsector == sec {
	return line.backsector
	}
	return line.frontsector
}

[c:'P_FindLowestFloorSurrounding']
fn p_findlowestfloorsurrounding(sec &Sector_t) int {
	i := 0
	check := &Line_t(0)
	other := &Sector_t(0)
	floor := sec.floorheight
	for i = 0 ; i < sec.linecount ; i ++ {
		check = sec.lines [i] 
		other = getnextsector(check, sec)
		if !other {
		continue
		
		}
		if other.floorheight < floor {
		floor = other.floorheight
		}
	}
	return floor
}

[c:'P_FindHighestFloorSurrounding']
fn p_findhighestfloorsurrounding(sec &Sector_t) int {
	i := 0
	check := &Line_t(0)
	other := &Sector_t(0)
	floor := -500 * (1 << 16)
	for i = 0 ; i < sec.linecount ; i ++ {
		check = sec.lines [i] 
		other = getnextsector(check, sec)
		if !other {
		continue
		
		}
		if other.floorheight > floor {
		floor = other.floorheight
		}
	}
	return floor
}

[c:'P_FindNextHighestFloor']
fn p_findnexthighestfloor(sec &Sector_t, currentheight int) int {
	i := 0
	h := 0
	min := 0
	check := &Line_t(0)
	other := &Sector_t(0)
	height := currentheight
	heightlist := [22]int{}
	for i = 0 ; i < sec.linecount ; i ++ {
		check = sec.lines [i] 
		other = getnextsector(check, sec)
		if !other {
		continue
		
		}
		if other.floorheight > height {
			if h == 20 + 1 {
				height = other.floorheight
			}
			else if h == 20 + 2 {
				i_error(c'Sector with more than 22 adjoining sectors. Vanilla will crash here')
			}
			heightlist [h ++]  = other.floorheight
		}
	}
	if !h {
		return currentheight
	}
	min = heightlist [0] 
	for i = 1 ; i < h ; i ++ {
		if heightlist [i]  < min {
			min = heightlist [i] 
		}
	}
	return min
}

[c:'P_FindLowestCeilingSurrounding']
fn p_findlowestceilingsurrounding(sec &Sector_t) int {
	i := 0
	check := &Line_t(0)
	other := &Sector_t(0)
	height := 2147483647
	for i = 0 ; i < sec.linecount ; i ++ {
		check = sec.lines [i] 
		other = getnextsector(check, sec)
		if !other {
		continue
		
		}
		if other.ceilingheight < height {
		height = other.ceilingheight
		}
	}
	return height
}

[c:'P_FindHighestCeilingSurrounding']
fn p_findhighestceilingsurrounding(sec &Sector_t) int {
	i := 0
	check := &Line_t(0)
	other := &Sector_t(0)
	height := 0
	for i = 0 ; i < sec.linecount ; i ++ {
		check = sec.lines [i] 
		other = getnextsector(check, sec)
		if !other {
		continue
		
		}
		if other.ceilingheight > height {
		height = other.ceilingheight
		}
	}
	return height
}

[c:'P_FindSectorFromLineTag']
fn p_findsectorfromlinetag(line &Line_t, start int) int {
	i := 0
	for i = start + 1 ; i < numsectors ; i ++ {
	if sectors [i] .tag == line.tag {
	return i
	}
	}
	return -1
}

[c:'P_FindMinSurroundingLight']
fn p_findminsurroundinglight(sector &Sector_t, max int) int {
	i := 0
	min := 0
	line := &Line_t(0)
	check := &Sector_t(0)
	min = max
	for i = 0 ; i < sector.linecount ; i ++ {
		line = sector.lines [i] 
		check = getnextsector(line, sector)
		if !check {
		continue
		
		}
		if check.lightlevel < min {
		min = check.lightlevel
		}
	}
	return min
}

[c:'P_CrossSpecialLine']
fn p_crossspecialline(linenum int, side int, thing &Mobj_t)  {
	line := &Line_t(0)
	ok := 0
	line = &lines [linenum] 
	if gameversion <= GameVersion_t.exe_doom_1_2 {
		if line.special > 98 && line.special != 104 {
			return 
		}
	}
	else {
		if !thing.player {
			match thing.type_ {
			 .mt_rocket, .mt_plasma, .mt_bfg, .mt_troopshot, .mt_headshot, .mt_bruisershot{
			return 
			}
			 else { 
			
			}
			}
		}
	}
	if !thing.player {
		ok = 0
		match line.special {
		 39, 97, 125, 126, 4, 10, 88{
		ok = 1
		}else{}
		}
		if !ok {
		return 
		}
	}
	match line.special {
	 2// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_open)
	line.special = 0
	 }
	3// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_close)
	line.special = 0
	 }
	4// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_normal)
	line.special = 0
	 }
	5// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisefloor)
	line.special = 0
	 }
	6// case comp body kind=CallExpr is_enum=true 
	{
	ev_doceiling(line, Ceiling_e.fastcrushandraise)
	line.special = 0
	 }
	8// case comp body kind=CallExpr is_enum=true 
	{
	ev_buildstairs(line, Stair_e.build8)
	line.special = 0
	 }
	10// case comp body kind=CallExpr is_enum=true 
	{
	ev_doplat(line, Plattype_e.downwaitupstay, 0)
	line.special = 0
	 }
	12// case comp body kind=CallExpr is_enum=true 
	{
	ev_lightturnon(line, 0)
	line.special = 0
	 }
	13// case comp body kind=CallExpr is_enum=true 
	{
	ev_lightturnon(line, 255)
	line.special = 0
	 }
	16// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_close30thenopen)
	line.special = 0
	 }
	17// case comp body kind=CallExpr is_enum=true 
	{
	ev_startlightstrobing(line)
	line.special = 0
	 }
	19// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.lowerfloor)
	line.special = 0
	 }
	22// case comp body kind=CallExpr is_enum=true 
	{
	ev_doplat(line, Plattype_e.raisetonearestandchange, 0)
	line.special = 0
	 }
	25// case comp body kind=CallExpr is_enum=true 
	{
	ev_doceiling(line, Ceiling_e.crushandraise)
	line.special = 0
	 }
	30// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisetotexture)
	line.special = 0
	 }
	35// case comp body kind=CallExpr is_enum=true 
	{
	ev_lightturnon(line, 35)
	line.special = 0
	 }
	36// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.turbolower)
	line.special = 0
	 }
	37// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.lowerandchange)
	line.special = 0
	 }
	38// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.lowerfloortolowest)
	line.special = 0
	 }
	39// case comp body kind=CallExpr is_enum=true 
	{
	ev_teleport(line, side, thing)
	line.special = 0
	 }
	40// case comp body kind=CallExpr is_enum=true 
	{
	ev_doceiling(line, Ceiling_e.raisetohighest)
	ev_dofloor(line, Floor_e.lowerfloortolowest)
	line.special = 0
	 }
	44// case comp body kind=CallExpr is_enum=true 
	{
	ev_doceiling(line, Ceiling_e.lowerandcrush)
	line.special = 0
	 }
	52// case comp body kind=CallExpr is_enum=true 
	{
	g_exitlevel()
	 }
	53// case comp body kind=CallExpr is_enum=true 
	{
	ev_doplat(line, Plattype_e.perpetualraise, 0)
	line.special = 0
	 }
	54// case comp body kind=CallExpr is_enum=true 
	{
	ev_stopplat(line)
	line.special = 0
	 }
	56// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisefloorcrush)
	line.special = 0
	 }
	57// case comp body kind=CallExpr is_enum=true 
	{
	ev_ceilingcrushstop(line)
	line.special = 0
	 }
	58// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisefloor24)
	line.special = 0
	 }
	59// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisefloor24andchange)
	line.special = 0
	 }
	104// case comp body kind=CallExpr is_enum=true 
	{
	ev_turntaglightsoff(line)
	line.special = 0
	 }
	108// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_blazeraise)
	line.special = 0
	 }
	109// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_blazeopen)
	line.special = 0
	 }
	100// case comp body kind=CallExpr is_enum=true 
	{
	ev_buildstairs(line, Stair_e.turbo16)
	line.special = 0
	 }
	110// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_blazeclose)
	line.special = 0
	 }
	119// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisefloortonearest)
	line.special = 0
	 }
	121// case comp body kind=CallExpr is_enum=true 
	{
	ev_doplat(line, Plattype_e.blazedwus, 0)
	line.special = 0
	 }
	124// case comp body kind=CallExpr is_enum=true 
	{
	g_secretexitlevel()
	 }
	125// case comp body kind=IfStmt is_enum=true 
	{
	if !thing.player {
		ev_teleport(line, side, thing)
		line.special = 0
	}
	 }
	130// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisefloorturbo)
	line.special = 0
	 }
	141// case comp body kind=CallExpr is_enum=true 
	{
	ev_doceiling(line, Ceiling_e.silentcrushandraise)
	line.special = 0
	 }
	72// case comp body kind=CallExpr is_enum=true 
	{
	ev_doceiling(line, Ceiling_e.lowerandcrush)
	 }
	73// case comp body kind=CallExpr is_enum=true 
	{
	ev_doceiling(line, Ceiling_e.crushandraise)
	 }
	74// case comp body kind=CallExpr is_enum=true 
	{
	ev_ceilingcrushstop(line)
	 }
	75// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_close)
	 }
	76// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_close30thenopen)
	 }
	77// case comp body kind=CallExpr is_enum=true 
	{
	ev_doceiling(line, Ceiling_e.fastcrushandraise)
	 }
	79// case comp body kind=CallExpr is_enum=true 
	{
	ev_lightturnon(line, 35)
	 }
	80// case comp body kind=CallExpr is_enum=true 
	{
	ev_lightturnon(line, 0)
	 }
	81// case comp body kind=CallExpr is_enum=true 
	{
	ev_lightturnon(line, 255)
	 }
	82// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.lowerfloortolowest)
	 }
	83// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.lowerfloor)
	 }
	84// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.lowerandchange)
	 }
	86// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_open)
	 }
	87// case comp body kind=CallExpr is_enum=true 
	{
	ev_doplat(line, Plattype_e.perpetualraise, 0)
	 }
	88// case comp body kind=CallExpr is_enum=true 
	{
	ev_doplat(line, Plattype_e.downwaitupstay, 0)
	 }
	89// case comp body kind=CallExpr is_enum=true 
	{
	ev_stopplat(line)
	 }
	90// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_normal)
	 }
	91// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisefloor)
	 }
	92// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisefloor24)
	 }
	93// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisefloor24andchange)
	 }
	94// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisefloorcrush)
	 }
	95// case comp body kind=CallExpr is_enum=true 
	{
	ev_doplat(line, Plattype_e.raisetonearestandchange, 0)
	 }
	96// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisetotexture)
	 }
	97// case comp body kind=CallExpr is_enum=true 
	{
	ev_teleport(line, side, thing)
	 }
	98// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.turbolower)
	 }
	105// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_blazeraise)
	 }
	106// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_blazeopen)
	 }
	107// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_blazeclose)
	 }
	120// case comp body kind=CallExpr is_enum=true 
	{
	ev_doplat(line, Plattype_e.blazedwus, 0)
	 }
	126// case comp body kind=IfStmt is_enum=true 
	{
	if !thing.player {
	ev_teleport(line, side, thing)
	}
	 }
	128// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisefloortonearest)
	 }
	129// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisefloorturbo)
	}else{}
	}
}

[c:'P_ShootSpecialLine']
fn p_shootspecialline(thing &Mobj_t, line &Line_t)  {
	ok := 0
	if !thing.player {
		ok = 0
		match line.special {
		 46// case comp body kind=BinaryOperator is_enum=true 
		{
		ok = 1
		}else{}
		}
		if !ok {
		return 
		}
	}
	match line.special {
	 24// case comp body kind=CallExpr is_enum=true 
	{
	ev_dofloor(line, Floor_e.raisefloor)
	p_changeswitchtexture(line, 0)
	 }
	46// case comp body kind=CallExpr is_enum=true 
	{
	ev_dodoor(line, Vldoor_e.vld_open)
	p_changeswitchtexture(line, 1)
	 }
	47// case comp body kind=CallExpr is_enum=true 
	{
	ev_doplat(line, Plattype_e.raisetonearestandchange, 0)
	p_changeswitchtexture(line, 0)
	}else{}
	}
}

[c:'P_PlayerInSpecialSector']
fn p_playerinspecialsector(player &Player_t)  {
	sector := &Sector_t(0)
	sector = player.mo.subsector.sector
	if player.mo.z != sector.floorheight {
	return 
	}
	match sector.special {
	 5// case comp body kind=IfStmt is_enum=true 
	{
	if !player.powers [int(Powertype_t.pw_ironfeet)]  {
	if !(leveltime & 31) {
	p_damagemobj(player.mo, (voidptr(0)), (voidptr(0)), 10)
	}
	}
	 }
	7// case comp body kind=IfStmt is_enum=true 
	{
	if !player.powers [int(Powertype_t.pw_ironfeet)]  {
	if !(leveltime & 31) {
	p_damagemobj(player.mo, (voidptr(0)), (voidptr(0)), 5)
	}
	}
	 }
	16, 4{
	if !player.powers [int(Powertype_t.pw_ironfeet)]  || (p_random() < 5) {
		if !(leveltime & 31) {
		p_damagemobj(player.mo, (voidptr(0)), (voidptr(0)), 20)
		}
	}
	 }
	9// case comp body kind=UnaryOperator is_enum=true 
	{
	player.secretcount ++
	sector.special = 0
	 }
	11// case comp body kind=CompoundAssignOperator is_enum=true 
	{
	player.cheats &= ~Cheat_t.cf_godmode
	if !(leveltime & 31) {
	p_damagemobj(player.mo, (voidptr(0)), (voidptr(0)), 20)
	}
	if player.health <= 10 {
	g_exitlevel()
	}
	}
	 else { 
	C.printf(c'P_PlayerInSpecialSector: unknown special %i\n', sector.special)
	}
	}
	0 /* null */
}

[c:'P_UpdateSpecials']
fn p_updatespecials()  {
	anim := &Animplane_t(0)
	pic := 0
	i := 0
	line := &Line_t(0)
	if levelTimer == true {
		levelTimeCount --
		if !levelTimeCount {
		g_exitlevel()
		}
	}
	for anim = anims ; anim < lastanim ; anim ++ {
		for i = anim.basepic ; i < anim.basepic + anim.numpics ; i ++ {
			pic = anim.basepic + ((leveltime / anim.speed + i) % anim.numpics)
			if anim.istexture {
			texturetranslation [i]  = pic
			}
			else { // 3
			flattranslation [i]  = pic
}
		}
	}
	for i = 0 ; i < numlinespecials ; i ++ {
		line = linespeciallist [i] 
		match line.special {
		 48// case comp body kind=CompoundAssignOperator is_enum=true 
		{
		sides [line.sidenum [0] ] .textureoffset += (1 << 16)
		}else{}
		}
	}
	for i = 0 ; i < 16 ; i ++ {
	if buttonlist [i] .btimer {
		buttonlist [i] .btimer --
		if !buttonlist [i] .btimer {
			match buttonlist [i] .where {
			 .top// case comp body kind=BinaryOperator is_enum=true 
			{
			sides [buttonlist [i] .line.sidenum [0] ] .toptexture = buttonlist [i] .btexture
			 }
			.middle// case comp body kind=BinaryOperator is_enum=true 
			{
			sides [buttonlist [i] .line.sidenum [0] ] .midtexture = buttonlist [i] .btexture
			 }
			.bottom// case comp body kind=BinaryOperator is_enum=true 
			{
			sides [buttonlist [i] .line.sidenum [0] ] .bottomtexture = buttonlist [i] .btexture
			}else{}
			}
			s_startsound(&buttonlist [i] .soundorg, Sfxenum_t.sfx_swtchn)
			C.memset(&buttonlist [i] , 0, sizeof(Button_t))
		}
	}
	}
}

[c:'DonutOverrun']
fn donutoverrun(s3_floorheight &int, s3_floorpic &i16, line &Line_t, pillar_sector &Sector_t)  {
	first := 1
	tmp_s3_floorheight := 0
	tmp_s3_floorpic := 0
	if first {
		p := 0
		first = 0
		tmp_s3_floorheight = 0
		tmp_s3_floorpic = 22
		p = m_checkparmwithargs(c'-donut', 2)
		if p > 0 {
			m_strtoint(myargv [p + 1] , &tmp_s3_floorheight)
			m_strtoint(myargv [p + 2] , &tmp_s3_floorpic)
			if tmp_s3_floorpic >= numflats {
				C.fprintf(C.__stderrp, c'DonutOverrun: The second parameter for \"-donut\" switch should be greater than 0 and less than number of flats (%d). Using default value (%d) instead. \n', numflats, 22)
				tmp_s3_floorpic = 22
			}
		}
	}
	*s3_floorheight = int(tmp_s3_floorheight)
	*s3_floorpic = i16(tmp_s3_floorpic)
}

[c:'EV_DoDonut']
fn ev_dodonut(line &Line_t) int {
	s1 := &Sector_t(0)
	s2 := &Sector_t(0)
	s3 := &Sector_t(0)
	secnum := 0
	rtn := 0
	i := 0
	floor := &Floormove_t(0)
	s3_floorheight := 0
	s3_floorpic := i16(0)
	secnum = -1
	rtn = 0
	secnum = p_findsectorfromlinetag(line, secnum)
	for secnum >= 0 {
		s1 = &sectors [secnum] 
		if s1.specialdata {
		continue
		
		}
		rtn = 1
		s2 = getnextsector(s1.lines [0] , s1)
		if s2 == (voidptr(0)) {
			C.fprintf(C.__stderrp, c'EV_DoDonut: linedef had no second sidedef! Unexpected behavior may occur in Vanilla Doom. \n')
			break
			
		}
		for i = 0 ; i < s2.linecount ; i ++ {
			s3 = s2.lines [i] .backsector
			if s3 == s1 {
			continue
			
			}
			if s3 == (voidptr(0)) {
				C.fprintf(C.__stderrp, c'EV_DoDonut: WARNING: emulating buffer overrun due to NULL back sector. Unexpected behavior may occur in Vanilla Doom.\n')
				donutoverrun(&s3_floorheight, &s3_floorpic, line, s1)
			}
			else {
				s3_floorheight = s3.floorheight
				s3_floorpic = s3.floorpic
			}
			floor = z_malloc(sizeof(*floor), 6, 0)
			p_addthinker(&floor.thinker)
			s2.specialdata = floor
			floor.thinker.function.acp1 = Actionf_p1(t_movefloor)
			floor.type_ = Floor_e.donutraise
			floor.crush = false
			floor.direction = 1
			floor.sector = s2
			floor.speed = (1 << 16) / 2
			floor.texture = s3_floorpic
			floor.newspecial = 0
			floor.floordestheight = s3_floorheight
			floor = z_malloc(sizeof(*floor), 6, 0)
			p_addthinker(&floor.thinker)
			s1.specialdata = floor
			floor.thinker.function.acp1 = Actionf_p1(t_movefloor)
			floor.type_ = Floor_e.lowerfloor
			floor.crush = false
			floor.direction = -1
			floor.sector = s1
			floor.speed = (1 << 16) / 2
			floor.floordestheight = s3_floorheight
			break
			
		}
		secnum = p_findsectorfromlinetag(line, secnum)
	}
	return rtn
}

[c:'NumScrollers']
fn numscrollers() u32 {
	i := u32(0)
	scrollers := 0
	for i = 0 ; i < numlines ; i ++ {
		if 48 == lines [i] .special {
			scrollers ++
		}
	}
	return scrollers
}

[c:'P_SpawnSpecials']
fn p_spawnspecials()  {
	sector := &Sector_t(0)
	i := 0
	if timelimit > 0 && deathmatch {
		levelTimer = true
		levelTimeCount = timelimit * 60 * 35
	}
	else {
		levelTimer = false
	}
	sector = sectors
	for i = 0 ; i < numsectors ; i ++ {
		if !sector.special {
		continue
		
		}
		match sector.special {
		 1// case comp body kind=CallExpr is_enum=true 
		{
		p_spawnlightflash(sector)
		 }
		2// case comp body kind=CallExpr is_enum=true 
		{
		p_spawnstrobeflash(sector, 15, 0)
		 }
		3// case comp body kind=CallExpr is_enum=true 
		{
		p_spawnstrobeflash(sector, 35, 0)
		 }
		4// case comp body kind=CallExpr is_enum=true 
		{
		p_spawnstrobeflash(sector, 15, 0)
		sector.special = 4
		 }
		8// case comp body kind=CallExpr is_enum=true 
		{
		p_spawnglowinglight(sector)
		 }
		9// case comp body kind=UnaryOperator is_enum=true 
		{
		totalsecret ++
		 }
		10// case comp body kind=CallExpr is_enum=true 
		{
		p_spawndoorclosein30(sector)
		 }
		12// case comp body kind=CallExpr is_enum=true 
		{
		p_spawnstrobeflash(sector, 35, 1)
		 }
		13// case comp body kind=CallExpr is_enum=true 
		{
		p_spawnstrobeflash(sector, 15, 1)
		 }
		14// case comp body kind=CallExpr is_enum=true 
		{
		p_spawndoorraisein5mins(sector, i)
		 }
		17// case comp body kind=CallExpr is_enum=true 
		{
		p_spawnfireflicker(sector)
		}else{}
		}
		sector ++
	}
	numlinespecials = 0
	for i = 0 ; i < numlines ; i ++ {
		match lines [i] .special {
		 48// case comp body kind=IfStmt is_enum=true 
		{
		if numlinespecials >= 64 {
			i_error(c'Too many scrolling wall linedefs (%d)! (Vanilla limit is 64)', numscrollers())
		}
		linespeciallist [numlinespecials]  = &lines [i] 
		numlinespecials ++
		}else{}
		}
	}
	for i = 0 ; i < 30 ; i ++ {
	activeceilings [i]  = (voidptr(0))
	}
	for i = 0 ; i < 30 ; i ++ {
	activeplats [i]  = (voidptr(0))
	}
	for i = 0 ; i < 16 ; i ++ {
	C.memset(&buttonlist [i] , 0, sizeof(Button_t))
	}
}

