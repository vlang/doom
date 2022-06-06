[translated]
module main


[typedef]
struct C.FILE {}


// vstart

[c:'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

fn ffs( int) int

[c:'M_StringCopy']
fn m_stringcopy(dest &i8, src &i8, dest_size usize) bool

[c:'M_Random']
fn m_random() int

[c:'DEH_String']
fn deh_string(s &i8) &i8

[c2v_variadic]
[c:'DEH_snprintf']
fn deh_snprintf(buffer &i8, len usize, fmt &i8) 

[c:'W_CheckNumForName']
fn w_checknumforname(name &i8) Lumpindex_t

[c:'W_CacheLumpName']
fn w_cachelumpname(name &i8, tag int) voidptr

[c:'W_ReleaseLumpName']
fn w_releaselumpname(name &i8) 

[c:'G_WorldDone']
fn g_worlddone() 


const ( // empty enum
)

[c:'S_Start']
fn s_start() 

[c:'S_StartSound']
fn s_startsound(origin voidptr, sound_id int) 

[c:'S_ChangeMusic']
fn s_changemusic(music_id int, looping int) 

[c:'V_DrawPatch']
fn v_drawpatch(x int, y int, patch &Patch_t) 

[c:'WI_Ticker']
fn wi_ticker() 

[c:'WI_Drawer']
fn wi_drawer() 

[c:'WI_Start']
fn wi_start(wbstartstruct &Wbstartstruct_t) 

[c:'WI_End']
fn wi_end() 

enum Animenum_t {
	anim_always
	anim_random
	anim_level
}

struct Point_t { 
	x int
	y int
}
struct Anim_t { 
	type_ Animenum_t
	period int
	nanims int
	loc Point_t
	data1 int
	data2 int
	p [3]&Patch_t
	nexttic int
	lastdrawn int
	ctr int
	state int
}
[export:'lnodes']
const (
lnodes   = [[Point_t {
185, 164}
, Point_t {
148, 143}
, Point_t {
69, 122}
, Point_t {
209, 102}
, Point_t {
116, 89}
, Point_t {
166, 55}
, Point_t {
71, 56}
, Point_t {
135, 29}
, Point_t {
71, 24}
]!
, [Point_t {
254, 25}
, Point_t {
97, 50}
, Point_t {
188, 64}
, Point_t {
128, 78}
, Point_t {
214, 92}
, Point_t {
133, 130}
, Point_t {
208, 136}
, Point_t {
148, 140}
, Point_t {
235, 158}
]!
, [Point_t {
156, 168}
, Point_t {
48, 154}
, Point_t {
174, 95}
, Point_t {
265, 75}
, Point_t {
130, 48}
, Point_t {
279, 23}
, Point_t {
198, 48}
, Point_t {
140, 25}
, Point_t {
281, 136}
]!
]!

)

[export:'epsd0animinfo']
const (
epsd0animinfo   = [Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(224), (104)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(184), (160)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(112), (136)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(72), (112)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(88), (96)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(64), (48)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(192), (40)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(136), (16)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(80), (16)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(64), (24)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
]!

)

[export:'epsd1animinfo']
const (
epsd1animinfo   = [Anim_t {
(Animenum_t.anim_level), (35 / 3), (1), Point_t {
(128), (136)}
, (1), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_level), (35 / 3), (1), Point_t {
(128), (136)}
, (2), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_level), (35 / 3), (1), Point_t {
(128), (136)}
, (3), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_level), (35 / 3), (1), Point_t {
(128), (136)}
, (4), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_level), (35 / 3), (1), Point_t {
(128), (136)}
, (5), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_level), (35 / 3), (1), Point_t {
(128), (136)}
, (6), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_level), (35 / 3), (1), Point_t {
(128), (136)}
, (7), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_level), (35 / 3), (3), Point_t {
(192), (144)}
, (8), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_level), (35 / 3), (1), Point_t {
(128), (136)}
, (8), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
]!

)

[export:'epsd2animinfo']
const (
epsd2animinfo   = [Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(104), (168)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(40), (136)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(160), (96)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(104), (80)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_always), (35 / 3), (3), Point_t {
(120), (32)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
, Anim_t {
(Animenum_t.anim_always), (35 / 4), (3), Point_t {
(40), (0)}
, (0), 0, [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 0, 0, 0, 0}
]!

)

[export:'NUMANIMS']
const (
NUMANIMS   = [10, 9, 6]!

)

[weak]__global ( anims [4]&Anim_t 

)

[weak]__global ( acceleratestage int 

)

[weak]__global ( me int 

)

[weak]__global ( state Stateenum_t 

)

[weak]__global ( wbs &Wbstartstruct_t 

)

[weak]__global ( plrs &Wbplayerstruct_t 

)

[weak]__global ( cnt int 

)

[weak]__global ( bcnt int 

)

[weak]__global ( firstrefresh int 

)

[weak]__global ( cnt_kills [4]int 

)

[weak]__global ( cnt_items [4]int 

)

[weak]__global ( cnt_secret [4]int 

)

[weak]__global ( cnt_time int 

)

[weak]__global ( cnt_par int 

)

[weak]__global ( cnt_pause int 

)

[weak]__global ( NUMCMAPS int 

)

[export:'yah']
const (
yah   = [(voidptr(0)), (voidptr(0)), (voidptr(0))]!

)

[export:'splat']
const (
splat   = [(voidptr(0)), (voidptr(0))]!

)

[weak]__global ( percent &Patch_t 

)

[weak]__global ( colon &Patch_t 

)

[weak]__global ( num [10]&Patch_t 

)

[weak]__global ( wiminus &Patch_t 

)

[weak]__global ( finished &Patch_t 

)

[weak]__global ( entering &Patch_t 

)

[weak]__global ( sp_secret &Patch_t 

)

[weak]__global ( kills &Patch_t 

)

[weak]__global ( secret &Patch_t 

)

[weak]__global ( items &Patch_t 

)

[weak]__global ( frags &Patch_t 

)

[weak]__global ( timepatch &Patch_t 

)

[weak]__global ( par &Patch_t 

)

[weak]__global ( sucks &Patch_t 

)

[weak]__global ( killers &Patch_t 

)

[weak]__global ( victims &Patch_t 

)

[weak]__global ( total &Patch_t 

)

[weak]__global ( star &Patch_t 

)

[weak]__global ( bstar &Patch_t 

)

[weak]__global ( p [4]&Patch_t 

)

[weak]__global ( bp [4]&Patch_t 

)

[weak]__global ( lnames &&Patch_t 

)

[weak]__global ( background &Patch_t 

)

[c:'WI_slamBackground']
fn wi_slambackground()  {
	v_drawpatch(0, 0, background)
}

[c:'WI_Responder']
fn wi_responder(ev &Event_t) bool {
	return false
}

[c:'WI_drawLF']
fn wi_drawlf()  {
	y := 2
	if gamemode != GameMode_t.commercial || wbs.last < (NUMCMAPS) {
		v_drawpatch((320 - (i16((lnames [wbs.last] .width)))) / 2, y, lnames [wbs.last] )
		y += (5 * (i16((lnames [wbs.last] .height)))) / 4
		v_drawpatch((320 - (i16((finished.width)))) / 2, y, finished)
	}
	else if wbs.last == (NUMCMAPS) {
		v_drawpatch((320 - (i16((finished.width)))) / 2, y, finished)
	}
	else if wbs.last > (NUMCMAPS) {
		tmp := Patch_t {
		320, 200, 1, 1, [0, 0, 0, 0, 0, 0, 0, 0]!
		}
		
		v_drawpatch(0, y, &tmp)
	}
}

[c:'WI_drawEL']
fn wi_drawel()  {
	y := 2
	v_drawpatch((320 - (i16((entering.width)))) / 2, y, entering)
	y += (5 * (i16((lnames [wbs.next] .height)))) / 4
	v_drawpatch((320 - (i16((lnames [wbs.next] .width)))) / 2, y, lnames [wbs.next] )
}

[c:'WI_drawOnLnode']
fn wi_drawonlnode(n int, c &&Patch_t)  {
	i := 0
	left := 0
	top := 0
	right := 0
	bottom := 0
	fits := false
	i = 0
	for {
	left = lnodes [wbs.epsd]  [n] .x - (i16((c [i] .leftoffset)))
	top = lnodes [wbs.epsd]  [n] .y - (i16((c [i] .topoffset)))
	right = left + (i16((c [i] .width)))
	bottom = top + (i16((c [i] .height)))
	if left >= 0 && right < 320 && top >= 0 && bottom < 200 {
		fits = true
	}
	else {
		i ++
	}
	// while()
	if ! (!fits && i != 2 && c [i]  != (voidptr(0)) ) { break }
	}
	if fits && i < 2 {
		v_drawpatch(lnodes [wbs.epsd]  [n] .x, lnodes [wbs.epsd]  [n] .y, c [i] )
	}
	else {
		C.printf(c'Could not place patch on level %d', n + 1)
	}
}

[c:'WI_initAnimatedBack']
fn wi_initanimatedback()  {
	anims [0]  = epsd0animinfo
	anims [1]  = epsd1animinfo
	anims [2]  = epsd2animinfo
	i := 0
	a := &Anim_t(0)
	if gamemode == GameMode_t.commercial {
	return 
	}
	if wbs.epsd > 2 {
	return 
	}
	for i = 0 ; i < NUMANIMS [wbs.epsd]  ; i ++ {
		a = &anims [wbs.epsd]  [i] 
		a.ctr = -1
		if a.type_ == Animenum_t.anim_always {
		a.nexttic = bcnt + 1 + (m_random() % a.period)
		}
		else if a.type_ == Animenum_t.anim_random {
		a.nexttic = bcnt + 1 + a.data2 + (m_random() % a.data1)
		}
		else if a.type_ == Animenum_t.anim_level {
		a.nexttic = bcnt + 1
		}
	}
}

[c:'WI_updateAnimatedBack']
fn wi_updateanimatedback()  {
	i := 0
	a := &Anim_t(0)
	if gamemode == GameMode_t.commercial {
	return 
	}
	if wbs.epsd > 2 {
	return 
	}
	for i = 0 ; i < NUMANIMS [wbs.epsd]  ; i ++ {
		a = &anims [wbs.epsd]  [i] 
		if bcnt == a.nexttic {
			match a.type_ {
			 .anim_always// case comp body kind=IfStmt is_enum=true 
			{
			if a.ctr ++ >= a.nanims {
			a.ctr = 0
			}
			a.nexttic = bcnt + a.period
			 }
			.anim_random// case comp body kind=UnaryOperator is_enum=true 
			{
			a.ctr ++
			if a.ctr == a.nanims {
				a.ctr = -1
				a.nexttic = bcnt + a.data2 + (m_random() % a.data1)
			}
			else { // 3
			a.nexttic = bcnt + a.period
}
			 }
			.anim_level// case comp body kind=IfStmt is_enum=true 
			{
			if !(state == Stateenum_t.statcount && i == 7) && wbs.next == a.data1 {
				a.ctr ++
				if a.ctr == a.nanims {
				a.ctr --
				}
				a.nexttic = bcnt + a.period
			}
			}else{}
			}
		}
	}
}

[c:'WI_drawAnimatedBack']
fn wi_drawanimatedback()  {
	i := 0
	a := &Anim_t(0)
	if gamemode == GameMode_t.commercial {
	return 
	}
	if wbs.epsd > 2 {
	return 
	}
	for i = 0 ; i < (NUMANIMS [wbs.epsd] ) ; i ++ {
		a = &anims [wbs.epsd]  [i] 
		if a.ctr >= 0 {
		v_drawpatch(a.loc.x, a.loc.y, a.p [a.ctr] )
		}
	}
}

[c:'WI_drawNum']
fn wi_drawnum(x int, y int, n int, digits int) int {
	fontwidth := (i16((num [0] .width)))
	neg := 0
	temp := 0
	if digits < 0 {
		if !n {
			digits = 1
		}
		else {
			digits = 0
			temp = n
			for temp {
				temp /= 10
				digits ++
			}
		}
	}
	neg = n < 0
	if neg {
	n = -n
	}
	if n == 1994 {
	return 0
	}
	for digits -- {
		x -= fontwidth
		v_drawpatch(x, y, num [n % 10] )
		n /= 10
	}
	if neg && wiminus {
		v_drawpatch(x, y, wiminus)
		x -= 8
	}
	return x
}

[c:'WI_drawPercent']
fn wi_drawpercent(x int, y int, p int)  {
	if p < 0 {
	return 
	}
	v_drawpatch(x, y, percent)
	wi_drawnum(x, y, p, -1)
}

[c:'WI_drawTime']
fn wi_drawtime(x int, y int, t int)  {
	div_ := 0
	n := 0
	if t < 0 {
	return 
	}
	if t <= 61 * 59 {
		div_ = 1
		for {
		n = (t / div_) % 60
		x = wi_drawnum(x, y, n, 2) - (i16((colon.width)))
		div_ *= 60
		if div_ == 60 || t / div_ {
		v_drawpatch(x, y, colon)
		}
		// while()
		if ! (t / div_ ) { break }
		}
	}
	else {
		v_drawpatch(x - (i16((sucks.width))), y, sucks)
	}
}

[c:'WI_unloadData']
fn wi_unloaddata() 

[c:'WI_End']
fn wi_end()  {
	wi_unloaddata()
}

[c:'WI_initNoState']
fn wi_initnostate()  {
	state = Stateenum_t.nostate
	acceleratestage = 0
	cnt = 10
}

[c:'WI_updateNoState']
fn wi_updatenostate()  {
	wi_updateanimatedback()
	if !cnt -- {
		g_worlddone()
	}
}

/*!*/[weak] __global ( snl_pointeron  = bool (false)
)

[c:'WI_initShowNextLoc']
fn wi_initshownextloc()  {
	state = Stateenum_t.shownextloc
	acceleratestage = 0
	cnt = 4 * 35
	wi_initanimatedback()
}

[c:'WI_updateShowNextLoc']
fn wi_updateshownextloc()  {
	wi_updateanimatedback()
	if !cnt -- || acceleratestage {
	wi_initnostate()
	}
	else { // 3
	snl_pointeron = (cnt & 31) < 20
}
}

[c:'WI_drawShowNextLoc']
fn wi_drawshownextloc()  {
	i := 0
	last := 0
	wi_slambackground()
	wi_drawanimatedback()
	if gamemode != GameMode_t.commercial {
		if wbs.epsd > 2 {
			wi_drawel()
			return 
		}
		last = if (wbs.last == 8){ wbs.next - 1 } else {wbs.last}
		for i = 0 ; i <= last ; i ++ {
		wi_drawonlnode(i, splat)
		}
		if wbs.didsecret {
		wi_drawonlnode(8, splat)
		}
		if snl_pointeron {
		wi_drawonlnode(wbs.next, yah)
		}
	}
	if (gamemode != GameMode_t.commercial) || wbs.next != 30 {
	wi_drawel()
	}
}

[c:'WI_drawNoState']
fn wi_drawnostate()  {
	snl_pointeron = true
	wi_drawshownextloc()
}

[c:'WI_fragSum']
fn wi_fragsum(playernum int) int {
	i := 0
	frags := 0
	for i = 0 ; i < 4 ; i ++ {
		if playeringame [i]  && i != playernum {
			frags += plrs [playernum] .frags [i] 
		}
	}
	frags -= plrs [playernum] .frags [playernum] 
	return frags
}

[weak]__global ( dm_state int 

)

[weak]__global ( dm_frags [4][4]int 

)

[weak]__global ( dm_totals [4]int 

)

[c:'WI_initDeathmatchStats']
fn wi_initdeathmatchstats()  {
	i := 0
	j := 0
	state = Stateenum_t.statcount
	acceleratestage = 0
	dm_state = 1
	cnt_pause = 35
	for i = 0 ; i < 4 ; i ++ {
		if playeringame [i]  {
			for j = 0 ; j < 4 ; j ++ {
			if playeringame [j]  {
			dm_frags [i]  [j]  = 0
			}
			}
			dm_totals [i]  = 0
		}
	}
	wi_initanimatedback()
}

[c:'WI_updateDeathmatchStats']
fn wi_updatedeathmatchstats()  {
	i := 0
	j := 0
	stillticking := false
	wi_updateanimatedback()
	if acceleratestage && dm_state != 4 {
		acceleratestage = 0
		for i = 0 ; i < 4 ; i ++ {
			if playeringame [i]  {
				for j = 0 ; j < 4 ; j ++ {
				if playeringame [j]  {
				dm_frags [i]  [j]  = plrs [i] .frags [j] 
				}
				}
				dm_totals [i]  = wi_fragsum(i)
			}
		}
		s_startsound(0, Sfxenum_t.sfx_barexp)
		dm_state = 4
	}
	if dm_state == 2 {
		if !(bcnt & 3) {
		s_startsound(0, Sfxenum_t.sfx_pistol)
		}
		stillticking = false
		for i = 0 ; i < 4 ; i ++ {
			if playeringame [i]  {
				for j = 0 ; j < 4 ; j ++ {
					if playeringame [j]  && dm_frags [i]  [j]  != plrs [i] .frags [j]  {
						if plrs [i] .frags [j]  < 0 {
						dm_frags [i]  [j]  --
						}
						else { // 3
						dm_frags [i]  [j]  ++
}
						if dm_frags [i]  [j]  > 99 {
						dm_frags [i]  [j]  = 99
						}
						if dm_frags [i]  [j]  < -99 {
						dm_frags [i]  [j]  = -99
						}
						stillticking = true
					}
				}
				dm_totals [i]  = wi_fragsum(i)
				if dm_totals [i]  > 99 {
				dm_totals [i]  = 99
				}
				if dm_totals [i]  < -99 {
				dm_totals [i]  = -99
				}
			}
		}
		if !stillticking {
			s_startsound(0, Sfxenum_t.sfx_barexp)
			dm_state ++
		}
	}
	else if dm_state == 4 {
		if acceleratestage {
			s_startsound(0, Sfxenum_t.sfx_slop)
			if gamemode == GameMode_t.commercial {
			wi_initnostate()
			}
			else { // 3
			wi_initshownextloc()
}
		}
	}
	else if dm_state & 1 {
		if !cnt_pause -- {
			dm_state ++
			cnt_pause = 35
		}
	}
}

[c:'WI_drawDeathmatchStats']
fn wi_drawdeathmatchstats()  {
	i := 0
	j := 0
	x := 0
	y := 0
	w := 0
	wi_slambackground()
	wi_drawanimatedback()
	wi_drawlf()
	v_drawpatch(269 - (i16((total.width))) / 2, 68 - 33 + 10, total)
	v_drawpatch(10, 100, killers)
	v_drawpatch(5, 50, victims)
	x = 42 + 40
	y = 68
	for i = 0 ; i < 4 ; i ++ {
		if playeringame [i]  {
			v_drawpatch(x - (i16((p [i] .width))) / 2, 68 - 33, p [i] )
			v_drawpatch(42 - (i16((p [i] .width))) / 2, y, p [i] )
			if i == me {
				v_drawpatch(x - (i16((p [i] .width))) / 2, 68 - 33, bstar)
				v_drawpatch(42 - (i16((p [i] .width))) / 2, y, star)
			}
		}
		else {
		}
		x += 40
		y += 33
	}
	y = 68 + 10
	w = (i16((num [0] .width)))
	for i = 0 ; i < 4 ; i ++ {
		x = 42 + 40
		if playeringame [i]  {
			for j = 0 ; j < 4 ; j ++ {
				if playeringame [j]  {
				wi_drawnum(x + w, y, dm_frags [i]  [j] , 2)
				}
				x += 40
			}
			wi_drawnum(269 + w, y, dm_totals [i] , 2)
		}
		y += 33
	}
}

[weak]__global ( cnt_frags [4]int 

)

[weak]__global ( dofrags int 

)

[weak]__global ( ng_state int 

)

[c:'WI_initNetgameStats']
fn wi_initnetgamestats()  {
	i := 0
	state = Stateenum_t.statcount
	acceleratestage = 0
	ng_state = 1
	cnt_pause = 35
	for i = 0 ; i < 4 ; i ++ {
		if !playeringame [i]  {
		continue
		
		}
		cnt_kills [i]  = 0
		cnt_items [i]  = 0
		cnt_secret [i]  = 0
		cnt_frags [i]  = 0
		dofrags += wi_fragsum(i)
	}
	dofrags = !!dofrags
	wi_initanimatedback()
}

[c:'WI_updateNetgameStats']
fn wi_updatenetgamestats()  {
	i := 0
	fsum := 0
	stillticking := false
	wi_updateanimatedback()
	if acceleratestage && ng_state != 10 {
		acceleratestage = 0
		for i = 0 ; i < 4 ; i ++ {
			if !playeringame [i]  {
			continue
			
			}
			cnt_kills [i]  = (plrs [i] .skills * 100) / wbs.maxkills
			cnt_items [i]  = (plrs [i] .sitems * 100) / wbs.maxitems
			cnt_secret [i]  = (plrs [i] .ssecret * 100) / wbs.maxsecret
			if dofrags {
			cnt_frags [i]  = wi_fragsum(i)
			}
		}
		s_startsound(0, Sfxenum_t.sfx_barexp)
		ng_state = 10
	}
	if ng_state == 2 {
		if !(bcnt & 3) {
		s_startsound(0, Sfxenum_t.sfx_pistol)
		}
		stillticking = false
		for i = 0 ; i < 4 ; i ++ {
			if !playeringame [i]  {
			continue
			
			}
			cnt_kills [i]  += 2
			if cnt_kills [i]  >= (plrs [i] .skills * 100) / wbs.maxkills {
			cnt_kills [i]  = (plrs [i] .skills * 100) / wbs.maxkills
			}
			else { // 3
			stillticking = true
}
		}
		if !stillticking {
			s_startsound(0, Sfxenum_t.sfx_barexp)
			ng_state ++
		}
	}
	else if ng_state == 4 {
		if !(bcnt & 3) {
		s_startsound(0, Sfxenum_t.sfx_pistol)
		}
		stillticking = false
		for i = 0 ; i < 4 ; i ++ {
			if !playeringame [i]  {
			continue
			
			}
			cnt_items [i]  += 2
			if cnt_items [i]  >= (plrs [i] .sitems * 100) / wbs.maxitems {
			cnt_items [i]  = (plrs [i] .sitems * 100) / wbs.maxitems
			}
			else { // 3
			stillticking = true
}
		}
		if !stillticking {
			s_startsound(0, Sfxenum_t.sfx_barexp)
			ng_state ++
		}
	}
	else if ng_state == 6 {
		if !(bcnt & 3) {
		s_startsound(0, Sfxenum_t.sfx_pistol)
		}
		stillticking = false
		for i = 0 ; i < 4 ; i ++ {
			if !playeringame [i]  {
			continue
			
			}
			cnt_secret [i]  += 2
			if cnt_secret [i]  >= (plrs [i] .ssecret * 100) / wbs.maxsecret {
			cnt_secret [i]  = (plrs [i] .ssecret * 100) / wbs.maxsecret
			}
			else { // 3
			stillticking = true
}
		}
		if !stillticking {
			s_startsound(0, Sfxenum_t.sfx_barexp)
			ng_state += 1 + 2 * !dofrags
		}
	}
	else if ng_state == 8 {
		if !(bcnt & 3) {
		s_startsound(0, Sfxenum_t.sfx_pistol)
		}
		stillticking = false
		for i = 0 ; i < 4 ; i ++ {
			if !playeringame [i]  {
			continue
			
			}
			cnt_frags [i]  += 1
			fsum = wi_fragsum(i)
			if cnt_frags [i]  >= fsum {
			cnt_frags [i]  = fsum
			}
			else { // 3
			stillticking = true
}
		}
		if !stillticking {
			s_startsound(0, Sfxenum_t.sfx_pldeth)
			ng_state ++
		}
	}
	else if ng_state == 10 {
		if acceleratestage {
			s_startsound(0, Sfxenum_t.sfx_sgcock)
			if gamemode == GameMode_t.commercial {
			wi_initnostate()
			}
			else { // 3
			wi_initshownextloc()
}
		}
	}
	else if ng_state & 1 {
		if !cnt_pause -- {
			ng_state ++
			cnt_pause = 35
		}
	}
}

[c:'WI_drawNetgameStats']
fn wi_drawnetgamestats()  {
	i := 0
	x := 0
	y := 0
	pwidth := (i16((percent.width)))
	wi_slambackground()
	wi_drawanimatedback()
	wi_drawlf()
	v_drawpatch((32 + (i16((star.width))) / 2 + 32 * !dofrags) + 64 - (i16((kills.width))), 50, kills)
	v_drawpatch((32 + (i16((star.width))) / 2 + 32 * !dofrags) + 2 * 64 - (i16((items.width))), 50, items)
	v_drawpatch((32 + (i16((star.width))) / 2 + 32 * !dofrags) + 3 * 64 - (i16((secret.width))), 50, secret)
	if dofrags {
	v_drawpatch((32 + (i16((star.width))) / 2 + 32 * !dofrags) + 4 * 64 - (i16((frags.width))), 50, frags)
	}
	y = 50 + (i16((kills.height)))
	for i = 0 ; i < 4 ; i ++ {
		if !playeringame [i]  {
		continue
		
		}
		x = (32 + (i16((star.width))) / 2 + 32 * !dofrags)
		v_drawpatch(x - (i16((p [i] .width))), y, p [i] )
		if i == me {
		v_drawpatch(x - (i16((p [i] .width))), y, star)
		}
		x += 64
		wi_drawpercent(x - pwidth, y + 10, cnt_kills [i] )
		x += 64
		wi_drawpercent(x - pwidth, y + 10, cnt_items [i] )
		x += 64
		wi_drawpercent(x - pwidth, y + 10, cnt_secret [i] )
		x += 64
		if dofrags {
		wi_drawnum(x, y + 10, cnt_frags [i] , -1)
		}
		y += 33
	}
}

[weak]__global ( sp_state int 

)

[c:'WI_initStats']
fn wi_initstats()  {
	state = Stateenum_t.statcount
	acceleratestage = 0
	sp_state = 1
	cnt_kills [0]  = -1
	cnt_items [0]  = -1
	cnt_secret [0]  = -1
	cnt_time = -1
	cnt_par = -1
	cnt_pause = 35
	wi_initanimatedback()
}

[c:'WI_updateStats']
fn wi_updatestats()  {
	wi_updateanimatedback()
	if acceleratestage && sp_state != 10 {
		acceleratestage = 0
		cnt_kills [0]  = (plrs [me] .skills * 100) / wbs.maxkills
		cnt_items [0]  = (plrs [me] .sitems * 100) / wbs.maxitems
		cnt_secret [0]  = (plrs [me] .ssecret * 100) / wbs.maxsecret
		cnt_time = plrs [me] .stime / 35
		cnt_par = wbs.partime / 35
		s_startsound(0, Sfxenum_t.sfx_barexp)
		sp_state = 10
	}
	if sp_state == 2 {
		cnt_kills [0]  += 2
		if !(bcnt & 3) {
		s_startsound(0, Sfxenum_t.sfx_pistol)
		}
		if cnt_kills [0]  >= (plrs [me] .skills * 100) / wbs.maxkills {
			cnt_kills [0]  = (plrs [me] .skills * 100) / wbs.maxkills
			s_startsound(0, Sfxenum_t.sfx_barexp)
			sp_state ++
		}
	}
	else if sp_state == 4 {
		cnt_items [0]  += 2
		if !(bcnt & 3) {
		s_startsound(0, Sfxenum_t.sfx_pistol)
		}
		if cnt_items [0]  >= (plrs [me] .sitems * 100) / wbs.maxitems {
			cnt_items [0]  = (plrs [me] .sitems * 100) / wbs.maxitems
			s_startsound(0, Sfxenum_t.sfx_barexp)
			sp_state ++
		}
	}
	else if sp_state == 6 {
		cnt_secret [0]  += 2
		if !(bcnt & 3) {
		s_startsound(0, Sfxenum_t.sfx_pistol)
		}
		if cnt_secret [0]  >= (plrs [me] .ssecret * 100) / wbs.maxsecret {
			cnt_secret [0]  = (plrs [me] .ssecret * 100) / wbs.maxsecret
			s_startsound(0, Sfxenum_t.sfx_barexp)
			sp_state ++
		}
	}
	else if sp_state == 8 {
		if !(bcnt & 3) {
		s_startsound(0, Sfxenum_t.sfx_pistol)
		}
		cnt_time += 3
		if cnt_time >= plrs [me] .stime / 35 {
		cnt_time = plrs [me] .stime / 35
		}
		cnt_par += 3
		if cnt_par >= wbs.partime / 35 {
			cnt_par = wbs.partime / 35
			if cnt_time >= plrs [me] .stime / 35 {
				s_startsound(0, Sfxenum_t.sfx_barexp)
				sp_state ++
			}
		}
	}
	else if sp_state == 10 {
		if acceleratestage {
			s_startsound(0, Sfxenum_t.sfx_sgcock)
			if gamemode == GameMode_t.commercial {
			wi_initnostate()
			}
			else { // 3
			wi_initshownextloc()
}
		}
	}
	else if sp_state & 1 {
		if !cnt_pause -- {
			sp_state ++
			cnt_pause = 35
		}
	}
}

[c:'WI_drawStats']
fn wi_drawstats()  {
	lh := 0
	lh = (3 * (i16((num [0] .height)))) / 2
	wi_slambackground()
	wi_drawanimatedback()
	wi_drawlf()
	v_drawpatch(50, 50, kills)
	wi_drawpercent(320 - 50, 50, cnt_kills [0] )
	v_drawpatch(50, 50 + lh, items)
	wi_drawpercent(320 - 50, 50 + lh, cnt_items [0] )
	v_drawpatch(50, 50 + 2 * lh, sp_secret)
	wi_drawpercent(320 - 50, 50 + 2 * lh, cnt_secret [0] )
	v_drawpatch(16, (200 - 32), timepatch)
	wi_drawtime(320 / 2 - 16, (200 - 32), cnt_time)
	if wbs.epsd < 3 {
		v_drawpatch(320 / 2 + 16, (200 - 32), par)
		if gamemode != GameMode_t.commercial || wbs.last != (NUMCMAPS) {
			wi_drawtime(320 - 16, (200 - 32), cnt_par)
		}
	}
}

[c:'WI_checkForAccelerate']
fn wi_checkforaccelerate()  {
	i := 0
	player := &Player_t(0)
	player = players
	for i = 0 ; i < 4 ; i ++ , player ++ {
		if playeringame [i]  {
			if player.cmd.buttons & Buttoncode_t.bt_attack {
				if !player.attackdown {
				acceleratestage = 1
				}
				player.attackdown = true
			}
			else { // 3
			player.attackdown = false
}
			if player.cmd.buttons & Buttoncode_t.bt_use {
				if !player.usedown {
				acceleratestage = 1
				}
				player.usedown = true
			}
			else { // 3
			player.usedown = false
}
		}
	}
}

[c:'WI_Ticker']
fn wi_ticker()  {
	bcnt ++
	if bcnt == 1 {
		if gamemode == GameMode_t.commercial {
		s_changemusic(Musicenum_t.mus_dm2int, true)
		}
		else { // 3
		s_changemusic(Musicenum_t.mus_inter, true)
}
	}
	wi_checkforaccelerate()
	match (state) {
	 .statcount// case comp body kind=IfStmt is_enum=true 
	{
	if deathmatch {
	wi_updatedeathmatchstats()
	}
	else if netgame {
	wi_updatenetgamestats()
	}
	else { // 3
	wi_updatestats()
}
	 }
	.shownextloc// case comp body kind=CallExpr is_enum=true 
	{
	wi_updateshownextloc()
	 }
	.nostate// case comp body kind=CallExpr is_enum=true 
	{
	wi_updatenostate()
	}else{}
	}
}

type Load_callback_t = fn (&i8, &&Patch_t)
[c:'WI_loadUnloadData']
fn wi_loadunloaddata(callback Load_callback_t)  {
	i := 0
	j := 0
	
	name := [9]i8{}
	a := &Anim_t(0)
	if gamemode == GameMode_t.commercial {
		for i = 0 ; i < NUMCMAPS ; i ++ {
			deh_snprintf(name, 9, c'CWILV%2.2d', i)
			callback(name, &lnames [i] )
		}
	}
	else {
		for i = 0 ; i < 9 ; i ++ {
			deh_snprintf(name, 9, c'WILV%d%d', wbs.epsd, i)
			callback(name, &lnames [i] )
		}
		callback(deh_string(c'WIURH0'), &yah [0] )
		callback(deh_string(c'WIURH1'), &yah [1] )
		callback(deh_string(c'WISPLAT'), &splat [0] )
		if wbs.epsd < 3 {
			for j = 0 ; j < NUMANIMS [wbs.epsd]  ; j ++ {
				a = &anims [wbs.epsd]  [j] 
				for i = 0 ; i < a.nanims ; i ++ {
					if wbs.epsd != 1 || j != 8 {
						deh_snprintf(name, 9, c'WIA%d%.2d%.2d', wbs.epsd, j, i)
						callback(name, &a.p [i] )
					}
					else {
						a.p [i]  = anims [1]  [4] .p [i] 
					}
				}
			}
		}
	}
	if w_checknumforname(deh_string(c'WIMINUS')) > 0 {
	callback(deh_string(c'WIMINUS'), &wiminus)
	}
	else { // 3
	wiminus = (voidptr(0))
}
	for i = 0 ; i < 10 ; i ++ {
		deh_snprintf(name, 9, c'WINUM%d', i)
		callback(name, &num [i] )
	}
	callback(deh_string(c'WIPCNT'), &percent)
	callback(deh_string(c'WIF'), &finished)
	callback(deh_string(c'WIENTER'), &entering)
	callback(deh_string(c'WIOSTK'), &kills)
	callback(deh_string(c'WIOSTS'), &secret)
	callback(deh_string(c'WISCRT2'), &sp_secret)
	if w_checknumforname(deh_string(c'WIOBJ')) >= 0 {
		if netgame && !deathmatch {
		callback(deh_string(c'WIOBJ'), &items)
		}
		else { // 3
		callback(deh_string(c'WIOSTI'), &items)
}
	}
	else {
		callback(deh_string(c'WIOSTI'), &items)
	}
	callback(deh_string(c'WIFRGS'), &frags)
	callback(deh_string(c'WICOLON'), &colon)
	callback(deh_string(c'WITIME'), &timepatch)
	callback(deh_string(c'WISUCKS'), &sucks)
	callback(deh_string(c'WIPAR'), &par)
	callback(deh_string(c'WIKILRS'), &killers)
	callback(deh_string(c'WIVCTMS'), &victims)
	callback(deh_string(c'WIMSTT'), &total)
	for i = 0 ; i < 4 ; i ++ {
		deh_snprintf(name, 9, c'STPB%d', i)
		callback(name, &p [i] )
		deh_snprintf(name, 9, c'WIBP%d', i + 1)
		callback(name, &bp [i] )
	}
	if gamemode == GameMode_t.commercial {
		m_stringcopy(name, deh_string(c'INTERPIC'), sizeof(name))
	}
	else if gameversion >= GameVersion_t.exe_ultimate && wbs.epsd == 3 {
		m_stringcopy(name, deh_string(c'INTERPIC'), sizeof(name))
	}
	else {
		deh_snprintf(name, sizeof(name), c'WIMAP%d', wbs.epsd)
	}
	callback(name, &background)
}

[c:'WI_loadCallback']
fn wi_loadcallback(name &i8, variable &&Patch_t)  {
	*variable = w_cachelumpname(name, 1)
}

[c:'WI_loadData']
fn wi_loaddata()  {
	if gamemode == GameMode_t.commercial {
		NUMCMAPS = 32
		lnames = &&Patch_t(z_malloc(sizeof(&Patch_t) * NUMCMAPS, 1, (voidptr(0))))
	}
	else {
		lnames = &&Patch_t(z_malloc(sizeof(&Patch_t) * 9, 1, (voidptr(0))))
	}
	wi_loadunloaddata(wi_loadcallback)
	star = w_cachelumpname(deh_string(c'STFST01'), 1)
	bstar = w_cachelumpname(deh_string(c'STFDEAD0'), 1)
}

[c:'WI_unloadCallback']
fn wi_unloadcallback(name &i8, variable &&Patch_t)  {
	w_releaselumpname(name)
	*variable = (voidptr(0))
}

[c:'WI_unloadData']
fn wi_unloaddata()  {
	wi_loadunloaddata(wi_unloadcallback)
}

[c:'WI_Drawer']
fn wi_drawer()  {
	match (state) {
	 .statcount// case comp body kind=IfStmt is_enum=true 
	{
	if deathmatch {
	wi_drawdeathmatchstats()
	}
	else if netgame {
	wi_drawnetgamestats()
	}
	else { // 3
	wi_drawstats()
}
	 }
	.shownextloc// case comp body kind=CallExpr is_enum=true 
	{
	wi_drawshownextloc()
	 }
	.nostate// case comp body kind=CallExpr is_enum=true 
	{
	wi_drawnostate()
	}else{}
	}
}

[c:'WI_initVariables']
fn wi_initvariables(wbstartstruct &Wbstartstruct_t)  {
	wbs = wbstartstruct
	acceleratestage = 0
	cnt = 0
	bcnt = 0
	firstrefresh = 1
	me = wbs.pnum
	plrs = wbs.plyr
	if !wbs.maxkills {
	wbs.maxkills = 1
	}
	if !wbs.maxitems {
	wbs.maxitems = 1
	}
	if !wbs.maxsecret {
	wbs.maxsecret = 1
	}
	if gameversion < GameVersion_t.exe_ultimate {
	if wbs.epsd > 2 {
	wbs.epsd -= 3
	}
	}
}

[c:'WI_Start']
fn wi_start(wbstartstruct &Wbstartstruct_t)  {
	wi_initvariables(wbstartstruct)
	wi_loaddata()
	if deathmatch {
	wi_initdeathmatchstats()
	}
	else if netgame {
	wi_initnetgamestats()
	}
	else { // 3
	wi_initstats()
}
}

