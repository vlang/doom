[translated]
module main


[typedef]
struct C.FILE {}


// vstart

[c:'DEH_String']
fn deh_string(s &i8) &i8

[c2v_variadic]
[c:'DEH_fprintf']
fn deh_fprintf(fstream &C.FILE, fmt &i8) 

[c2v_variadic]
[c:'DEH_snprintf']
fn deh_snprintf(buffer &i8, len usize, fmt &i8) 

[c:'I_GetTime']
fn i_gettime() int

struct Cheatseq_t { 
	sequence [25]i8
	sequence_len usize
	parameter_chars int
	chars_read usize
	param_chars_read int
	parameter_buf [5]i8
}
[c:'cht_CheckCheat']
fn cht_checkcheat(cht &Cheatseq_t, key i8) int

[c:'ST_Responder']
fn st_responder(ev &Event_t) bool

enum St_stateenum_t {
	automapstate
	firstpersonstate
}

enum St_chatstateenum_t {
	startchatstate
	waitdeststate
	getchatstate
}

[c:'FixedMul']
fn fixedmul(a int, b int) int

[c:'FixedDiv']
fn fixeddiv(a int, b int) int


const ( // empty enum
)

[c:'W_CacheLumpName']
fn w_cachelumpname(name &i8, tag int) voidptr

[c:'W_ReleaseLumpName']
fn w_releaselumpname(name &i8) 

[weak]__global ( key_map_north int 

)

[weak]__global ( key_map_south int 

)

[weak]__global ( key_map_east int 

)

[weak]__global ( key_map_west int 

)

[weak]__global ( key_map_zoomin int 

)

[weak]__global ( key_map_zoomout int 

)

[weak]__global ( key_map_toggle int 

)

[weak]__global ( key_map_maxzoom int 

)

[weak]__global ( key_map_follow int 

)

[weak]__global ( key_map_grid int 

)

[weak]__global ( key_map_mark int 

)

[weak]__global ( key_map_clearmark int 

)

[weak]__global ( joybautomap int 

)

[c2v_variadic]
[c:'M_snprintf']
fn m_snprintf(buf &i8, buf_len usize, s &i8) int

[c:'V_DrawPatch']
fn v_drawpatch(x int, y int, patch &Patch_t) 

[c:'V_MarkRect']
fn v_markrect(x int, y int, width int, height int) 

[weak]__global ( viewactive bool 

)

[weak]__global ( singledemo bool 

)

[c:'AM_Responder']
fn am_responder(ev &Event_t) bool

[c:'AM_Ticker']
fn am_ticker() 

[c:'AM_Drawer']
fn am_drawer() 

[c:'AM_Stop']
fn am_stop() 

// skipped extern global cheat_amap
struct Fpoint_t { 
	x int
	y int
}
struct Fline_t { 
	a Fpoint_t
	b Fpoint_t
}
struct Mpoint_t { 
	x int
	y int
}
struct Mline_t { 
	a Mpoint_t
	b Mpoint_t
}
struct Islope_t { 
	slp int
	islp int
}
[export:'player_arrow']
const (
player_arrow   = [Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 0}
, Mpoint_t {
((8 * 16 * (1 << 16)) / 7), 0}
}
, Mline_t {
Mpoint_t {
((8 * 16 * (1 << 16)) / 7), 0}
, Mpoint_t {
((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 2, ((8 * 16 * (1 << 16)) / 7) / 4}
}
, Mline_t {
Mpoint_t {
((8 * 16 * (1 << 16)) / 7), 0}
, Mpoint_t {
((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 2, -((8 * 16 * (1 << 16)) / 7) / 4}
}
, Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 0}
, Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 8, ((8 * 16 * (1 << 16)) / 7) / 4}
}
, Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 0}
, Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 8, -((8 * 16 * (1 << 16)) / 7) / 4}
}
, Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) + 3 * ((8 * 16 * (1 << 16)) / 7) / 8, 0}
, Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, ((8 * 16 * (1 << 16)) / 7) / 4}
}
, Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) + 3 * ((8 * 16 * (1 << 16)) / 7) / 8, 0}
, Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, -((8 * 16 * (1 << 16)) / 7) / 4}
}
]!

)

[export:'cheat_player_arrow']
const (
cheat_player_arrow   = [Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 0}
, Mpoint_t {
((8 * 16 * (1 << 16)) / 7), 0}
}
, Mline_t {
Mpoint_t {
((8 * 16 * (1 << 16)) / 7), 0}
, Mpoint_t {
((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 2, ((8 * 16 * (1 << 16)) / 7) / 6}
}
, Mline_t {
Mpoint_t {
((8 * 16 * (1 << 16)) / 7), 0}
, Mpoint_t {
((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 2, -((8 * 16 * (1 << 16)) / 7) / 6}
}
, Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 0}
, Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 8, ((8 * 16 * (1 << 16)) / 7) / 6}
}
, Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 0}
, Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 8, -((8 * 16 * (1 << 16)) / 7) / 6}
}
, Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) + 3 * ((8 * 16 * (1 << 16)) / 7) / 8, 0}
, Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, ((8 * 16 * (1 << 16)) / 7) / 6}
}
, Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) + 3 * ((8 * 16 * (1 << 16)) / 7) / 8, 0}
, Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, -((8 * 16 * (1 << 16)) / 7) / 6}
}
, Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) / 2, 0}
, Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) / 2, -((8 * 16 * (1 << 16)) / 7) / 6}
}
, Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) / 2, -((8 * 16 * (1 << 16)) / 7) / 6}
, Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) / 2 + ((8 * 16 * (1 << 16)) / 7) / 6, -((8 * 16 * (1 << 16)) / 7) / 6}
}
, Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) / 2 + ((8 * 16 * (1 << 16)) / 7) / 6, -((8 * 16 * (1 << 16)) / 7) / 6}
, Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) / 2 + ((8 * 16 * (1 << 16)) / 7) / 6, ((8 * 16 * (1 << 16)) / 7) / 4}
}
, Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) / 6, 0}
, Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) / 6, -((8 * 16 * (1 << 16)) / 7) / 6}
}
, Mline_t {
Mpoint_t {
-((8 * 16 * (1 << 16)) / 7) / 6, -((8 * 16 * (1 << 16)) / 7) / 6}
, Mpoint_t {
0, -((8 * 16 * (1 << 16)) / 7) / 6}
}
, Mline_t {
Mpoint_t {
0, -((8 * 16 * (1 << 16)) / 7) / 6}
, Mpoint_t {
0, ((8 * 16 * (1 << 16)) / 7) / 4}
}
, Mline_t {
Mpoint_t {
((8 * 16 * (1 << 16)) / 7) / 6, ((8 * 16 * (1 << 16)) / 7) / 4}
, Mpoint_t {
((8 * 16 * (1 << 16)) / 7) / 6, -((8 * 16 * (1 << 16)) / 7) / 7}
}
, Mline_t {
Mpoint_t {
((8 * 16 * (1 << 16)) / 7) / 6, -((8 * 16 * (1 << 16)) / 7) / 7}
, Mpoint_t {
((8 * 16 * (1 << 16)) / 7) / 6 + ((8 * 16 * (1 << 16)) / 7) / 32, -((8 * 16 * (1 << 16)) / 7) / 7 - ((8 * 16 * (1 << 16)) / 7) / 32}
}
, Mline_t {
Mpoint_t {
((8 * 16 * (1 << 16)) / 7) / 6 + ((8 * 16 * (1 << 16)) / 7) / 32, -((8 * 16 * (1 << 16)) / 7) / 7 - ((8 * 16 * (1 << 16)) / 7) / 32}
, Mpoint_t {
((8 * 16 * (1 << 16)) / 7) / 6 + ((8 * 16 * (1 << 16)) / 7) / 10, -((8 * 16 * (1 << 16)) / 7) / 7}
}
]!

)

[export:'triangle_guy']
const (
triangle_guy   = [Mline_t {
Mpoint_t {
int((-0.86699999999999999 * ((1 << 16)))), int((-0.5 * ((1 << 16))))}
, Mpoint_t {
int((0.86699999999999999 * ((1 << 16)))), int((-0.5 * ((1 << 16))))}
}
, Mline_t {
Mpoint_t {
int((0.86699999999999999 * ((1 << 16)))), int((-0.5 * ((1 << 16))))}
, Mpoint_t {
int((0)), int((((1 << 16))))}
}
, Mline_t {
Mpoint_t {
int((0)), int((((1 << 16))))}
, Mpoint_t {
int((-0.86699999999999999 * ((1 << 16)))), int((-0.5 * ((1 << 16))))}
}
]!

)

[export:'thintriangle_guy']
const (
thintriangle_guy   = [Mline_t {
Mpoint_t {
int((-0.5 * ((1 << 16)))), int((-0.69999999999999996 * ((1 << 16))))}
, Mpoint_t {
int((((1 << 16)))), int((0))}
}
, Mline_t {
Mpoint_t {
int((((1 << 16)))), int((0))}
, Mpoint_t {
int((-0.5 * ((1 << 16)))), int((0.69999999999999996 * ((1 << 16))))}
}
, Mline_t {
Mpoint_t {
int((-0.5 * ((1 << 16)))), int((0.69999999999999996 * ((1 << 16))))}
, Mpoint_t {
int((-0.5 * ((1 << 16)))), int((-0.69999999999999996 * ((1 << 16))))}
}
]!

)

/*!*/[weak] __global ( cheating  = int (0)
)

/*!*/[weak] __global ( grid  = int (0)
)

/*!*/[weak] __global ( leveljuststarted  = int (1)
)

/*!*/[weak] __global ( finit_width  = int (320)
)

/*!*/[weak] __global ( finit_height  = int (200 - 32)
)

[weak]__global ( f_x int 

)

[weak]__global ( f_y int 

)

[weak]__global ( f_w int 

)

[weak]__global ( f_h int 

)

[weak]__global ( lightlev int 

)

[weak]__global ( fb &Pixel_t 

)

[weak]__global ( amclock int 

)

[weak]__global ( m_paninc Mpoint_t 

)

[weak]__global ( mtof_zoommul int 

)

[weak]__global ( ftom_zoommul int 

)

[weak]__global ( m_x int 

)

[weak]__global ( m_y int 

)

[weak]__global ( m_x2 int 

)

[weak]__global ( m_y2 int 

)

[weak]__global ( m_w int 

)

[weak]__global ( m_h int 

)

[weak]__global ( min_x int 

)

[weak]__global ( min_y int 

)

[weak]__global ( max_x int 

)

[weak]__global ( max_y int 

)

[weak]__global ( max_w int 

)

[weak]__global ( max_h int 

)

[weak]__global ( min_w int 

)

[weak]__global ( min_h int 

)

[weak]__global ( min_scale_mtof int 

)

[weak]__global ( max_scale_mtof int 

)

[weak]__global ( old_m_w int 

)

[weak]__global ( old_m_h int 

)

[weak]__global ( old_m_x int 

)

[weak]__global ( old_m_y int 

)

[weak]__global ( f_oldloc Mpoint_t 

)

/*!*/[weak] __global ( scale_mtof  = int (int((0.20000000000000001 * (1 << 16))))
)

[weak]__global ( scale_ftom int 

)

[weak]__global ( plr &Player_t 

)

[weak]__global ( marknums [10]&Patch_t 

)

[weak]__global ( markpoints [10]Mpoint_t 

)

/*!*/[weak] __global ( markpointnum  = int (0)
)

/*!*/[weak] __global ( followplayer  = int (1)
)

/*!*/[weak] __global ( cheat_amap  = Cheatseq_t {
c'iddt', sizeof(c'iddt') - 1, 0, 0, 0, c''}

)

/*!*/[weak] __global ( stopped  = bool (true)
)

[c:'AM_getIslope']
fn am_getislope(ml &Mline_t, is_ &Islope_t)  {
	dx := 0
	dy := 0
	
	dy = ml.a.y - ml.b.y
	dx = ml.b.x - ml.a.x
	if !dy {
	is_.islp = (if dx < 0{ -2147483647 } else {2147483647})
	}
	else { // 3
	is_.islp = fixeddiv(dx, dy)
}
	if !dx {
	is_.slp = (if dy < 0{ -2147483647 } else {2147483647})
	}
	else { // 3
	is_.slp = fixeddiv(dy, dx)
}
}

[c:'AM_activateNewScale']
fn am_activatenewscale()  {
	m_x += m_w / 2
	m_y += m_h / 2
	m_w = fixedmul(((f_w) << 16), scale_ftom)
	m_h = fixedmul(((f_h) << 16), scale_ftom)
	m_x -= m_w / 2
	m_y -= m_h / 2
	m_x2 = m_x + m_w
	m_y2 = m_y + m_h
}

[c:'AM_saveScaleAndLoc']
fn am_savescaleandloc()  {
	old_m_x = m_x
	old_m_y = m_y
	old_m_w = m_w
	old_m_h = m_h
}

[c:'AM_restoreScaleAndLoc']
fn am_restorescaleandloc()  {
	m_w = old_m_w
	m_h = old_m_h
	if !followplayer {
		m_x = old_m_x
		m_y = old_m_y
	}
	else {
		m_x = plr.mo.x - m_w / 2
		m_y = plr.mo.y - m_h / 2
	}
	m_x2 = m_x + m_w
	m_y2 = m_y + m_h
	scale_mtof = fixeddiv(f_w << 16, m_w)
	scale_ftom = fixeddiv((1 << 16), scale_mtof)
}

[c:'AM_addMark']
fn am_addmark()  {
	markpoints [markpointnum] .x = m_x + m_w / 2
	markpoints [markpointnum] .y = m_y + m_h / 2
	markpointnum = (markpointnum + 1) % 10
}

[c:'AM_findMinMaxBoundaries']
fn am_findminmaxboundaries()  {
	i := 0
	a := 0
	b := 0
	min_x = 2147483647
	min_y = 2147483647
	max_x = -2147483647
	max_y = -2147483647
	for i = 0 ; i < numvertexes ; i ++ {
		if vertexes [i] .x < min_x {
		min_x = vertexes [i] .x
		}
		else if vertexes [i] .x > max_x {
		max_x = vertexes [i] .x
		}
		if vertexes [i] .y < min_y {
		min_y = vertexes [i] .y
		}
		else if vertexes [i] .y > max_y {
		max_y = vertexes [i] .y
		}
	}
	max_w = max_x - min_x
	max_h = max_y - min_y
	min_w = 2 * 16 * (1 << 16)
	min_h = 2 * 16 * (1 << 16)
	a = fixeddiv(f_w << 16, max_w)
	b = fixeddiv(f_h << 16, max_h)
	min_scale_mtof = if a < b{ a } else {b}
	max_scale_mtof = fixeddiv(f_h << 16, 2 * 16 * (1 << 16))
}

[c:'AM_changeWindowLoc']
fn am_changewindowloc()  {
	if m_paninc.x || m_paninc.y {
		followplayer = 0
		f_oldloc.x = 2147483647
	}
	m_x += m_paninc.x
	m_y += m_paninc.y
	if m_x + m_w / 2 > max_x {
	m_x = max_x - m_w / 2
	}
	else if m_x + m_w / 2 < min_x {
	m_x = min_x - m_w / 2
	}
	if m_y + m_h / 2 > max_y {
	m_y = max_y - m_h / 2
	}
	else if m_y + m_h / 2 < min_y {
	m_y = min_y - m_h / 2
	}
	m_x2 = m_x + m_w
	m_y2 = m_y + m_h
}

[c:'AM_initVariables']
fn am_initvariables()  {
	pnum := 0
	st_notify := Event_t {
	Evtype_t.ev_keyup, (((`a` << 24) + (`m` << 16)) | (`e` << 8)), 0, 0, 0/*IMPLICIT*/0/*IMPLICIT*/}
	
	automapactive = true
	fb = I_VideoBuffer
	f_oldloc.x = 2147483647
	amclock = 0
	lightlev = 0
	m_paninc.x = 0
	m_paninc.y = 0
	ftom_zoommul = (1 << 16)
	mtof_zoommul = (1 << 16)
	m_w = fixedmul(((f_w) << 16), scale_ftom)
	m_h = fixedmul(((f_h) << 16), scale_ftom)
	if playeringame [consoleplayer]  {
		plr = &players [consoleplayer] 
	}
	else {
		plr = &players [0] 
		for pnum = 0 ; pnum < 4 ; pnum ++ {
			if playeringame [pnum]  {
				plr = &players [pnum] 
				break
				
			}
		}
	}
	m_x = plr.mo.x - m_w / 2
	m_y = plr.mo.y - m_h / 2
	am_changewindowloc()
	old_m_x = m_x
	old_m_y = m_y
	old_m_w = m_w
	old_m_h = m_h
	st_responder(&st_notify)
}

[c:'AM_loadPics']
fn am_loadpics()  {
	i := 0
	namebuf := [9]i8{}
	for i = 0 ; i < 10 ; i ++ {
		deh_snprintf(namebuf, 9, c'AMMNUM%d', i)
		marknums [i]  = w_cachelumpname(namebuf, 1)
	}
}

[c:'AM_unloadPics']
fn am_unloadpics()  {
	i := 0
	namebuf := [9]i8{}
	for i = 0 ; i < 10 ; i ++ {
		deh_snprintf(namebuf, 9, c'AMMNUM%d', i)
		w_releaselumpname(namebuf)
	}
}

[c:'AM_clearMarks']
fn am_clearmarks()  {
	i := 0
	for i = 0 ; i < 10 ; i ++ {
	markpoints [i] .x = -1
	}
	markpointnum = 0
}

[c:'AM_LevelInit']
fn am_levelinit()  {
	leveljuststarted = 0
	f_x = 0
	f_y = 0
	f_w = finit_width
	f_h = finit_height
	am_clearmarks()
	am_findminmaxboundaries()
	scale_mtof = fixeddiv(min_scale_mtof, int((0.69999999999999996 * (1 << 16))))
	if scale_mtof > max_scale_mtof {
	scale_mtof = min_scale_mtof
	}
	scale_ftom = fixeddiv((1 << 16), scale_mtof)
}

[c:'AM_Stop']
fn am_stop()  {
	st_notify := Event_t {
	0, Evtype_t.ev_keyup, (((`a` << 24) + (`m` << 16)) | (`x` << 8)), 0, 0/*IMPLICIT*/0/*IMPLICIT*/}
	
	am_unloadpics()
	automapactive = false
	st_responder(&st_notify)
	stopped = true
}

[c:'AM_Start']
fn am_start()  {
	lastlevel := -1
	lastepisode := -1
	if !stopped {
	am_stop()
	}
	stopped = false
	if lastlevel != gamemap || lastepisode != gameepisode {
		am_levelinit()
		lastlevel = gamemap
		lastepisode = gameepisode
	}
	am_initvariables()
	am_loadpics()
}

[c:'AM_minOutWindowScale']
fn am_minoutwindowscale()  {
	scale_mtof = min_scale_mtof
	scale_ftom = fixeddiv((1 << 16), scale_mtof)
	am_activatenewscale()
}

[c:'AM_maxOutWindowScale']
fn am_maxoutwindowscale()  {
	scale_mtof = max_scale_mtof
	scale_ftom = fixeddiv((1 << 16), scale_mtof)
	am_activatenewscale()
}

[c:'AM_Responder']
fn am_responder(ev &Event_t) bool {
	rc := 0
	bigstate := 0
	buffer := [20]i8{}
	key := 0
	rc = false
	if ev.type_ == Evtype_t.ev_joystick && joybautomap >= 0 && (ev.data1 & (1 << joybautomap)) != 0 {
		joywait = i_gettime() + 5
		if !automapactive {
			am_start()
			viewactive = false
		}
		else {
			bigstate = 0
			viewactive = true
			am_stop()
		}
		return true
	}
	if !automapactive {
		if ev.type_ == Evtype_t.ev_keydown && ev.data1 == key_map_toggle {
			am_start()
			viewactive = false
			rc = true
		}
	}
	else if ev.type_ == Evtype_t.ev_keydown {
		rc = true
		key = ev.data1
		if key == key_map_east {
			if !followplayer {
			m_paninc.x = fixedmul(((4) << 16), scale_ftom)
			}
			else { // 3
			rc = false
}
		}
		else if key == key_map_west {
			if !followplayer {
			m_paninc.x = -fixedmul(((4) << 16), scale_ftom)
			}
			else { // 3
			rc = false
}
		}
		else if key == key_map_north {
			if !followplayer {
			m_paninc.y = fixedmul(((4) << 16), scale_ftom)
			}
			else { // 3
			rc = false
}
		}
		else if key == key_map_south {
			if !followplayer {
			m_paninc.y = -fixedmul(((4) << 16), scale_ftom)
			}
			else { // 3
			rc = false
}
		}
		else if key == key_map_zoomout {
			mtof_zoommul = (int(((1 << 16) / 1.02)))
			ftom_zoommul = (int((1.02 * (1 << 16))))
		}
		else if key == key_map_zoomin {
			mtof_zoommul = (int((1.02 * (1 << 16))))
			ftom_zoommul = (int(((1 << 16) / 1.02)))
		}
		else if key == key_map_toggle {
			bigstate = 0
			viewactive = true
			am_stop()
		}
		else if key == key_map_maxzoom {
			bigstate = !bigstate
			if bigstate {
				am_savescaleandloc()
				am_minoutwindowscale()
			}
			else { // 3
			am_restorescaleandloc()
}
		}
		else if key == key_map_follow {
			followplayer = !followplayer
			f_oldloc.x = 2147483647
			if followplayer {
			plr.message = deh_string(c'Follow Mode ON')
			}
			else { // 3
			plr.message = deh_string(c'Follow Mode OFF')
}
		}
		else if key == key_map_grid {
			grid = !grid
			if grid {
			plr.message = deh_string(c'Grid ON')
			}
			else { // 3
			plr.message = deh_string(c'Grid OFF')
}
		}
		else if key == key_map_mark {
			m_snprintf(buffer, sizeof(buffer), c'%s %d', deh_string(c'Marked Spot'), markpointnum)
			plr.message = buffer
			am_addmark()
		}
		else if key == key_map_clearmark {
			am_clearmarks()
			plr.message = deh_string(c'All Marks Cleared')
		}
		else {
			rc = false
		}
		if (!deathmatch || gameversion <= GameVersion_t.exe_doom_1_8) && cht_checkcheat(&cheat_amap, ev.data2) {
			rc = false
			cheating = (cheating + 1) % 3
		}
	}
	else if ev.type_ == Evtype_t.ev_keyup {
		rc = false
		key = ev.data1
		if key == key_map_east {
			if !followplayer {
			m_paninc.x = 0
			}
		}
		else if key == key_map_west {
			if !followplayer {
			m_paninc.x = 0
			}
		}
		else if key == key_map_north {
			if !followplayer {
			m_paninc.y = 0
			}
		}
		else if key == key_map_south {
			if !followplayer {
			m_paninc.y = 0
			}
		}
		else if key == key_map_zoomout || key == key_map_zoomin {
			mtof_zoommul = (1 << 16)
			ftom_zoommul = (1 << 16)
		}
	}
	return rc
}

[c:'AM_changeWindowScale']
fn am_changewindowscale()  {
	scale_mtof = fixedmul(scale_mtof, mtof_zoommul)
	scale_ftom = fixeddiv((1 << 16), scale_mtof)
	if scale_mtof < min_scale_mtof {
	am_minoutwindowscale()
	}
	else if scale_mtof > max_scale_mtof {
	am_maxoutwindowscale()
	}
	else { // 3
	am_activatenewscale()
}
}

[c:'AM_doFollowPlayer']
fn am_dofollowplayer()  {
	if f_oldloc.x != plr.mo.x || f_oldloc.y != plr.mo.y {
		m_x = fixedmul((((fixedmul((plr.mo.x), scale_mtof) >> 16)) << 16), scale_ftom) - m_w / 2
		m_y = fixedmul((((fixedmul((plr.mo.y), scale_mtof) >> 16)) << 16), scale_ftom) - m_h / 2
		m_x2 = m_x + m_w
		m_y2 = m_y + m_h
		f_oldloc.x = plr.mo.x
		f_oldloc.y = plr.mo.y
	}
}

[c:'AM_updateLightLev']
fn am_updatelightlev()  {
	nexttic := 0
	litelevels := [0, 4, 7, 10, 12, 14, 15, 15]!
	
	litelevelscnt := 0
	if amclock > nexttic {
		lightlev = litelevels [litelevelscnt ++] 
		if litelevelscnt == (sizeof(litelevels) / sizeof(*litelevels)) {
		litelevelscnt = 0
		}
		nexttic = amclock + 6 - (amclock % 6)
	}
}

[c:'AM_Ticker']
fn am_ticker()  {
	if !automapactive {
	return 
	}
	amclock ++
	if followplayer {
	am_dofollowplayer()
	}
	if ftom_zoommul != (1 << 16) {
	am_changewindowscale()
	}
	if m_paninc.x || m_paninc.y {
	am_changewindowloc()
	}
}

[c:'AM_clearFB']
fn am_clearfb(color int)  {
	C.memset(fb, color, f_w * f_h * sizeof(*fb))
}


const ( // empty enum
	left = 0
	right = 1
	bottom = 2
	top = 3
)

[c:'AM_clipMline']
fn am_clipmline(ml &Mline_t, fl &Fline_t) bool {
	outcode1 := 0
	outcode2 := 0
	outside := 0
	tmp := Fpoint_t{}
	dx := 0
	dy := 0
	if ml.a.y > m_y2 {
	outcode1 = Bwhere_e.top
	}
	else if ml.a.y < m_y {
	outcode1 = Bwhere_e.bottom
	}
	if ml.b.y > m_y2 {
	outcode2 = Bwhere_e.top
	}
	else if ml.b.y < m_y {
	outcode2 = Bwhere_e.bottom
	}
	if outcode1 & outcode2 {
	return false
	}
	if ml.a.x < m_x {
	outcode1 |= left
	}
	else if ml.a.x > m_x2 {
	outcode1 |= right
	}
	if ml.b.x < m_x {
	outcode2 |= left
	}
	else if ml.b.x > m_x2 {
	outcode2 |= right
	}
	if outcode1 & outcode2 {
	return false
	}
	fl.a.x = (f_x + (fixedmul(((ml.a.x) - m_x), scale_mtof) >> 16))
	fl.a.y = (f_y + (f_h - (fixedmul(((ml.a.y) - m_y), scale_mtof) >> 16)))
	fl.b.x = (f_x + (fixedmul(((ml.b.x) - m_x), scale_mtof) >> 16))
	fl.b.y = (f_y + (f_h - (fixedmul(((ml.b.y) - m_y), scale_mtof) >> 16)))
	(outcode1) = 0
	if (fl.a.y) < 0 {
	(outcode1) |= Bwhere_e.top
	}
	else if (fl.a.y) >= f_h {
	(outcode1) |= Bwhere_e.bottom
	}
	if (fl.a.x) < 0 {
	(outcode1) |= left
	}
	else if (fl.a.x) >= f_w {
	(outcode1) |= right
	}
	0 /* null */
	(outcode2) = 0
	if (fl.b.y) < 0 {
	(outcode2) |= Bwhere_e.top
	}
	else if (fl.b.y) >= f_h {
	(outcode2) |= Bwhere_e.bottom
	}
	if (fl.b.x) < 0 {
	(outcode2) |= left
	}
	else if (fl.b.x) >= f_w {
	(outcode2) |= right
	}
	0 /* null */
	if outcode1 & outcode2 {
	return false
	}
	for outcode1 | outcode2 {
		if outcode1 {
		outside = outcode1
		}
		else { // 3
		outside = outcode2
}
		if outside & Bwhere_e.top {
			dy = fl.a.y - fl.b.y
			dx = fl.b.x - fl.a.x
			tmp.x = fl.a.x + (dx * (fl.a.y)) / dy
			tmp.y = 0
		}
		else if outside & Bwhere_e.bottom {
			dy = fl.a.y - fl.b.y
			dx = fl.b.x - fl.a.x
			tmp.x = fl.a.x + (dx * (fl.a.y - f_h)) / dy
			tmp.y = f_h - 1
		}
		else if outside & right {
			dy = fl.b.y - fl.a.y
			dx = fl.b.x - fl.a.x
			tmp.y = fl.a.y + (dy * (f_w - 1 - fl.a.x)) / dx
			tmp.x = f_w - 1
		}
		else if outside & left {
			dy = fl.b.y - fl.a.y
			dx = fl.b.x - fl.a.x
			tmp.y = fl.a.y + (dy * (-fl.a.x)) / dx
			tmp.x = 0
		}
		else {
			tmp.x = 0
			tmp.y = 0
		}
		if outside == outcode1 {
			fl.a = tmp
			(outcode1) = 0
			if (fl.a.y) < 0 {
			(outcode1) |= Bwhere_e.top
			}
			else if (fl.a.y) >= f_h {
			(outcode1) |= Bwhere_e.bottom
			}
			if (fl.a.x) < 0 {
			(outcode1) |= left
			}
			else if (fl.a.x) >= f_w {
			(outcode1) |= right
			}
			0 /* null */
		}
		else {
			fl.b = tmp
			(outcode2) = 0
			if (fl.b.y) < 0 {
			(outcode2) |= Bwhere_e.top
			}
			else if (fl.b.y) >= f_h {
			(outcode2) |= Bwhere_e.bottom
			}
			if (fl.b.x) < 0 {
			(outcode2) |= left
			}
			else if (fl.b.x) >= f_w {
			(outcode2) |= right
			}
			0 /* null */
		}
		if outcode1 & outcode2 {
		return false
		}
	}
	return true
}

[c:'AM_drawFline']
fn am_drawfline(fl &Fline_t, color int)  {
	x := 0
	y := 0
	dx := 0
	dy := 0
	sx := 0
	sy := 0
	ax := 0
	ay := 0
	d := 0
	fuck := 0
	if fl.a.x < 0 || fl.a.x >= f_w || fl.a.y < 0 || fl.a.y >= f_h || fl.b.x < 0 || fl.b.x >= f_w || fl.b.y < 0 || fl.b.y >= f_h {
		deh_fprintf(C.__stderrp, c'fuck %d \r', fuck ++)
		return 
	}
	dx = fl.b.x - fl.a.x
	ax = 2 * (if dx < 0{ -dx } else {dx})
	sx = if dx < 0{ -1 } else {1}
	dy = fl.b.y - fl.a.y
	ay = 2 * (if dy < 0{ -dy } else {dy})
	sy = if dy < 0{ -1 } else {1}
	x = fl.a.x
	y = fl.a.y
	if ax > ay {
		d = ay - ax / 2
		for 1 {
			fb [(y) * f_w + (x)]  = (color)
			if x == fl.b.x {
			return 
			}
			if d >= 0 {
				y += sy
				d -= ax
			}
			x += sx
			d += ay
		}
	}
	else {
		d = ax - ay / 2
		for 1 {
			fb [(y) * f_w + (x)]  = (color)
			if y == fl.b.y {
			return 
			}
			if d >= 0 {
				x += sx
				d -= ay
			}
			y += sy
			d += ax
		}
	}
}

[c:'AM_drawMline']
fn am_drawmline(ml &Mline_t, color int)  {
	fl := Fline_t{}
	if am_clipmline(ml, &fl) {
	am_drawfline(&fl, color)
	}
}

[c:'AM_drawGrid']
fn am_drawgrid(color int)  {
	x := 0
	y := 0
	
	start := 0
	end := 0
	
	ml := Mline_t{}
	start = m_x
	if (start - bmaporgx) % (128 << 16) {
	start += (128 << 16) - ((start - bmaporgx) % (128 << 16))
	}
	end = m_x + m_w
	ml.a.y = m_y
	ml.b.y = m_y + m_h
	for x = start ; x < end ; x += (128 << 16) {
		ml.a.x = x
		ml.b.x = x
		am_drawmline(&ml, color)
	}
	start = m_y
	if (start - bmaporgy) % (128 << 16) {
	start += (128 << 16) - ((start - bmaporgy) % (128 << 16))
	}
	end = m_y + m_h
	ml.a.x = m_x
	ml.b.x = m_x + m_w
	for y = start ; y < end ; y += (128 << 16) {
		ml.a.y = y
		ml.b.y = y
		am_drawmline(&ml, color)
	}
}

[c:'AM_drawWalls']
fn am_drawwalls()  {
	i := 0
	l := Mline_t{}
	for i = 0 ; i < numlines ; i ++ {
		l.a.x = lines [i] .v1.x
		l.a.y = lines [i] .v1.y
		l.b.x = lines [i] .v2.x
		l.b.y = lines [i] .v2.y
		if cheating || (lines [i] .flags & 256) {
			if (lines [i] .flags & 128) && !cheating {
			continue
			
			}
			if !lines [i] .backsector {
				am_drawmline(&l, (256 - 5 * 16) + lightlev)
			}
			else {
				if lines [i] .special == 39 {
					am_drawmline(&l, (256 - 5 * 16) + 16 / 2)
				}
				else if lines [i] .flags & 32 {
					if cheating {
					am_drawmline(&l, (256 - 5 * 16) + lightlev)
					}
					else { // 3
					am_drawmline(&l, (256 - 5 * 16) + lightlev)
}
				}
				else if lines [i] .backsector.floorheight != lines [i] .frontsector.floorheight {
					am_drawmline(&l, (4 * 16) + lightlev)
				}
				else if lines [i] .backsector.ceilingheight != lines [i] .frontsector.ceilingheight {
					am_drawmline(&l, (256 - 32 + 7) + lightlev)
				}
				else if cheating {
					am_drawmline(&l, (6 * 16) + lightlev)
				}
			}
		}
		else if plr.powers [int(Powertype_t.pw_allmap)]  {
			if !(lines [i] .flags & 128) {
			am_drawmline(&l, (6 * 16) + 3)
			}
		}
	}
}

[c:'AM_rotate']
fn am_rotate(x &int, y &int, a Angle_t)  {
	tmpx := 0
	tmpx = fixedmul(*x, finecosine [a >> 19] ) - fixedmul(*y, finesine [a >> 19] )
	*y = fixedmul(*x, finesine [a >> 19] ) + fixedmul(*y, finecosine [a >> 19] )
	*x = tmpx
}

[c:'AM_drawLineCharacter']
fn am_drawlinecharacter(lineguy &Mline_t, lineguylines int, scale int, angle Angle_t, color int, x int, y int)  {
	i := 0
	l := Mline_t{}
	for i = 0 ; i < lineguylines ; i ++ {
		l.a.x = lineguy [i] .a.x
		l.a.y = lineguy [i] .a.y
		if scale {
			l.a.x = fixedmul(scale, l.a.x)
			l.a.y = fixedmul(scale, l.a.y)
		}
		if angle {
		am_rotate(&l.a.x, &l.a.y, angle)
		}
		l.a.x += x
		l.a.y += y
		l.b.x = lineguy [i] .b.x
		l.b.y = lineguy [i] .b.y
		if scale {
			l.b.x = fixedmul(scale, l.b.x)
			l.b.y = fixedmul(scale, l.b.y)
		}
		if angle {
		am_rotate(&l.b.x, &l.b.y, angle)
		}
		l.b.x += x
		l.b.y += y
		am_drawmline(&l, color)
	}
}

[c:'AM_drawPlayers']
fn am_drawplayers()  {
	i := 0
	p := &Player_t(0)
	their_colors := [(7 * 16), (6 * 16), (4 * 16), (256 - 5 * 16)]!
	
	their_color := -1
	color := 0
	if !netgame {
		if cheating {
		am_drawlinecharacter(cheat_player_arrow, (sizeof(cheat_player_arrow) / sizeof(*cheat_player_arrow)), 0, plr.mo.angle, (256 - 47), plr.mo.x, plr.mo.y)
		}
		else { // 3
		am_drawlinecharacter(player_arrow, (sizeof(player_arrow) / sizeof(*player_arrow)), 0, plr.mo.angle, (256 - 47), plr.mo.x, plr.mo.y)
}
		return 
	}
	for i = 0 ; i < 4 ; i ++ {
		their_color ++
		p = &players [i] 
		if (deathmatch && !singledemo) && p != plr {
		continue
		
		}
		if !playeringame [i]  {
		continue
		
		}
		if p.powers [int(Powertype_t.pw_invisibility)]  {
		color = 246
		}
		else { // 3
		color = their_colors [their_color] 
}
		am_drawlinecharacter(player_arrow, (sizeof(player_arrow) / sizeof(*player_arrow)), 0, p.mo.angle, color, p.mo.x, p.mo.y)
	}
}

[c:'AM_drawThings']
fn am_drawthings(colors int, colorrange int)  {
	i := 0
	t := &Mobj_t(0)
	for i = 0 ; i < numsectors ; i ++ {
		t = sectors [i] .thinglist
		for t {
			am_drawlinecharacter(thintriangle_guy, (sizeof(thintriangle_guy) / sizeof(*thintriangle_guy)), 16 << 16, t.angle, colors + lightlev, t.x, t.y)
			t = t.snext
		}
	}
}

[c:'AM_drawMarks']
fn am_drawmarks()  {
	i := 0
	fx := 0
	fy := 0
	w := 0
	h := 0
	
	for i = 0 ; i < 10 ; i ++ {
		if markpoints [i] .x != -1 {
			w = 5
			h = 6
			fx = (f_x + (fixedmul(((markpoints [i] .x) - m_x), scale_mtof) >> 16))
			fy = (f_y + (f_h - (fixedmul(((markpoints [i] .y) - m_y), scale_mtof) >> 16)))
			if fx >= f_x && fx <= f_w - w && fy >= f_y && fy <= f_h - h {
			v_drawpatch(fx, fy, marknums [i] )
			}
		}
	}
}

[c:'AM_drawCrosshair']
fn am_drawcrosshair(color int)  {
	fb [(f_w * (f_h + 1)) / 2]  = color
}

[c:'AM_Drawer']
fn am_drawer()  {
	if !automapactive {
	return 
	}
	am_clearfb(0)
	if grid {
	am_drawgrid(((6 * 16) + 16 / 2))
	}
	am_drawwalls()
	am_drawplayers()
	if cheating == 2 {
	am_drawthings((7 * 16), 16)
	}
	am_drawcrosshair((6 * 16))
	am_drawmarks()
	v_markrect(f_x, f_y, f_w, f_h)
}

