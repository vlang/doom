// hhello
struct C.FILE {}

// fn C.memcpy(voidptr, voidptr, int)
// fn C.memmove(voidptr, voidptr, int)
// fn C.memset(voidptr, voidptr, int) int
fn C.puts(voidptr)
fn C.sscanf(voidptr, voidptr) voidptr
fn C.strcasecmp(voidptr, voidptr) int
fn C.strncasecmp(voidptr, voidptr, int) int
fn C.strcmp(voidptr, voidptr) int
fn C.strncmp(voidptr, voidptr, int) int
fn C.fopen(byteptr, byteptr) &C.FILE
fn C.fclose(&C.FILE)
fn C.ftell(&C.FILE) int

// fn C.remove (byteptr)
fn C.rename(byteptr, byteptr)
fn C.isspace(byte) int
fn C.atoi(byteptr) int

// fn C.abs(int) int
// fn C.strlen(byteptr) int

fn abs(x f64) f64 {
	if x < 0 {
		return -x
	}
	return x
}

fn fopen(p &i8, a &i8) &C.FILE {
	return C.fopen(p, a)
}

fn fclose(x &C.FILE) {
	C.fclose(x)
}

fn puts(x voidptr) {
	C.puts(x)
}

fn rename(a voidptr, b voidptr) {
	C.rename(a, b)
}

fn memset(a voidptr, b int, c u32) {
	C.memset(a, b, c)
}

fn remove(x voidptr) {
	C.remove(x)
}

fn strlen(s voidptr) int {
	return C.strlen(s)
}

fn ftell(s voidptr) int {
	return C.ftell(s)
}

// vstart

type Byte_ = i8
type Pixel_t = i8
type Dpixel_t = i16

[c: 'M_Random']
fn m_random() int

// fn def "<doom/m_random.h:29:1,col:19>col:5"

[c: 'P_Random']
fn p_random() int

// fn def "<line:32:1,col:19>col:5"

[c: 'M_ClearRandom']
fn m_clearrandom()

// fn def "<line:35:1,col:25>col:6"

[c: 'P_SubRandom']
fn p_subrandom() int

// fn def "<line:38:1,col:22>col:5"

struct Ticcmd_t {
	forwardmove i8
	sidemove    i8
	angleturn   i16
	chatchar    u8
	buttons     u8
	consistancy u8
	buttons2    u8
	inventory   int
	lookfly     u8
	arti        u8
}

enum Evtype_t {
	ev_keydown
	ev_keyup
	ev_mouse
	ev_joystick
	ev_quit
}

struct Event_t {
	type_ Evtype_t
	data1 int
	data2 int
	data3 int
	data4 int
	data5 int
}

enum Buttoncode_t {
	bt_attack
	bt_use
	bt_special
	bt_specialmask
	bt_change
	bt_weaponmask
	bt_weaponshift
	bts_pause
	bts_savegame
	bts_savemask
	bts_saveshift
}

enum Buttoncode2_t {
	bt2_lookup
	bt2_lookdown
	bt2_centerview
	bt2_invuse
	bt2_invdrop
	bt2_jump
	bt2_health
}

[c: 'D_PostEvent']
fn d_postevent(ev &Event_t)

// fn def "<line:138:1,col:30>col:6"

[c: 'D_PopEvent']
fn d_popevent() &Event_t

// fn def "<line:142:1,col:25>col:10"

type Atexit_func_t = fn ()

[c: 'I_Init']
fn i_init()

// fn def "<line:30:1,col:18>col:6"

[c: 'I_ZoneBase']
fn i_zonebase(size &int) &u8

// fn def "<line:35:1,col:28>col:7"

[c: 'I_ConsoleStdout']
fn i_consolestdout() bool

// fn def "<line:37:1,col:29>col:9"

[c: 'I_BaseTiccmd']
fn i_baseticcmd() &Ticcmd_t

// fn def "<line:48:1,col:29>col:11"

[c: 'I_Quit']
fn i_quit()

// fn def "<line:53:1,./doomtype.h:70:42>./i_system.h:53:6"

[c: 'I_Error']
[c2v_variadic]
fn i_error(error ...&i8)

// fn def "<line:55:1,./doomtype.h:68:75>./i_system.h:55:6"

[c: 'I_Tactile']
fn i_tactile(on int, off int, total int)

// fn def "<./i_system.h:57:1,col:43>col:6"

[c: 'I_Realloc']
fn i_realloc(ptr voidptr, size u32) voidptr

// fn def "<line:59:1,col:39>col:7"

[c: 'I_GetMemoryValue']
fn i_getmemoryvalue(offset u32, value voidptr, size int) bool

// fn def "<line:61:1,col:68>col:9"

[c: 'I_AtExit']
fn i_atexit(func Atexit_func_t, run_if_error bool)

// fn def "<line:67:1,col:55>col:6"

[c: 'I_BindVariables']
fn i_bindvariables()

// fn def "<line:71:1,col:26>col:6"

[c: 'I_PrintStartupBanner']
fn i_printstartupbanner(gamedescription &i8)

// fn def "<line:75:1,col:54>col:6"

[c: 'I_PrintBanner']
fn i_printbanner(text &i8)

// fn def "<line:79:1,col:36>col:6"

[c: 'I_PrintDivider']
fn i_printdivider()

// fn def "<line:83:1,col:25>col:6"

[c: 'I_GetTime']
fn i_gettime() int

// fn def "<./i_timer.h:27:1,col:20>col:5"

[c: 'I_GetTimeMS']
fn i_gettimems() int

// fn def "<line:30:1,col:22>col:5"

[c: 'I_Sleep']
fn i_sleep(ms int)

// fn def "<line:33:1,col:20>col:6"

[c: 'I_InitTimer']
fn i_inittimer()

// fn def "<line:36:1,col:22>col:6"

[c: 'I_WaitVBL']
fn i_waitvbl(count int)

// fn def "<line:39:1,col:25>col:6"

enum GameMission_t {
	doom
	doom2
	pack_tnt
	pack_plut
	pack_chex
	pack_hacx
	heretic
	hexen
	strife
	none_
}

enum GameMode_t {
	shareware
	registered
	commercial
	retail
	indetermined
}

enum GameVersion_t {
	exe_doom_1_2
	exe_doom_1_666
	exe_doom_1_7
	exe_doom_1_8
	exe_doom_1_9
	exe_hacx
	exe_ultimate
	exe_final
	exe_final2
	exe_chex
	exe_heretic_1_3
	exe_hexen_1_1
	exe_strife_1_2
	exe_strife_1_31
}

enum GameVariant_t {
	vanilla
	freedoom
	freedm
	bfgedition
}

enum Skill_t {
	sk_noitems
	sk_baby
	sk_easy
	sk_medium
	sk_hard
	sk_nightmare
}

[c: 'D_ValidGameMode']
fn d_validgamemode(mission GameMission_t, mode GameMode_t) bool

// fn def "<line:99:1,col:63>col:9"

[c: 'D_ValidGameVersion']
fn d_validgameversion(mission GameMission_t, version GameVersion_t) bool

// fn def "<line:100:1,col:72>col:9"

[c: 'D_ValidEpisodeMap']
fn d_validepisodemap(mission GameMission_t, mode GameMode_t, episode int, map_ int) bool

// fn def "<line:101:1,line:102:47>line:101:9"

[c: 'D_GetNumEpisodes']
fn d_getnumepisodes(mission GameMission_t, mode GameMode_t) int

// fn def "<line:103:1,col:60>col:5"

[c: 'D_IsEpisodeMap']
fn d_isepisodemap(mission GameMission_t) bool

// fn def "<line:104:1,col:45>col:9"

[c: 'D_GameMissionString']
fn d_gamemissionstring(mission GameMission_t) &i8

// fn def "<line:105:1,col:54>col:13"

[c: 'D_GameModeString']
fn d_gamemodestring(mode GameMode_t) &i8

// fn def "<line:106:1,col:45>col:13"

enum Gamestate_t {
	gs_level
	gs_intermission
	gs_finale
	gs_demoscreen
}

enum Gameaction_t {
	ga_nothing
	ga_loadlevel
	ga_newgame
	ga_loadgame
	ga_savegame
	ga_playdemo
	ga_completed
	ga_victory
	ga_worlddone
	ga_screenshot
}

enum Card_t {
	it_bluecard
	it_yellowcard
	it_redcard
	it_blueskull
	it_yellowskull
	it_redskull
	numcards
}

enum Weapontype_t {
	wp_fist
	wp_pistol
	wp_shotgun
	wp_chaingun
	wp_missile
	wp_plasma
	wp_bfg
	wp_chainsaw
	wp_supershotgun
	numweapons
	wp_nochange
}

enum Ammotype_t {
	am_clip
	am_shell
	am_cell
	am_misl
	numammo
	am_noammo
}

enum Powertype_t {
	pw_invulnerability
	pw_strength
	pw_invisibility
	pw_ironfeet
	pw_allmap
	pw_infrared
	numpowers
}

enum Powerduration_t {
	invulntics
	invistics
	infratics
	irontics
}

type Fixed_t = int

[c: 'FixedMul']
fn fixedmul(a int, b int) int

// fn def "<line:34:1,col:39>col:9"

[c: 'FixedDiv']
fn fixeddiv(a int, b int) int

// fn def "<line:35:1,col:39>col:9"

[weak]
__global (
	finesine [10240]int
)

[weak]
__global (
	finecosine &int
)

[weak]
__global (
	finetangent [4096]int
)

[weak]
__global (
	gammatable [5][256]u8
)

type Angle_t = int

[weak]
__global (
	tantoangle [2049]Angle_t
)

[c: 'SlopeDiv']
fn slopediv(num u32, den u32) int

// fn def "<line:92:1,col:48>col:5"

type Actionf_v = fn ()

type Actionf_p1 = fn (voidptr)

type Actionf_p2 = fn (voidptr, voidptr)

struct Actionf_t {
	acv  Actionf_v
	acp1 Actionf_p1
	acp2 Actionf_p2
}

type Think_t = Actionf_t

struct Thinker_t {
	prev     &Thinker_t
	next     &Thinker_t
	function Think_t
}

const ( // empty enum
	ml_label    = 0
	ml_things   = 1
	ml_linedefs = 2
	ml_sidedefs = 3
	ml_vertexes = 4
	ml_segs     = 5
	ml_ssectors = 6
	ml_nodes    = 7
	ml_sectors  = 8
	ml_reject   = 9
	ml_blockmap = 10
)

struct Mapvertex_t {
	x i16
	y i16
}

struct Mapsidedef_t {
	textureoffset i16
	rowoffset     i16
	toptexture    [8]i8
	bottomtexture [8]i8
	midtexture    [8]i8
	sector        i16
}

struct Maplinedef_t {
	v1      i16
	v2      i16
	flags   i16
	special i16
	tag     i16
	sidenum [2]i16
}

struct Mapsector_t {
	floorheight   i16
	ceilingheight i16
	floorpic      [8]i8
	ceilingpic    [8]i8
	lightlevel    i16
	special       i16
	tag           i16
}

struct Mapsubsector_t {
	numsegs  i16
	firstseg i16
}

struct Mapseg_t {
	v1      i16
	v2      i16
	angle   i16
	linedef i16
	side    i16
	offset  i16
}

struct Mapnode_t {
	x        i16
	y        i16
	dx       i16
	dy       i16
	bbox     [2][4]i16
	children [2]u16
}

struct Mapthing_t {
	x       i16
	y       i16
	angle   i16
	type_   i16
	options i16
}

enum Spritenum_t {
	spr_troo
	spr_shtg
	spr_pung
	spr_pisg
	spr_pisf
	spr_shtf
	spr_sht2
	spr_chgg
	spr_chgf
	spr_misg
	spr_misf
	spr_sawg
	spr_plsg
	spr_plsf
	spr_bfgg
	spr_bfgf
	spr_blud
	spr_puff
	spr_bal1
	spr_bal2
	spr_plss
	spr_plse
	spr_misl
	spr_bfs1
	spr_bfe1
	spr_bfe2
	spr_tfog
	spr_ifog
	spr_play
	spr_poss
	spr_spos
	spr_vile
	spr_fire
	spr_fatb
	spr_fbxp
	spr_skel
	spr_manf
	spr_fatt
	spr_cpos
	spr_sarg
	spr_head
	spr_bal7
	spr_boss
	spr_bos2
	spr_skul
	spr_spid
	spr_bspi
	spr_apls
	spr_apbx
	spr_cybr
	spr_pain
	spr_sswv
	spr_keen
	spr_bbrn
	spr_bosf
	spr_arm1
	spr_arm2
	spr_bar1
	spr_bexp
	spr_fcan
	spr_bon1
	spr_bon2
	spr_bkey
	spr_rkey
	spr_ykey
	spr_bsku
	spr_rsku
	spr_ysku
	spr_stim
	spr_medi
	spr_soul
	spr_pinv
	spr_pstr
	spr_pins
	spr_mega
	spr_suit
	spr_pmap
	spr_pvis
	spr_clip
	spr_ammo
	spr_rock
	spr_brok
	spr_cell
	spr_celp
	spr_shel
	spr_sbox
	spr_bpak
	spr_bfug
	spr_mgun
	spr_csaw
	spr_laun
	spr_plas
	spr_shot
	spr_sgn2
	spr_colu
	spr_smt2
	spr_gor1
	spr_pol2
	spr_pol5
	spr_pol4
	spr_pol3
	spr_pol1
	spr_pol6
	spr_gor2
	spr_gor3
	spr_gor4
	spr_gor5
	spr_smit
	spr_col1
	spr_col2
	spr_col3
	spr_col4
	spr_cand
	spr_cbra
	spr_col6
	spr_tre1
	spr_tre2
	spr_elec
	spr_ceye
	spr_fsku
	spr_col5
	spr_tblu
	spr_tgrn
	spr_tred
	spr_smbt
	spr_smgt
	spr_smrt
	spr_hdb1
	spr_hdb2
	spr_hdb3
	spr_hdb4
	spr_hdb5
	spr_hdb6
	spr_pob1
	spr_pob2
	spr_brs1
	spr_tlmp
	spr_tlp2
	numsprites
}

enum Statenum_t {
	s_null
	s_lightdone
	s_punch
	s_punchdown
	s_punchup
	s_punch1
	s_punch2
	s_punch3
	s_punch4
	s_punch5
	s_pistol
	s_pistoldown
	s_pistolup
	s_pistol1
	s_pistol2
	s_pistol3
	s_pistol4
	s_pistolflash
	s_sgun
	s_sgundown
	s_sgunup
	s_sgun1
	s_sgun2
	s_sgun3
	s_sgun4
	s_sgun5
	s_sgun6
	s_sgun7
	s_sgun8
	s_sgun9
	s_sgunflash1
	s_sgunflash2
	s_dsgun
	s_dsgundown
	s_dsgunup
	s_dsgun1
	s_dsgun2
	s_dsgun3
	s_dsgun4
	s_dsgun5
	s_dsgun6
	s_dsgun7
	s_dsgun8
	s_dsgun9
	s_dsgun10
	s_dsnr1
	s_dsnr2
	s_dsgunflash1
	s_dsgunflash2
	s_chain
	s_chaindown
	s_chainup
	s_chain1
	s_chain2
	s_chain3
	s_chainflash1
	s_chainflash2
	s_missile
	s_missiledown
	s_missileup
	s_missile1
	s_missile2
	s_missile3
	s_missileflash1
	s_missileflash2
	s_missileflash3
	s_missileflash4
	s_saw
	s_sawb
	s_sawdown
	s_sawup
	s_saw1
	s_saw2
	s_saw3
	s_plasma
	s_plasmadown
	s_plasmaup
	s_plasma1
	s_plasma2
	s_plasmaflash1
	s_plasmaflash2
	s_bfg
	s_bfgdown
	s_bfgup
	s_bfg1
	s_bfg2
	s_bfg3
	s_bfg4
	s_bfgflash1
	s_bfgflash2
	s_blood1
	s_blood2
	s_blood3
	s_puff1
	s_puff2
	s_puff3
	s_puff4
	s_tball1
	s_tball2
	s_tballx1
	s_tballx2
	s_tballx3
	s_rball1
	s_rball2
	s_rballx1
	s_rballx2
	s_rballx3
	s_plasball
	s_plasball2
	s_plasexp
	s_plasexp2
	s_plasexp3
	s_plasexp4
	s_plasexp5
	s_rocket
	s_bfgshot
	s_bfgshot2
	s_bfgland
	s_bfgland2
	s_bfgland3
	s_bfgland4
	s_bfgland5
	s_bfgland6
	s_bfgexp
	s_bfgexp2
	s_bfgexp3
	s_bfgexp4
	s_explode1
	s_explode2
	s_explode3
	s_tfog
	s_tfog01
	s_tfog02
	s_tfog2
	s_tfog3
	s_tfog4
	s_tfog5
	s_tfog6
	s_tfog7
	s_tfog8
	s_tfog9
	s_tfog10
	s_ifog
	s_ifog01
	s_ifog02
	s_ifog2
	s_ifog3
	s_ifog4
	s_ifog5
	s_play
	s_play_run1
	s_play_run2
	s_play_run3
	s_play_run4
	s_play_atk1
	s_play_atk2
	s_play_pain
	s_play_pain2
	s_play_die1
	s_play_die2
	s_play_die3
	s_play_die4
	s_play_die5
	s_play_die6
	s_play_die7
	s_play_xdie1
	s_play_xdie2
	s_play_xdie3
	s_play_xdie4
	s_play_xdie5
	s_play_xdie6
	s_play_xdie7
	s_play_xdie8
	s_play_xdie9
	s_poss_stnd
	s_poss_stnd2
	s_poss_run1
	s_poss_run2
	s_poss_run3
	s_poss_run4
	s_poss_run5
	s_poss_run6
	s_poss_run7
	s_poss_run8
	s_poss_atk1
	s_poss_atk2
	s_poss_atk3
	s_poss_pain
	s_poss_pain2
	s_poss_die1
	s_poss_die2
	s_poss_die3
	s_poss_die4
	s_poss_die5
	s_poss_xdie1
	s_poss_xdie2
	s_poss_xdie3
	s_poss_xdie4
	s_poss_xdie5
	s_poss_xdie6
	s_poss_xdie7
	s_poss_xdie8
	s_poss_xdie9
	s_poss_raise1
	s_poss_raise2
	s_poss_raise3
	s_poss_raise4
	s_spos_stnd
	s_spos_stnd2
	s_spos_run1
	s_spos_run2
	s_spos_run3
	s_spos_run4
	s_spos_run5
	s_spos_run6
	s_spos_run7
	s_spos_run8
	s_spos_atk1
	s_spos_atk2
	s_spos_atk3
	s_spos_pain
	s_spos_pain2
	s_spos_die1
	s_spos_die2
	s_spos_die3
	s_spos_die4
	s_spos_die5
	s_spos_xdie1
	s_spos_xdie2
	s_spos_xdie3
	s_spos_xdie4
	s_spos_xdie5
	s_spos_xdie6
	s_spos_xdie7
	s_spos_xdie8
	s_spos_xdie9
	s_spos_raise1
	s_spos_raise2
	s_spos_raise3
	s_spos_raise4
	s_spos_raise5
	s_vile_stnd
	s_vile_stnd2
	s_vile_run1
	s_vile_run2
	s_vile_run3
	s_vile_run4
	s_vile_run5
	s_vile_run6
	s_vile_run7
	s_vile_run8
	s_vile_run9
	s_vile_run10
	s_vile_run11
	s_vile_run12
	s_vile_atk1
	s_vile_atk2
	s_vile_atk3
	s_vile_atk4
	s_vile_atk5
	s_vile_atk6
	s_vile_atk7
	s_vile_atk8
	s_vile_atk9
	s_vile_atk10
	s_vile_atk11
	s_vile_heal1
	s_vile_heal2
	s_vile_heal3
	s_vile_pain
	s_vile_pain2
	s_vile_die1
	s_vile_die2
	s_vile_die3
	s_vile_die4
	s_vile_die5
	s_vile_die6
	s_vile_die7
	s_vile_die8
	s_vile_die9
	s_vile_die10
	s_fire1
	s_fire2
	s_fire3
	s_fire4
	s_fire5
	s_fire6
	s_fire7
	s_fire8
	s_fire9
	s_fire10
	s_fire11
	s_fire12
	s_fire13
	s_fire14
	s_fire15
	s_fire16
	s_fire17
	s_fire18
	s_fire19
	s_fire20
	s_fire21
	s_fire22
	s_fire23
	s_fire24
	s_fire25
	s_fire26
	s_fire27
	s_fire28
	s_fire29
	s_fire30
	s_smoke1
	s_smoke2
	s_smoke3
	s_smoke4
	s_smoke5
	s_tracer
	s_tracer2
	s_traceexp1
	s_traceexp2
	s_traceexp3
	s_skel_stnd
	s_skel_stnd2
	s_skel_run1
	s_skel_run2
	s_skel_run3
	s_skel_run4
	s_skel_run5
	s_skel_run6
	s_skel_run7
	s_skel_run8
	s_skel_run9
	s_skel_run10
	s_skel_run11
	s_skel_run12
	s_skel_fist1
	s_skel_fist2
	s_skel_fist3
	s_skel_fist4
	s_skel_miss1
	s_skel_miss2
	s_skel_miss3
	s_skel_miss4
	s_skel_pain
	s_skel_pain2
	s_skel_die1
	s_skel_die2
	s_skel_die3
	s_skel_die4
	s_skel_die5
	s_skel_die6
	s_skel_raise1
	s_skel_raise2
	s_skel_raise3
	s_skel_raise4
	s_skel_raise5
	s_skel_raise6
	s_fatshot1
	s_fatshot2
	s_fatshotx1
	s_fatshotx2
	s_fatshotx3
	s_fatt_stnd
	s_fatt_stnd2
	s_fatt_run1
	s_fatt_run2
	s_fatt_run3
	s_fatt_run4
	s_fatt_run5
	s_fatt_run6
	s_fatt_run7
	s_fatt_run8
	s_fatt_run9
	s_fatt_run10
	s_fatt_run11
	s_fatt_run12
	s_fatt_atk1
	s_fatt_atk2
	s_fatt_atk3
	s_fatt_atk4
	s_fatt_atk5
	s_fatt_atk6
	s_fatt_atk7
	s_fatt_atk8
	s_fatt_atk9
	s_fatt_atk10
	s_fatt_pain
	s_fatt_pain2
	s_fatt_die1
	s_fatt_die2
	s_fatt_die3
	s_fatt_die4
	s_fatt_die5
	s_fatt_die6
	s_fatt_die7
	s_fatt_die8
	s_fatt_die9
	s_fatt_die10
	s_fatt_raise1
	s_fatt_raise2
	s_fatt_raise3
	s_fatt_raise4
	s_fatt_raise5
	s_fatt_raise6
	s_fatt_raise7
	s_fatt_raise8
	s_cpos_stnd
	s_cpos_stnd2
	s_cpos_run1
	s_cpos_run2
	s_cpos_run3
	s_cpos_run4
	s_cpos_run5
	s_cpos_run6
	s_cpos_run7
	s_cpos_run8
	s_cpos_atk1
	s_cpos_atk2
	s_cpos_atk3
	s_cpos_atk4
	s_cpos_pain
	s_cpos_pain2
	s_cpos_die1
	s_cpos_die2
	s_cpos_die3
	s_cpos_die4
	s_cpos_die5
	s_cpos_die6
	s_cpos_die7
	s_cpos_xdie1
	s_cpos_xdie2
	s_cpos_xdie3
	s_cpos_xdie4
	s_cpos_xdie5
	s_cpos_xdie6
	s_cpos_raise1
	s_cpos_raise2
	s_cpos_raise3
	s_cpos_raise4
	s_cpos_raise5
	s_cpos_raise6
	s_cpos_raise7
	s_troo_stnd
	s_troo_stnd2
	s_troo_run1
	s_troo_run2
	s_troo_run3
	s_troo_run4
	s_troo_run5
	s_troo_run6
	s_troo_run7
	s_troo_run8
	s_troo_atk1
	s_troo_atk2
	s_troo_atk3
	s_troo_pain
	s_troo_pain2
	s_troo_die1
	s_troo_die2
	s_troo_die3
	s_troo_die4
	s_troo_die5
	s_troo_xdie1
	s_troo_xdie2
	s_troo_xdie3
	s_troo_xdie4
	s_troo_xdie5
	s_troo_xdie6
	s_troo_xdie7
	s_troo_xdie8
	s_troo_raise1
	s_troo_raise2
	s_troo_raise3
	s_troo_raise4
	s_troo_raise5
	s_sarg_stnd
	s_sarg_stnd2
	s_sarg_run1
	s_sarg_run2
	s_sarg_run3
	s_sarg_run4
	s_sarg_run5
	s_sarg_run6
	s_sarg_run7
	s_sarg_run8
	s_sarg_atk1
	s_sarg_atk2
	s_sarg_atk3
	s_sarg_pain
	s_sarg_pain2
	s_sarg_die1
	s_sarg_die2
	s_sarg_die3
	s_sarg_die4
	s_sarg_die5
	s_sarg_die6
	s_sarg_raise1
	s_sarg_raise2
	s_sarg_raise3
	s_sarg_raise4
	s_sarg_raise5
	s_sarg_raise6
	s_head_stnd
	s_head_run1
	s_head_atk1
	s_head_atk2
	s_head_atk3
	s_head_pain
	s_head_pain2
	s_head_pain3
	s_head_die1
	s_head_die2
	s_head_die3
	s_head_die4
	s_head_die5
	s_head_die6
	s_head_raise1
	s_head_raise2
	s_head_raise3
	s_head_raise4
	s_head_raise5
	s_head_raise6
	s_brball1
	s_brball2
	s_brballx1
	s_brballx2
	s_brballx3
	s_boss_stnd
	s_boss_stnd2
	s_boss_run1
	s_boss_run2
	s_boss_run3
	s_boss_run4
	s_boss_run5
	s_boss_run6
	s_boss_run7
	s_boss_run8
	s_boss_atk1
	s_boss_atk2
	s_boss_atk3
	s_boss_pain
	s_boss_pain2
	s_boss_die1
	s_boss_die2
	s_boss_die3
	s_boss_die4
	s_boss_die5
	s_boss_die6
	s_boss_die7
	s_boss_raise1
	s_boss_raise2
	s_boss_raise3
	s_boss_raise4
	s_boss_raise5
	s_boss_raise6
	s_boss_raise7
	s_bos2_stnd
	s_bos2_stnd2
	s_bos2_run1
	s_bos2_run2
	s_bos2_run3
	s_bos2_run4
	s_bos2_run5
	s_bos2_run6
	s_bos2_run7
	s_bos2_run8
	s_bos2_atk1
	s_bos2_atk2
	s_bos2_atk3
	s_bos2_pain
	s_bos2_pain2
	s_bos2_die1
	s_bos2_die2
	s_bos2_die3
	s_bos2_die4
	s_bos2_die5
	s_bos2_die6
	s_bos2_die7
	s_bos2_raise1
	s_bos2_raise2
	s_bos2_raise3
	s_bos2_raise4
	s_bos2_raise5
	s_bos2_raise6
	s_bos2_raise7
	s_skull_stnd
	s_skull_stnd2
	s_skull_run1
	s_skull_run2
	s_skull_atk1
	s_skull_atk2
	s_skull_atk3
	s_skull_atk4
	s_skull_pain
	s_skull_pain2
	s_skull_die1
	s_skull_die2
	s_skull_die3
	s_skull_die4
	s_skull_die5
	s_skull_die6
	s_spid_stnd
	s_spid_stnd2
	s_spid_run1
	s_spid_run2
	s_spid_run3
	s_spid_run4
	s_spid_run5
	s_spid_run6
	s_spid_run7
	s_spid_run8
	s_spid_run9
	s_spid_run10
	s_spid_run11
	s_spid_run12
	s_spid_atk1
	s_spid_atk2
	s_spid_atk3
	s_spid_atk4
	s_spid_pain
	s_spid_pain2
	s_spid_die1
	s_spid_die2
	s_spid_die3
	s_spid_die4
	s_spid_die5
	s_spid_die6
	s_spid_die7
	s_spid_die8
	s_spid_die9
	s_spid_die10
	s_spid_die11
	s_bspi_stnd
	s_bspi_stnd2
	s_bspi_sight
	s_bspi_run1
	s_bspi_run2
	s_bspi_run3
	s_bspi_run4
	s_bspi_run5
	s_bspi_run6
	s_bspi_run7
	s_bspi_run8
	s_bspi_run9
	s_bspi_run10
	s_bspi_run11
	s_bspi_run12
	s_bspi_atk1
	s_bspi_atk2
	s_bspi_atk3
	s_bspi_atk4
	s_bspi_pain
	s_bspi_pain2
	s_bspi_die1
	s_bspi_die2
	s_bspi_die3
	s_bspi_die4
	s_bspi_die5
	s_bspi_die6
	s_bspi_die7
	s_bspi_raise1
	s_bspi_raise2
	s_bspi_raise3
	s_bspi_raise4
	s_bspi_raise5
	s_bspi_raise6
	s_bspi_raise7
	s_arach_plaz
	s_arach_plaz2
	s_arach_plex
	s_arach_plex2
	s_arach_plex3
	s_arach_plex4
	s_arach_plex5
	s_cyber_stnd
	s_cyber_stnd2
	s_cyber_run1
	s_cyber_run2
	s_cyber_run3
	s_cyber_run4
	s_cyber_run5
	s_cyber_run6
	s_cyber_run7
	s_cyber_run8
	s_cyber_atk1
	s_cyber_atk2
	s_cyber_atk3
	s_cyber_atk4
	s_cyber_atk5
	s_cyber_atk6
	s_cyber_pain
	s_cyber_die1
	s_cyber_die2
	s_cyber_die3
	s_cyber_die4
	s_cyber_die5
	s_cyber_die6
	s_cyber_die7
	s_cyber_die8
	s_cyber_die9
	s_cyber_die10
	s_pain_stnd
	s_pain_run1
	s_pain_run2
	s_pain_run3
	s_pain_run4
	s_pain_run5
	s_pain_run6
	s_pain_atk1
	s_pain_atk2
	s_pain_atk3
	s_pain_atk4
	s_pain_pain
	s_pain_pain2
	s_pain_die1
	s_pain_die2
	s_pain_die3
	s_pain_die4
	s_pain_die5
	s_pain_die6
	s_pain_raise1
	s_pain_raise2
	s_pain_raise3
	s_pain_raise4
	s_pain_raise5
	s_pain_raise6
	s_sswv_stnd
	s_sswv_stnd2
	s_sswv_run1
	s_sswv_run2
	s_sswv_run3
	s_sswv_run4
	s_sswv_run5
	s_sswv_run6
	s_sswv_run7
	s_sswv_run8
	s_sswv_atk1
	s_sswv_atk2
	s_sswv_atk3
	s_sswv_atk4
	s_sswv_atk5
	s_sswv_atk6
	s_sswv_pain
	s_sswv_pain2
	s_sswv_die1
	s_sswv_die2
	s_sswv_die3
	s_sswv_die4
	s_sswv_die5
	s_sswv_xdie1
	s_sswv_xdie2
	s_sswv_xdie3
	s_sswv_xdie4
	s_sswv_xdie5
	s_sswv_xdie6
	s_sswv_xdie7
	s_sswv_xdie8
	s_sswv_xdie9
	s_sswv_raise1
	s_sswv_raise2
	s_sswv_raise3
	s_sswv_raise4
	s_sswv_raise5
	s_keenstnd
	s_commkeen
	s_commkeen2
	s_commkeen3
	s_commkeen4
	s_commkeen5
	s_commkeen6
	s_commkeen7
	s_commkeen8
	s_commkeen9
	s_commkeen10
	s_commkeen11
	s_commkeen12
	s_keenpain
	s_keenpain2
	s_brain
	s_brain_pain
	s_brain_die1
	s_brain_die2
	s_brain_die3
	s_brain_die4
	s_braineye
	s_braineyesee
	s_braineye1
	s_spawn1
	s_spawn2
	s_spawn3
	s_spawn4
	s_spawnfire1
	s_spawnfire2
	s_spawnfire3
	s_spawnfire4
	s_spawnfire5
	s_spawnfire6
	s_spawnfire7
	s_spawnfire8
	s_brainexplode1
	s_brainexplode2
	s_brainexplode3
	s_arm1
	s_arm1a
	s_arm2
	s_arm2a
	s_bar1
	s_bar2
	s_bexp
	s_bexp2
	s_bexp3
	s_bexp4
	s_bexp5
	s_bbar1
	s_bbar2
	s_bbar3
	s_bon1
	s_bon1a
	s_bon1b
	s_bon1c
	s_bon1d
	s_bon1e
	s_bon2
	s_bon2a
	s_bon2b
	s_bon2c
	s_bon2d
	s_bon2e
	s_bkey
	s_bkey2
	s_rkey
	s_rkey2
	s_ykey
	s_ykey2
	s_bskull
	s_bskull2
	s_rskull
	s_rskull2
	s_yskull
	s_yskull2
	s_stim
	s_medi
	s_soul
	s_soul2
	s_soul3
	s_soul4
	s_soul5
	s_soul6
	s_pinv
	s_pinv2
	s_pinv3
	s_pinv4
	s_pstr
	s_pins
	s_pins2
	s_pins3
	s_pins4
	s_mega
	s_mega2
	s_mega3
	s_mega4
	s_suit
	s_pmap
	s_pmap2
	s_pmap3
	s_pmap4
	s_pmap5
	s_pmap6
	s_pvis
	s_pvis2
	s_clip
	s_ammo
	s_rock
	s_brok
	s_cell
	s_celp
	s_shel
	s_sbox
	s_bpak
	s_bfug
	s_mgun
	s_csaw
	s_laun
	s_plas
	s_shot
	s_shot2
	s_colu
	s_stalag
	s_bloodytwitch
	s_bloodytwitch2
	s_bloodytwitch3
	s_bloodytwitch4
	s_deadtorso
	s_deadbottom
	s_headsonstick
	s_gibs
	s_headonastick
	s_headcandles
	s_headcandles2
	s_deadstick
	s_livestick
	s_livestick2
	s_meat2
	s_meat3
	s_meat4
	s_meat5
	s_stalagtite
	s_tallgrncol
	s_shrtgrncol
	s_tallredcol
	s_shrtredcol
	s_candlestik
	s_candelabra
	s_skullcol
	s_torchtree
	s_bigtree
	s_techpillar
	s_evileye
	s_evileye2
	s_evileye3
	s_evileye4
	s_floatskull
	s_floatskull2
	s_floatskull3
	s_heartcol
	s_heartcol2
	s_bluetorch
	s_bluetorch2
	s_bluetorch3
	s_bluetorch4
	s_greentorch
	s_greentorch2
	s_greentorch3
	s_greentorch4
	s_redtorch
	s_redtorch2
	s_redtorch3
	s_redtorch4
	s_btorchshrt
	s_btorchshrt2
	s_btorchshrt3
	s_btorchshrt4
	s_gtorchshrt
	s_gtorchshrt2
	s_gtorchshrt3
	s_gtorchshrt4
	s_rtorchshrt
	s_rtorchshrt2
	s_rtorchshrt3
	s_rtorchshrt4
	s_hangnoguts
	s_hangbnobrain
	s_hangtlookdn
	s_hangtskull
	s_hangtlookup
	s_hangtnobrain
	s_colongibs
	s_smallpool
	s_brainstem
	s_techlamp
	s_techlamp2
	s_techlamp3
	s_techlamp4
	s_tech2lamp
	s_tech2lamp2
	s_tech2lamp3
	s_tech2lamp4
	numstates
}

struct State_t {
	sprite    Spritenum_t
	frame     int
	tics      int
	action    Actionf_t
	nextstate Statenum_t
	misc1     int
	misc2     int
}

[weak]
__global (
	states [967]State_t
)

enum Mobjtype_t {
	mt_player
	mt_possessed
	mt_shotguy
	mt_vile
	mt_fire
	mt_undead
	mt_tracer
	mt_smoke
	mt_fatso
	mt_fatshot
	mt_chainguy
	mt_troop
	mt_sergeant
	mt_shadows
	mt_head
	mt_bruiser
	mt_bruisershot
	mt_knight
	mt_skull
	mt_spider
	mt_baby
	mt_cyborg
	mt_pain
	mt_wolfss
	mt_keen
	mt_bossbrain
	mt_bossspit
	mt_bosstarget
	mt_spawnshot
	mt_spawnfire
	mt_barrel
	mt_troopshot
	mt_headshot
	mt_rocket
	mt_plasma
	mt_bfg
	mt_arachplaz
	mt_puff
	mt_blood
	mt_tfog
	mt_ifog
	mt_teleportman
	mt_extrabfg
	mt_misc0
	mt_misc1
	mt_misc2
	mt_misc3
	mt_misc4
	mt_misc5
	mt_misc6
	mt_misc7
	mt_misc8
	mt_misc9
	mt_misc10
	mt_misc11
	mt_misc12
	mt_inv
	mt_misc13
	mt_ins
	mt_misc14
	mt_misc15
	mt_misc16
	mt_mega
	mt_clip
	mt_misc17
	mt_misc18
	mt_misc19
	mt_misc20
	mt_misc21
	mt_misc22
	mt_misc23
	mt_misc24
	mt_misc25
	mt_chaingun
	mt_misc26
	mt_misc27
	mt_misc28
	mt_shotgun
	mt_supershotgun
	mt_misc29
	mt_misc30
	mt_misc31
	mt_misc32
	mt_misc33
	mt_misc34
	mt_misc35
	mt_misc36
	mt_misc37
	mt_misc38
	mt_misc39
	mt_misc40
	mt_misc41
	mt_misc42
	mt_misc43
	mt_misc44
	mt_misc45
	mt_misc46
	mt_misc47
	mt_misc48
	mt_misc49
	mt_misc50
	mt_misc51
	mt_misc52
	mt_misc53
	mt_misc54
	mt_misc55
	mt_misc56
	mt_misc57
	mt_misc58
	mt_misc59
	mt_misc60
	mt_misc61
	mt_misc62
	mt_misc63
	mt_misc64
	mt_misc65
	mt_misc66
	mt_misc67
	mt_misc68
	mt_misc69
	mt_misc70
	mt_misc71
	mt_misc72
	mt_misc73
	mt_misc74
	mt_misc75
	mt_misc76
	mt_misc77
	mt_misc78
	mt_misc79
	mt_misc80
	mt_misc81
	mt_misc82
	mt_misc83
	mt_misc84
	mt_misc85
	mt_misc86
	nummobjtypes
}

struct Mobjinfo_t {
	doomednum    int
	spawnstate   int
	spawnhealth  int
	seestate     int
	seesound     int
	reactiontime int
	attacksound  int
	painstate    int
	painchance   int
	painsound    int
	meleestate   int
	missilestate int
	deathstate   int
	xdeathstate  int
	deathsound   int
	speed        int
	radius       int
	height       int
	mass         int
	damage       int
	activesound  int
	flags        int
	raisestate   int
}

[weak]
__global (
	mobjinfo [137]Mobjinfo_t
)

enum Mobjflag_t {
	mf_special
	mf_solid
	mf_shootable
	mf_nosector
	mf_noblockmap
	mf_ambush
	mf_justhit
	mf_justattacked
	mf_spawnceiling
	mf_nogravity
	mf_dropoff
	mf_pickup
	mf_noclip
	mf_slide
	mf_float
	mf_teleport
	mf_missile
	mf_dropped
	mf_shadow
	mf_noblood
	mf_corpse
	mf_infloat
	mf_countkill
	mf_countitem
	mf_skullfly
	mf_notdmatch
	mf_translation
	mf_transshift
}

struct Mobj_t {
	thinker      Thinker_t
	x            int
	y            int
	z            int
	snext        &Mobj_t
	sprev        &Mobj_t
	angle        Angle_t
	sprite       Spritenum_t
	frame        int
	bnext        &Mobj_t
	bprev        &Mobj_t
	subsector    &Subsector_t
	floorz       int
	ceilingz     int
	radius       int
	height       int
	momx         int
	momy         int
	momz         int
	validcount   int
	type_        Mobjtype_t
	info         &Mobjinfo_t
	tics         int
	state        &State_t
	flags        int
	health       int
	movedir      int
	movecount    int
	target       &Mobj_t
	reactiontime int
	threshold    int
	player       &Player_t
	lastlook     int
	spawnpoint   Mapthing_t
	tracer       &Mobj_t
}

type Grabmouse_callback_t = fn () bool

[c: 'I_InitGraphics']
fn i_initgraphics()

// fn def "<line:39:1,col:26>col:6"

[c: 'I_GraphicsCheckCommandLine']
fn i_graphicscheckcommandline()

// fn def "<line:41:1,col:37>col:6"

[c: 'I_ShutdownGraphics']
fn i_shutdowngraphics()

// fn def "<line:43:1,col:29>col:6"

[c: 'I_SetPalette']
fn i_setpalette(palette &u8)

// fn def "<line:46:1,col:33>col:6"

[c: 'I_GetPaletteIndex']
fn i_getpaletteindex(r int, g int, b int) int

// fn def "<line:47:1,col:42>col:5"

[c: 'I_UpdateNoBlit']
fn i_updatenoblit()

// fn def "<line:49:1,col:26>col:6"

[c: 'I_FinishUpdate']
fn i_finishupdate()

// fn def "<line:50:1,col:26>col:6"

[c: 'I_ReadScreen']
fn i_readscreen(scr &Pixel_t)

// fn def "<line:52:1,col:32>col:6"

[c: 'I_BeginRead']
fn i_beginread()

// fn def "<line:54:1,col:23>col:6"

[c: 'I_SetWindowTitle']
fn i_setwindowtitle(title &i8)

// fn def "<line:56:1,col:40>col:6"

[c: 'I_CheckIsScreensaver']
fn i_checkisscreensaver()

// fn def "<line:58:1,col:31>col:6"

[c: 'I_SetGrabMouseCallback']
fn i_setgrabmousecallback(func Grabmouse_callback_t)

// fn def "<line:59:1,col:54>col:6"

[c: 'I_DisplayFPSDots']
fn i_displayfpsdots(dots_on bool)

// fn def "<line:61:1,col:38>col:6"

[c: 'I_BindVideoVariables']
fn i_bindvideovariables()

// fn def "<line:62:1,col:31>col:6"

[c: 'I_InitWindowTitle']
fn i_initwindowtitle()

// fn def "<line:64:1,col:28>col:6"

[c: 'I_InitWindowIcon']
fn i_initwindowicon()

// fn def "<line:65:1,col:27>col:6"

[c: 'I_StartFrame']
fn i_startframe()

// fn def "<line:70:1,col:24>col:6"

[c: 'I_StartTic']
fn i_starttic()

// fn def "<line:75:1,col:22>col:6"

[c: 'I_EnableLoadingDisk']
fn i_enableloadingdisk(xoffs int, yoffs int)

// fn def "<line:79:1,col:46>col:6"

[weak]
__global (
	video_driver &i8
)

[weak]
__global (
	screenvisible bool
)

[weak]
__global (
	vanilla_keyboard_mapping int
)

[weak]
__global (
	screensaver_mode bool
)

[weak]
__global (
	usegamma int
)

[weak]
__global (
	I_VideoBuffer &Pixel_t
)

[weak]
__global (
	screen_width int
)

[weak]
__global (
	screen_height int
)

[weak]
__global (
	fullscreen int
)

[weak]
__global (
	aspect_ratio_correct int
)

[weak]
__global (
	integer_scaling int
)

[weak]
__global (
	vga_porch_flash int
)

[weak]
__global (
	force_software_renderer int
)

[weak]
__global (
	window_position &i8
)

[c: 'I_GetWindowPosition']
fn i_getwindowposition(x &int, y &int, w int, h int)

// fn def "<line:98:1,col:54>col:6"

[weak]
__global (
	joywait u32
)

struct Patch_t {
	width      i16
	height     i16
	leftoffset i16
	topoffset  i16
	columnofs  [8]int
}

struct Post_t {
	topdelta u8
	length   u8
}

type Column_t = Post_t

struct Vertex_t {
	x int
	y int
}

struct Degenmobj_t {
	thinker Thinker_t
	x       int
	y       int
	z       int
}

struct Sector_t {
	floorheight    int
	ceilingheight  int
	floorpic       i16
	ceilingpic     i16
	lightlevel     i16
	special        i16
	tag            i16
	soundtraversed int
	soundtarget    &Mobj_t
	blockbox       [4]int
	soundorg       Degenmobj_t
	validcount     int
	thinglist      &Mobj_t
	specialdata    voidptr
	linecount      int
	lines          &&Line_t
}

struct Side_t {
	textureoffset int
	rowoffset     int
	toptexture    i16
	bottomtexture i16
	midtexture    i16
	sector        &Sector_t
}

enum Slopetype_t {
	st_horizontal
	st_vertical
	st_positive
	st_negative
}

struct Line_t {
	v1          &Vertex_t
	v2          &Vertex_t
	dx          int
	dy          int
	flags       i16
	special     i16
	tag         i16
	sidenum     [2]i16
	bbox        [4]int
	slopetype   Slopetype_t
	frontsector &Sector_t
	backsector  &Sector_t
	validcount  int
	specialdata voidptr
}

struct Subsector_t {
	sector    &Sector_t
	numlines  i16
	firstline i16
}

struct Seg_t {
	v1          &Vertex_t
	v2          &Vertex_t
	offset      int
	angle       Angle_t
	sidedef     &Side_t
	linedef     &Line_t
	frontsector &Sector_t
	backsector  &Sector_t
}

struct Node_t {
	x        int
	y        int
	dx       int
	dy       int
	bbox     [2][4]int
	children [2]u16
}

type Lighttable_t = i8

struct Drawseg_t {
	curline          &Seg_t
	x1               int
	x2               int
	scale1           int
	scale2           int
	scalestep        int
	silhouette       int
	bsilheight       int
	tsilheight       int
	sprtopclip       &i16
	sprbottomclip    &i16
	maskedtexturecol &i16
}

struct Vissprite_t {
	prev       &Vissprite_t
	next       &Vissprite_t
	x1         int
	x2         int
	gx         int
	gy         int
	gz         int
	gzt        int
	startfrac  int
	scale      int
	xiscale    int
	texturemid int
	patch      int
	colormap   &Lighttable_t
	mobjflags  int
}

struct Spriteframe_t {
	rotate bool
	lump   [8]i16
	flip   [8]u8
}

struct Spritedef_t {
	numframes    int
	spriteframes &Spriteframe_t
}

struct Visplane_t {
	height     int
	picnum     int
	lightlevel int
	minx       int
	maxx       int
	pad1       u8
	top        [320]u8
	pad2       u8
	pad3       u8
	bottom     [320]u8
	pad4       u8
}

struct Weaponinfo_t {
	ammo       Ammotype_t
	upstate    int
	downstate  int
	readystate int
	atkstate   int
	flashstate int
}

[weak]
__global (
	weaponinfo [9]Weaponinfo_t
)

enum Psprnum_t {
	ps_weapon
	ps_flash
	numpsprites
}

struct Pspdef_t {
	state &State_t
	tics  int
	sx    int
	sy    int
}

type Sha1_context_t = Sha1_context_s
type Sha1_digest_t = [20]u8

struct Sha1_context_s {
	h0      u32
	h1      u32
	h2      u32
	h3      u32
	h4      u32
	nblocks u32
	buf     [64]u8
	count   int
}

[c: 'SHA1_Init']
fn sha1_init(context &Sha1_context_t)

// fn def "<line:33:1,col:39>col:6"

[c: 'SHA1_Update']
fn sha1_update(context &Sha1_context_t, buf &u8, len u32)

// fn def "<line:34:1,col:64>col:6"

[c: 'SHA1_Final']
fn sha1_final(digest &u8, context &Sha1_context_t)

// fn def "<line:35:1,col:62>col:6"

[c: 'SHA1_UpdateInt32']
fn sha1_updateint32(context &Sha1_context_t, val u32)

// fn def "<line:36:1,col:64>col:6"

[c: 'SHA1_UpdateString']
fn sha1_updatestring(context &Sha1_context_t, str &i8)

// fn def "<line:37:1,col:58>col:6"

type Net_module_t = Net_module_s
type Net_packet_t = Net_packet_s
type Net_addr_t = Net_addr_s

struct Net_packet_s {
	data    &u8
	len     u32
	alloced u32
	pos     u32
}

struct Net_module_s {
	InitClient     fn () bool
	InitServer     fn () bool
	SendPacket     fn (&Net_addr_t, &Net_packet_t)
	RecvPacket     fn (&&Net_addr_t, &&Net_packet_t) bool
	AddrToString   fn (&Net_addr_t, &i8, int)
	FreeAddress    fn (&Net_addr_t)
	ResolveAddress fn (&i8) &Net_addr_t
}

struct Net_addr_s {
	module_  &Net_module_t
	refcount int
	handle   voidptr
}

enum Net_protocol_t {
	net_protocol_chocolate_doom_0
	net_num_protocols
	net_protocol_unknown
}

enum Net_packet_type_t {
	net_packet_type_syn
	net_packet_type_ack
	net_packet_type_rejected
	net_packet_type_keepalive
	net_packet_type_waiting_data
	net_packet_type_gamestart
	net_packet_type_gamedata
	net_packet_type_gamedata_ack
	net_packet_type_disconnect
	net_packet_type_disconnect_ack
	net_packet_type_reliable_ack
	net_packet_type_gamedata_resend
	net_packet_type_console_message
	net_packet_type_query
	net_packet_type_query_response
	net_packet_type_launch
	net_packet_type_nat_hole_punch
}

enum Net_master_packet_type_t {
	net_master_packet_type_add
	net_master_packet_type_add_response
	net_master_packet_type_query
	net_master_packet_type_query_response
	net_master_packet_type_get_metadata
	net_master_packet_type_get_metadata_response
	net_master_packet_type_sign_start
	net_master_packet_type_sign_start_response
	net_master_packet_type_sign_end
	net_master_packet_type_sign_end_response
	net_master_packet_type_nat_hole_punch
	net_master_packet_type_nat_hole_punch_all
}

struct Net_connect_data_t {
	gamemode     int
	gamemission  int
	lowres_turn  int
	drone        int
	max_players  int
	is_freedoom  int
	wad_sha1sum  [20]Sha1_digest_t
	deh_sha1sum  [20]Sha1_digest_t
	player_class int
}

struct Net_gamesettings_t {
	ticdup           int
	extratics        int
	deathmatch       int
	episode          int
	nomonsters       int
	fast_monsters    int
	respawn_monsters int
	map_             int
	skill            int
	gameversion      int
	lowres_turn      int
	new_sync         int
	timelimit        int
	loadgame         int
	random           int
	num_players      int
	consoleplayer    int
	player_classes   [8]int
}

struct Net_ticdiff_t {
	diff u32
	cmd  Ticcmd_t
}

struct Net_full_ticcmd_t {
	latency      int
	seq          u32
	playeringame [8]bool
	cmds         [8]Net_ticdiff_t
}

struct Net_querydata_t {
	version      &i8
	server_state int
	num_players  int
	max_players  int
	gamemode     int
	gamemission  int
	description  &i8
	protocol     Net_protocol_t
}

struct Net_waitdata_t {
	num_players   int
	num_drones    int
	ready_players int
	max_players   int
	is_controller int
	consoleplayer int
	player_names  [8][30]i8
	player_addrs  [8][30]i8
	wad_sha1sum   [20]Sha1_digest_t
	deh_sha1sum   [20]Sha1_digest_t
	is_freedoom   int
}

enum Playerstate_t {
	pst_live
	pst_dead
	pst_reborn
}

enum Cheat_t {
	cf_noclip
	cf_godmode
	cf_nomomentum
}

struct Player_t {
	mo              &Mobj_t
	playerstate     Playerstate_t
	cmd             Ticcmd_t
	viewz           int
	viewheight      int
	deltaviewheight int
	bob             int
	health          int
	armorpoints     int
	armortype       int
	powers          [6]int
	cards           [6]bool
	backpack        bool
	frags           [4]int
	readyweapon     Weapontype_t
	pendingweapon   Weapontype_t
	weaponowned     [9]int
	ammo            [4]int
	maxammo         [4]int
	attackdown      int
	usedown         int
	cheats          int
	refire          int
	killcount       int
	itemcount       int
	secretcount     int
	message         &i8
	damagecount     int
	bonuscount      int
	attacker        &Mobj_t
	extralight      int
	fixedcolormap   int
	colormap        int
	psprites        [2]Pspdef_t
	didsecret       bool
}

struct Wbplayerstruct_t {
	in_     bool
	skills  int
	sitems  int
	ssecret int
	stime   int
	frags   [4]int
	score   int
}

struct Wbstartstruct_t {
	epsd      int
	didsecret bool
	last      int
	next      int
	maxkills  int
	maxitems  int
	maxsecret int
	maxfrags  int
	partime   int
	pnum      int
	plyr      [4]Wbplayerstruct_t
}

[weak]
__global (
	textureheight &int
)

[weak]
__global (
	spritewidth &int
)

[weak]
__global (
	spriteoffset &int
)

[weak]
__global (
	spritetopoffset &int
)

[weak]
__global (
	colormaps &Lighttable_t
)

[weak]
__global (
	viewwidth int
)

[weak]
__global (
	scaledviewwidth int
)

[weak]
__global (
	viewheight int
)

[weak]
__global (
	firstflat int
)

[weak]
__global (
	flattranslation &int
)

[weak]
__global (
	texturetranslation &int
)

[weak]
__global (
	firstspritelump int
)

[weak]
__global (
	lastspritelump int
)

[weak]
__global (
	numspritelumps int
)

[weak]
__global (
	numsprites int
)

[weak]
__global (
	sprites &Spritedef_t
)

[weak]
__global (
	numvertexes int
)

[weak]
__global (
	vertexes &Vertex_t
)

[weak]
__global (
	numsegs int
)

[weak]
__global (
	segs &Seg_t
)

[weak]
__global (
	numsectors int
)

[weak]
__global (
	sectors &Sector_t
)

[weak]
__global (
	numsubsectors int
)

[weak]
__global (
	subsectors &Subsector_t
)

[weak]
__global (
	numnodes int
)

[weak]
__global (
	nodes &Node_t
)

[weak]
__global (
	numlines int
)

[weak]
__global (
	lines &Line_t
)

[weak]
__global (
	numsides int
)

[weak]
__global (
	sides &Side_t
)

[weak]
__global (
	viewx int
)

[weak]
__global (
	viewy int
)

[weak]
__global (
	viewz int
)

[weak]
__global (
	viewangle Angle_t
)

[weak]
__global (
	viewplayer &Player_t
)

[weak]
__global (
	clipangle Angle_t
)

[weak]
__global (
	viewangletox [4096]int
)

[weak]
__global (
	xtoviewangle [321]Angle_t
)

[weak]
__global (
	rw_distance int
)

[weak]
__global (
	rw_normalangle Angle_t
)

[weak]
__global (
	rw_angle1 int
)

[weak]
__global (
	sscount int
)

[weak]
__global (
	floorplane &Visplane_t
)

[weak]
__global (
	ceilingplane &Visplane_t
)

[c: 'R_GetColumn']
fn r_getcolumn(tex int, col int) &u8

// fn def "<doom/r_data.h:29:1,line:32:12>line:30:1"

[c: 'R_InitData']
fn r_initdata()

// fn def "<line:36:1,col:22>col:6"

[c: 'R_PrecacheLevel']
fn r_precachelevel()

// fn def "<line:37:1,col:27>col:6"

[c: 'R_FlatNumForName']
fn r_flatnumforname(name &i8) int

// fn def "<line:43:1,col:38>col:5"

[c: 'R_TextureNumForName']
fn r_texturenumforname(name &i8) int

// fn def "<line:48:1,col:41>col:5"

[c: 'R_CheckTextureNumForName']
fn r_checktexturenumforname(name &i8) int

// fn def "<line:49:1,col:46>col:5"

[weak]
__global (
	viewcos int
)

[weak]
__global (
	viewsin int
)

[weak]
__global (
	viewwindowx int
)

[weak]
__global (
	viewwindowy int
)

[weak]
__global (
	centerx int
)

[weak]
__global (
	centery int
)

[weak]
__global (
	centerxfrac int
)

[weak]
__global (
	centeryfrac int
)

[weak]
__global (
	projection int
)

[weak]
__global (
	validcount int
)

[weak]
__global (
	linecount int
)

[weak]
__global (
	loopcount int
)

[weak]
__global (
	scalelight [16][48]&Lighttable_t
)

[weak]
__global (
	scalelightfixed [48]&Lighttable_t
)

[weak]
__global (
	zlight [16][128]&Lighttable_t
)

[weak]
__global (
	extralight int
)

[weak]
__global (
	fixedcolormap &Lighttable_t
)

[weak]
__global (
	detailshift int
)

[weak]
__global (
	colfunc fn ()
)

[weak]
__global (
	transcolfunc fn ()
)

[weak]
__global (
	basecolfunc fn ()
)

[weak]
__global (
	fuzzcolfunc fn ()
)

[weak]
__global (
	spanfunc fn ()
)

[c: 'R_PointOnSide']
fn r_pointonside(x int, y int, node &Node_t) int

// fn def "<line:102:1,line:106:16>line:103:1"

[c: 'R_PointOnSegSide']
fn r_pointonsegside(x int, y int, line &Seg_t) int

// fn def "<line:108:1,line:112:15>line:109:1"

[c: 'R_PointToAngle']
fn r_pointtoangle(x int, y int) Angle_t

// fn def "<line:114:1,line:117:13>line:115:1"

[c: 'R_PointToAngle2']
fn r_pointtoangle2(x1 int, y1 int, x2 int, y2 int) Angle_t

// fn def "<line:119:1,line:124:14>line:120:1"

[c: 'R_PointToDist']
fn r_pointtodist(x int, y int) int

// fn def "<line:126:1,line:129:13>line:127:1"

[c: 'R_ScaleFromGlobalAngle']
fn r_scalefromglobalangle(visangle Angle_t) int

// fn def "<line:132:1,col:49>col:9"

[c: 'R_PointInSubsector']
fn r_pointinsubsector(x int, y int) &Subsector_t

// fn def "<line:134:1,line:137:13>line:135:1"

[c: 'R_AddPointToBox']
fn r_addpointtobox(x int, y int, box &int)

// fn def "<line:139:1,line:143:16>line:140:1"

[c: 'R_RenderPlayerView']
fn r_renderplayerview(player &Player_t)

// fn def "<line:152:1,col:42>col:6"

[c: 'R_Init']
fn r_init()

// fn def "<line:155:1,col:18>col:6"

[c: 'R_SetViewSize']
fn r_setviewsize(blocks int, detail int)

// fn def "<line:158:1,col:43>col:6"

[weak]
__global (
	curline &Seg_t
)

[weak]
__global (
	sidedef &Side_t
)

[weak]
__global (
	linedef &Line_t
)

[weak]
__global (
	frontsector &Sector_t
)

[weak]
__global (
	backsector &Sector_t
)

[weak]
__global (
	rw_x int
)

[weak]
__global (
	rw_stopx int
)

[weak]
__global (
	segtextured bool
)

[weak]
__global (
	markfloor bool
)

[weak]
__global (
	markceiling bool
)

[weak]
__global (
	skymap bool
)

[weak]
__global (
	drawsegs [256]Drawseg_t
)

[weak]
__global (
	ds_p &Drawseg_t
)

[weak]
__global (
	hscalelight &&Lighttable_t
)

[weak]
__global (
	vscalelight &&Lighttable_t
)

[weak]
__global (
	dscalelight &&Lighttable_t
)

type Drawfunc_t = fn (int, int)

[c: 'R_ClearClipSegs']
fn r_clearclipsegs()

// fn def "<line:54:1,col:27>col:6"

[c: 'R_ClearDrawSegs']
fn r_cleardrawsegs()

// fn def "<line:55:1,col:27>col:6"

[c: 'R_RenderBSPNode']
fn r_renderbspnode(bspnum int)

// fn def "<line:58:1,col:33>col:6"

[c: 'R_RenderMaskedSegRange']
fn r_rendermaskedsegrange(ds &Drawseg_t, x1 int, x2 int)

// fn def "<doom/r_segs.h:26:1,line:30:11>line:27:1"

[weak]
__global (
	lastopening &i16
)

type Planefunction_t = fn (int, int)

[weak]
__global (
	floorfunc Planefunction_t
)

[weak]
__global (
	ceilingfunc_t Planefunction_t
)

[weak]
__global (
	floorclip [320]i16
)

[weak]
__global (
	ceilingclip [320]i16
)

[weak]
__global (
	yslope [200]int
)

[weak]
__global (
	distscale [320]int
)

[c: 'R_InitPlanes']
fn r_initplanes()

// fn def "<line:43:1,col:24>col:6"

[c: 'R_ClearPlanes']
fn r_clearplanes()

// fn def "<line:44:1,col:25>col:6"

[c: 'R_MapPlane']
fn r_mapplane(y int, x1 int, x2 int)

// fn def "<line:46:1,line:50:11>line:47:1"

[c: 'R_MakeSpans']
fn r_makespans(x int, t1 int, b1 int, t2 int, b2 int)

// fn def "<line:52:1,line:58:11>line:53:1"

[c: 'R_DrawPlanes']
fn r_drawplanes()

// fn def "<line:60:1,col:24>col:6"

[c: 'R_FindPlane']
fn r_findplane(height int, picnum int, lightlevel int) &Visplane_t

// fn def "<line:62:1,line:66:19>line:63:1"

[c: 'R_CheckPlane']
fn r_checkplane(pl &Visplane_t, start int, stop int) &Visplane_t

// fn def "<line:68:1,line:72:13>line:69:1"

[weak]
__global (
	vissprites [128]Vissprite_t
)

[weak]
__global (
	vissprite_p &Vissprite_t
)

[weak]
__global (
	vsprsortedhead Vissprite_t
)

[weak]
__global (
	negonearray [320]i16
)

[weak]
__global (
	screenheightarray [320]i16
)

[weak]
__global (
	mfloorclip &i16
)

[weak]
__global (
	mceilingclip &i16
)

[weak]
__global (
	spryscale int
)

[weak]
__global (
	sprtopscreen int
)

[weak]
__global (
	pspritescale int
)

[weak]
__global (
	pspriteiscale int
)

[c: 'R_DrawMaskedColumn']
fn r_drawmaskedcolumn(column &Column_t)

// fn def "<line:46:1,col:42>col:6"

[c: 'R_SortVisSprites']
fn r_sortvissprites()

// fn def "<line:49:1,col:28>col:6"

[c: 'R_AddSprites']
fn r_addsprites(sec &Sector_t)

// fn def "<line:51:1,col:33>col:6"

[c: 'R_AddPSprites']
fn r_addpsprites()

// fn def "<line:52:1,col:25>col:6"

[c: 'R_DrawSprites']
fn r_drawsprites()

// fn def "<line:53:1,col:25>col:6"

[c: 'R_InitSprites']
fn r_initsprites(namelist &&u8)

// fn def "<line:54:1,col:41>col:6"

[c: 'R_ClearSprites']
fn r_clearsprites()

// fn def "<line:55:1,col:26>col:6"

[c: 'R_DrawMasked']
fn r_drawmasked()

// fn def "<line:56:1,col:24>col:6"

[c: 'R_ClipVisSprite']
fn r_clipvissprite(vis &Vissprite_t, xl int, xh int)

// fn def "<line:58:1,line:62:12>line:59:1"

[weak]
__global (
	dc_colormap &Lighttable_t
)

[weak]
__global (
	dc_x int
)

[weak]
__global (
	dc_yl int
)

[weak]
__global (
	dc_yh int
)

[weak]
__global (
	dc_iscale int
)

[weak]
__global (
	dc_texturemid int
)

[weak]
__global (
	dc_source &u8
)

[c: 'R_DrawColumn']
fn r_drawcolumn()

// fn def "<line:40:1,col:25>col:7"

[c: 'R_DrawColumnLow']
fn r_drawcolumnlow()

// fn def "<line:41:1,col:28>col:7"

[c: 'R_DrawFuzzColumn']
fn r_drawfuzzcolumn()

// fn def "<line:44:1,col:29>col:7"

[c: 'R_DrawFuzzColumnLow']
fn r_drawfuzzcolumnlow()

// fn def "<line:45:1,col:32>col:7"

[c: 'R_DrawTranslatedColumn']
fn r_drawtranslatedcolumn()

// fn def "<line:50:1,col:34>col:6"

[c: 'R_DrawTranslatedColumnLow']
fn r_drawtranslatedcolumnlow()

// fn def "<line:51:1,col:37>col:6"

[c: 'R_VideoErase']
fn r_videoerase(ofs u32, count int)

// fn def "<line:53:1,line:56:14>line:54:1"

[weak]
__global (
	ds_y int
)

[weak]
__global (
	ds_x1 int
)

[weak]
__global (
	ds_x2 int
)

[weak]
__global (
	ds_colormap &Lighttable_t
)

[weak]
__global (
	ds_xfrac int
)

[weak]
__global (
	ds_yfrac int
)

[weak]
__global (
	ds_xstep int
)

[weak]
__global (
	ds_ystep int
)

[weak]
__global (
	ds_source &u8
)

[weak]
__global (
	translationtables &u8
)

[weak]
__global (
	dc_translation &u8
)

[c: 'R_DrawSpan']
fn r_drawspan()

// fn def "<line:78:1,col:23>col:7"

[c: 'R_DrawSpanLow']
fn r_drawspanlow()

// fn def "<line:81:1,col:26>col:7"

[c: 'R_InitBuffer']
fn r_initbuffer(width int, height int)

// fn def "<line:84:1,line:87:15>line:85:1"

[c: 'R_InitTranslationTables']
fn r_inittranslationtables()

// fn def "<line:92:1,col:35>col:6"

[c: 'R_FillBackScreen']
fn r_fillbackscreen()

// fn def "<line:97:1,col:28>col:6"

[c: 'R_DrawViewBorder']
fn r_drawviewborder()

// fn def "<line:100:1,col:28>col:6"

[weak]
__global (
	thinkercap Thinker_t
)

[c: 'P_InitThinkers']
fn p_initthinkers()

// fn def "<line:70:1,col:26>col:6"

[c: 'P_AddThinker']
fn p_addthinker(thinker &Thinker_t)

// fn def "<line:71:1,col:38>col:6"

[c: 'P_RemoveThinker']
fn p_removethinker(thinker &Thinker_t)

// fn def "<line:72:1,col:41>col:6"

[c: 'P_SetupPsprites']
fn p_setuppsprites(curplayer &Player_t)

// fn def "<line:78:1,col:42>col:6"

[c: 'P_MovePsprites']
fn p_movepsprites(curplayer &Player_t)

// fn def "<line:79:1,col:41>col:6"

[c: 'P_DropWeapon']
fn p_dropweapon(player &Player_t)

// fn def "<line:80:1,col:36>col:6"

[c: 'P_PlayerThink']
fn p_playerthink(player &Player_t)

// fn def "<line:86:1,col:37>col:6"

[weak]
__global (
	itemrespawnque [128]Mapthing_t
)

[weak]
__global (
	itemrespawntime [128]int
)

[weak]
__global (
	iquehead int
)

[weak]
__global (
	iquetail int
)

[c: 'P_RespawnSpecials']
fn p_respawnspecials()

// fn def "<line:104:1,col:29>col:6"

[c: 'P_SpawnMobj']
fn p_spawnmobj(x int, y int, z int, type_ Mobjtype_t) &Mobj_t

// fn def "<line:106:1,line:111:19>line:107:1"

[c: 'P_RemoveMobj']
fn p_removemobj(th &Mobj_t)

// fn def "<line:113:1,col:31>col:7"

[c: 'P_SubstNullMobj']
fn p_substnullmobj(th &Mobj_t) &Mobj_t

// fn def "<line:114:1,col:36>col:9"

[c: 'P_SetMobjState']
fn p_setmobjstate(mobj &Mobj_t, state Statenum_t) bool

// fn def "<line:115:1,col:55>col:9"

[c: 'P_MobjThinker']
fn p_mobjthinker(mobj &Mobj_t)

// fn def "<line:116:1,col:34>col:7"

[c: 'P_SpawnPuff']
fn p_spawnpuff(x int, y int, z int)

// fn def "<line:118:1,col:50>col:6"

[c: 'P_SpawnBlood']
fn p_spawnblood(x int, y int, z int, damage int)

// fn def "<line:119:1,col:64>col:7"

[c: 'P_SpawnMissile']
fn p_spawnmissile(source &Mobj_t, dest &Mobj_t, type_ Mobjtype_t) &Mobj_t

// fn def "<line:120:1,col:70>col:9"

[c: 'P_SpawnPlayerMissile']
fn p_spawnplayermissile(source &Mobj_t, type_ Mobjtype_t)

// fn def "<line:121:1,col:59>col:6"

[c: 'P_NoiseAlert']
fn p_noisealert(target &Mobj_t, emmiter &Mobj_t)

// fn def "<line:127:1,col:51>col:6"

struct Divline_t {
	x  int
	y  int
	dx int
	dy int
}

struct Intercept_t {
	frac    int
	isaline bool
}

[weak]
__global (
	intercepts [189]Intercept_t
)

[weak]
__global (
	intercept_p &Intercept_t
)

type Traverser_t = fn (&Intercept_t) bool

[c: 'P_AproxDistance']
fn p_aproxdistance(dx int, dy int) int

// fn def "<line:162:1,col:48>col:9"

[c: 'P_PointOnLineSide']
fn p_pointonlineside(x int, y int, line &Line_t) int

// fn def "<line:163:1,col:59>col:6"

[c: 'P_PointOnDivlineSide']
fn p_pointondivlineside(x int, y int, line &Divline_t) int

// fn def "<line:164:1,col:65>col:6"

[c: 'P_MakeDivline']
fn p_makedivline(li &Line_t, dl &Divline_t)

// fn def "<line:165:1,col:47>col:7"

[c: 'P_InterceptVector']
fn p_interceptvector(v2 &Divline_t, v1 &Divline_t) int

// fn def "<line:166:1,col:56>col:9"

[c: 'P_BoxOnLineSide']
fn p_boxonlineside(tmbox &int, ld &Line_t) int

// fn def "<line:167:1,col:49>col:6"

[weak]
__global (
	opentop int
)

[weak]
__global (
	openbottom int
)

[weak]
__global (
	openrange int
)

[weak]
__global (
	lowfloor int
)

[c: 'P_LineOpening']
fn p_lineopening(linedef &Line_t)

// fn def "<line:174:1,col:37>col:7"

[c: 'P_BlockLinesIterator']
fn p_blocklinesiterator(x int, y int, func fn (&Line_t) bool) bool

// fn def "<line:176:1,col:69>col:9"

[c: 'P_BlockThingsIterator']
fn p_blockthingsiterator(x int, y int, func fn (&Mobj_t) bool) bool

// fn def "<line:177:1,col:70>col:9"

[weak]
__global (
	trace Divline_t
)

[c: 'P_PathTraverse']
fn p_pathtraverse(x1 int, y1 int, x2 int, y2 int, flags int, trav fn (&Intercept_t) bool) bool

// fn def "<line:185:1,line:192:34>line:186:1"

[c: 'P_UnsetThingPosition']
fn p_unsetthingposition(thing &Mobj_t)

// fn def "<line:194:1,col:41>col:6"

[c: 'P_SetThingPosition']
fn p_setthingposition(thing &Mobj_t)

// fn def "<line:195:1,col:39>col:6"

[weak]
__global (
	floatok bool
)

[weak]
__global (
	tmfloorz int
)

[weak]
__global (
	tmceilingz int
)

[weak]
__global (
	ceilingline &Line_t
)

[weak]
__global (
	spechit [20]&Line_t
)

[weak]
__global (
	numspechit int
)

[c: 'P_CheckPosition']
fn p_checkposition(thing &Mobj_t, x int, y int) bool

// fn def "<line:225:1,col:61>col:9"

[c: 'P_TryMove']
fn p_trymove(thing &Mobj_t, x int, y int) bool

// fn def "<line:226:1,col:55>col:9"

[c: 'P_TeleportMove']
fn p_teleportmove(thing &Mobj_t, x int, y int) bool

// fn def "<line:227:1,col:60>col:9"

[c: 'P_SlideMove']
fn p_slidemove(mo &Mobj_t)

// fn def "<line:228:1,col:29>col:6"

[c: 'P_CheckSight']
fn p_checksight(t1 &Mobj_t, t2 &Mobj_t) bool

// fn def "<line:229:1,col:45>col:9"

[c: 'P_UseLines']
fn p_uselines(player &Player_t)

// fn def "<line:230:1,col:35>col:7"

[c: 'P_ChangeSector']
fn p_changesector(sector &Sector_t, crunch bool) bool

// fn def "<line:232:1,col:57>col:9"

[weak]
__global (
	linetarget &Mobj_t
)

[c: 'P_AimLineAttack']
fn p_aimlineattack(t1 &Mobj_t, angle Angle_t, distance int) int

// fn def "<line:236:1,line:240:20>line:237:1"

[c: 'P_LineAttack']
fn p_lineattack(t1 &Mobj_t, angle Angle_t, distance int, slope int, damage int)

// fn def "<line:242:1,line:248:15>line:243:1"

[c: 'P_RadiusAttack']
fn p_radiusattack(spot &Mobj_t, source &Mobj_t, damage int)

// fn def "<line:250:1,line:254:15>line:251:1"

[weak]
__global (
	rejectmatrix &u8
)

[weak]
__global (
	blockmaplump &i16
)

[weak]
__global (
	blockmap &i16
)

[weak]
__global (
	bmapwidth int
)

[weak]
__global (
	bmapheight int
)

[weak]
__global (
	bmaporgx int
)

[weak]
__global (
	bmaporgy int
)

[weak]
__global (
	blocklinks &&Mobj_t
)

[weak]
__global (
	maxammo [4]int
)

[weak]
__global (
	clipammo [4]int
)

[c: 'P_TouchSpecialThing']
fn p_touchspecialthing(special &Mobj_t, toucher &Mobj_t)

// fn def "<line:278:1,line:281:19>line:279:1"

[c: 'P_DamageMobj']
fn p_damagemobj(target &Mobj_t, inflictor &Mobj_t, source &Mobj_t, damage int)

// fn def "<line:283:1,line:288:15>line:284:1"

[weak]
__global (
	levelTimer bool
)

[weak]
__global (
	levelTimeCount int
)

[c: 'P_InitPicAnims']
fn p_initpicanims()

// fn def "<line:39:1,col:29>col:9"

[c: 'P_SpawnSpecials']
fn p_spawnspecials()

// fn def "<line:42:1,col:30>col:9"

[c: 'P_UpdateSpecials']
fn p_updatespecials()

// fn def "<line:45:1,col:31>col:9"

[c: 'P_UseSpecialLine']
fn p_usespecialline(thing &Mobj_t, line &Line_t, side int) bool

// fn def "<line:48:1,line:52:13>line:49:1"

[c: 'P_ShootSpecialLine']
fn p_shootspecialline(thing &Mobj_t, line &Line_t)

// fn def "<line:54:1,line:57:16>line:55:1"

[c: 'P_CrossSpecialLine']
fn p_crossspecialline(linenum int, side int, thing &Mobj_t)

// fn def "<line:59:1,line:63:17>line:60:1"

[c: 'P_PlayerInSpecialSector']
fn p_playerinspecialsector(player &Player_t)

// fn def "<line:65:1,col:50>col:9"

[c: 'twoSided']
fn twosided(sector int, line int) int

// fn def "<line:67:1,line:70:13>line:68:1"

[c: 'getSector']
fn getsector(currentSector int, line int, side int) &Sector_t

// fn def "<line:72:1,line:76:13>line:73:1"

[c: 'getSide']
fn getside(currentSector int, line int, side int) &Side_t

// fn def "<line:78:1,line:82:13>line:79:1"

[c: 'P_FindLowestFloorSurrounding']
fn p_findlowestfloorsurrounding(sec &Sector_t) int

// fn def "<line:84:1,col:51>col:9"

[c: 'P_FindHighestFloorSurrounding']
fn p_findhighestfloorsurrounding(sec &Sector_t) int

// fn def "<line:85:1,col:52>col:9"

[c: 'P_FindNextHighestFloor']
fn p_findnexthighestfloor(sec &Sector_t, currentheight int) int

// fn def "<line:87:1,line:90:22>line:88:1"

[c: 'P_FindLowestCeilingSurrounding']
fn p_findlowestceilingsurrounding(sec &Sector_t) int

// fn def "<line:92:1,col:53>col:9"

[c: 'P_FindHighestCeilingSurrounding']
fn p_findhighestceilingsurrounding(sec &Sector_t) int

// fn def "<line:93:1,col:54>col:9"

[c: 'P_FindSectorFromLineTag']
fn p_findsectorfromlinetag(line &Line_t, start int) int

// fn def "<line:95:1,line:98:14>line:96:1"

[c: 'P_FindMinSurroundingLight']
fn p_findminsurroundinglight(sector &Sector_t, max int) int

// fn def "<line:100:1,line:103:12>line:101:1"

[c: 'getNextSector']
fn getnextsector(line &Line_t, sec &Sector_t) &Sector_t

// fn def "<line:105:1,line:108:17>line:106:1"

[c: 'EV_DoDonut']
fn ev_dodonut(line &Line_t) int

// fn def "<line:114:1,col:28>col:5"

struct Fireflicker_t {
	thinker  Thinker_t
	sector   &Sector_t
	count    int
	maxlight int
	minlight int
}

struct Lightflash_t {
	thinker  Thinker_t
	sector   &Sector_t
	count    int
	maxlight int
	minlight int
	maxtime  int
	mintime  int
}

struct Strobe_t {
	thinker    Thinker_t
	sector     &Sector_t
	count      int
	minlight   int
	maxlight   int
	darktime   int
	brighttime int
}

struct Glow_t {
	thinker   Thinker_t
	sector    &Sector_t
	minlight  int
	maxlight  int
	direction int
}

[c: 'P_SpawnFireFlicker']
fn p_spawnfireflicker(sector &Sector_t)

// fn def "<line:178:1,col:45>col:9"

[c: 'T_LightFlash']
fn t_lightflash(flash &Lightflash_t)

// fn def "<line:179:1,col:42>col:9"

[c: 'P_SpawnLightFlash']
fn p_spawnlightflash(sector &Sector_t)

// fn def "<line:180:1,col:44>col:9"

[c: 'T_StrobeFlash']
fn t_strobeflash(flash &Strobe_t)

// fn def "<line:181:1,col:39>col:9"

[c: 'P_SpawnStrobeFlash']
fn p_spawnstrobeflash(sector &Sector_t, fastOrSlow int, inSync int)

// fn def "<line:183:1,line:187:15>line:184:1"

[c: 'EV_StartLightStrobing']
fn ev_startlightstrobing(line &Line_t)

// fn def "<line:189:1,col:43>col:9"

[c: 'EV_TurnTagLightsOff']
fn ev_turntaglightsoff(line &Line_t)

// fn def "<line:190:1,col:41>col:9"

[c: 'EV_LightTurnOn']
fn ev_lightturnon(line &Line_t, bright int)

// fn def "<line:192:1,line:195:15>line:193:1"

[c: 'T_Glow']
fn t_glow(g &Glow_t)

// fn def "<line:197:1,col:25>col:9"

[c: 'P_SpawnGlowingLight']
fn p_spawnglowinglight(sector &Sector_t)

// fn def "<line:198:1,col:45>col:9"

struct Switchlist_t {
	name1   [9]i8
	name2   [9]i8
	episode i16
}

enum Bwhere_e {
	top
	middle
	bottom
}

struct Button_t {
	line     &Line_t
	where    Bwhere_e
	btexture int
	btimer   int
	soundorg &Degenmobj_t
}

[weak]
__global (
	buttonlist [16]Button_t
)

[c: 'P_ChangeSwitchTexture']
fn p_changeswitchtexture(line &Line_t, useAgain int)

// fn def "<line:248:1,line:251:17>line:249:1"

[c: 'P_InitSwitchList']
fn p_initswitchlist()

// fn def "<line:253:1,col:27>col:6"

enum Plat_e {
	up
	down
	waiting
	in_stasis
}

enum Plattype_e {
	perpetualraise
	downwaitupstay
	raiseandchange
	raisetonearestandchange
	blazedwus
}

struct Plat_t {
	thinker   Thinker_t
	sector    &Sector_t
	speed     int
	low       int
	high      int
	wait      int
	count     int
	status    Plat_e
	oldstatus Plat_e
	crush     bool
	tag       int
	type_     Plattype_e
}

[weak]
__global (
	activeplats [30]&Plat_t
)

[c: 'T_PlatRaise']
fn t_platraise(plat &Plat_t)

// fn def "<line:308:1,col:33>col:9"

[c: 'EV_DoPlat']
fn ev_doplat(line &Line_t, type_ Plattype_e, amount int) int

// fn def "<line:310:1,line:314:15>line:311:1"

[c: 'P_AddActivePlat']
fn p_addactiveplat(plat &Plat_t)

// fn def "<line:316:1,col:37>col:9"

[c: 'P_RemoveActivePlat']
fn p_removeactiveplat(plat &Plat_t)

// fn def "<line:317:1,col:40>col:9"

[c: 'EV_StopPlat']
fn ev_stopplat(line &Line_t)

// fn def "<line:318:1,col:33>col:9"

[c: 'P_ActivateInStasis']
fn p_activateinstasis(tag int)

// fn def "<line:319:1,col:35>col:9"

enum Vldoor_e {
	vld_normal
	vld_close30thenopen
	vld_close
	vld_open
	vld_raisein5mins
	vld_blazeraise
	vld_blazeopen
	vld_blazeclose
}

struct Vldoor_t {
	thinker      Thinker_t
	type_        Vldoor_e
	sector       &Sector_t
	topheight    int
	speed        int
	direction    int
	topwait      int
	topcountdown int
}

[c: 'EV_VerticalDoor']
fn ev_verticaldoor(line &Line_t, thing &Mobj_t)

// fn def "<line:364:1,line:367:17>line:365:1"

[c: 'EV_DoDoor']
fn ev_dodoor(line &Line_t, type_ Vldoor_e) int

// fn def "<line:369:1,line:372:17>line:370:1"

[c: 'EV_DoLockedDoor']
fn ev_dolockeddoor(line &Line_t, type_ Vldoor_e, thing &Mobj_t) int

// fn def "<line:374:1,line:378:17>line:375:1"

[c: 'T_VerticalDoor']
fn t_verticaldoor(door &Vldoor_t)

// fn def "<line:380:1,col:39>col:9"

[c: 'P_SpawnDoorCloseIn30']
fn p_spawndoorclosein30(sec &Sector_t)

// fn def "<line:381:1,col:44>col:9"

[c: 'P_SpawnDoorRaiseIn5Mins']
fn p_spawndoorraisein5mins(sec &Sector_t, secnum int)

// fn def "<line:383:1,line:386:15>line:384:1"

enum Ceiling_e {
	lowertofloor
	raisetohighest
	lowerandcrush
	crushandraise
	fastcrushandraise
	silentcrushandraise
}

struct Ceiling_t {
	thinker      Thinker_t
	type_        Ceiling_e
	sector       &Sector_t
	bottomheight int
	topheight    int
	speed        int
	crush        bool
	direction    int
	tag          int
	olddirection int
}

[weak]
__global (
	activeceilings [30]&Ceiling_t
)

[c: 'EV_DoCeiling']
fn ev_doceiling(line &Line_t, type_ Ceiling_e) int

// fn def "<line:519:1,line:522:18>line:520:1"

[c: 'T_MoveCeiling']
fn t_moveceiling(ceiling &Ceiling_t)

// fn def "<line:524:1,col:42>col:9"

[c: 'P_AddActiveCeiling']
fn p_addactiveceiling(c &Ceiling_t)

// fn def "<line:525:1,col:40>col:9"

[c: 'P_RemoveActiveCeiling']
fn p_removeactiveceiling(c &Ceiling_t)

// fn def "<line:526:1,col:43>col:9"

[c: 'EV_CeilingCrushStop']
fn ev_ceilingcrushstop(line &Line_t) int

// fn def "<line:527:1,col:37>col:5"

[c: 'P_ActivateInStasisCeiling']
fn p_activateinstasisceiling(line &Line_t)

// fn def "<line:528:1,col:47>col:9"

enum Floor_e {
	lowerfloor
	lowerfloortolowest
	turbolower
	raisefloor
	raisefloortonearest
	raisetotexture
	lowerandchange
	raisefloor24
	raisefloor24andchange
	raisefloorcrush
	raisefloorturbo
	donutraise
	raisefloor512
}

enum Stair_e {
	build8
	turbo16
}

struct Floormove_t {
	thinker         Thinker_t
	type_           Floor_e
	crush           bool
	sector          &Sector_t
	direction       int
	newspecial      int
	texture         i16
	floordestheight int
	speed           int
}

enum Result_e {
	ok
	crushed
	pastdest
}

[c: 'T_MovePlane']
fn t_moveplane(sector &Sector_t, speed int, dest int, crush bool, floorOrCeiling int, direction int) Result_e

// fn def "<line:607:1,line:614:18>line:608:1"

[c: 'EV_BuildStairs']
fn ev_buildstairs(line &Line_t, type_ Stair_e) int

// fn def "<line:616:1,line:619:16>line:617:1"

[c: 'EV_DoFloor']
fn ev_dofloor(line &Line_t, floortype Floor_e) int

// fn def "<line:621:1,line:624:21>line:622:1"

[c: 'T_MoveFloor']
fn t_movefloor(floor &Floormove_t)

// fn def "<line:626:1,col:37>col:6"

[c: 'EV_Teleport']
fn ev_teleport(line &Line_t, side int, thing &Mobj_t) int

// fn def "<line:631:1,line:635:17>line:632:1"

type Sfxinfo_t = Sfxinfo_struct

struct Sfxinfo_struct {
	tagname     &i8
	name        [9]i8
	priority    int
	link        &Sfxinfo_t
	pitch       int
	volume      int
	usefulness  int
	lumpnum     int
	numchannels int
	driver_data voidptr
}

struct Musicinfo_t {
	name    &i8
	lumpnum int
	data    voidptr
	handle  voidptr
}

enum Snddevice_t {
	snddevice_none
	snddevice_pcspeaker
	snddevice_adlib
	snddevice_sb
	snddevice_pas
	snddevice_gus
	snddevice_waveblaster
	snddevice_soundcanvas
	snddevice_genmidi
	snddevice_awe32
	snddevice_cd
}

struct Sound_module_t {
	sound_devices     &Snddevice_t
	num_sound_devices int
	Init              fn (bool) bool
	Shutdown          fn ()
	GetSfxLumpNum     fn (&Sfxinfo_t) int
	Update            fn ()
	UpdateSoundParams fn (int, int, int)
	StartSound        fn (&Sfxinfo_t, int, int, int, int) int
	StopSound         fn (int)
	SoundIsPlaying    fn (int) bool
	CacheSounds       fn (&Sfxinfo_t, int)
}

[c: 'I_InitSound']
fn i_initsound(use_sfx_prefix bool)

// fn def "<line:154:1,col:40>col:6"

[c: 'I_ShutdownSound']
fn i_shutdownsound()

// fn def "<line:155:1,col:26>col:6"

[c: 'I_GetSfxLumpNum']
fn i_getsfxlumpnum(sfxinfo &Sfxinfo_t) int

// fn def "<line:156:1,col:39>col:5"

[c: 'I_UpdateSound']
fn i_updatesound()

// fn def "<line:157:1,col:24>col:6"

[c: 'I_UpdateSoundParams']
fn i_updatesoundparams(channel int, vol int, sep int)

// fn def "<line:158:1,col:55>col:6"

[c: 'I_StartSound']
fn i_startsound(sfxinfo &Sfxinfo_t, channel int, vol int, sep int, pitch int) int

// fn def "<line:159:1,col:78>col:5"

[c: 'I_StopSound']
fn i_stopsound(channel int)

// fn def "<line:160:1,col:29>col:6"

[c: 'I_SoundIsPlaying']
fn i_soundisplaying(channel int) bool

// fn def "<line:161:1,col:37>col:9"

[c: 'I_PrecacheSounds']
fn i_precachesounds(sounds &Sfxinfo_t, num_sounds int)

// fn def "<line:162:1,col:56>col:6"

struct Music_module_t {
	sound_devices     &Snddevice_t
	num_sound_devices int
	Init              fn () bool
	Shutdown          fn ()
	SetMusicVolume    fn (int)
	PauseMusic        fn ()
	ResumeMusic       fn ()
	RegisterSong      fn (voidptr, int) voidptr
	UnRegisterSong    fn (voidptr)
	PlaySong          fn (voidptr, bool)
	StopSong          fn ()
	MusicIsPlaying    fn () bool
	Poll              fn ()
}

[c: 'I_InitMusic']
fn i_initmusic()

// fn def "<line:219:1,col:22>col:6"

[c: 'I_ShutdownMusic']
fn i_shutdownmusic()

// fn def "<line:220:1,col:26>col:6"

[c: 'I_SetMusicVolume']
fn i_setmusicvolume(volume int)

// fn def "<line:221:1,col:33>col:6"

[c: 'I_PauseSong']
fn i_pausesong()

// fn def "<line:222:1,col:22>col:6"

[c: 'I_ResumeSong']
fn i_resumesong()

// fn def "<line:223:1,col:23>col:6"

[c: 'I_RegisterSong']
fn i_registersong(data voidptr, len int) voidptr

// fn def "<line:224:1,col:41>col:7"

[c: 'I_UnRegisterSong']
fn i_unregistersong(handle voidptr)

// fn def "<line:225:1,col:35>col:6"

[c: 'I_PlaySong']
fn i_playsong(handle voidptr, looping bool)

// fn def "<line:226:1,col:46>col:6"

[c: 'I_StopSong']
fn i_stopsong()

// fn def "<line:227:1,col:21>col:6"

[c: 'I_MusicIsPlaying']
fn i_musicisplaying() bool

// fn def "<line:228:1,col:30>col:9"

[weak]
__global (
	snd_sfxdevice int
)

[weak]
__global (
	snd_musicdevice int
)

[weak]
__global (
	snd_samplerate int
)

[weak]
__global (
	snd_cachesize int
)

[weak]
__global (
	snd_maxslicetime_ms int
)

[weak]
__global (
	snd_musiccmd &i8
)

[weak]
__global (
	snd_pitchshift int
)

[c: 'I_BindSoundVariables']
fn i_bindsoundvariables()

// fn def "<line:238:1,col:31>col:6"

enum Opl_driver_ver_t {
	opl_doom1_1_666
	opl_doom2_1_666
	opl_doom_1_9
}

[c: 'I_SetOPLDriverVer']
fn i_setopldriverver(ver Opl_driver_ver_t)

// fn def "<line:247:1,col:44>col:6"

enum Musicenum_t {
	mus_none
	mus_e1m1
	mus_e1m2
	mus_e1m3
	mus_e1m4
	mus_e1m5
	mus_e1m6
	mus_e1m7
	mus_e1m8
	mus_e1m9
	mus_e2m1
	mus_e2m2
	mus_e2m3
	mus_e2m4
	mus_e2m5
	mus_e2m6
	mus_e2m7
	mus_e2m8
	mus_e2m9
	mus_e3m1
	mus_e3m2
	mus_e3m3
	mus_e3m4
	mus_e3m5
	mus_e3m6
	mus_e3m7
	mus_e3m8
	mus_e3m9
	mus_inter
	mus_intro
	mus_bunny
	mus_victor
	mus_introa
	mus_runnin
	mus_stalks
	mus_countd
	mus_betwee
	mus_doom
	mus_the_da
	mus_shawn
	mus_ddtblu
	mus_in_cit
	mus_dead
	mus_stlks2
	mus_theda2
	mus_doom2
	mus_ddtbl2
	mus_runni2
	mus_dead2
	mus_stlks3
	mus_romero
	mus_shawn2
	mus_messag
	mus_count2
	mus_ddtbl3
	mus_ampie
	mus_theda3
	mus_adrian
	mus_messg2
	mus_romer2
	mus_tense
	mus_shawn3
	mus_openin
	mus_evil
	mus_ultima
	mus_read_m
	mus_dm2ttl
	mus_dm2int
	nummusic
}

enum Sfxenum_t {
	sfx_none
	sfx_pistol
	sfx_shotgn
	sfx_sgcock
	sfx_dshtgn
	sfx_dbopn
	sfx_dbcls
	sfx_dbload
	sfx_plasma
	sfx_bfg
	sfx_sawup
	sfx_sawidl
	sfx_sawful
	sfx_sawhit
	sfx_rlaunc
	sfx_rxplod
	sfx_firsht
	sfx_firxpl
	sfx_pstart
	sfx_pstop
	sfx_doropn
	sfx_dorcls
	sfx_stnmov
	sfx_swtchn
	sfx_swtchx
	sfx_plpain
	sfx_dmpain
	sfx_popain
	sfx_vipain
	sfx_mnpain
	sfx_pepain
	sfx_slop
	sfx_itemup
	sfx_wpnup
	sfx_oof
	sfx_telept
	sfx_posit1
	sfx_posit2
	sfx_posit3
	sfx_bgsit1
	sfx_bgsit2
	sfx_sgtsit
	sfx_cacsit
	sfx_brssit
	sfx_cybsit
	sfx_spisit
	sfx_bspsit
	sfx_kntsit
	sfx_vilsit
	sfx_mansit
	sfx_pesit
	sfx_sklatk
	sfx_sgtatk
	sfx_skepch
	sfx_vilatk
	sfx_claw
	sfx_skeswg
	sfx_pldeth
	sfx_pdiehi
	sfx_podth1
	sfx_podth2
	sfx_podth3
	sfx_bgdth1
	sfx_bgdth2
	sfx_sgtdth
	sfx_cacdth
	sfx_skldth
	sfx_brsdth
	sfx_cybdth
	sfx_spidth
	sfx_bspdth
	sfx_vildth
	sfx_kntdth
	sfx_pedth
	sfx_skedth
	sfx_posact
	sfx_bgact
	sfx_dmact
	sfx_bspact
	sfx_bspwlk
	sfx_vilact
	sfx_noway
	sfx_barexp
	sfx_punch
	sfx_hoof
	sfx_metal
	sfx_chgun
	sfx_tink
	sfx_bdopn
	sfx_bdcls
	sfx_itmbk
	sfx_flame
	sfx_flamst
	sfx_getpow
	sfx_bospit
	sfx_boscub
	sfx_bossit
	sfx_bospn
	sfx_bosdth
	sfx_manatk
	sfx_mandth
	sfx_sssit
	sfx_ssdth
	sfx_keenpn
	sfx_keendt
	sfx_skeact
	sfx_skesit
	sfx_skeatk
	sfx_radio
	numsfx
}

[c: 'S_Init']
fn s_init(sfxVolume int, musicVolume int)

// fn def "<doom/s_sound.h:32:1,col:43>col:6"

[c: 'S_Shutdown']
fn s_shutdown()

// fn def "<line:37:1,col:21>col:6"

[c: 'S_Start']
fn s_start()

// fn def "<line:47:1,col:18>col:6"

[c: 'S_StartSound']
fn s_startsound(origin voidptr, sound_id int)

// fn def "<line:54:1,col:45>col:6"

[c: 'S_StopSound']
fn s_stopsound(origin &Mobj_t)

// fn def "<line:57:1,col:32>col:6"

[c: 'S_StartMusic']
fn s_startmusic(music_id int)

// fn def "<line:61:1,col:31>col:6"

[c: 'S_ChangeMusic']
fn s_changemusic(music_id int, looping int)

// fn def "<line:65:1,col:45>col:6"

[c: 'S_MusicPlaying']
fn s_musicplaying() bool

// fn def "<line:68:1,col:28>col:9"

[c: 'S_StopMusic']
fn s_stopmusic()

// fn def "<line:71:1,col:22>col:6"

[c: 'S_PauseSound']
fn s_pausesound()

// fn def "<line:74:1,col:23>col:6"

[c: 'S_ResumeSound']
fn s_resumesound()

// fn def "<line:75:1,col:24>col:6"

[c: 'S_UpdateSounds']
fn s_updatesounds(listener &Mobj_t)

// fn def "<line:81:1,col:37>col:6"

[c: 'S_SetMusicVolume']
fn s_setmusicvolume(volume int)

// fn def "<line:83:1,col:33>col:6"

[c: 'S_SetSfxVolume']
fn s_setsfxvolume(volume int)

// fn def "<line:84:1,col:31>col:6"

[weak]
__global (
	snd_channels int
)

[c: 'G_DeathMatchSpawnPlayer']
fn g_deathmatchspawnplayer(playernum int)

// fn def "<doom/g_game.h:31:1,col:44>col:6"

[c: 'G_InitNew']
fn g_initnew(skill Skill_t, episode int, map_ int)

// fn def "<line:33:1,col:52>col:6"

[c: 'G_DeferedInitNew']
fn g_deferedinitnew(skill Skill_t, episode int, map_ int)

// fn def "<line:38:1,col:59>col:6"

[c: 'G_DeferedPlayDemo']
fn g_deferedplaydemo(demo &i8)

// fn def "<line:40:1,col:41>col:6"

[c: 'G_LoadGame']
fn g_loadgame(name &i8)

// fn def "<line:44:1,col:28>col:6"

[c: 'G_DoLoadGame']
fn g_doloadgame()

// fn def "<line:46:1,col:24>col:6"

[c: 'G_SaveGame']
fn g_savegame(slot int, description &i8)

// fn def "<line:49:1,col:45>col:6"

[c: 'G_RecordDemo']
fn g_recorddemo(name &i8)

// fn def "<line:52:1,col:30>col:6"

[c: 'G_BeginRecording']
fn g_beginrecording()

// fn def "<line:54:1,col:28>col:6"

[c: 'G_PlayDemo']
fn g_playdemo(name &i8)

// fn def "<line:56:1,col:28>col:6"

[c: 'G_TimeDemo']
fn g_timedemo(name &i8)

// fn def "<line:57:1,col:28>col:6"

[c: 'G_CheckDemoStatus']
fn g_checkdemostatus() bool

// fn def "<line:58:1,col:32>col:9"

[c: 'G_ExitLevel']
fn g_exitlevel()

// fn def "<line:60:1,col:23>col:6"

[c: 'G_SecretExitLevel']
fn g_secretexitlevel()

// fn def "<line:61:1,col:29>col:6"

[c: 'G_WorldDone']
fn g_worlddone()

// fn def "<line:63:1,col:23>col:6"

[c: 'G_BuildTiccmd']
fn g_buildticcmd(cmd &Ticcmd_t, maketic int)

// fn def "<line:67:1,col:47>col:6"

[c: 'G_Ticker']
fn g_ticker()

// fn def "<line:69:1,col:20>col:6"

[c: 'G_Responder']
fn g_responder(ev &Event_t) bool

// fn def "<line:70:1,col:33>col:9"

[c: 'G_ScreenShot']
fn g_screenshot()

// fn def "<line:72:1,col:24>col:6"

[c: 'G_DrawMouseSpeedBox']
fn g_drawmousespeedbox()

// fn def "<line:74:1,col:30>col:6"

[c: 'G_VanillaVersionCode']
fn g_vanillaversioncode() int

// fn def "<line:75:1,col:30>col:5"

[weak]
__global (
	vanilla_savegame_limit int
)

[weak]
__global (
	vanilla_demo_limit int
)

type Netgame_startup_callback_t = fn (int, int) bool

struct Loop_interface_t {
	ProcessEvents fn ()
	BuildTiccmd   fn (&Ticcmd_t, int)
	RunTic        fn (&Ticcmd_t, &bool)
	RunMenu       fn ()
}

[c: 'D_RegisterLoopCallbacks']
fn d_registerloopcallbacks(i &Loop_interface_t)

// fn def "<line:52:1,col:49>col:6"

[c: 'NetUpdate']
fn netupdate()

// fn def "<line:55:1,col:21>col:6"

[c: 'D_QuitNetGame']
fn d_quitnetgame()

// fn def "<line:59:1,col:25>col:6"

[c: 'TryRunTics']
fn tryruntics()

// fn def "<line:62:1,col:22>col:6"

[c: 'D_StartGameLoop']
fn d_startgameloop()

// fn def "<line:65:1,col:26>col:6"

[c: 'D_InitNetGame']
fn d_initnetgame(connect_data &Net_connect_data_t) bool

// fn def "<line:69:1,col:55>col:9"

[c: 'D_StartNetGame']
fn d_startnetgame(settings &Net_gamesettings_t, callback Netgame_startup_callback_t)

// fn def "<line:74:1,line:75:56>line:74:6"

[weak]
__global (
	singletics bool
)

[weak]
__global (
	gametic int
)

[weak]
__global (
	ticdup int
)

[c: 'D_NonVanillaRecord']
fn d_nonvanillarecord(conditional bool, feature &i8) bool

// fn def "<line:81:1,col:68>col:9"

[c: 'D_NonVanillaPlayback']
fn d_nonvanillaplayback(conditional bool, lumpnum int, feature &i8) bool

// fn def "<line:84:1,line:85:49>line:84:9"

[weak]
__global (
	nomonsters bool
)

[weak]
__global (
	respawnparm bool
)

[weak]
__global (
	fastparm bool
)

[weak]
__global (
	devparm bool
)

[weak]
__global (
	gamemode GameMode_t
)

[weak]
__global (
	gamemission GameMission_t
)

[weak]
__global (
	gameversion GameVersion_t
)

[weak]
__global (
	gamevariant GameVariant_t
)

[weak]
__global (
	gamedescription &i8
)

[weak]
__global (
	modifiedgame bool
)

[weak]
__global (
	startskill Skill_t
)

[weak]
__global (
	startepisode int
)

[weak]
__global (
	startmap int
)

[weak]
__global (
	startloadgame int
)

[weak]
__global (
	autostart bool
)

[weak]
__global (
	gameskill Skill_t
)

[weak]
__global (
	gameepisode int
)

[weak]
__global (
	gamemap int
)

[weak]
__global (
	timelimit int
)

[weak]
__global (
	respawnmonsters bool
)

[weak]
__global (
	netgame bool
)

[weak]
__global (
	deathmatch int
)

[weak]
__global (
	sfxVolume int
)

[weak]
__global (
	musicVolume int
)

[weak]
__global (
	snd_MusicDevice int
)

[weak]
__global (
	snd_SfxDevice int
)

[weak]
__global (
	snd_DesiredMusicDevice int
)

[weak]
__global (
	snd_DesiredSfxDevice int
)

[weak]
__global (
	statusbaractive bool
)

[weak]
__global (
	automapactive bool
)

[weak]
__global (
	menuactive bool
)

[weak]
__global (
	paused bool
)

[weak]
__global (
	viewactive bool
)

[weak]
__global (
	nodrawers bool
)

[weak]
__global (
	testcontrols bool
)

[weak]
__global (
	testcontrols_mousespeed int
)

[weak]
__global (
	viewangleoffset int
)

[weak]
__global (
	consoleplayer int
)

[weak]
__global (
	displayplayer int
)

[weak]
__global (
	totalkills int
)

[weak]
__global (
	totalitems int
)

[weak]
__global (
	totalsecret int
)

[weak]
__global (
	levelstarttic int
)

[weak]
__global (
	leveltime int
)

[weak]
__global (
	usergame bool
)

[weak]
__global (
	demoplayback bool
)

[weak]
__global (
	demorecording bool
)

[weak]
__global (
	lowres_turn bool
)

[weak]
__global (
	singledemo bool
)

[weak]
__global (
	gamestate Gamestate_t
)

[weak]
__global (
	players [4]Player_t
)

[weak]
__global (
	playeringame [4]bool
)

[weak]
__global (
	deathmatchstarts [10]Mapthing_t
)

[weak]
__global (
	deathmatch_p &Mapthing_t
)

[weak]
__global (
	playerstarts [4]Mapthing_t
)

[weak]
__global (
	playerstartsingame [4]bool
)

[weak]
__global (
	wminfo Wbstartstruct_t
)

[weak]
__global (
	savegamedir &i8
)

[weak]
__global (
	precache bool
)

[weak]
__global (
	wipegamestate Gamestate_t
)

[weak]
__global (
	mouseSensitivity int
)

[weak]
__global (
	bodyqueslot int
)

[weak]
__global (
	skyflatnum int
)

[weak]
__global (
	rndindex int
)

[weak]
__global (
	netcmds &Ticcmd_t
)

fn kekw() {
	puts(c'KEKW')
}

enum Dirtype_t {
	di_east
	di_northeast
	di_north
	di_northwest
	di_west
	di_southwest
	di_south
	di_southeast
	di_nodir
	numdirs
}

const (
	opposite = [Dirtype_t.di_west, Dirtype_t.di_southwest, Dirtype_t.di_south, Dirtype_t.di_southeast,
		Dirtype_t.di_east, Dirtype_t.di_northeast, Dirtype_t.di_north, Dirtype_t.di_northwest,
		Dirtype_t.di_nodir]!
)

const (
	diags = [Dirtype_t.di_northwest, Dirtype_t.di_northeast, Dirtype_t.di_southwest,
		Dirtype_t.di_southeast]!
)

[c: 'A_Fall']
fn a_fall(actor &Mobj_t)

// fn def "<line:78:1,col:27>col:6"

[weak]
__global (
	soundtarget &Mobj_t
)

[export: 'P_RecursiveSound']
fn p_recursivesound(sec &Sector_t, soundblocks int) {
	i := 0
	check := &Line_t(0)
	other := &Sector_t(0)
	if sec.validcount == validcount && sec.soundtraversed <= soundblocks + 1 {
		return
	}
	sec.validcount = validcount
	sec.soundtraversed = soundblocks + 1
	sec.soundtarget = soundtarget
	for i = 0; i < sec.linecount; i++ {
		check = sec.lines[i]
		if !(check.flags & 4) {
			continue
		}
		p_lineopening(check)
		if openrange <= 0 {
			continue
		}
		if sides[check.sidenum[0]].sector == sec {
			other = sides[check.sidenum[1]].sector
		} else { // 3
			other = sides[check.sidenum[0]].sector
		}
		if check.flags & 64 {
			if !soundblocks {
				p_recursivesound(other, 1)
			}
		} else { // 3
			p_recursivesound(other, soundblocks)
		}
	}
}

[export: 'P_NoiseAlert']
fn p_noisealert(target &Mobj_t, emmiter &Mobj_t) {
	soundtarget = target
	validcount++
	p_recursivesound(emmiter.subsector.sector, 0)
}

[export: 'P_CheckMeleeRange']
fn p_checkmeleerange(actor &Mobj_t) bool {
	pl := &Mobj_t(0)
	dist := 0
	range := 0
	if !actor.target {
		return false
	}
	pl = actor.target
	dist = p_aproxdistance(pl.x - actor.x, pl.y - actor.y)
	if gameversion <= GameVersion_t.exe_doom_1_2 {
		range = (64 * (1 << 16))
	} else { // 3
		range = (64 * (1 << 16)) - 20 * (1 << 16) + pl.info.radius
	}
	if dist >= range {
		return false
	}
	if !p_checksight(actor, actor.target) {
		return false
	}
	return true
}

[export: 'P_CheckMissileRange']
fn p_checkmissilerange(actor &Mobj_t) bool {
	dist := 0
	if !p_checksight(actor, actor.target) {
		return false
	}
	if actor.flags & Mobjflag_t.mf_justhit {
		actor.flags &= ~Mobjflag_t.mf_justhit
		return true
	}
	if actor.reactiontime {
		return false
	}
	dist = p_aproxdistance(actor.x - actor.target.x, actor.y - actor.target.y) - 64 * (1 << 16)
	if !actor.info.meleestate {
		dist -= 128 * (1 << 16)
	}
	dist >>= 16
	if actor.type_ == Mobjtype_t.mt_vile {
		if dist > 14 * 64 {
			return false
		}
	}
	if actor.type_ == Mobjtype_t.mt_undead {
		if dist < 196 {
			return false
		}
		dist >>= 1
	}
	if actor.type_ == Mobjtype_t.mt_cyborg || actor.type_ == Mobjtype_t.mt_spider
		|| actor.type_ == Mobjtype_t.mt_skull {
		dist >>= 1
	}
	if dist > 200 {
		dist = 200
	}
	if actor.type_ == Mobjtype_t.mt_cyborg && dist > 160 {
		dist = 160
	}
	if p_random() < dist {
		return false
	}
	return true
}

const (
	xspeed = [(1 << 16), 47000, 0, -47000, -(1 << 16), -47000, 0, 47000]!
)

const (
	yspeed = [0, 47000, (1 << 16), 47000, 0, -47000, -(1 << 16), -47000]!
)

[export: 'P_Move']
fn p_move(actor &Mobj_t) bool {
	tryx := 0
	tryy := 0
	ld := &Line_t(0)
	try_ok := false
	good := false
	if actor.movedir == Dirtype_t.di_nodir {
		return false
	}
	if u32(actor.movedir) >= 8 {
		i_error(c'Weird actor->movedir!')
	}
	tryx = actor.x + actor.info.speed * xspeed[actor.movedir]
	tryy = actor.y + actor.info.speed * yspeed[actor.movedir]
	try_ok = p_trymove(actor, tryx, tryy)
	if !try_ok {
		if actor.flags & Mobjflag_t.mf_float && floatok {
			if actor.z < tmfloorz {
				actor.z += ((1 << 16) * 4)
			} else { // 3
				actor.z -= ((1 << 16) * 4)
			}
			actor.flags |= Mobjflag_t.mf_infloat
			return true
		}
		if !numspechit {
			return false
		}
		actor.movedir = Dirtype_t.di_nodir
		good = false
		for numspechit-- {
			ld = spechit[numspechit]
			if p_usespecialline(actor, ld, 0) {
				good = true
			}
		}
		return good
	} else {
		actor.flags &= ~Mobjflag_t.mf_infloat
	}
	if !(actor.flags & Mobjflag_t.mf_float) {
		actor.z = actor.floorz
	}
	return true
}

[export: 'P_TryWalk']
fn p_trywalk(actor &Mobj_t) bool {
	if !p_move(actor) {
		return false
	}
	actor.movecount = p_random() & 15
	return true
}

[export: 'P_NewChaseDir']
fn p_newchasedir(actor &Mobj_t) {
	deltax := 0
	deltay := 0
	d := [3]Dirtype_t{}
	tdir := 0
	olddir := 0
	turnaround := 0
	if !actor.target {
		i_error(c'P_NewChaseDir: called with no target')
	}
	olddir = actor.movedir
	turnaround = opposite[olddir]
	deltax = actor.target.x - actor.x
	deltay = actor.target.y - actor.y
	if deltax > 10 * (1 << 16) {
		d[1] = Dirtype_t.di_east
	} else if deltax < -10 * (1 << 16) {
		d[1] = Dirtype_t.di_west
	} else { // 3
		d[1] = Dirtype_t.di_nodir
	}
	if deltay < -10 * (1 << 16) {
		d[2] = Dirtype_t.di_south
	} else if deltay > 10 * (1 << 16) {
		d[2] = Dirtype_t.di_north
	} else { // 3
		d[2] = Dirtype_t.di_nodir
	}
	if d[1] != Dirtype_t.di_nodir && d[2] != Dirtype_t.di_nodir {
		actor.movedir = diags[((deltay < 0) << 1) + (deltax > 0)]
		if actor.movedir != int(turnaround) && p_trywalk(actor) {
			return
		}
	}
	if p_random() > 200 || abs(deltay) > abs(deltax) {
		tdir = d[1]
		d[1] = d[2]
		d[2] = tdir
	}
	if d[1] == turnaround {
		d[1] = Dirtype_t.di_nodir
	}
	if d[2] == turnaround {
		d[2] = Dirtype_t.di_nodir
	}
	if d[1] != Dirtype_t.di_nodir {
		actor.movedir = d[1]
		if p_trywalk(actor) {
			return
		}
	}
	if d[2] != Dirtype_t.di_nodir {
		actor.movedir = d[2]
		if p_trywalk(actor) {
			return
		}
	}
	if olddir != Dirtype_t.di_nodir {
		actor.movedir = olddir
		if p_trywalk(actor) {
			return
		}
	}
	if p_random() & 1 {
		for tdir = Dirtype_t.di_east; tdir <= Dirtype_t.di_southeast; tdir++ {
			if tdir != int(turnaround) {
				actor.movedir = tdir
				if p_trywalk(actor) {
					return
				}
			}
		}
	} else {
		for tdir = Dirtype_t.di_southeast; tdir != (Dirtype_t.di_east - 1); tdir-- {
			if tdir != int(turnaround) {
				actor.movedir = tdir
				if p_trywalk(actor) {
					return
				}
			}
		}
	}
	if turnaround != Dirtype_t.di_nodir {
		actor.movedir = turnaround
		if p_trywalk(actor) {
			return
		}
	}
	actor.movedir = Dirtype_t.di_nodir
}

[export: 'P_LookForPlayers']
fn p_lookforplayers(actor &Mobj_t, allaround bool) bool {
	c := 0
	stop := 0
	player := &Player_t(0)
	an := 0
	dist := 0
	c = 0
	stop = (actor.lastlook - 1) & 3
	for ; true; actor.lastlook = (actor.lastlook + 1) & 3 {
		if !playeringame[actor.lastlook] {
			continue
		}
		if c++ == 2 || actor.lastlook == stop {
			return false
		}
		player = &players[actor.lastlook]
		if player.health <= 0 {
			continue
		}
		if !p_checksight(actor, player.mo) {
			continue
		}
		if !allaround {
			an = r_pointtoangle2(actor.x, actor.y, player.mo.x, player.mo.y) - actor.angle
			if an > 1073741824 && an < 3221225472 {
				dist = p_aproxdistance(player.mo.x - actor.x, player.mo.y - actor.y)
				if dist > (64 * (1 << 16)) {
					continue
				}
			}
		}
		actor.target = player.mo
		return true
	}
	return false
}

[export: 'A_KeenDie']
fn a_keendie(mo &Mobj_t) {
	th := &Thinker_t(0)
	mo2 := &Mobj_t(0)
	junk := Line_t{}
	a_fall(mo)
	for th = thinkercap.next; th != &thinkercap; th = th.next {
		if th.function.acp1 != Actionf_p1(p_mobjthinker) {
			continue
		}
		mo2 = &Mobj_t(th)
		if mo2 != mo && mo2.type_ == mo.type_ && mo2.health > 0 {
			return
		}
	}
	junk.tag = 666
	ev_dodoor(&junk, Vldoor_e.vld_open)
}

[export: 'A_Look']
fn a_look(actor &Mobj_t) {
	targ := &Mobj_t(0)
	actor.threshold = 0
	targ = actor.subsector.sector.soundtarget
	if targ && (targ.flags & Mobjflag_t.mf_shootable) {
		actor.target = targ
		if actor.flags & Mobjflag_t.mf_ambush {
			if p_checksight(actor, actor.target) {
				goto seeyou
			}
		} else { // 3
			goto seeyou
		}
	}
	if !p_lookforplayers(actor, false) {
		return
	}
	seeyou:
	if actor.info.seesound {
		sound := 0
		x := int(Sfxenum_t.sfx_posit1)
		match Sfxenum_t(actor.info.seesound) {
			.sfx_posit1, .sfx_posit2, .sfx_posit3 {
				sound = x + p_random() % 3
			}
			.sfx_bgsit1, .sfx_bgsit2 {
				sound = x + p_random() % 2
			}
			else {
				sound = actor.info.seesound
			}
		}
		if actor.type_ == Mobjtype_t.mt_spider || actor.type_ == Mobjtype_t.mt_cyborg {
			s_startsound((voidptr(0)), sound)
		} else { // 3
			s_startsound(actor, sound)
		}
	}
	p_setmobjstate(actor, actor.info.seestate)
}

[export: 'A_Chase']
fn a_chase(actor &Mobj_t) {
	delta := 0
	if actor.reactiontime {
		actor.reactiontime--
	}
	if actor.threshold {
		if gameversion > GameVersion_t.exe_doom_1_2 && (!actor.target || actor.target.health <= 0) {
			actor.threshold = 0
		} else { // 3
			actor.threshold--
		}
	}
	if actor.movedir < 8 {
		actor.angle &= (7 << 29)
		delta = actor.angle - (actor.movedir << 29)
		if delta > 0 {
			actor.angle -= 1073741824 / 2
		} else if delta < 0 {
			actor.angle += 1073741824 / 2
		}
	}
	if !actor.target || !(actor.target.flags & Mobjflag_t.mf_shootable) {
		if p_lookforplayers(actor, true) {
			return
		}
		p_setmobjstate(actor, actor.info.spawnstate)
		return
	}
	if actor.flags & Mobjflag_t.mf_justattacked {
		actor.flags &= ~Mobjflag_t.mf_justattacked
		if gameskill != Skill_t.sk_nightmare && !fastparm {
			p_newchasedir(actor)
		}
		return
	}
	if actor.info.meleestate && p_checkmeleerange(actor) {
		if actor.info.attacksound {
			s_startsound(actor, actor.info.attacksound)
		}
		p_setmobjstate(actor, actor.info.meleestate)
		return
	}
	if actor.info.missilestate {
		if gameskill < Skill_t.sk_nightmare && !fastparm && actor.movecount {
			goto nomissile
		}
		if !p_checkmissilerange(actor) {
			goto nomissile
		}
		p_setmobjstate(actor, actor.info.missilestate)
		actor.flags |= Mobjflag_t.mf_justattacked
		return
	}
	nomissile:
	if netgame && !actor.threshold && !p_checksight(actor, actor.target) {
		if p_lookforplayers(actor, true) {
			return
		}
	}
	if actor.movecount-- < 0 || !p_move(actor) {
		p_newchasedir(actor)
	}
	if actor.info.activesound && p_random() < 3 {
		s_startsound(actor, actor.info.activesound)
	}
}

[export: 'A_FaceTarget']
fn a_facetarget(actor &Mobj_t) {
	if !actor.target {
		return
	}
	actor.flags &= ~Mobjflag_t.mf_ambush
	actor.angle = r_pointtoangle2(actor.x, actor.y, actor.target.x, actor.target.y)
	if actor.target.flags & Mobjflag_t.mf_shadow {
		actor.angle += p_subrandom() << 21
	}
}

[export: 'A_PosAttack']
fn a_posattack(actor &Mobj_t) {
	angle := 0
	damage := 0
	slope := 0
	if !actor.target {
		return
	}
	a_facetarget(actor)
	angle = actor.angle
	slope = p_aimlineattack(actor, angle, (32 * 64 * (1 << 16)))
	s_startsound(actor, Sfxenum_t.sfx_pistol)
	angle += p_subrandom() << 20
	damage = ((p_random() % 5) + 1) * 3
	p_lineattack(actor, angle, (32 * 64 * (1 << 16)), slope, damage)
}

[export: 'A_SPosAttack']
fn a_sposattack(actor &Mobj_t) {
	i := 0
	angle := 0
	bangle := 0
	damage := 0
	slope := 0
	if !actor.target {
		return
	}
	s_startsound(actor, Sfxenum_t.sfx_shotgn)
	a_facetarget(actor)
	bangle = actor.angle
	slope = p_aimlineattack(actor, bangle, (32 * 64 * (1 << 16)))
	for i = 0; i < 3; i++ {
		angle = bangle + (p_subrandom() << 20)
		damage = ((p_random() % 5) + 1) * 3
		p_lineattack(actor, angle, (32 * 64 * (1 << 16)), slope, damage)
	}
}

[export: 'A_CPosAttack']
fn a_cposattack(actor &Mobj_t) {
	angle := 0
	bangle := 0
	damage := 0
	slope := 0
	if !actor.target {
		return
	}
	s_startsound(actor, Sfxenum_t.sfx_shotgn)
	a_facetarget(actor)
	bangle = actor.angle
	slope = p_aimlineattack(actor, bangle, (32 * 64 * (1 << 16)))
	angle = bangle + (p_subrandom() << 20)
	damage = ((p_random() % 5) + 1) * 3
	p_lineattack(actor, angle, (32 * 64 * (1 << 16)), slope, damage)
}

[export: 'A_CPosRefire']
fn a_cposrefire(actor &Mobj_t) {
	a_facetarget(actor)
	if p_random() < 40 {
		return
	}
	if !actor.target || actor.target.health <= 0 || !p_checksight(actor, actor.target) {
		p_setmobjstate(actor, actor.info.seestate)
	}
}

[export: 'A_SpidRefire']
fn a_spidrefire(actor &Mobj_t) {
	a_facetarget(actor)
	if p_random() < 10 {
		return
	}
	if !actor.target || actor.target.health <= 0 || !p_checksight(actor, actor.target) {
		p_setmobjstate(actor, actor.info.seestate)
	}
}

[export: 'A_BspiAttack']
fn a_bspiattack(actor &Mobj_t) {
	if !actor.target {
		return
	}
	a_facetarget(actor)
	p_spawnmissile(actor, actor.target, Mobjtype_t.mt_arachplaz)
}

[export: 'A_TroopAttack']
fn a_troopattack(actor &Mobj_t) {
	damage := 0
	if !actor.target {
		return
	}
	a_facetarget(actor)
	if p_checkmeleerange(actor) {
		s_startsound(actor, Sfxenum_t.sfx_claw)
		damage = (p_random() % 8 + 1) * 3
		p_damagemobj(actor.target, actor, actor, damage)
		return
	}
	p_spawnmissile(actor, actor.target, Mobjtype_t.mt_troopshot)
}

[export: 'A_SargAttack']
fn a_sargattack(actor &Mobj_t) {
	damage := 0
	if !actor.target {
		return
	}
	a_facetarget(actor)
	if gameversion > GameVersion_t.exe_doom_1_2 {
		if !p_checkmeleerange(actor) {
			return
		}
	}
	damage = ((p_random() % 10) + 1) * 4
	if gameversion <= GameVersion_t.exe_doom_1_2 {
		p_lineattack(actor, actor.angle, (64 * (1 << 16)), 0, damage)
	} else { // 3
		p_damagemobj(actor.target, actor, actor, damage)
	}
}

[export: 'A_HeadAttack']
fn a_headattack(actor &Mobj_t) {
	damage := 0
	if !actor.target {
		return
	}
	a_facetarget(actor)
	if p_checkmeleerange(actor) {
		damage = (p_random() % 6 + 1) * 10
		p_damagemobj(actor.target, actor, actor, damage)
		return
	}
	p_spawnmissile(actor, actor.target, Mobjtype_t.mt_headshot)
}

[export: 'A_CyberAttack']
fn a_cyberattack(actor &Mobj_t) {
	if !actor.target {
		return
	}
	a_facetarget(actor)
	p_spawnmissile(actor, actor.target, Mobjtype_t.mt_rocket)
}

[export: 'A_BruisAttack']
fn a_bruisattack(actor &Mobj_t) {
	damage := 0
	if !actor.target {
		return
	}
	if p_checkmeleerange(actor) {
		s_startsound(actor, Sfxenum_t.sfx_claw)
		damage = (p_random() % 8 + 1) * 10
		p_damagemobj(actor.target, actor, actor, damage)
		return
	}
	p_spawnmissile(actor, actor.target, Mobjtype_t.mt_bruisershot)
}

[export: 'A_SkelMissile']
fn a_skelmissile(actor &Mobj_t) {
	mo := &Mobj_t(0)
	if !actor.target {
		return
	}
	a_facetarget(actor)
	actor.z += 16 * (1 << 16)
	mo = p_spawnmissile(actor, actor.target, Mobjtype_t.mt_tracer)
	actor.z -= 16 * (1 << 16)
	mo.x += mo.momx
	mo.y += mo.momy
	mo.tracer = actor.target
}

[weak]
__global (
	TRACEANGLE = int(201326592)
)

[export: 'A_Tracer']
fn a_tracer(actor &Mobj_t) {
	exact := 0
	dist := 0
	slope := 0
	dest := &Mobj_t(0)
	th := &Mobj_t(0)
	if gametic & 3 {
		return
	}
	p_spawnpuff(actor.x, actor.y, actor.z)
	th = p_spawnmobj(actor.x - actor.momx, actor.y - actor.momy, actor.z, Mobjtype_t.mt_smoke)
	th.momz = (1 << 16)
	th.tics -= p_random() & 3
	if th.tics < 1 {
		th.tics = 1
	}
	dest = actor.tracer
	if !dest || dest.health <= 0 {
		return
	}
	exact = r_pointtoangle2(actor.x, actor.y, dest.x, dest.y)
	if exact != actor.angle {
		if exact - actor.angle > 2147483648 {
			actor.angle -= TRACEANGLE
			if exact - actor.angle < 2147483648 {
				actor.angle = exact
			}
		} else {
			actor.angle += TRACEANGLE
			if exact - actor.angle > 2147483648 {
				actor.angle = exact
			}
		}
	}
	exact = actor.angle >> 19
	actor.momx = fixedmul(actor.info.speed, finecosine[exact])
	actor.momy = fixedmul(actor.info.speed, finesine[exact])
	dist = p_aproxdistance(dest.x - actor.x, dest.y - actor.y)
	dist = dist / actor.info.speed
	if dist < 1 {
		dist = 1
	}
	slope = (dest.z + 40 * (1 << 16) - actor.z) / dist
	if slope < actor.momz {
		actor.momz -= (1 << 16) / 8
	} else { // 3
		actor.momz += (1 << 16) / 8
	}
}

[export: 'A_SkelWhoosh']
fn a_skelwhoosh(actor &Mobj_t) {
	if !actor.target {
		return
	}
	a_facetarget(actor)
	s_startsound(actor, Sfxenum_t.sfx_skeswg)
}

[export: 'A_SkelFist']
fn a_skelfist(actor &Mobj_t) {
	damage := 0
	if !actor.target {
		return
	}
	a_facetarget(actor)
	if p_checkmeleerange(actor) {
		damage = ((p_random() % 10) + 1) * 6
		s_startsound(actor, Sfxenum_t.sfx_skepch)
		p_damagemobj(actor.target, actor, actor, damage)
	}
}

[weak]
__global (
	corpsehit &Mobj_t
)

[weak]
__global (
	vileobj &Mobj_t
)

[weak]
__global (
	viletryx int
)

[weak]
__global (
	viletryy int
)

[export: 'PIT_VileCheck']
fn pit_vilecheck(thing &Mobj_t) bool {
	maxdist := 0
	check := false
	if !(thing.flags & Mobjflag_t.mf_corpse) {
		return true
	}
	if thing.tics != -1 {
		return true
	}
	if thing.info.raisestate == Statenum_t.s_null {
		return true
	}
	maxdist = thing.info.radius + mobjinfo[Mobjtype_t.mt_vile].radius
	if abs(thing.x - viletryx) > maxdist || abs(thing.y - viletryy) > maxdist {
		return true
	}
	corpsehit = thing
	corpsehit.momx = 0
	corpsehit.momy = 0
	corpsehit.height <<= 2
	check = p_checkposition(corpsehit, corpsehit.x, corpsehit.y)
	corpsehit.height >>= 2
	if !check {
		return true
	}
	return false
}

[export: 'A_VileChase']
fn a_vilechase(actor &Mobj_t) {
	xl := 0
	xh := 0
	yl := 0
	yh := 0
	bx := 0
	by := 0
	info := &Mobjinfo_t(0)
	temp := &Mobj_t(0)
	if actor.movedir != Dirtype_t.di_nodir {
		viletryx = actor.x + actor.info.speed * xspeed[actor.movedir]
		viletryy = actor.y + actor.info.speed * yspeed[actor.movedir]
		xl = (viletryx - bmaporgx - 32 * (1 << 16) * 2) >> (16 + 7)
		xh = (viletryx - bmaporgx + 32 * (1 << 16) * 2) >> (16 + 7)
		yl = (viletryy - bmaporgy - 32 * (1 << 16) * 2) >> (16 + 7)
		yh = (viletryy - bmaporgy + 32 * (1 << 16) * 2) >> (16 + 7)
		vileobj = actor
		for bx = xl; bx <= xh; bx++ {
			for by = yl; by <= yh; by++ {
				if !p_blockthingsiterator(bx, by, pit_vilecheck) {
					temp = actor.target
					actor.target = corpsehit
					a_facetarget(actor)
					actor.target = temp
					p_setmobjstate(actor, Statenum_t.s_vile_heal1)
					s_startsound(corpsehit, Sfxenum_t.sfx_slop)
					info = corpsehit.info
					p_setmobjstate(corpsehit, info.raisestate)
					corpsehit.height <<= 2
					corpsehit.flags = info.flags
					corpsehit.health = info.spawnhealth
					corpsehit.target = (voidptr(0))
					return
				}
			}
		}
	}
	a_chase(actor)
}

[export: 'A_VileStart']
fn a_vilestart(actor &Mobj_t) {
	s_startsound(actor, Sfxenum_t.sfx_vilatk)
}

[c: 'A_Fire']
fn a_fire(actor &Mobj_t)

// fn def "<line:1246:1,col:27>col:6"

[export: 'A_StartFire']
fn a_startfire(actor &Mobj_t) {
	s_startsound(actor, Sfxenum_t.sfx_flamst)
	a_fire(actor)
}

[export: 'A_FireCrackle']
fn a_firecrackle(actor &Mobj_t) {
	s_startsound(actor, Sfxenum_t.sfx_flame)
	a_fire(actor)
}

[export: 'A_Fire']
fn a_fire(actor &Mobj_t) {
	dest := &Mobj_t(0)
	target := &Mobj_t(0)
	an := u32(0)
	dest = actor.tracer
	if !dest {
		return
	}
	target = p_substnullmobj(actor.target)
	if !p_checksight(target, dest) {
		return
	}
	an = dest.angle >> 19
	p_unsetthingposition(actor)
	actor.x = dest.x + fixedmul(24 * (1 << 16), finecosine[an])
	actor.y = dest.y + fixedmul(24 * (1 << 16), finesine[an])
	actor.z = dest.z
	p_setthingposition(actor)
}

[export: 'A_VileTarget']
fn a_viletarget(actor &Mobj_t) {
	fog := &Mobj_t(0)
	if !actor.target {
		return
	}
	a_facetarget(actor)
	fog = p_spawnmobj(actor.target.x, actor.target.x, actor.target.z, Mobjtype_t.mt_fire)
	actor.tracer = fog
	fog.target = actor
	fog.tracer = actor.target
	a_fire(fog)
}

[export: 'A_VileAttack']
fn a_vileattack(actor &Mobj_t) {
	fire := &Mobj_t(0)
	an := 0
	if !actor.target {
		return
	}
	a_facetarget(actor)
	if !p_checksight(actor, actor.target) {
		return
	}
	s_startsound(actor, Sfxenum_t.sfx_barexp)
	p_damagemobj(actor.target, actor, actor, 20)
	actor.target.momz = 1000 * (1 << 16) / actor.target.info.mass
	an = actor.angle >> 19
	fire = actor.tracer
	if !fire {
		return
	}
	fire.x = actor.target.x - fixedmul(24 * (1 << 16), finecosine[an])
	fire.y = actor.target.y - fixedmul(24 * (1 << 16), finesine[an])
	p_radiusattack(fire, actor, 70)
}

[export: 'A_FatRaise']
fn a_fatraise(actor &Mobj_t) {
	a_facetarget(actor)
	s_startsound(actor, Sfxenum_t.sfx_manatk)
}

[export: 'A_FatAttack1']
fn a_fatattack1(actor &Mobj_t) {
	mo := &Mobj_t(0)
	target := &Mobj_t(0)
	an := 0
	a_facetarget(actor)
	actor.angle += (1073741824 / 8)
	target = p_substnullmobj(actor.target)
	p_spawnmissile(actor, target, Mobjtype_t.mt_fatshot)
	mo = p_spawnmissile(actor, target, Mobjtype_t.mt_fatshot)
	mo.angle += (1073741824 / 8)
	an = mo.angle >> 19
	mo.momx = fixedmul(mo.info.speed, finecosine[an])
	mo.momy = fixedmul(mo.info.speed, finesine[an])
}

[export: 'A_FatAttack2']
fn a_fatattack2(actor &Mobj_t) {
	mo := &Mobj_t(0)
	target := &Mobj_t(0)
	an := 0
	a_facetarget(actor)
	actor.angle -= (1073741824 / 8)
	target = p_substnullmobj(actor.target)
	p_spawnmissile(actor, target, Mobjtype_t.mt_fatshot)
	mo = p_spawnmissile(actor, target, Mobjtype_t.mt_fatshot)
	mo.angle -= (1073741824 / 8) * 2
	an = mo.angle >> 19
	mo.momx = fixedmul(mo.info.speed, finecosine[an])
	mo.momy = fixedmul(mo.info.speed, finesine[an])
}

[export: 'A_FatAttack3']
fn a_fatattack3(actor &Mobj_t) {
	mo := &Mobj_t(0)
	target := &Mobj_t(0)
	an := 0
	a_facetarget(actor)
	target = p_substnullmobj(actor.target)
	mo = p_spawnmissile(actor, target, Mobjtype_t.mt_fatshot)
	mo.angle -= (1073741824 / 8) / 2
	an = mo.angle >> 19
	mo.momx = fixedmul(mo.info.speed, finecosine[an])
	mo.momy = fixedmul(mo.info.speed, finesine[an])
	mo = p_spawnmissile(actor, target, Mobjtype_t.mt_fatshot)
	mo.angle += (1073741824 / 8) / 2
	an = mo.angle >> 19
	mo.momx = fixedmul(mo.info.speed, finecosine[an])
	mo.momy = fixedmul(mo.info.speed, finesine[an])
}

[export: 'A_SkullAttack']
fn a_skullattack(actor &Mobj_t) {
	dest := &Mobj_t(0)
	an := 0
	dist := 0
	if !actor.target {
		return
	}
	dest = actor.target
	actor.flags |= Mobjflag_t.mf_skullfly
	s_startsound(actor, actor.info.attacksound)
	a_facetarget(actor)
	an = actor.angle >> 19
	actor.momx = fixedmul((20 * (1 << 16)), finecosine[an])
	actor.momy = fixedmul((20 * (1 << 16)), finesine[an])
	dist = p_aproxdistance(dest.x - actor.x, dest.y - actor.y)
	dist = dist / (20 * (1 << 16))
	if dist < 1 {
		dist = 1
	}
	actor.momz = (dest.z + (dest.height >> 1) - actor.z) / dist
}

[export: 'A_PainShootSkull']
fn a_painshootskull(actor &Mobj_t, angle Angle_t) {
	x := 0
	y := 0
	z := 0
	newmobj := &Mobj_t(0)
	an := 0
	prestep := 0
	count := 0
	currentthinker := &Thinker_t(0)
	count = 0
	currentthinker = thinkercap.next
	for currentthinker != &thinkercap {
		if (currentthinker.function.acp1 == Actionf_p1(p_mobjthinker))
			&& (&Mobj_t(currentthinker)).type_ == Mobjtype_t.mt_skull {
			count++
		}
		currentthinker = currentthinker.next
	}
	if count > 20 {
		return
	}
	an = angle >> 19
	prestep = 4 * (1 << 16) + 3 * (actor.info.radius + mobjinfo[Mobjtype_t.mt_skull].radius) / 2
	x = actor.x + fixedmul(prestep, finecosine[an])
	y = actor.y + fixedmul(prestep, finesine[an])
	z = actor.z + 8 * (1 << 16)
	newmobj = p_spawnmobj(x, y, z, Mobjtype_t.mt_skull)
	if !p_trymove(newmobj, newmobj.x, newmobj.y) {
		p_damagemobj(newmobj, actor, actor, 10000)
		return
	}
	newmobj.target = actor.target
	a_skullattack(newmobj)
}

[export: 'A_PainAttack']
fn a_painattack(actor &Mobj_t) {
	if !actor.target {
		return
	}
	a_facetarget(actor)
	a_painshootskull(actor, actor.angle)
}

[export: 'A_PainDie']
fn a_paindie(actor &Mobj_t) {
	a_fall(actor)
	a_painshootskull(actor, actor.angle + 1073741824)
	a_painshootskull(actor, actor.angle + 2147483648)
	a_painshootskull(actor, actor.angle + 3221225472)
}

[export: 'A_Scream']
fn a_scream(actor &Mobj_t) {
	sound := 0
	if actor.info.deathsound == 0 {
		return
	}
	x := Sfxenum_t.sfx_podth1
	match Sfxenum_t(actor.info.deathsound) {
		.sfx_podth1, .sfx_podth2, .sfx_podth3 {
			sound = x + p_random() % 3
		}
		.sfx_bgdth1, .sfx_bgdth2 {
			sound = x + p_random() % 2
		}
		else {
			sound = actor.info.deathsound
		}
	}
	if actor.type_ == Mobjtype_t.mt_spider || actor.type_ == Mobjtype_t.mt_cyborg {
		s_startsound((voidptr(0)), sound)
	} else { // 3
		s_startsound(actor, sound)
	}
}

[export: 'A_XScream']
fn a_xscream(actor &Mobj_t) {
	s_startsound(actor, Sfxenum_t.sfx_slop)
}

[export: 'A_Pain']
fn a_pain(actor &Mobj_t) {
	if actor.info.painsound {
		s_startsound(actor, actor.info.painsound)
	}
}

[export: 'A_Fall']
fn a_fall(actor &Mobj_t) {
	actor.flags &= ~Mobjflag_t.mf_solid
}

[export: 'A_Explode']
fn a_explode(thingy &Mobj_t) {
	p_radiusattack(thingy, thingy.target, 128)
}

[export: 'CheckBossEnd']
fn checkbossend(motype Mobjtype_t) bool {
	if gameversion < GameVersion_t.exe_ultimate {
		if gamemap != 8 {
			return false
		}
		if motype == Mobjtype_t.mt_bruiser && gameepisode != 1 {
			return false
		}
		return true
	} else {
		match gameepisode {
			1 /* case comp body RecordType */ {
				return gamemap == 8 && motype == .mt_bruiser
			}
			2 /* case comp body RecordType */ {
				return gamemap == 8 && motype == .mt_cyborg
			}
			3 /* case comp body RecordType */ {
				return gamemap == 8 && motype == .mt_spider
			}
			4 /* case comp body RecordType */ {
				return (gamemap == 6 && motype == .mt_cyborg)
					|| (gamemap == 8 && motype == .mt_spider)
			}
			else {
				return gamemap == 8
			}
		}
	}
}

[export: 'A_BossDeath']
fn a_bossdeath(mo &Mobj_t) {
	th := &Thinker_t(0)
	mo2 := &Mobj_t(0)
	junk := Line_t{}
	i := 0
	if gamemode == GameMode_t.commercial {
		if gamemap != 7 {
			return
		}
		if (mo.type_ != Mobjtype_t.mt_fatso) && (mo.type_ != Mobjtype_t.mt_baby) {
			return
		}
	} else {
		if !checkbossend(mo.type_) {
			return
		}
	}
	for i = 0; i < 4; i++ {
		if playeringame[i] && players[i].health > 0 {
			break
		}
	}
	if i == 4 {
		return
	}
	for th = thinkercap.next; th != &thinkercap; th = th.next {
		if th.function.acp1 != Actionf_p1(p_mobjthinker) {
			continue
		}
		mo2 = &Mobj_t(th)
		if mo2 != mo && mo2.type_ == mo.type_ && mo2.health > 0 {
			return
		}
	}
	if gamemode == GameMode_t.commercial {
		if gamemap == 7 {
			if mo.type_ == Mobjtype_t.mt_fatso {
				junk.tag = 666
				ev_dofloor(&junk, Floor_e.lowerfloortolowest)
				return
			}
			if mo.type_ == Mobjtype_t.mt_baby {
				junk.tag = 667
				ev_dofloor(&junk, Floor_e.raisetotexture)
				return
			}
		}
	} else {
		match gameepisode {
			1 /* case comp body AvailabilityAttr */ {
				junk.tag = 666
				ev_dofloor(&junk, .lowerfloortolowest)
				return
			}
			4 /* case comp body GotoStmt */ {
				if gamemap == 6 {
					junk.tag = 666
					ev_dodoor(&junk, .vld_blazeopen)
					return
				} else if gamemap == 8 {
					junk.tag = 666
					ev_dofloor(&junk, .lowerfloortolowest)
					return
				}
			}
			else {}
		}
	}
	g_exitlevel()
}

[export: 'A_Hoof']
fn a_hoof(mo &Mobj_t) {
	s_startsound(mo, Sfxenum_t.sfx_hoof)
	a_chase(mo)
}

[export: 'A_Metal']
fn a_metal(mo &Mobj_t) {
	s_startsound(mo, Sfxenum_t.sfx_metal)
	a_chase(mo)
}

[export: 'A_BabyMetal']
fn a_babymetal(mo &Mobj_t) {
	s_startsound(mo, Sfxenum_t.sfx_bspwlk)
	a_chase(mo)
}

[export: 'A_OpenShotgun2']
fn a_openshotgun2(player &Player_t, psp &Pspdef_t) {
	s_startsound(player.mo, Sfxenum_t.sfx_dbopn)
}

[export: 'A_LoadShotgun2']
fn a_loadshotgun2(player &Player_t, psp &Pspdef_t) {
	s_startsound(player.mo, Sfxenum_t.sfx_dbload)
}

[c: 'A_ReFire']
fn a_refire(player &Player_t, psp &Pspdef_t)

// fn def "<line:1808:1,line:1811:17>line:1809:1"

[export: 'A_CloseShotgun2']
fn a_closeshotgun2(player &Player_t, psp &Pspdef_t) {
	s_startsound(player.mo, Sfxenum_t.sfx_dbcls)
	a_refire(player, psp)
}

[weak]
__global (
	braintargets [32]&Mobj_t
)

[weak]
__global (
	numbraintargets int
)

[weak]
__global (
	braintargeton = int(0)
)

[export: 'A_BrainAwake']
fn a_brainawake(mo &Mobj_t) {
	thinker := &Thinker_t(0)
	m := &Mobj_t(0)
	numbraintargets = 0
	braintargeton = 0
	thinker = thinkercap.next
	for thinker = thinkercap.next; thinker != &thinkercap; thinker = thinker.next {
		if thinker.function.acp1 != Actionf_p1(p_mobjthinker) {
			continue
		}
		m = &Mobj_t(thinker)
		if m.type_ == Mobjtype_t.mt_bosstarget {
			braintargets[numbraintargets] = m
			numbraintargets++
		}
	}
	s_startsound((voidptr(0)), Sfxenum_t.sfx_bossit)
}

[export: 'A_BrainPain']
fn a_brainpain(mo &Mobj_t) {
	s_startsound((voidptr(0)), Sfxenum_t.sfx_bospn)
}

[export: 'A_BrainScream']
fn a_brainscream(mo &Mobj_t) {
	x := 0
	y := 0
	z := 0
	th := &Mobj_t(0)
	for x = mo.x - 196 * (1 << 16); x < mo.x + 320 * (1 << 16); x += (1 << 16) * 8 {
		y = mo.y - 320 * (1 << 16)
		z = 128 + p_random() * 2 * (1 << 16)
		th = p_spawnmobj(x, y, z, Mobjtype_t.mt_rocket)
		th.momz = p_random() * 512
		p_setmobjstate(th, Statenum_t.s_brainexplode1)
		th.tics -= p_random() & 7
		if th.tics < 1 {
			th.tics = 1
		}
	}
	s_startsound((voidptr(0)), Sfxenum_t.sfx_bosdth)
}

[export: 'A_BrainExplode']
fn a_brainexplode(mo &Mobj_t) {
	x := 0
	y := 0
	z := 0
	th := &Mobj_t(0)
	x = mo.x + p_subrandom() * 2048
	y = mo.y
	z = 128 + p_random() * 2 * (1 << 16)
	th = p_spawnmobj(x, y, z, Mobjtype_t.mt_rocket)
	th.momz = p_random() * 512
	p_setmobjstate(th, Statenum_t.s_brainexplode1)
	th.tics -= p_random() & 7
	if th.tics < 1 {
		th.tics = 1
	}
}

[export: 'A_BrainDie']
fn a_braindie(mo &Mobj_t) {
	g_exitlevel()
}

[export: 'A_BrainSpit']
fn a_brainspit(mo &Mobj_t) {
	targ := &Mobj_t(0)
	newmobj := &Mobj_t(0)
	static easy := 0
	easy ^= 1
	if gameskill <= Skill_t.sk_easy && (!easy) {
		return
	}
	targ = braintargets[braintargeton]
	if numbraintargets == 0 {
		i_error(c'A_BrainSpit: numbraintargets was 0 (vanilla crashes here)')
	}
	braintargeton = (braintargeton + 1) % numbraintargets
	newmobj = p_spawnmissile(mo, targ, Mobjtype_t.mt_spawnshot)
	newmobj.target = targ
	newmobj.reactiontime = ((targ.y - mo.y) / newmobj.momy) / newmobj.state.tics
	s_startsound((voidptr(0)), Sfxenum_t.sfx_bospit)
}

[c: 'A_SpawnFly']
fn a_spawnfly(mo &Mobj_t)

// fn def "<line:1946:1,col:28>col:6"

[export: 'A_SpawnSound']
fn a_spawnsound(mo &Mobj_t) {
	s_startsound(mo, Sfxenum_t.sfx_boscub)
	a_spawnfly(mo)
}

[export: 'A_SpawnFly']
fn a_spawnfly(mo &Mobj_t) {
	newmobj := &Mobj_t(0)
	fog := &Mobj_t(0)
	targ := &Mobj_t(0)
	r := 0
	type_ := 0
	if mo.reactiontime-- {
		return
	}
	targ = p_substnullmobj(mo.target)
	fog = p_spawnmobj(targ.x, targ.y, targ.z, Mobjtype_t.mt_spawnfire)
	s_startsound(fog, Sfxenum_t.sfx_telept)
	r = p_random()
	if r < 50 {
		type_ = Mobjtype_t.mt_troop
	} else if r < 90 {
		type_ = Mobjtype_t.mt_sergeant
	} else if r < 120 {
		type_ = Mobjtype_t.mt_shadows
	} else if r < 130 {
		type_ = Mobjtype_t.mt_pain
	} else if r < 160 {
		type_ = Mobjtype_t.mt_head
	} else if r < 162 {
		type_ = Mobjtype_t.mt_vile
	} else if r < 172 {
		type_ = Mobjtype_t.mt_undead
	} else if r < 192 {
		type_ = Mobjtype_t.mt_baby
	} else if r < 222 {
		type_ = Mobjtype_t.mt_fatso
	} else if r < 246 {
		type_ = Mobjtype_t.mt_knight
	} else { // 3
		type_ = Mobjtype_t.mt_bruiser
	}
	newmobj = p_spawnmobj(targ.x, targ.y, targ.z, type_)
	if p_lookforplayers(newmobj, true) {
		p_setmobjstate(newmobj, newmobj.info.seestate)
	}
	p_teleportmove(newmobj, newmobj.x, newmobj.y)
	p_removemobj(mo)
}

[export: 'A_PlayerScream']
fn a_playerscream(mo &Mobj_t) {
	sound := Sfxenum_t.sfx_pldeth
	if (gamemode == GameMode_t.commercial) && (mo.health < -50) {
		sound = Sfxenum_t.sfx_pdiehi
	}
	s_startsound(mo, sound)
}
