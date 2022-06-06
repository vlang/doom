[translated]
module main


[typedef]
struct C.FILE {}


// vstart

fn index( &i8,  int) &i8

fn index( &i8,  int) &i8

fn ffs( int) int

[c:'I_SetPalette']
fn i_setpalette(palette &u8) 

[c:'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

[c2v_variadic]
[c:'M_snprintf']
fn m_snprintf(buf &i8, buf_len usize, s &i8) int

[c:'M_Random']
fn m_random() int

[c:'W_CheckNumForName']
fn w_checknumforname(name &i8) Lumpindex_t

[c:'W_GetNumForName']
fn w_getnumforname(name &i8) Lumpindex_t

[c:'W_CacheLumpNum']
fn w_cachelumpnum(lump Lumpindex_t, tag int) voidptr

[c:'W_CacheLumpName']
fn w_cachelumpname(name &i8, tag int) voidptr

[c:'W_ReleaseLumpName']
fn w_releaselumpname(name &i8) 

[c:'DEH_String']
fn deh_string(s &i8) &i8

[c2v_variadic]
[c:'DEH_snprintf']
fn deh_snprintf(buffer &i8, len usize, fmt &i8) 

[c:'G_DeferedInitNew']
fn g_deferedinitnew(skill Skill_t, episode int, map_ int) 

[c:'cht_CheckCheat']
fn cht_checkcheat(cht &Cheatseq_t, key i8) int

[c:'cht_GetParam']
fn cht_getparam(cht &Cheatseq_t, buffer &i8) 

[c:'ST_Responder']
fn st_responder(ev &Event_t) bool

[c:'ST_Ticker']
fn st_ticker() 

[c:'ST_Drawer']
fn st_drawer(fullscreen bool, refresh bool) 

[c:'ST_Start']
fn st_start() 

[c:'ST_Init']
fn st_init() 

[weak]__global ( st_backing_screen &Pixel_t 

)

// skipped extern global cheat_mus
// skipped extern global cheat_god
// skipped extern global cheat_ammo
// skipped extern global cheat_ammonokey
// skipped extern global cheat_noclip
// skipped extern global cheat_commercial_noclip
// skipped extern global cheat_powerup
// skipped extern global cheat_choppers
// skipped extern global cheat_clev
// skipped extern global cheat_mypos

const ( // empty enum
)

struct St_number_t { 
	x int
	y int
	width int
	oldnum int
	num &int
	on &bool
	p &&Patch_t
	data int
}
struct St_percent_t { 
	n St_number_t
	p &Patch_t
}
struct St_multicon_t { 
	x int
	y int
	oldinum int
	inum &int
	on &bool
	p &&Patch_t
	data int
}
struct St_binicon_t { 
	x int
	y int
	oldval bool
	val &bool
	on &bool
	p &Patch_t
	data int
}
[c:'STlib_init']
fn stlib_init() 

[c:'STlib_initNum']
fn stlib_initnum(n &St_number_t, x int, y int, pl &&Patch_t, num &int, on &bool, width int) 

[c:'STlib_updateNum']
fn stlib_updatenum(n &St_number_t, refresh bool) 

[c:'STlib_initPercent']
fn stlib_initpercent(p &St_percent_t, x int, y int, pl &&Patch_t, num &int, on &bool, percent &Patch_t) 

[c:'STlib_updatePercent']
fn stlib_updatepercent(per &St_percent_t, refresh int) 

[c:'STlib_initMultIcon']
fn stlib_initmulticon(mi &St_multicon_t, x int, y int, il &&Patch_t, inum &int, on &bool) 

[c:'STlib_updateMultIcon']
fn stlib_updatemulticon(mi &St_multicon_t, refresh bool) 

[c:'STlib_initBinIcon']
fn stlib_initbinicon(b &St_binicon_t, x int, y int, i &Patch_t, val &bool, on &bool) 

[c:'STlib_updateBinIcon']
fn stlib_updatebinicon(bi &St_binicon_t, refresh bool) 

[c:'R_PointToAngle']
fn r_pointtoangle(x int, y int) Angle_t

[c:'R_PointToAngle2']
fn r_pointtoangle2(x1 int, y1 int, x2 int, y2 int) Angle_t

[c:'P_GivePower']
fn p_givepower( &Player_t,  int) bool

[c:'S_ChangeMusic']
fn s_changemusic(music_id int, looping int) 

[c:'V_CopyRect']
fn v_copyrect(srcx int, srcy int, source &Pixel_t, width int, height int, destx int, desty int) 

[c:'V_DrawPatch']
fn v_drawpatch(x int, y int, patch &Patch_t) 

[c:'V_UseBuffer']
fn v_usebuffer(buffer &Pixel_t) 

[c:'V_RestoreBuffer']
fn v_restorebuffer() 

[weak]__global ( plyr &Player_t 

)

[weak]__global ( st_firsttime bool 

)

[weak]__global ( lu_palette int 

)

[weak]__global ( st_clock u32 

)

/*!*/[weak] __global ( st_msgcounter  = int (0)
)

[weak]__global ( st_chatstate St_chatstateenum_t 

)

[weak]__global ( st_gamestate St_stateenum_t 

)

[weak]__global ( st_statusbaron bool 

)

[weak]__global ( st_chat bool 

)

[weak]__global ( st_oldchat bool 

)

[weak]__global ( st_cursoron bool 

)

[weak]__global ( st_notdeathmatch bool 

)

[weak]__global ( st_armson bool 

)

[weak]__global ( st_fragson bool 

)

[weak]__global ( sbar &Patch_t 

)

[weak]__global ( sbarr &Patch_t 

)

[weak]__global ( tallnum [10]&Patch_t 

)

[weak]__global ( tallpercent &Patch_t 

)

[weak]__global ( shortnum [10]&Patch_t 

)

[weak]__global ( keys [6]&Patch_t 

)

[weak]__global ( faces [42]&Patch_t 

)

[weak]__global ( faceback &Patch_t 

)

[weak]__global ( armsbg &Patch_t 

)

[weak]__global ( arms [6][2]&Patch_t 

)

[weak]__global ( w_ready St_number_t 

)

[weak]__global ( w_frags St_number_t 

)

[weak]__global ( w_health St_percent_t 

)

[weak]__global ( w_armsbg St_binicon_t 

)

[weak]__global ( w_arms [6]St_multicon_t 

)

[weak]__global ( w_faces St_multicon_t 

)

[weak]__global ( w_keyboxes [3]St_multicon_t 

)

[weak]__global ( w_armor St_percent_t 

)

[weak]__global ( w_ammo [4]St_number_t 

)

[weak]__global ( w_maxammo [4]St_number_t 

)

[weak]__global ( st_fragscount int 

)

/*!*/[weak] __global ( st_oldhealth  = int (-1)
)

[weak]__global ( oldweaponsowned [9]bool 

)

/*!*/[weak] __global ( st_facecount  = int (0)
)

/*!*/[weak] __global ( st_faceindex  = int (0)
)

[weak]__global ( keyboxes [3]int 

)

[weak]__global ( st_randomnumber int 

)

/*!*/[weak] __global ( cheat_mus  = Cheatseq_t {
c'idmus', sizeof(c'idmus') - 1, 2, 0, 0, c''}

)

/*!*/[weak] __global ( cheat_god  = Cheatseq_t {
c'iddqd', sizeof(c'iddqd') - 1, 0, 0, 0, c''}

)

/*!*/[weak] __global ( cheat_ammo  = Cheatseq_t {
c'idkfa', sizeof(c'idkfa') - 1, 0, 0, 0, c''}

)

/*!*/[weak] __global ( cheat_ammonokey  = Cheatseq_t {
c'idfa', sizeof(c'idfa') - 1, 0, 0, 0, c''}

)

/*!*/[weak] __global ( cheat_noclip  = Cheatseq_t {
c'idspispopd', sizeof(c'idspispopd') - 1, 0, 0, 0, c''}

)

/*!*/[weak] __global ( cheat_commercial_noclip  = Cheatseq_t {
c'idclip', sizeof(c'idclip') - 1, 0, 0, 0, c''}

)

[export:'cheat_powerup']
const (
cheat_powerup   = [Cheatseq_t {
c'idbeholdv', sizeof(c'idbeholdv') - 1, 0, 0, 0, c''}
, Cheatseq_t {
c'idbeholds', sizeof(c'idbeholds') - 1, 0, 0, 0, c''}
, Cheatseq_t {
c'idbeholdi', sizeof(c'idbeholdi') - 1, 0, 0, 0, c''}
, Cheatseq_t {
c'idbeholdr', sizeof(c'idbeholdr') - 1, 0, 0, 0, c''}
, Cheatseq_t {
c'idbeholda', sizeof(c'idbeholda') - 1, 0, 0, 0, c''}
, Cheatseq_t {
c'idbeholdl', sizeof(c'idbeholdl') - 1, 0, 0, 0, c''}
, Cheatseq_t {
c'idbehold', sizeof(c'idbehold') - 1, 0, 0, 0, c''}
]!

)

/*!*/[weak] __global ( cheat_choppers  = Cheatseq_t {
c'idchoppers', sizeof(c'idchoppers') - 1, 0, 0, 0, c''}

)

/*!*/[weak] __global ( cheat_clev  = Cheatseq_t {
c'idclev', sizeof(c'idclev') - 1, 2, 0, 0, c''}

)

/*!*/[weak] __global ( cheat_mypos  = Cheatseq_t {
c'idmypos', sizeof(c'idmypos') - 1, 0, 0, 0, c''}

)

[c:'ST_Stop']
fn st_stop() 

[c:'ST_refreshBackground']
fn st_refreshbackground()  {
	if st_statusbaron {
		v_usebuffer(st_backing_screen)
		v_drawpatch(0, 0, sbar)
		if sbarr {
		v_drawpatch(104, 0, sbarr)
		}
		if netgame {
		v_drawpatch(143, 0, faceback)
		}
		v_restorebuffer()
		v_copyrect(0, 0, st_backing_screen, 320, 32, 0, (200 - 32))
	}
}

[c:'ST_Responder']
fn st_responder(ev &Event_t) bool {
	i := 0
	if ev.type_ == Evtype_t.ev_keyup && ((ev.data1 & 4294901760) == ((`a` << 24) + (`m` << 16))) {
		match ev.data1 {
		 (((`a` << 24) + (`m` << 16)) | (`e` << 8))// case comp body kind=BinaryOperator is_enum=false 
		{
		st_gamestate = St_stateenum_t.automapstate
		st_firsttime = true
		 }
		(((`a` << 24) + (`m` << 16)) | (`x` << 8))// case comp body kind=BinaryOperator is_enum=false 
		{
		st_gamestate = St_stateenum_t.firstpersonstate
		}else{}
		}
	}
	else if ev.type_ == Evtype_t.ev_keydown {
		if !netgame && gameskill != Skill_t.sk_nightmare {
			if cht_checkcheat(&cheat_god, ev.data2) {
				plyr.cheats ^= Cheat_t.cf_godmode
				if plyr.cheats & Cheat_t.cf_godmode {
					if plyr.mo {
					plyr.mo.health = 100
					}
					plyr.health = deh_god_mode_health
					plyr.message = deh_string(c'Degreelessness Mode On')
				}
				else { // 3
				plyr.message = deh_string(c'Degreelessness Mode Off')
}
			}
			else if cht_checkcheat(&cheat_ammonokey, ev.data2) {
				plyr.armorpoints = deh_idfa_armor
				plyr.armortype = deh_idfa_armor_class
				for i = 0 ; i < Weapontype_t.numweapons ; i ++ {
				plyr.weaponowned [i]  = true
				}
				for i = 0 ; i < Ammotype_t.numammo ; i ++ {
				plyr.ammo [i]  = plyr.maxammo [i] 
				}
				plyr.message = deh_string(c'Ammo (no keys) Added')
			}
			else if cht_checkcheat(&cheat_ammo, ev.data2) {
				plyr.armorpoints = deh_idkfa_armor
				plyr.armortype = deh_idkfa_armor_class
				for i = 0 ; i < Weapontype_t.numweapons ; i ++ {
				plyr.weaponowned [i]  = true
				}
				for i = 0 ; i < Ammotype_t.numammo ; i ++ {
				plyr.ammo [i]  = plyr.maxammo [i] 
				}
				for i = 0 ; i < Card_t.numcards ; i ++ {
				plyr.cards [i]  = true
				}
				plyr.message = deh_string(c'Very Happy Ammo Added')
			}
			else if cht_checkcheat(&cheat_mus, ev.data2) {
				buf := [3]i8{}
				musnum := 0
				plyr.message = deh_string(c'Music Change')
				cht_getparam(&cheat_mus, buf)
				if gamemode == GameMode_t.commercial || gameversion < GameVersion_t.exe_ultimate {
					musnum = Musicenum_t.mus_runnin + (buf [0]  - `0`) * 10 + buf [1]  - `0` - 1
					if ((buf [0]  - `0`) * 10 + buf [1]  - `0`) > 35 && gameversion >= GameVersion_t.exe_doom_1_8 {
					plyr.message = deh_string(c'IMPOSSIBLE SELECTION')
					}
					else { // 3
					s_changemusic(musnum, 1)
}
				}
				else {
					musnum = Musicenum_t.mus_e1m1 + (buf [0]  - `1`) * 9 + (buf [1]  - `1`)
					if ((buf [0]  - `1`) * 9 + buf [1]  - `1`) > 31 {
					plyr.message = deh_string(c'IMPOSSIBLE SELECTION')
					}
					else { // 3
					s_changemusic(musnum, 1)
}
				}
			}
			else if (GameMission_t.doom == GameMission_t.doom && cht_checkcheat(&cheat_noclip, ev.data2)) || (GameMission_t.doom != GameMission_t.doom && cht_checkcheat(&cheat_commercial_noclip, ev.data2)) {
				plyr.cheats ^= Cheat_t.cf_noclip
				if plyr.cheats & Cheat_t.cf_noclip {
				plyr.message = deh_string(c'No Clipping Mode ON')
				}
				else { // 3
				plyr.message = deh_string(c'No Clipping Mode OFF')
}
			}
			for i = 0 ; i < 6 ; i ++ {
				if cht_checkcheat(&cheat_powerup [i] , ev.data2) {
					if !plyr.powers [i]  {
					p_givepower(plyr, i)
					}
					else if i != Powertype_t.pw_strength {
					plyr.powers [i]  = 1
					}
					else { // 3
					plyr.powers [i]  = 0
}
					plyr.message = deh_string(c'Power-up Toggled')
				}
			}
			if cht_checkcheat(&cheat_powerup [6] , ev.data2) {
				plyr.message = deh_string(c'inVuln, Str, Inviso, Rad, Allmap, or Lite-amp')
			}
			else if cht_checkcheat(&cheat_choppers, ev.data2) {
				plyr.weaponowned [int(Weapontype_t.wp_chainsaw)]  = true
				plyr.powers [int(Powertype_t.pw_invulnerability)]  = true
				plyr.message = deh_string(c"... doesn't suck - GM")
			}
			else if cht_checkcheat(&cheat_mypos, ev.data2) {
				buf := [52]i8{}
				m_snprintf(buf, sizeof(buf), c'ang=0x%x;x,y=(0x%x,0x%x)', players [consoleplayer] .mo.angle, players [consoleplayer] .mo.x, players [consoleplayer] .mo.y)
				plyr.message = buf
			}
		}
		if !netgame && cht_checkcheat(&cheat_clev, ev.data2) {
			buf := [3]i8{}
			epsd := 0
			map_ := 0
			cht_getparam(&cheat_clev, buf)
			if gamemode == GameMode_t.commercial {
				epsd = 0
				map_ = (buf [0]  - `0`) * 10 + buf [1]  - `0`
			}
			else {
				epsd = buf [0]  - `0`
				map_ = buf [1]  - `0`
				if gameversion == GameVersion_t.exe_chex {
					if epsd > 1 {
						epsd = 1
					}
					if map_ > 5 {
						map_ = 5
					}
				}
			}
			if gamemode != GameMode_t.commercial {
				if epsd < 1 {
					return false
				}
				if epsd > 4 {
					return false
				}
				if epsd == 4 && gameversion < GameVersion_t.exe_ultimate {
					return false
				}
				if map_ < 1 {
					return false
				}
				if map_ > 9 {
					return false
				}
			}
			else {
				if map_ < 1 {
					return false
				}
				if map_ > 40 {
					return false
				}
			}
			plyr.message = deh_string(c'Changing Level...')
			g_deferedinitnew(gameskill, epsd, map_)
		}
	}
	return false
}

[c:'ST_calcPainOffset']
fn st_calcpainoffset() int {
	health := 0
	lastcalc := 0
	oldhealth := -1
	health = if plyr.health > 100{ 100 } else {plyr.health}
	if health != oldhealth {
		lastcalc = (3 + 2 + 3) * (((100 - health) * 5) / 101)
		oldhealth = health
	}
	return lastcalc
}

[c:'ST_updateFaceWidget']
fn st_updatefacewidget()  {
	i := 0
	badguyangle := u32(0)
	diffang := u32(0)
	lastattackdown := -1
	priority := 0
	doevilgrin := false
	if priority < 10 {
		if !plyr.health {
			priority = 9
			st_faceindex = ((5 * (3 + 2 + 3)) + 1)
			st_facecount = 1
		}
	}
	if priority < 9 {
		if plyr.bonuscount {
			doevilgrin = false
			for i = 0 ; i < Weapontype_t.numweapons ; i ++ {
				if oldweaponsowned [i]  != plyr.weaponowned [i]  {
					doevilgrin = true
					oldweaponsowned [i]  = plyr.weaponowned [i] 
				}
			}
			if doevilgrin {
				priority = 8
				st_facecount = (2 * 35)
				st_faceindex = st_calcpainoffset() + (((3) + 2) + 1)
			}
		}
	}
	if priority < 8 {
		if plyr.damagecount && plyr.attacker && plyr.attacker != plyr.mo {
			priority = 7
			if plyr.health - st_oldhealth > 20 {
				st_facecount = (1 * 35)
				st_faceindex = st_calcpainoffset() + ((3) + 2)
			}
			else {
				badguyangle = r_pointtoangle2(plyr.mo.x, plyr.mo.y, plyr.attacker.x, plyr.attacker.y)
				if badguyangle > plyr.mo.angle {
					diffang = badguyangle - plyr.mo.angle
					i = diffang > 2147483648
				}
				else {
					diffang = plyr.mo.angle - badguyangle
					i = diffang <= 2147483648
				}
				st_facecount = (1 * 35)
				st_faceindex = st_calcpainoffset()
				if diffang < 536870912 {
					st_faceindex += ((((3) + 2) + 1) + 1)
				}
				else if i {
					st_faceindex += (3)
				}
				else {
					st_faceindex += (3) + 1
				}
			}
		}
	}
	if priority < 7 {
		if plyr.damagecount {
			if plyr.health - st_oldhealth > 20 {
				priority = 7
				st_facecount = (1 * 35)
				st_faceindex = st_calcpainoffset() + ((3) + 2)
			}
			else {
				priority = 6
				st_facecount = (1 * 35)
				st_faceindex = st_calcpainoffset() + ((((3) + 2) + 1) + 1)
			}
		}
	}
	if priority < 6 {
		if plyr.attackdown {
			if lastattackdown == -1 {
			lastattackdown = (2 * 35)
			}
			else if !lastattackdown -- {
				priority = 5
				st_faceindex = st_calcpainoffset() + ((((3) + 2) + 1) + 1)
				st_facecount = 1
				lastattackdown = 1
			}
		}
		else { // 3
		lastattackdown = -1
}
	}
	if priority < 5 {
		if (plyr.cheats & Cheat_t.cf_godmode) || plyr.powers [int(Powertype_t.pw_invulnerability)]  {
			priority = 4
			st_faceindex = (5 * (3 + 2 + 3))
			st_facecount = 1
		}
	}
	if !st_facecount {
		st_faceindex = st_calcpainoffset() + (st_randomnumber % 3)
		st_facecount = (35 / 2)
		priority = 0
	}
	st_facecount --
}

[c:'ST_updateWidgets']
fn st_updatewidgets()  {
	largeammo := 1994
	i := 0
	if weaponinfo [plyr.readyweapon] .ammo == Ammotype_t.am_noammo {
	w_ready.num = &largeammo
	}
	else { // 3
	w_ready.num = &plyr.ammo [weaponinfo [plyr.readyweapon] .ammo] 
}
	w_ready.data = plyr.readyweapon
	for i = 0 ; i < 3 ; i ++ {
		keyboxes [i]  = if plyr.cards [i] { i } else {-1}
		if plyr.cards [i + 3]  {
		keyboxes [i]  = i + 3
		}
	}
	st_updatefacewidget()
	st_notdeathmatch = !deathmatch
	st_armson = st_statusbaron && !deathmatch
	st_fragson = deathmatch && st_statusbaron
	st_fragscount = 0
	for i = 0 ; i < 4 ; i ++ {
		if i != consoleplayer {
		st_fragscount += plyr.frags [i] 
		}
		else { // 3
		st_fragscount -= plyr.frags [i] 
}
	}
	if !st_msgcounter -- {
	st_chat = st_oldchat
	}
}

[c:'ST_Ticker']
fn st_ticker()  {
	st_clock ++
	st_randomnumber = m_random()
	st_updatewidgets()
	st_oldhealth = plyr.health
}

/*!*/[weak] __global ( st_palette  = int (0)
)

[c:'ST_doPaletteStuff']
fn st_dopalettestuff()  {
	palette := 0
	pal := &u8(0)
	cnt := 0
	bzc := 0
	cnt = plyr.damagecount
	if plyr.powers [int(Powertype_t.pw_strength)]  {
		bzc = 12 - (plyr.powers [int(Powertype_t.pw_strength)]  >> 6)
		if bzc > cnt {
		cnt = bzc
		}
	}
	if cnt {
		palette = (cnt + 7) >> 3
		if palette >= 8 {
		palette = 8 - 1
		}
		palette += 1
	}
	else if plyr.bonuscount {
		palette = (plyr.bonuscount + 7) >> 3
		if palette >= 4 {
		palette = 4 - 1
		}
		palette += 9
	}
	else if plyr.powers [int(Powertype_t.pw_ironfeet)]  > 4 * 32 || plyr.powers [int(Powertype_t.pw_ironfeet)]  & 8 {
	palette = 13
	}
	else { // 3
	palette = 0
}
	if gameversion == GameVersion_t.exe_chex && palette >= 1 && palette < 1 + 8 {
		palette = 13
	}
	if palette != st_palette {
		st_palette = palette
		pal = &u8(w_cachelumpnum(lu_palette, 8)) + palette * 768
		i_setpalette(pal)
	}
}

[c:'ST_drawWidgets']
fn st_drawwidgets(refresh bool)  {
	i := 0
	st_armson = st_statusbaron && !deathmatch
	st_fragson = deathmatch && st_statusbaron
	stlib_updatenum(&w_ready, refresh)
	for i = 0 ; i < 4 ; i ++ {
		stlib_updatenum(&w_ammo [i] , refresh)
		stlib_updatenum(&w_maxammo [i] , refresh)
	}
	stlib_updatepercent(&w_health, refresh)
	stlib_updatepercent(&w_armor, refresh)
	stlib_updatebinicon(&w_armsbg, refresh)
	for i = 0 ; i < 6 ; i ++ {
	stlib_updatemulticon(&w_arms [i] , refresh)
	}
	stlib_updatemulticon(&w_faces, refresh)
	for i = 0 ; i < 3 ; i ++ {
	stlib_updatemulticon(&w_keyboxes [i] , refresh)
	}
	stlib_updatenum(&w_frags, refresh)
}

[c:'ST_doRefresh']
fn st_dorefresh()  {
	st_firsttime = false
	st_refreshbackground()
	st_drawwidgets(true)
}

[c:'ST_diffDraw']
fn st_diffdraw()  {
	st_drawwidgets(false)
}

[c:'ST_Drawer']
fn st_drawer(fullscreen bool, refresh bool)  {
	st_statusbaron = (!fullscreen) || automapactive
	st_firsttime = st_firsttime || refresh
	st_dopalettestuff()
	if st_firsttime {
	st_dorefresh()
	}
	else { // 3
	st_diffdraw()
}
}

[c:'ST_loadUnloadGraphics']
fn st_loadunloadgraphics(callback Load_callback_t)  {
	i := 0
	j := 0
	facenum := 0
	namebuf := [9]i8{}
	for i = 0 ; i < 10 ; i ++ {
		deh_snprintf(namebuf, 9, c'STTNUM%d', i)
		callback(namebuf, &tallnum [i] )
		deh_snprintf(namebuf, 9, c'STYSNUM%d', i)
		callback(namebuf, &shortnum [i] )
	}
	callback(deh_string(c'STTPRCNT'), &tallpercent)
	for i = 0 ; i < Card_t.numcards ; i ++ {
		deh_snprintf(namebuf, 9, c'STKEYS%d', i)
		callback(namebuf, &keys [i] )
	}
	callback(deh_string(c'STARMS'), &armsbg)
	for i = 0 ; i < 6 ; i ++ {
		deh_snprintf(namebuf, 9, c'STGNUM%d', i + 2)
		callback(namebuf, &arms [i]  [0] )
		arms [i]  [1]  = shortnum [i + 2] 
	}
	deh_snprintf(namebuf, 9, c'STFB%d', consoleplayer)
	callback(namebuf, &faceback)
	if w_checknumforname(c'STBAR') >= 0 {
		callback(deh_string(c'STBAR'), &sbar)
		sbarr = (voidptr(0))
	}
	else {
		callback(deh_string(c'STMBARL'), &sbar)
		callback(deh_string(c'STMBARR'), &sbarr)
	}
	facenum = 0
	for i = 0 ; i < 5 ; i ++ {
		for j = 0 ; j < 3 ; j ++ {
			deh_snprintf(namebuf, 9, c'STFST%d%d', i, j)
			callback(namebuf, &faces [facenum] )
			facenum ++
		}
		deh_snprintf(namebuf, 9, c'STFTR%d0', i)
		callback(namebuf, &faces [facenum] )
		facenum ++
		deh_snprintf(namebuf, 9, c'STFTL%d0', i)
		callback(namebuf, &faces [facenum] )
		facenum ++
		deh_snprintf(namebuf, 9, c'STFOUCH%d', i)
		callback(namebuf, &faces [facenum] )
		facenum ++
		deh_snprintf(namebuf, 9, c'STFEVL%d', i)
		callback(namebuf, &faces [facenum] )
		facenum ++
		deh_snprintf(namebuf, 9, c'STFKILL%d', i)
		callback(namebuf, &faces [facenum] )
		facenum ++
	}
	callback(deh_string(c'STFGOD0'), &faces [facenum] )
	facenum ++
	callback(deh_string(c'STFDEAD0'), &faces [facenum] )
	facenum ++
}

[c:'ST_loadCallback']
fn st_loadcallback(lumpname &i8, variable &&Patch_t)  {
	*variable = w_cachelumpname(lumpname, 1)
}

[c:'ST_loadGraphics']
fn st_loadgraphics()  {
	st_loadunloadgraphics(st_loadcallback)
}

[c:'ST_loadData']
fn st_loaddata()  {
	lu_palette = w_getnumforname(deh_string(c'PLAYPAL'))
	st_loadgraphics()
}

[c:'ST_unloadCallback']
fn st_unloadcallback(lumpname &i8, variable &&Patch_t)  {
	w_releaselumpname(lumpname)
	*variable = (voidptr(0))
}

[c:'ST_unloadGraphics']
fn st_unloadgraphics()  {
	st_loadunloadgraphics(st_unloadcallback)
}

[c:'ST_unloadData']
fn st_unloaddata()  {
	st_unloadgraphics()
}

[c:'ST_initData']
fn st_initdata()  {
	i := 0
	st_firsttime = true
	plyr = &players [consoleplayer] 
	st_clock = 0
	st_chatstate = St_chatstateenum_t.startchatstate
	st_gamestate = St_stateenum_t.firstpersonstate
	st_statusbaron = true
	st_oldchat = false
	st_chat = false
	st_cursoron = false
	st_faceindex = 0
	st_palette = -1
	st_oldhealth = -1
	for i = 0 ; i < Weapontype_t.numweapons ; i ++ {
	oldweaponsowned [i]  = plyr.weaponowned [i] 
	}
	for i = 0 ; i < 3 ; i ++ {
	keyboxes [i]  = -1
	}
	stlib_init()
}

[c:'ST_createWidgets']
fn st_createwidgets()  {
	i := 0
	stlib_initnum(&w_ready, 44, 171, tallnum, &plyr.ammo [weaponinfo [plyr.readyweapon] .ammo] , &st_statusbaron, 3)
	w_ready.data = plyr.readyweapon
	stlib_initpercent(&w_health, 90, 171, tallnum, &plyr.health, &st_statusbaron, tallpercent)
	stlib_initbinicon(&w_armsbg, 104, 168, armsbg, &st_notdeathmatch, &st_statusbaron)
	for i = 0 ; i < 6 ; i ++ {
		stlib_initmulticon(&w_arms [i] , 111 + (i % 3) * 12, 172 + (i / 3) * 10, arms [i] , &plyr.weaponowned [i + 1] , &st_armson)
	}
	stlib_initnum(&w_frags, 138, 171, tallnum, &st_fragscount, &st_fragson, 2)
	stlib_initmulticon(&w_faces, 143, 168, faces, &st_faceindex, &st_statusbaron)
	stlib_initpercent(&w_armor, 221, 171, tallnum, &plyr.armorpoints, &st_statusbaron, tallpercent)
	stlib_initmulticon(&w_keyboxes [0] , 239, 171, keys, &keyboxes [0] , &st_statusbaron)
	stlib_initmulticon(&w_keyboxes [1] , 239, 181, keys, &keyboxes [1] , &st_statusbaron)
	stlib_initmulticon(&w_keyboxes [2] , 239, 191, keys, &keyboxes [2] , &st_statusbaron)
	stlib_initnum(&w_ammo [0] , 288, 173, shortnum, &plyr.ammo [0] , &st_statusbaron, 3)
	stlib_initnum(&w_ammo [1] , 288, 179, shortnum, &plyr.ammo [1] , &st_statusbaron, 3)
	stlib_initnum(&w_ammo [2] , 288, 191, shortnum, &plyr.ammo [2] , &st_statusbaron, 3)
	stlib_initnum(&w_ammo [3] , 288, 185, shortnum, &plyr.ammo [3] , &st_statusbaron, 3)
	stlib_initnum(&w_maxammo [0] , 314, 173, shortnum, &plyr.maxammo [0] , &st_statusbaron, 3)
	stlib_initnum(&w_maxammo [1] , 314, 179, shortnum, &plyr.maxammo [1] , &st_statusbaron, 3)
	stlib_initnum(&w_maxammo [2] , 314, 191, shortnum, &plyr.maxammo [2] , &st_statusbaron, 3)
	stlib_initnum(&w_maxammo [3] , 314, 185, shortnum, &plyr.maxammo [3] , &st_statusbaron, 3)
}

/*!*/[weak] __global ( st_stopped  = bool (true)
)

[c:'ST_Start']
fn st_start()  {
	if !st_stopped {
	st_stop()
	}
	st_initdata()
	st_createwidgets()
	st_stopped = false
}

[c:'ST_Stop']
fn st_stop()  {
	if st_stopped {
	return 
	}
	i_setpalette(w_cachelumpnum(lu_palette, 8))
	st_stopped = true
}

[c:'ST_Init']
fn st_init()  {
	st_loaddata()
	st_backing_screen = &Pixel_t(z_malloc(320 * 32 * sizeof(*st_backing_screen), 1, 0))
}

