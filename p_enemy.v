struct C.FILE{} 
fn C.memcpy(voidptr, voidptr, int) 
fn C.memmove(voidptr, voidptr, int) 
fn C.memset(voidptr, voidptr, int) 
fn C.puts(voidptr) 
fn C.printf(voidptr, ..) 
fn C.sscanf(voidptr,voidptr, ..) voidptr 
fn C.strcasecmp(voidptr, voidptr) int 
fn C.strncasecmp(voidptr, voidptr, int) int 
fn C.strcmp(voidptr, voidptr) int  
fn C.strncmp(voidptr, voidptr, int) int  
fn C.fopen(byteptr, byteptr) *C.FILE 
fn C.fclose(*C.FILE)  
fn C.ftell(*C.FILE) int 
fn C.remove (byteptr) 
fn C.rename ( byteptr, byteptr)  
fn C.isspace(byte) int 
fn C.atoi(byteptr) int 

enum boolean {
	_false
	_true
}

type _byte byte 
type pixel_t byte 
type dpixel_t i16 
fn M_Random() int 

fn P_Random() int 

fn M_ClearRandom()  

fn P_SubRandom() int 

struct ticcmd_t { 
	forwardmove byte
	sidemove byte
	angleturn i16
	chatchar byte
	buttons byte
	consistancy byte
	buttons2 byte
	inventory int
	lookfly byte
	arti byte
}
 
enum evtype_t {
	ev_keydown
	ev_keyup
	ev_mouse
	ev_joystick
	ev_quit
}

struct event_t { 
	_type evtype_t
	data1 int
	data2 int
	data3 int
	data4 int
	data5 int
}
 
enum buttoncode_t {
	BT_ATTACK
	BT_USE
	BT_SPECIAL
	BT_SPECIALMASK
	BT_CHANGE
	BT_WEAPONMASK
	BT_WEAPONSHIFT
	BTS_PAUSE
	BTS_SAVEGAME
	BTS_SAVEMASK
	BTS_SAVESHIFT
}

enum buttoncode2_t {
	BT2_LOOKUP
	BT2_LOOKDOWN
	BT2_CENTERVIEW
	BT2_INVUSE
	BT2_INVDROP
	BT2_JUMP
	BT2_HEALTH
}

fn D_PostEvent(ev *event_t)  

fn D_PopEvent() *event_t 

type atexit_func_t fn () 
fn I_Init()  

fn I_ZoneBase(size *int) byteptr 

fn I_ConsoleStdout() bool 

fn I_BaseTiccmd() *ticcmd_t 

fn I_Quit()  

fn I_Error(error byteptr, ..)  

fn I_Tactile(on int, off int, total int)  

fn I_Realloc(ptr voidptr, size size_t) voidptr 

fn I_GetMemoryValue(offset u32, value voidptr, size int) bool 

fn I_AtExit(func atexit_func_t, run_if_error bool)  

fn I_BindVariables()  

fn I_PrintStartupBanner(gamedescription byteptr)  

fn I_PrintBanner(text byteptr)  

fn I_PrintDivider()  

fn I_GetTime() int 

fn I_GetTimeMS() int 

fn I_Sleep(ms int)  

fn I_InitTimer()  

fn I_WaitVBL(count int)  

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
	none
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

enum skill_t {
	sk_noitems
	sk_baby
	sk_easy
	sk_medium
	sk_hard
	sk_nightmare
}

fn D_ValidGameMode(mission GameMission_t, mode GameMode_t) bool 

fn D_ValidGameVersion(mission GameMission_t, version GameVersion_t) bool 

fn D_ValidEpisodeMap(mission GameMission_t, mode GameMode_t, episode int, map int) bool 

fn D_GetNumEpisodes(mission GameMission_t, mode GameMode_t) int 

fn D_IsEpisodeMap(mission GameMission_t) bool 

fn D_GameMissionString(mission GameMission_t) byteptr 

fn D_GameModeString(mode GameMode_t) byteptr 

enum gamestate_t {
	GS_LEVEL
	GS_INTERMISSION
	GS_FINALE
	GS_DEMOSCREEN
}

enum gameaction_t {
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

enum card_t {
	it_bluecard
	it_yellowcard
	it_redcard
	it_blueskull
	it_yellowskull
	it_redskull
	NUMCARDS
}

enum weapontype_t {
	wp_fist
	wp_pistol
	wp_shotgun
	wp_chaingun
	wp_missile
	wp_plasma
	wp_bfg
	wp_chainsaw
	wp_supershotgun
	NUMWEAPONS
	wp_nochange
}

enum ammotype_t {
	am_clip
	am_shell
	am_cell
	am_misl
	NUMAMMO
	am_noammo
}

enum powertype_t {
	pw_invulnerability
	pw_strength
	pw_invisibility
	pw_ironfeet
	pw_allmap
	pw_infrared
	NUMPOWERS
}

enum powerduration_t {
	INVULNTICS
	INVISTICS
	INFRATICS
	IRONTICS
}

type fixed_t int 
fn FixedMul(a int, b int) int 

fn FixedDiv(a int, b int) int 

__global finesine [10240]int 

__global finecosine *int 

__global finetangent [4096]int 

__global gammatable [5][256]byte 

type angle_t int 
__global tantoangle [2049]angle_t 

fn SlopeDiv(num u32, den u32) int 

type actionf_v fn () 
type actionf_p1 fn (voidptr) 
type actionf_p2 fn (voidptr, voidptr) 
union actionf_t {
	acv actionf_v
	acp1 actionf_p1
	acp2 actionf_p2
}
 
type think_t actionf_t 
struct thinker_s { 
	prev * thinker_s
	next * thinker_s
	function think_t
}
 
type thinker_t thinker_s 
enum {
	ML_LABEL
	ML_THINGS
	ML_LINEDEFS
	ML_SIDEDEFS
	ML_VERTEXES
	ML_SEGS
	ML_SSECTORS
	ML_NODES
	ML_SECTORS
	ML_REJECT
	ML_BLOCKMAP
}

struct mapvertex_t { 
	x i16
	y i16
}
 
struct mapsidedef_t { 
	textureoffset i16
	rowoffset i16
	toptexture [8]byte
	bottomtexture [8]byte
	midtexture [8]byte
	sector i16
}
 
struct maplinedef_t { 
	v1 i16
	v2 i16
	flags i16
	special i16
	tag i16
	sidenum [2]i16
}
 
struct mapsector_t { 
	floorheight i16
	ceilingheight i16
	floorpic [8]byte
	ceilingpic [8]byte
	lightlevel i16
	special i16
	tag i16
}
 
struct mapsubsector_t { 
	numsegs i16
	firstseg i16
}
 
struct mapseg_t { 
	v1 i16
	v2 i16
	angle i16
	linedef i16
	side i16
	offset i16
}
 
struct mapnode_t { 
	x i16
	y i16
	dx i16
	dy i16
	bbox [2][4]i16
	children [2]u16
}
 
struct mapthing_t { 
	x i16
	y i16
	angle i16
	_type i16
	options i16
}
 
enum spritenum_t {
	SPR_TROO
	SPR_SHTG
	SPR_PUNG
	SPR_PISG
	SPR_PISF
	SPR_SHTF
	SPR_SHT2
	SPR_CHGG
	SPR_CHGF
	SPR_MISG
	SPR_MISF
	SPR_SAWG
	SPR_PLSG
	SPR_PLSF
	SPR_BFGG
	SPR_BFGF
	SPR_BLUD
	SPR_PUFF
	SPR_BAL1
	SPR_BAL2
	SPR_PLSS
	SPR_PLSE
	SPR_MISL
	SPR_BFS1
	SPR_BFE1
	SPR_BFE2
	SPR_TFOG
	SPR_IFOG
	SPR_PLAY
	SPR_POSS
	SPR_SPOS
	SPR_VILE
	SPR_FIRE
	SPR_FATB
	SPR_FBXP
	SPR_SKEL
	SPR_MANF
	SPR_FATT
	SPR_CPOS
	SPR_SARG
	SPR_HEAD
	SPR_BAL7
	SPR_BOSS
	SPR_BOS2
	SPR_SKUL
	SPR_SPID
	SPR_BSPI
	SPR_APLS
	SPR_APBX
	SPR_CYBR
	SPR_PAIN
	SPR_SSWV
	SPR_KEEN
	SPR_BBRN
	SPR_BOSF
	SPR_ARM1
	SPR_ARM2
	SPR_BAR1
	SPR_BEXP
	SPR_FCAN
	SPR_BON1
	SPR_BON2
	SPR_BKEY
	SPR_RKEY
	SPR_YKEY
	SPR_BSKU
	SPR_RSKU
	SPR_YSKU
	SPR_STIM
	SPR_MEDI
	SPR_SOUL
	SPR_PINV
	SPR_PSTR
	SPR_PINS
	SPR_MEGA
	SPR_SUIT
	SPR_PMAP
	SPR_PVIS
	SPR_CLIP
	SPR_AMMO
	SPR_ROCK
	SPR_BROK
	SPR_CELL
	SPR_CELP
	SPR_SHEL
	SPR_SBOX
	SPR_BPAK
	SPR_BFUG
	SPR_MGUN
	SPR_CSAW
	SPR_LAUN
	SPR_PLAS
	SPR_SHOT
	SPR_SGN2
	SPR_COLU
	SPR_SMT2
	SPR_GOR1
	SPR_POL2
	SPR_POL5
	SPR_POL4
	SPR_POL3
	SPR_POL1
	SPR_POL6
	SPR_GOR2
	SPR_GOR3
	SPR_GOR4
	SPR_GOR5
	SPR_SMIT
	SPR_COL1
	SPR_COL2
	SPR_COL3
	SPR_COL4
	SPR_CAND
	SPR_CBRA
	SPR_COL6
	SPR_TRE1
	SPR_TRE2
	SPR_ELEC
	SPR_CEYE
	SPR_FSKU
	SPR_COL5
	SPR_TBLU
	SPR_TGRN
	SPR_TRED
	SPR_SMBT
	SPR_SMGT
	SPR_SMRT
	SPR_HDB1
	SPR_HDB2
	SPR_HDB3
	SPR_HDB4
	SPR_HDB5
	SPR_HDB6
	SPR_POB1
	SPR_POB2
	SPR_BRS1
	SPR_TLMP
	SPR_TLP2
	NUMSPRITES
}

enum statenum_t {
	S_NULL
	S_LIGHTDONE
	S_PUNCH
	S_PUNCHDOWN
	S_PUNCHUP
	S_PUNCH1
	S_PUNCH2
	S_PUNCH3
	S_PUNCH4
	S_PUNCH5
	S_PISTOL
	S_PISTOLDOWN
	S_PISTOLUP
	S_PISTOL1
	S_PISTOL2
	S_PISTOL3
	S_PISTOL4
	S_PISTOLFLASH
	S_SGUN
	S_SGUNDOWN
	S_SGUNUP
	S_SGUN1
	S_SGUN2
	S_SGUN3
	S_SGUN4
	S_SGUN5
	S_SGUN6
	S_SGUN7
	S_SGUN8
	S_SGUN9
	S_SGUNFLASH1
	S_SGUNFLASH2
	S_DSGUN
	S_DSGUNDOWN
	S_DSGUNUP
	S_DSGUN1
	S_DSGUN2
	S_DSGUN3
	S_DSGUN4
	S_DSGUN5
	S_DSGUN6
	S_DSGUN7
	S_DSGUN8
	S_DSGUN9
	S_DSGUN10
	S_DSNR1
	S_DSNR2
	S_DSGUNFLASH1
	S_DSGUNFLASH2
	S_CHAIN
	S_CHAINDOWN
	S_CHAINUP
	S_CHAIN1
	S_CHAIN2
	S_CHAIN3
	S_CHAINFLASH1
	S_CHAINFLASH2
	S_MISSILE
	S_MISSILEDOWN
	S_MISSILEUP
	S_MISSILE1
	S_MISSILE2
	S_MISSILE3
	S_MISSILEFLASH1
	S_MISSILEFLASH2
	S_MISSILEFLASH3
	S_MISSILEFLASH4
	S_SAW
	S_SAWB
	S_SAWDOWN
	S_SAWUP
	S_SAW1
	S_SAW2
	S_SAW3
	S_PLASMA
	S_PLASMADOWN
	S_PLASMAUP
	S_PLASMA1
	S_PLASMA2
	S_PLASMAFLASH1
	S_PLASMAFLASH2
	S_BFG
	S_BFGDOWN
	S_BFGUP
	S_BFG1
	S_BFG2
	S_BFG3
	S_BFG4
	S_BFGFLASH1
	S_BFGFLASH2
	S_BLOOD1
	S_BLOOD2
	S_BLOOD3
	S_PUFF1
	S_PUFF2
	S_PUFF3
	S_PUFF4
	S_TBALL1
	S_TBALL2
	S_TBALLX1
	S_TBALLX2
	S_TBALLX3
	S_RBALL1
	S_RBALL2
	S_RBALLX1
	S_RBALLX2
	S_RBALLX3
	S_PLASBALL
	S_PLASBALL2
	S_PLASEXP
	S_PLASEXP2
	S_PLASEXP3
	S_PLASEXP4
	S_PLASEXP5
	S_ROCKET
	S_BFGSHOT
	S_BFGSHOT2
	S_BFGLAND
	S_BFGLAND2
	S_BFGLAND3
	S_BFGLAND4
	S_BFGLAND5
	S_BFGLAND6
	S_BFGEXP
	S_BFGEXP2
	S_BFGEXP3
	S_BFGEXP4
	S_EXPLODE1
	S_EXPLODE2
	S_EXPLODE3
	S_TFOG
	S_TFOG01
	S_TFOG02
	S_TFOG2
	S_TFOG3
	S_TFOG4
	S_TFOG5
	S_TFOG6
	S_TFOG7
	S_TFOG8
	S_TFOG9
	S_TFOG10
	S_IFOG
	S_IFOG01
	S_IFOG02
	S_IFOG2
	S_IFOG3
	S_IFOG4
	S_IFOG5
	S_PLAY
	S_PLAY_RUN1
	S_PLAY_RUN2
	S_PLAY_RUN3
	S_PLAY_RUN4
	S_PLAY_ATK1
	S_PLAY_ATK2
	S_PLAY_PAIN
	S_PLAY_PAIN2
	S_PLAY_DIE1
	S_PLAY_DIE2
	S_PLAY_DIE3
	S_PLAY_DIE4
	S_PLAY_DIE5
	S_PLAY_DIE6
	S_PLAY_DIE7
	S_PLAY_XDIE1
	S_PLAY_XDIE2
	S_PLAY_XDIE3
	S_PLAY_XDIE4
	S_PLAY_XDIE5
	S_PLAY_XDIE6
	S_PLAY_XDIE7
	S_PLAY_XDIE8
	S_PLAY_XDIE9
	S_POSS_STND
	S_POSS_STND2
	S_POSS_RUN1
	S_POSS_RUN2
	S_POSS_RUN3
	S_POSS_RUN4
	S_POSS_RUN5
	S_POSS_RUN6
	S_POSS_RUN7
	S_POSS_RUN8
	S_POSS_ATK1
	S_POSS_ATK2
	S_POSS_ATK3
	S_POSS_PAIN
	S_POSS_PAIN2
	S_POSS_DIE1
	S_POSS_DIE2
	S_POSS_DIE3
	S_POSS_DIE4
	S_POSS_DIE5
	S_POSS_XDIE1
	S_POSS_XDIE2
	S_POSS_XDIE3
	S_POSS_XDIE4
	S_POSS_XDIE5
	S_POSS_XDIE6
	S_POSS_XDIE7
	S_POSS_XDIE8
	S_POSS_XDIE9
	S_POSS_RAISE1
	S_POSS_RAISE2
	S_POSS_RAISE3
	S_POSS_RAISE4
	S_SPOS_STND
	S_SPOS_STND2
	S_SPOS_RUN1
	S_SPOS_RUN2
	S_SPOS_RUN3
	S_SPOS_RUN4
	S_SPOS_RUN5
	S_SPOS_RUN6
	S_SPOS_RUN7
	S_SPOS_RUN8
	S_SPOS_ATK1
	S_SPOS_ATK2
	S_SPOS_ATK3
	S_SPOS_PAIN
	S_SPOS_PAIN2
	S_SPOS_DIE1
	S_SPOS_DIE2
	S_SPOS_DIE3
	S_SPOS_DIE4
	S_SPOS_DIE5
	S_SPOS_XDIE1
	S_SPOS_XDIE2
	S_SPOS_XDIE3
	S_SPOS_XDIE4
	S_SPOS_XDIE5
	S_SPOS_XDIE6
	S_SPOS_XDIE7
	S_SPOS_XDIE8
	S_SPOS_XDIE9
	S_SPOS_RAISE1
	S_SPOS_RAISE2
	S_SPOS_RAISE3
	S_SPOS_RAISE4
	S_SPOS_RAISE5
	S_VILE_STND
	S_VILE_STND2
	S_VILE_RUN1
	S_VILE_RUN2
	S_VILE_RUN3
	S_VILE_RUN4
	S_VILE_RUN5
	S_VILE_RUN6
	S_VILE_RUN7
	S_VILE_RUN8
	S_VILE_RUN9
	S_VILE_RUN10
	S_VILE_RUN11
	S_VILE_RUN12
	S_VILE_ATK1
	S_VILE_ATK2
	S_VILE_ATK3
	S_VILE_ATK4
	S_VILE_ATK5
	S_VILE_ATK6
	S_VILE_ATK7
	S_VILE_ATK8
	S_VILE_ATK9
	S_VILE_ATK10
	S_VILE_ATK11
	S_VILE_HEAL1
	S_VILE_HEAL2
	S_VILE_HEAL3
	S_VILE_PAIN
	S_VILE_PAIN2
	S_VILE_DIE1
	S_VILE_DIE2
	S_VILE_DIE3
	S_VILE_DIE4
	S_VILE_DIE5
	S_VILE_DIE6
	S_VILE_DIE7
	S_VILE_DIE8
	S_VILE_DIE9
	S_VILE_DIE10
	S_FIRE1
	S_FIRE2
	S_FIRE3
	S_FIRE4
	S_FIRE5
	S_FIRE6
	S_FIRE7
	S_FIRE8
	S_FIRE9
	S_FIRE10
	S_FIRE11
	S_FIRE12
	S_FIRE13
	S_FIRE14
	S_FIRE15
	S_FIRE16
	S_FIRE17
	S_FIRE18
	S_FIRE19
	S_FIRE20
	S_FIRE21
	S_FIRE22
	S_FIRE23
	S_FIRE24
	S_FIRE25
	S_FIRE26
	S_FIRE27
	S_FIRE28
	S_FIRE29
	S_FIRE30
	S_SMOKE1
	S_SMOKE2
	S_SMOKE3
	S_SMOKE4
	S_SMOKE5
	S_TRACER
	S_TRACER2
	S_TRACEEXP1
	S_TRACEEXP2
	S_TRACEEXP3
	S_SKEL_STND
	S_SKEL_STND2
	S_SKEL_RUN1
	S_SKEL_RUN2
	S_SKEL_RUN3
	S_SKEL_RUN4
	S_SKEL_RUN5
	S_SKEL_RUN6
	S_SKEL_RUN7
	S_SKEL_RUN8
	S_SKEL_RUN9
	S_SKEL_RUN10
	S_SKEL_RUN11
	S_SKEL_RUN12
	S_SKEL_FIST1
	S_SKEL_FIST2
	S_SKEL_FIST3
	S_SKEL_FIST4
	S_SKEL_MISS1
	S_SKEL_MISS2
	S_SKEL_MISS3
	S_SKEL_MISS4
	S_SKEL_PAIN
	S_SKEL_PAIN2
	S_SKEL_DIE1
	S_SKEL_DIE2
	S_SKEL_DIE3
	S_SKEL_DIE4
	S_SKEL_DIE5
	S_SKEL_DIE6
	S_SKEL_RAISE1
	S_SKEL_RAISE2
	S_SKEL_RAISE3
	S_SKEL_RAISE4
	S_SKEL_RAISE5
	S_SKEL_RAISE6
	S_FATSHOT1
	S_FATSHOT2
	S_FATSHOTX1
	S_FATSHOTX2
	S_FATSHOTX3
	S_FATT_STND
	S_FATT_STND2
	S_FATT_RUN1
	S_FATT_RUN2
	S_FATT_RUN3
	S_FATT_RUN4
	S_FATT_RUN5
	S_FATT_RUN6
	S_FATT_RUN7
	S_FATT_RUN8
	S_FATT_RUN9
	S_FATT_RUN10
	S_FATT_RUN11
	S_FATT_RUN12
	S_FATT_ATK1
	S_FATT_ATK2
	S_FATT_ATK3
	S_FATT_ATK4
	S_FATT_ATK5
	S_FATT_ATK6
	S_FATT_ATK7
	S_FATT_ATK8
	S_FATT_ATK9
	S_FATT_ATK10
	S_FATT_PAIN
	S_FATT_PAIN2
	S_FATT_DIE1
	S_FATT_DIE2
	S_FATT_DIE3
	S_FATT_DIE4
	S_FATT_DIE5
	S_FATT_DIE6
	S_FATT_DIE7
	S_FATT_DIE8
	S_FATT_DIE9
	S_FATT_DIE10
	S_FATT_RAISE1
	S_FATT_RAISE2
	S_FATT_RAISE3
	S_FATT_RAISE4
	S_FATT_RAISE5
	S_FATT_RAISE6
	S_FATT_RAISE7
	S_FATT_RAISE8
	S_CPOS_STND
	S_CPOS_STND2
	S_CPOS_RUN1
	S_CPOS_RUN2
	S_CPOS_RUN3
	S_CPOS_RUN4
	S_CPOS_RUN5
	S_CPOS_RUN6
	S_CPOS_RUN7
	S_CPOS_RUN8
	S_CPOS_ATK1
	S_CPOS_ATK2
	S_CPOS_ATK3
	S_CPOS_ATK4
	S_CPOS_PAIN
	S_CPOS_PAIN2
	S_CPOS_DIE1
	S_CPOS_DIE2
	S_CPOS_DIE3
	S_CPOS_DIE4
	S_CPOS_DIE5
	S_CPOS_DIE6
	S_CPOS_DIE7
	S_CPOS_XDIE1
	S_CPOS_XDIE2
	S_CPOS_XDIE3
	S_CPOS_XDIE4
	S_CPOS_XDIE5
	S_CPOS_XDIE6
	S_CPOS_RAISE1
	S_CPOS_RAISE2
	S_CPOS_RAISE3
	S_CPOS_RAISE4
	S_CPOS_RAISE5
	S_CPOS_RAISE6
	S_CPOS_RAISE7
	S_TROO_STND
	S_TROO_STND2
	S_TROO_RUN1
	S_TROO_RUN2
	S_TROO_RUN3
	S_TROO_RUN4
	S_TROO_RUN5
	S_TROO_RUN6
	S_TROO_RUN7
	S_TROO_RUN8
	S_TROO_ATK1
	S_TROO_ATK2
	S_TROO_ATK3
	S_TROO_PAIN
	S_TROO_PAIN2
	S_TROO_DIE1
	S_TROO_DIE2
	S_TROO_DIE3
	S_TROO_DIE4
	S_TROO_DIE5
	S_TROO_XDIE1
	S_TROO_XDIE2
	S_TROO_XDIE3
	S_TROO_XDIE4
	S_TROO_XDIE5
	S_TROO_XDIE6
	S_TROO_XDIE7
	S_TROO_XDIE8
	S_TROO_RAISE1
	S_TROO_RAISE2
	S_TROO_RAISE3
	S_TROO_RAISE4
	S_TROO_RAISE5
	S_SARG_STND
	S_SARG_STND2
	S_SARG_RUN1
	S_SARG_RUN2
	S_SARG_RUN3
	S_SARG_RUN4
	S_SARG_RUN5
	S_SARG_RUN6
	S_SARG_RUN7
	S_SARG_RUN8
	S_SARG_ATK1
	S_SARG_ATK2
	S_SARG_ATK3
	S_SARG_PAIN
	S_SARG_PAIN2
	S_SARG_DIE1
	S_SARG_DIE2
	S_SARG_DIE3
	S_SARG_DIE4
	S_SARG_DIE5
	S_SARG_DIE6
	S_SARG_RAISE1
	S_SARG_RAISE2
	S_SARG_RAISE3
	S_SARG_RAISE4
	S_SARG_RAISE5
	S_SARG_RAISE6
	S_HEAD_STND
	S_HEAD_RUN1
	S_HEAD_ATK1
	S_HEAD_ATK2
	S_HEAD_ATK3
	S_HEAD_PAIN
	S_HEAD_PAIN2
	S_HEAD_PAIN3
	S_HEAD_DIE1
	S_HEAD_DIE2
	S_HEAD_DIE3
	S_HEAD_DIE4
	S_HEAD_DIE5
	S_HEAD_DIE6
	S_HEAD_RAISE1
	S_HEAD_RAISE2
	S_HEAD_RAISE3
	S_HEAD_RAISE4
	S_HEAD_RAISE5
	S_HEAD_RAISE6
	S_BRBALL1
	S_BRBALL2
	S_BRBALLX1
	S_BRBALLX2
	S_BRBALLX3
	S_BOSS_STND
	S_BOSS_STND2
	S_BOSS_RUN1
	S_BOSS_RUN2
	S_BOSS_RUN3
	S_BOSS_RUN4
	S_BOSS_RUN5
	S_BOSS_RUN6
	S_BOSS_RUN7
	S_BOSS_RUN8
	S_BOSS_ATK1
	S_BOSS_ATK2
	S_BOSS_ATK3
	S_BOSS_PAIN
	S_BOSS_PAIN2
	S_BOSS_DIE1
	S_BOSS_DIE2
	S_BOSS_DIE3
	S_BOSS_DIE4
	S_BOSS_DIE5
	S_BOSS_DIE6
	S_BOSS_DIE7
	S_BOSS_RAISE1
	S_BOSS_RAISE2
	S_BOSS_RAISE3
	S_BOSS_RAISE4
	S_BOSS_RAISE5
	S_BOSS_RAISE6
	S_BOSS_RAISE7
	S_BOS2_STND
	S_BOS2_STND2
	S_BOS2_RUN1
	S_BOS2_RUN2
	S_BOS2_RUN3
	S_BOS2_RUN4
	S_BOS2_RUN5
	S_BOS2_RUN6
	S_BOS2_RUN7
	S_BOS2_RUN8
	S_BOS2_ATK1
	S_BOS2_ATK2
	S_BOS2_ATK3
	S_BOS2_PAIN
	S_BOS2_PAIN2
	S_BOS2_DIE1
	S_BOS2_DIE2
	S_BOS2_DIE3
	S_BOS2_DIE4
	S_BOS2_DIE5
	S_BOS2_DIE6
	S_BOS2_DIE7
	S_BOS2_RAISE1
	S_BOS2_RAISE2
	S_BOS2_RAISE3
	S_BOS2_RAISE4
	S_BOS2_RAISE5
	S_BOS2_RAISE6
	S_BOS2_RAISE7
	S_SKULL_STND
	S_SKULL_STND2
	S_SKULL_RUN1
	S_SKULL_RUN2
	S_SKULL_ATK1
	S_SKULL_ATK2
	S_SKULL_ATK3
	S_SKULL_ATK4
	S_SKULL_PAIN
	S_SKULL_PAIN2
	S_SKULL_DIE1
	S_SKULL_DIE2
	S_SKULL_DIE3
	S_SKULL_DIE4
	S_SKULL_DIE5
	S_SKULL_DIE6
	S_SPID_STND
	S_SPID_STND2
	S_SPID_RUN1
	S_SPID_RUN2
	S_SPID_RUN3
	S_SPID_RUN4
	S_SPID_RUN5
	S_SPID_RUN6
	S_SPID_RUN7
	S_SPID_RUN8
	S_SPID_RUN9
	S_SPID_RUN10
	S_SPID_RUN11
	S_SPID_RUN12
	S_SPID_ATK1
	S_SPID_ATK2
	S_SPID_ATK3
	S_SPID_ATK4
	S_SPID_PAIN
	S_SPID_PAIN2
	S_SPID_DIE1
	S_SPID_DIE2
	S_SPID_DIE3
	S_SPID_DIE4
	S_SPID_DIE5
	S_SPID_DIE6
	S_SPID_DIE7
	S_SPID_DIE8
	S_SPID_DIE9
	S_SPID_DIE10
	S_SPID_DIE11
	S_BSPI_STND
	S_BSPI_STND2
	S_BSPI_SIGHT
	S_BSPI_RUN1
	S_BSPI_RUN2
	S_BSPI_RUN3
	S_BSPI_RUN4
	S_BSPI_RUN5
	S_BSPI_RUN6
	S_BSPI_RUN7
	S_BSPI_RUN8
	S_BSPI_RUN9
	S_BSPI_RUN10
	S_BSPI_RUN11
	S_BSPI_RUN12
	S_BSPI_ATK1
	S_BSPI_ATK2
	S_BSPI_ATK3
	S_BSPI_ATK4
	S_BSPI_PAIN
	S_BSPI_PAIN2
	S_BSPI_DIE1
	S_BSPI_DIE2
	S_BSPI_DIE3
	S_BSPI_DIE4
	S_BSPI_DIE5
	S_BSPI_DIE6
	S_BSPI_DIE7
	S_BSPI_RAISE1
	S_BSPI_RAISE2
	S_BSPI_RAISE3
	S_BSPI_RAISE4
	S_BSPI_RAISE5
	S_BSPI_RAISE6
	S_BSPI_RAISE7
	S_ARACH_PLAZ
	S_ARACH_PLAZ2
	S_ARACH_PLEX
	S_ARACH_PLEX2
	S_ARACH_PLEX3
	S_ARACH_PLEX4
	S_ARACH_PLEX5
	S_CYBER_STND
	S_CYBER_STND2
	S_CYBER_RUN1
	S_CYBER_RUN2
	S_CYBER_RUN3
	S_CYBER_RUN4
	S_CYBER_RUN5
	S_CYBER_RUN6
	S_CYBER_RUN7
	S_CYBER_RUN8
	S_CYBER_ATK1
	S_CYBER_ATK2
	S_CYBER_ATK3
	S_CYBER_ATK4
	S_CYBER_ATK5
	S_CYBER_ATK6
	S_CYBER_PAIN
	S_CYBER_DIE1
	S_CYBER_DIE2
	S_CYBER_DIE3
	S_CYBER_DIE4
	S_CYBER_DIE5
	S_CYBER_DIE6
	S_CYBER_DIE7
	S_CYBER_DIE8
	S_CYBER_DIE9
	S_CYBER_DIE10
	S_PAIN_STND
	S_PAIN_RUN1
	S_PAIN_RUN2
	S_PAIN_RUN3
	S_PAIN_RUN4
	S_PAIN_RUN5
	S_PAIN_RUN6
	S_PAIN_ATK1
	S_PAIN_ATK2
	S_PAIN_ATK3
	S_PAIN_ATK4
	S_PAIN_PAIN
	S_PAIN_PAIN2
	S_PAIN_DIE1
	S_PAIN_DIE2
	S_PAIN_DIE3
	S_PAIN_DIE4
	S_PAIN_DIE5
	S_PAIN_DIE6
	S_PAIN_RAISE1
	S_PAIN_RAISE2
	S_PAIN_RAISE3
	S_PAIN_RAISE4
	S_PAIN_RAISE5
	S_PAIN_RAISE6
	S_SSWV_STND
	S_SSWV_STND2
	S_SSWV_RUN1
	S_SSWV_RUN2
	S_SSWV_RUN3
	S_SSWV_RUN4
	S_SSWV_RUN5
	S_SSWV_RUN6
	S_SSWV_RUN7
	S_SSWV_RUN8
	S_SSWV_ATK1
	S_SSWV_ATK2
	S_SSWV_ATK3
	S_SSWV_ATK4
	S_SSWV_ATK5
	S_SSWV_ATK6
	S_SSWV_PAIN
	S_SSWV_PAIN2
	S_SSWV_DIE1
	S_SSWV_DIE2
	S_SSWV_DIE3
	S_SSWV_DIE4
	S_SSWV_DIE5
	S_SSWV_XDIE1
	S_SSWV_XDIE2
	S_SSWV_XDIE3
	S_SSWV_XDIE4
	S_SSWV_XDIE5
	S_SSWV_XDIE6
	S_SSWV_XDIE7
	S_SSWV_XDIE8
	S_SSWV_XDIE9
	S_SSWV_RAISE1
	S_SSWV_RAISE2
	S_SSWV_RAISE3
	S_SSWV_RAISE4
	S_SSWV_RAISE5
	S_KEENSTND
	S_COMMKEEN
	S_COMMKEEN2
	S_COMMKEEN3
	S_COMMKEEN4
	S_COMMKEEN5
	S_COMMKEEN6
	S_COMMKEEN7
	S_COMMKEEN8
	S_COMMKEEN9
	S_COMMKEEN10
	S_COMMKEEN11
	S_COMMKEEN12
	S_KEENPAIN
	S_KEENPAIN2
	S_BRAIN
	S_BRAIN_PAIN
	S_BRAIN_DIE1
	S_BRAIN_DIE2
	S_BRAIN_DIE3
	S_BRAIN_DIE4
	S_BRAINEYE
	S_BRAINEYESEE
	S_BRAINEYE1
	S_SPAWN1
	S_SPAWN2
	S_SPAWN3
	S_SPAWN4
	S_SPAWNFIRE1
	S_SPAWNFIRE2
	S_SPAWNFIRE3
	S_SPAWNFIRE4
	S_SPAWNFIRE5
	S_SPAWNFIRE6
	S_SPAWNFIRE7
	S_SPAWNFIRE8
	S_BRAINEXPLODE1
	S_BRAINEXPLODE2
	S_BRAINEXPLODE3
	S_ARM1
	S_ARM1A
	S_ARM2
	S_ARM2A
	S_BAR1
	S_BAR2
	S_BEXP
	S_BEXP2
	S_BEXP3
	S_BEXP4
	S_BEXP5
	S_BBAR1
	S_BBAR2
	S_BBAR3
	S_BON1
	S_BON1A
	S_BON1B
	S_BON1C
	S_BON1D
	S_BON1E
	S_BON2
	S_BON2A
	S_BON2B
	S_BON2C
	S_BON2D
	S_BON2E
	S_BKEY
	S_BKEY2
	S_RKEY
	S_RKEY2
	S_YKEY
	S_YKEY2
	S_BSKULL
	S_BSKULL2
	S_RSKULL
	S_RSKULL2
	S_YSKULL
	S_YSKULL2
	S_STIM
	S_MEDI
	S_SOUL
	S_SOUL2
	S_SOUL3
	S_SOUL4
	S_SOUL5
	S_SOUL6
	S_PINV
	S_PINV2
	S_PINV3
	S_PINV4
	S_PSTR
	S_PINS
	S_PINS2
	S_PINS3
	S_PINS4
	S_MEGA
	S_MEGA2
	S_MEGA3
	S_MEGA4
	S_SUIT
	S_PMAP
	S_PMAP2
	S_PMAP3
	S_PMAP4
	S_PMAP5
	S_PMAP6
	S_PVIS
	S_PVIS2
	S_CLIP
	S_AMMO
	S_ROCK
	S_BROK
	S_CELL
	S_CELP
	S_SHEL
	S_SBOX
	S_BPAK
	S_BFUG
	S_MGUN
	S_CSAW
	S_LAUN
	S_PLAS
	S_SHOT
	S_SHOT2
	S_COLU
	S_STALAG
	S_BLOODYTWITCH
	S_BLOODYTWITCH2
	S_BLOODYTWITCH3
	S_BLOODYTWITCH4
	S_DEADTORSO
	S_DEADBOTTOM
	S_HEADSONSTICK
	S_GIBS
	S_HEADONASTICK
	S_HEADCANDLES
	S_HEADCANDLES2
	S_DEADSTICK
	S_LIVESTICK
	S_LIVESTICK2
	S_MEAT2
	S_MEAT3
	S_MEAT4
	S_MEAT5
	S_STALAGTITE
	S_TALLGRNCOL
	S_SHRTGRNCOL
	S_TALLREDCOL
	S_SHRTREDCOL
	S_CANDLESTIK
	S_CANDELABRA
	S_SKULLCOL
	S_TORCHTREE
	S_BIGTREE
	S_TECHPILLAR
	S_EVILEYE
	S_EVILEYE2
	S_EVILEYE3
	S_EVILEYE4
	S_FLOATSKULL
	S_FLOATSKULL2
	S_FLOATSKULL3
	S_HEARTCOL
	S_HEARTCOL2
	S_BLUETORCH
	S_BLUETORCH2
	S_BLUETORCH3
	S_BLUETORCH4
	S_GREENTORCH
	S_GREENTORCH2
	S_GREENTORCH3
	S_GREENTORCH4
	S_REDTORCH
	S_REDTORCH2
	S_REDTORCH3
	S_REDTORCH4
	S_BTORCHSHRT
	S_BTORCHSHRT2
	S_BTORCHSHRT3
	S_BTORCHSHRT4
	S_GTORCHSHRT
	S_GTORCHSHRT2
	S_GTORCHSHRT3
	S_GTORCHSHRT4
	S_RTORCHSHRT
	S_RTORCHSHRT2
	S_RTORCHSHRT3
	S_RTORCHSHRT4
	S_HANGNOGUTS
	S_HANGBNOBRAIN
	S_HANGTLOOKDN
	S_HANGTSKULL
	S_HANGTLOOKUP
	S_HANGTNOBRAIN
	S_COLONGIBS
	S_SMALLPOOL
	S_BRAINSTEM
	S_TECHLAMP
	S_TECHLAMP2
	S_TECHLAMP3
	S_TECHLAMP4
	S_TECH2LAMP
	S_TECH2LAMP2
	S_TECH2LAMP3
	S_TECH2LAMP4
	NUMSTATES
}

struct state_t { 
	sprite spritenum_t
	frame int
	tics int
	action actionf_t
	nextstate statenum_t
	misc1 int
	misc2 int
}
 
__global states [967]state_t 

__global sprnames []byteptr 

enum mobjtype_t {
	MT_PLAYER
	MT_POSSESSED
	MT_SHOTGUY
	MT_VILE
	MT_FIRE
	MT_UNDEAD
	MT_TRACER
	MT_SMOKE
	MT_FATSO
	MT_FATSHOT
	MT_CHAINGUY
	MT_TROOP
	MT_SERGEANT
	MT_SHADOWS
	MT_HEAD
	MT_BRUISER
	MT_BRUISERSHOT
	MT_KNIGHT
	MT_SKULL
	MT_SPIDER
	MT_BABY
	MT_CYBORG
	MT_PAIN
	MT_WOLFSS
	MT_KEEN
	MT_BOSSBRAIN
	MT_BOSSSPIT
	MT_BOSSTARGET
	MT_SPAWNSHOT
	MT_SPAWNFIRE
	MT_BARREL
	MT_TROOPSHOT
	MT_HEADSHOT
	MT_ROCKET
	MT_PLASMA
	MT_BFG
	MT_ARACHPLAZ
	MT_PUFF
	MT_BLOOD
	MT_TFOG
	MT_IFOG
	MT_TELEPORTMAN
	MT_EXTRABFG
	MT_MISC0
	MT_MISC1
	MT_MISC2
	MT_MISC3
	MT_MISC4
	MT_MISC5
	MT_MISC6
	MT_MISC7
	MT_MISC8
	MT_MISC9
	MT_MISC10
	MT_MISC11
	MT_MISC12
	MT_INV
	MT_MISC13
	MT_INS
	MT_MISC14
	MT_MISC15
	MT_MISC16
	MT_MEGA
	MT_CLIP
	MT_MISC17
	MT_MISC18
	MT_MISC19
	MT_MISC20
	MT_MISC21
	MT_MISC22
	MT_MISC23
	MT_MISC24
	MT_MISC25
	MT_CHAINGUN
	MT_MISC26
	MT_MISC27
	MT_MISC28
	MT_SHOTGUN
	MT_SUPERSHOTGUN
	MT_MISC29
	MT_MISC30
	MT_MISC31
	MT_MISC32
	MT_MISC33
	MT_MISC34
	MT_MISC35
	MT_MISC36
	MT_MISC37
	MT_MISC38
	MT_MISC39
	MT_MISC40
	MT_MISC41
	MT_MISC42
	MT_MISC43
	MT_MISC44
	MT_MISC45
	MT_MISC46
	MT_MISC47
	MT_MISC48
	MT_MISC49
	MT_MISC50
	MT_MISC51
	MT_MISC52
	MT_MISC53
	MT_MISC54
	MT_MISC55
	MT_MISC56
	MT_MISC57
	MT_MISC58
	MT_MISC59
	MT_MISC60
	MT_MISC61
	MT_MISC62
	MT_MISC63
	MT_MISC64
	MT_MISC65
	MT_MISC66
	MT_MISC67
	MT_MISC68
	MT_MISC69
	MT_MISC70
	MT_MISC71
	MT_MISC72
	MT_MISC73
	MT_MISC74
	MT_MISC75
	MT_MISC76
	MT_MISC77
	MT_MISC78
	MT_MISC79
	MT_MISC80
	MT_MISC81
	MT_MISC82
	MT_MISC83
	MT_MISC84
	MT_MISC85
	MT_MISC86
	NUMMOBJTYPES
}

struct mobjinfo_t { 
	doomednum int
	spawnstate int
	spawnhealth int
	seestate int
	seesound int
	reactiontime int
	attacksound int
	painstate int
	painchance int
	painsound int
	meleestate int
	missilestate int
	deathstate int
	xdeathstate int
	deathsound int
	speed int
	radius int
	height int
	mass int
	damage int
	activesound int
	flags int
	raisestate int
}
 
__global mobjinfo [137]mobjinfo_t 

enum mobjflag_t {
	MF_SPECIAL
	MF_SOLID
	MF_SHOOTABLE
	MF_NOSECTOR
	MF_NOBLOCKMAP
	MF_AMBUSH
	MF_JUSTHIT
	MF_JUSTATTACKED
	MF_SPAWNCEILING
	MF_NOGRAVITY
	MF_DROPOFF
	MF_PICKUP
	MF_NOCLIP
	MF_SLIDE
	MF_FLOAT
	MF_TELEPORT
	MF_MISSILE
	MF_DROPPED
	MF_SHADOW
	MF_NOBLOOD
	MF_CORPSE
	MF_INFLOAT
	MF_COUNTKILL
	MF_COUNTITEM
	MF_SKULLFLY
	MF_NOTDMATCH
	MF_TRANSLATION
	MF_TRANSSHIFT
}

struct mobj_s { 
	thinker thinker_t
	x int
	y int
	z int
	snext * mobj_s
	sprev * mobj_s
	angle angle_t
	sprite spritenum_t
	frame int
	bnext * mobj_s
	bprev * mobj_s
	subsector * subsector_s
	floorz int
	ceilingz int
	radius int
	height int
	momx int
	momy int
	momz int
	validcount int
	_type mobjtype_t
	info *mobjinfo_t
	tics int
	state *state_t
	flags int
	health int
	movedir int
	movecount int
	target * mobj_s
	reactiontime int
	threshold int
	player * player_s
	lastlook int
	spawnpoint mapthing_t
	tracer * mobj_s
}
 
type mobj_t mobj_s 
type grabmouse_callback_t fn () bool 
fn I_InitGraphics()  

fn I_GraphicsCheckCommandLine()  

fn I_ShutdownGraphics()  

fn I_SetPalette(palette byteptr)  

fn I_GetPaletteIndex(r int, g int, b int) int 

fn I_UpdateNoBlit()  

fn I_FinishUpdate()  

fn I_ReadScreen(scr *pixel_t)  

fn I_BeginRead()  

fn I_SetWindowTitle(title byteptr)  

fn I_CheckIsScreensaver()  

fn I_SetGrabMouseCallback(func grabmouse_callback_t)  

fn I_DisplayFPSDots(dots_on bool)  

fn I_BindVideoVariables()  

fn I_InitWindowTitle()  

fn I_InitWindowIcon()  

fn I_StartFrame()  

fn I_StartTic()  

fn I_EnableLoadingDisk(xoffs int, yoffs int)  

__global video_driver byteptr 

__global screenvisible bool 

__global vanilla_keyboard_mapping int 

__global screensaver_mode bool 

__global usegamma int 

__global I_VideoBuffer *pixel_t 

__global screen_width int 

__global screen_height int 

__global fullscreen int 

__global aspect_ratio_correct int 

__global integer_scaling int 

__global vga_porch_flash int 

__global force_software_renderer int 

__global window_position byteptr 

fn I_GetWindowPosition(x *int, y *int, w int, h int)  

__global joywait u32 

struct patch_t { 
	width i16
	height i16
	leftoffset i16
	topoffset i16
	columnofs [8]int
}
 
struct post_t { 
	topdelta byte
	length byte
}
 
type column_t post_t 
struct vertex_t { 
	x int
	y int
}
 
struct degenmobj_t { 
	thinker thinker_t
	x int
	y int
	z int
}
 
struct sector_t { 
	floorheight int
	ceilingheight int
	floorpic i16
	ceilingpic i16
	lightlevel i16
	special i16
	tag i16
	soundtraversed int
	soundtarget *mobj_t
	blockbox [4]int
	soundorg degenmobj_t
	validcount int
	thinglist *mobj_t
	specialdata voidptr
	linecount int
	lines ** line_s
	LULKEK int
}
 
struct side_t { 
	textureoffset int
	rowoffset int
	toptexture i16
	bottomtexture i16
	midtexture i16
	sector *sector_t
}
 
enum slopetype_t {
	ST_HORIZONTAL
	ST_VERTICAL
	ST_POSITIVE
	ST_NEGATIVE
}

struct line_s { 
	v1 *vertex_t
	v2 *vertex_t
	dx int
	dy int
	flags i16
	special i16
	tag i16
	sidenum [2]i16
	bbox [4]int
	slopetype slopetype_t
	frontsector *sector_t
	backsector *sector_t
	validcount int
	specialdata voidptr
}
 
type line_t line_s 
struct subsector_s { 
	sector *sector_t
	numlines i16
	firstline i16
}
 
type subsector_t subsector_s 
struct seg_t { 
	v1 *vertex_t
	v2 *vertex_t
	offset int
	angle angle_t
	sidedef *side_t
	linedef *line_t
	frontsector *sector_t
	backsector *sector_t
}
 
struct node_t { 
	x int
	y int
	dx int
	dy int
	bbox [2][4]int
	children [2]u16
}
 
type lighttable_t byte 
struct drawseg_s { 
	curline *seg_t
	x1 int
	x2 int
	scale1 int
	scale2 int
	scalestep int
	silhouette int
	bsilheight int
	tsilheight int
	sprtopclip *short
	sprbottomclip *short
	maskedtexturecol *short
}
 
type drawseg_t drawseg_s 
struct vissprite_s { 
	prev * vissprite_s
	next * vissprite_s
	x1 int
	x2 int
	gx int
	gy int
	gz int
	gzt int
	startfrac int
	scale int
	xiscale int
	texturemid int
	patch int
	colormap *lighttable_t
	mobjflags int
}
 
type vissprite_t vissprite_s 
struct spriteframe_t { 
	rotate bool
	lump [8]i16
	flip [8]byte
}
 
struct spritedef_t { 
	numframes int
	spriteframes *spriteframe_t
}
 
struct visplane_t { 
	height int
	picnum int
	lightlevel int
	minx int
	maxx int
	pad1 byte
	top [320]byte
	pad2 byte
	pad3 byte
	bottom [320]byte
	pad4 byte
}
 
struct weaponinfo_t { 
	ammo ammotype_t
	upstate int
	downstate int
	readystate int
	atkstate int
	flashstate int
}
 
__global weaponinfo [9]weaponinfo_t 

enum psprnum_t {
	ps_weapon
	ps_flash
	NUMPSPRITES
}

struct pspdef_t { 
	state *state_t
	tics int
	sx int
	sy int
}
 
type sha1_context_t sha1_context_s 
type sha1_digest_t [20]byte 
struct sha1_context_s { 
	h0 u32
	h1 u32
	h2 u32
	h3 u32
	h4 u32
	nblocks u32
	buf [64]byte
	count int
}
 
fn SHA1_Init(context *sha1_context_t)  

fn SHA1_Update(context *sha1_context_t, buf byteptr, len size_t)  

fn SHA1_Final(digest byteptr, context *sha1_context_t)  

fn SHA1_UpdateInt32(context *sha1_context_t, val u32)  

fn SHA1_UpdateString(context *sha1_context_t, str byteptr)  

type net_module_t _net_module_s 
type net_packet_t _net_packet_s 
type net_addr_t _net_addr_s 
type net_context_t _net_context_s 
struct _net_packet_s { 
	data byteptr
	len size_t
	alloced size_t
	pos u32
}
 
struct _net_module_s { 
	InitClient fn () bool
	InitServer fn () bool
	SendPacket fn (*net_addr_t, *net_packet_t)
	RecvPacket fn (**net_addr_t, **net_packet_t) bool
	AddrToString fn (*net_addr_t, byteptr, int)
	FreeAddress fn (*net_addr_t)
	ResolveAddress fn (byteptr) *net_addr_t
}
 
struct _net_addr_s { 
	_module *net_module_t
	refcount int
	handle voidptr
}
 
enum net_protocol_t {
	NET_PROTOCOL_CHOCOLATE_DOOM_0
	NET_NUM_PROTOCOLS
	NET_PROTOCOL_UNKNOWN
}

enum net_packet_type_t {
	NET_PACKET_TYPE_SYN
	NET_PACKET_TYPE_ACK
	NET_PACKET_TYPE_REJECTED
	NET_PACKET_TYPE_KEEPALIVE
	NET_PACKET_TYPE_WAITING_DATA
	NET_PACKET_TYPE_GAMESTART
	NET_PACKET_TYPE_GAMEDATA
	NET_PACKET_TYPE_GAMEDATA_ACK
	NET_PACKET_TYPE_DISCONNECT
	NET_PACKET_TYPE_DISCONNECT_ACK
	NET_PACKET_TYPE_RELIABLE_ACK
	NET_PACKET_TYPE_GAMEDATA_RESEND
	NET_PACKET_TYPE_CONSOLE_MESSAGE
	NET_PACKET_TYPE_QUERY
	NET_PACKET_TYPE_QUERY_RESPONSE
	NET_PACKET_TYPE_LAUNCH
	NET_PACKET_TYPE_NAT_HOLE_PUNCH
}

enum net_master_packet_type_t {
	NET_MASTER_PACKET_TYPE_ADD
	NET_MASTER_PACKET_TYPE_ADD_RESPONSE
	NET_MASTER_PACKET_TYPE_QUERY
	NET_MASTER_PACKET_TYPE_QUERY_RESPONSE
	NET_MASTER_PACKET_TYPE_GET_METADATA
	NET_MASTER_PACKET_TYPE_GET_METADATA_RESPONSE
	NET_MASTER_PACKET_TYPE_SIGN_START
	NET_MASTER_PACKET_TYPE_SIGN_START_RESPONSE
	NET_MASTER_PACKET_TYPE_SIGN_END
	NET_MASTER_PACKET_TYPE_SIGN_END_RESPONSE
	NET_MASTER_PACKET_TYPE_NAT_HOLE_PUNCH
	NET_MASTER_PACKET_TYPE_NAT_HOLE_PUNCH_ALL
}

struct net_connect_data_t { 
	gamemode int
	gamemission int
	lowres_turn int
	drone int
	max_players int
	is_freedoom int
	wad_sha1sum [20]sha1_digest_t
	deh_sha1sum [20]sha1_digest_t
	player_class int
}
 
struct net_gamesettings_t { 
	ticdup int
	extratics int
	deathmatch int
	episode int
	nomonsters int
	fast_monsters int
	respawn_monsters int
	map int
	skill int
	gameversion int
	lowres_turn int
	new_sync int
	timelimit int
	loadgame int
	random int
	num_players int
	consoleplayer int
	player_classes [8]int
}
 
struct net_ticdiff_t { 
	diff u32
	cmd ticcmd_t
}
 
struct net_full_ticcmd_t { 
	latency int
	seq u32
	playeringame [8]bool
	cmds [8]net_ticdiff_t
}
 
struct net_querydata_t { 
	version byteptr
	server_state int
	num_players int
	max_players int
	gamemode int
	gamemission int
	description byteptr
	protocol net_protocol_t
}
 
struct net_waitdata_t { 
	num_players int
	num_drones int
	ready_players int
	max_players int
	is_controller int
	consoleplayer int
	player_names [8][30]byte
	player_addrs [8][30]byte
	wad_sha1sum [20]sha1_digest_t
	deh_sha1sum [20]sha1_digest_t
	is_freedoom int
}
 
enum playerstate_t {
	PST_LIVE
	PST_DEAD
	PST_REBORN
}

enum cheat_t {
	CF_NOCLIP
	CF_GODMODE
	CF_NOMOMENTUM
}

struct player_s { 
	mo *mobj_t
	playerstate playerstate_t
	cmd ticcmd_t
	viewz int
	viewheight int
	deltaviewheight int
	bob int
	health int
	armorpoints int
	armortype int
	powers [6]int
	cards [6]bool
	backpack bool
	frags [4]int
	readyweapon weapontype_t
	pendingweapon weapontype_t
	weaponowned [9]int
	ammo [4]int
	maxammo [4]int
	attackdown int
	usedown int
	cheats int
	refire int
	killcount int
	itemcount int
	secretcount int
	message byteptr
	damagecount int
	bonuscount int
	attacker *mobj_t
	extralight int
	fixedcolormap int
	colormap int
	psprites [2]pspdef_t
	didsecret bool
}
 
type player_t player_s 
struct wbplayerstruct_t { 
	_in bool
	skills int
	sitems int
	ssecret int
	stime int
	frags [4]int
	score int
}
 
struct wbstartstruct_t { 
	epsd int
	didsecret bool
	last int
	next int
	maxkills int
	maxitems int
	maxsecret int
	maxfrags int
	partime int
	pnum int
	plyr [4]wbplayerstruct_t
}
 
__global textureheight *int 

__global spritewidth *int 

__global spriteoffset *int 

__global spritetopoffset *int 

__global colormaps *lighttable_t 

__global viewwidth int 

__global scaledviewwidth int 

__global viewheight int 

__global firstflat int 

__global flattranslation *int 

__global texturetranslation *int 

__global firstspritelump int 

__global lastspritelump int 

__global numspritelumps int 

__global numsprites int 

__global sprites *spritedef_t 

__global numvertexes int 

__global vertexes *vertex_t 

__global numsegs int 

__global segs *seg_t 

__global numsectors int 

__global sectors *sector_t 

__global numsubsectors int 

__global subsectors *subsector_t 

__global numnodes int 

__global nodes *node_t 

__global numlines int 

__global lines *line_t 

__global numsides int 

__global sides *side_t 

__global viewx int 

__global viewy int 

__global viewz int 

__global viewangle angle_t 

__global viewplayer *player_t 

__global clipangle angle_t 

__global viewangletox [4096]int 

__global xtoviewangle [321]angle_t 

__global rw_distance int 

__global rw_normalangle angle_t 

__global rw_angle1 int 

__global sscount int 

__global floorplane *visplane_t 

__global ceilingplane *visplane_t 

fn R_GetColumn(tex int, col int) byteptr 

fn R_InitData()  

fn R_PrecacheLevel()  

fn R_FlatNumForName(name byteptr) int 

fn R_TextureNumForName(name byteptr) int 

fn R_CheckTextureNumForName(name byteptr) int 

__global viewcos int 

__global viewsin int 

__global viewwindowx int 

__global viewwindowy int 

__global centerx int 

__global centery int 

__global centerxfrac int 

__global centeryfrac int 

__global projection int 

__global validcount int 

__global linecount int 

__global loopcount int 

__global scalelight [16][48]*lighttable_t 

__global scalelightfixed [48]*lighttable_t 

__global zlight [16][128]*lighttable_t 

__global extralight int 

__global fixedcolormap *lighttable_t 

__global detailshift int 

__global colfunc fn () 

__global transcolfunc fn () 

__global basecolfunc fn () 

__global fuzzcolfunc fn () 

__global spanfunc fn () 

fn R_PointOnSide(x int, y int, node *node_t) int 

fn R_PointOnSegSide(x int, y int, line *seg_t) int 

fn R_PointToAngle(x int, y int) angle_t 

fn R_PointToAngle2(x1 int, y1 int, x2 int, y2 int) angle_t 

fn R_PointToDist(x int, y int) int 

fn R_ScaleFromGlobalAngle(visangle angle_t) int 

fn R_PointInSubsector(x int, y int) *subsector_t 

fn R_AddPointToBox(x int, y int, box *int)  

fn R_RenderPlayerView(player *player_t)  

fn R_Init()  

fn R_SetViewSize(blocks int, detail int)  

__global curline *seg_t 

__global sidedef *side_t 

__global linedef *line_t 

__global frontsector *sector_t 

__global backsector *sector_t 

__global rw_x int 

__global rw_stopx int 

__global segtextured bool 

__global markfloor bool 

__global markceiling bool 

__global skymap bool 

__global drawsegs [256]drawseg_t 

__global ds_p *drawseg_t 

__global hscalelight **lighttable_t 

__global vscalelight **lighttable_t 

__global dscalelight **lighttable_t 

type drawfunc_t fn (int, int) 
fn R_ClearClipSegs()  

fn R_ClearDrawSegs()  

fn R_RenderBSPNode(bspnum int)  

fn R_RenderMaskedSegRange(ds *drawseg_t, x1 int, x2 int)  

__global lastopening *short 

type planefunction_t fn (int, int) 
__global floorfunc planefunction_t 

__global ceilingfunc_t planefunction_t 

__global floorclip [320]i16 

__global ceilingclip [320]i16 

__global yslope [200]int 

__global distscale [320]int 

fn R_InitPlanes()  

fn R_ClearPlanes()  

fn R_MapPlane(y int, x1 int, x2 int)  

fn R_MakeSpans(x int, t1 int, b1 int, t2 int, b2 int)  

fn R_DrawPlanes()  

fn R_FindPlane(height int, picnum int, lightlevel int) *visplane_t 

fn R_CheckPlane(pl *visplane_t, start int, stop int) *visplane_t 

__global vissprites [128]vissprite_t 

__global vissprite_p *vissprite_t 

__global vsprsortedhead vissprite_t 

__global negonearray [320]i16 

__global screenheightarray [320]i16 

__global mfloorclip *short 

__global mceilingclip *short 

__global spryscale int 

__global sprtopscreen int 

__global pspritescale int 

__global pspriteiscale int 

fn R_DrawMaskedColumn(column *column_t)  

fn R_SortVisSprites()  

fn R_AddSprites(sec *sector_t)  

fn R_AddPSprites()  

fn R_DrawSprites()  

fn R_InitSprites(namelist *byteptr)  

fn R_ClearSprites()  

fn R_DrawMasked()  

fn R_ClipVisSprite(vis *vissprite_t, xl int, xh int)  

__global dc_colormap *lighttable_t 

__global dc_x int 

__global dc_yl int 

__global dc_yh int 

__global dc_iscale int 

__global dc_texturemid int 

__global dc_source byteptr 

fn R_DrawColumn()  

fn R_DrawColumnLow()  

fn R_DrawFuzzColumn()  

fn R_DrawFuzzColumnLow()  

fn R_DrawTranslatedColumn()  

fn R_DrawTranslatedColumnLow()  

fn R_VideoErase(ofs u32, count int)  

__global ds_y int 

__global ds_x1 int 

__global ds_x2 int 

__global ds_colormap *lighttable_t 

__global ds_xfrac int 

__global ds_yfrac int 

__global ds_xstep int 

__global ds_ystep int 

__global ds_source byteptr 

__global translationtables byteptr 

__global dc_translation byteptr 

fn R_DrawSpan()  

fn R_DrawSpanLow()  

fn R_InitBuffer(width int, height int)  

fn R_InitTranslationTables()  

fn R_FillBackScreen()  

fn R_DrawViewBorder()  

__global thinkercap thinker_t 

fn P_InitThinkers()  

fn P_AddThinker(thinker *thinker_t)  

fn P_RemoveThinker(thinker *thinker_t)  

fn P_SetupPsprites(curplayer *player_t)  

fn P_MovePsprites(curplayer *player_t)  

fn P_DropWeapon(player *player_t)  

fn P_PlayerThink(player *player_t)  

__global itemrespawnque [128]mapthing_t 

__global itemrespawntime [128]int 

__global iquehead int 

__global iquetail int 

fn P_RespawnSpecials()  

fn P_SpawnMobj(x int, y int, z int, _type mobjtype_t) *mobj_t 

fn P_RemoveMobj(th *mobj_t)  

fn P_SubstNullMobj(th *mobj_t) *mobj_t 

fn P_SetMobjState(mobj *mobj_t, state statenum_t) bool 

fn P_MobjThinker(mobj *mobj_t)  

fn P_SpawnPuff(x int, y int, z int)  

fn P_SpawnBlood(x int, y int, z int, damage int)  

fn P_SpawnMissile(source *mobj_t, dest *mobj_t, _type mobjtype_t) *mobj_t 

fn P_SpawnPlayerMissile(source *mobj_t, _type mobjtype_t)  

fn P_NoiseAlert(target *mobj_t, emmiter *mobj_t)  

struct divline_t { 
	x int
	y int
	dx int
	dy int
}
 
struct intercept_t { 
	frac int
	isaline bool
}
 
__global intercepts [189]intercept_t 

__global intercept_p *intercept_t 

type traverser_t fn (*intercept_t) bool 
fn P_AproxDistance(dx int, dy int) int 

fn P_PointOnLineSide(x int, y int, line *line_t) int 

fn P_PointOnDivlineSide(x int, y int, line *divline_t) int 

fn P_MakeDivline(li *line_t, dl *divline_t)  

fn P_InterceptVector(v2 *divline_t, v1 *divline_t) int 

fn P_BoxOnLineSide(tmbox *int, ld *line_t) int 

__global opentop int 

__global openbottom int 

__global openrange int 

__global lowfloor int 

fn P_LineOpening(linedef *line_t)  

fn P_BlockLinesIterator(x int, y int, func fn (*line_t) bool) bool 

fn P_BlockThingsIterator(x int, y int, func fn (*mobj_t) bool) bool 

__global trace divline_t 

fn P_PathTraverse(x1 int, y1 int, x2 int, y2 int, flags int, trav fn (*intercept_t) bool) bool 

fn P_UnsetThingPosition(thing *mobj_t)  

fn P_SetThingPosition(thing *mobj_t)  

__global floatok bool 

__global tmfloorz int 

__global tmceilingz int 

__global ceilingline *line_t 

__global spechit [20]*line_t 

__global numspechit int 

fn P_CheckPosition(thing *mobj_t, x int, y int) bool 

fn P_TryMove(thing *mobj_t, x int, y int) bool 

fn P_TeleportMove(thing *mobj_t, x int, y int) bool 

fn P_SlideMove(mo *mobj_t)  

fn P_CheckSight(t1 *mobj_t, t2 *mobj_t) bool 

fn P_UseLines(player *player_t)  

fn P_ChangeSector(sector *sector_t, crunch bool) bool 

__global linetarget *mobj_t 

fn P_AimLineAttack(t1 *mobj_t, angle angle_t, distance int) int 

fn P_LineAttack(t1 *mobj_t, angle angle_t, distance int, slope int, damage int)  

fn P_RadiusAttack(spot *mobj_t, source *mobj_t, damage int)  

__global rejectmatrix byteptr 

__global blockmaplump *short 

__global blockmap *short 

__global bmapwidth int 

__global bmapheight int 

__global bmaporgx int 

__global bmaporgy int 

__global blocklinks **mobj_t 

__global maxammo [4]int 

__global clipammo [4]int 

fn P_TouchSpecialThing(special *mobj_t, toucher *mobj_t)  

fn P_DamageMobj(target *mobj_t, inflictor *mobj_t, source *mobj_t, damage int)  

__global levelTimer bool 

__global levelTimeCount int 

fn P_InitPicAnims()  

fn P_SpawnSpecials()  

fn P_UpdateSpecials()  

fn P_UseSpecialLine(thing *mobj_t, line *line_t, side int) bool 

fn P_ShootSpecialLine(thing *mobj_t, line *line_t)  

fn P_CrossSpecialLine(linenum int, side int, thing *mobj_t)  

fn P_PlayerInSpecialSector(player *player_t)  

fn twoSided(sector int, line int) int 

fn getSector(currentSector int, line int, side int) *sector_t 

fn getSide(currentSector int, line int, side int) *side_t 

fn P_FindLowestFloorSurrounding(sec *sector_t) int 

fn P_FindHighestFloorSurrounding(sec *sector_t) int 

fn P_FindNextHighestFloor(sec *sector_t, currentheight int) int 

fn P_FindLowestCeilingSurrounding(sec *sector_t) int 

fn P_FindHighestCeilingSurrounding(sec *sector_t) int 

fn P_FindSectorFromLineTag(line *line_t, start int) int 

fn P_FindMinSurroundingLight(sector *sector_t, max int) int 

fn getNextSector(line *line_t, sec *sector_t) *sector_t 

fn EV_DoDonut(line *line_t) int 

struct fireflicker_t { 
	thinker thinker_t
	sector *sector_t
	count int
	maxlight int
	minlight int
}
 
struct lightflash_t { 
	thinker thinker_t
	sector *sector_t
	count int
	maxlight int
	minlight int
	maxtime int
	mintime int
}
 
struct strobe_t { 
	thinker thinker_t
	sector *sector_t
	count int
	minlight int
	maxlight int
	darktime int
	brighttime int
}
 
struct glow_t { 
	thinker thinker_t
	sector *sector_t
	minlight int
	maxlight int
	direction int
}
 
fn P_SpawnFireFlicker(sector *sector_t)  

fn T_LightFlash(flash *lightflash_t)  

fn P_SpawnLightFlash(sector *sector_t)  

fn T_StrobeFlash(flash *strobe_t)  

fn P_SpawnStrobeFlash(sector *sector_t, fastOrSlow int, inSync int)  

fn EV_StartLightStrobing(line *line_t)  

fn EV_TurnTagLightsOff(line *line_t)  

fn EV_LightTurnOn(line *line_t, bright int)  

fn T_Glow(g *glow_t)  

fn P_SpawnGlowingLight(sector *sector_t)  

struct switchlist_t { 
	name1 [9]byte
	name2 [9]byte
	episode i16
}
 
enum bwhere_e {
	top
	middle
	bottom
}

struct button_t { 
	line *line_t
	where bwhere_e
	btexture int
	btimer int
	soundorg *degenmobj_t
}
 
__global buttonlist [16]button_t 

fn P_ChangeSwitchTexture(line *line_t, useAgain int)  

fn P_InitSwitchList()  

enum plat_e {
	up
	down
	waiting
	in_stasis
}

enum plattype_e {
	perpetualRaise
	downWaitUpStay
	raiseAndChange
	raiseToNearestAndChange
	blazeDWUS
}

struct plat_t { 
	thinker thinker_t
	sector *sector_t
	speed int
	low int
	high int
	wait int
	count int
	status plat_e
	oldstatus plat_e
	crush bool
	tag int
	_type plattype_e
}
 
__global activeplats [30]*plat_t 

fn T_PlatRaise(plat *plat_t)  

fn EV_DoPlat(line *line_t, _type plattype_e, amount int) int 

fn P_AddActivePlat(plat *plat_t)  

fn P_RemoveActivePlat(plat *plat_t)  

fn EV_StopPlat(line *line_t)  

fn P_ActivateInStasis(tag int)  

enum vldoor_e {
	vld_normal
	vld_close30ThenOpen
	vld_close
	vld_open
	vld_raiseIn5Mins
	vld_blazeRaise
	vld_blazeOpen
	vld_blazeClose
}

struct vldoor_t { 
	thinker thinker_t
	_type vldoor_e
	sector *sector_t
	topheight int
	speed int
	direction int
	topwait int
	topcountdown int
}
 
fn EV_VerticalDoor(line *line_t, thing *mobj_t)  

fn EV_DoDoor(line *line_t, _type vldoor_e) int 

fn EV_DoLockedDoor(line *line_t, _type vldoor_e, thing *mobj_t) int 

fn T_VerticalDoor(door *vldoor_t)  

fn P_SpawnDoorCloseIn30(sec *sector_t)  

fn P_SpawnDoorRaiseIn5Mins(sec *sector_t, secnum int)  

enum ceiling_e {
	lowerToFloor
	raiseToHighest
	lowerAndCrush
	crushAndRaise
	fastCrushAndRaise
	silentCrushAndRaise
}

struct ceiling_t { 
	thinker thinker_t
	_type ceiling_e
	sector *sector_t
	bottomheight int
	topheight int
	speed int
	crush bool
	direction int
	tag int
	olddirection int
}
 
__global activeceilings [30]*ceiling_t 

fn EV_DoCeiling(line *line_t, _type ceiling_e) int 

fn T_MoveCeiling(ceiling *ceiling_t)  

fn P_AddActiveCeiling(c *ceiling_t)  

fn P_RemoveActiveCeiling(c *ceiling_t)  

fn EV_CeilingCrushStop(line *line_t) int 

fn P_ActivateInStasisCeiling(line *line_t)  

enum floor_e {
	lowerFloor
	lowerFloorToLowest
	turboLower
	raiseFloor
	raiseFloorToNearest
	raiseToTexture
	lowerAndChange
	raiseFloor24
	raiseFloor24AndChange
	raiseFloorCrush
	raiseFloorTurbo
	donutRaise
	raiseFloor512
}

enum stair_e {
	build8
	turbo16
}

struct floormove_t { 
	thinker thinker_t
	_type floor_e
	crush bool
	sector *sector_t
	direction int
	newspecial int
	texture i16
	floordestheight int
	speed int
}
 
enum result_e {
	ok
	crushed
	pastdest
}

fn T_MovePlane(sector *sector_t, speed int, dest int, crush bool, floorOrCeiling int, direction int) result_e 

fn EV_BuildStairs(line *line_t, _type stair_e) int 

fn EV_DoFloor(line *line_t, floortype floor_e) int 

fn T_MoveFloor(floor *floormove_t)  

fn EV_Teleport(line *line_t, side int, thing *mobj_t) int 

type sfxinfo_t sfxinfo_struct 
struct sfxinfo_struct { 
	tagname byteptr
	name [9]byte
	priority int
	link *sfxinfo_t
	pitch int
	volume int
	usefulness int
	lumpnum int
	numchannels int
	driver_data voidptr
}
 
struct musicinfo_t { 
	name byteptr
	lumpnum int
	data voidptr
	handle voidptr
}
 
enum snddevice_t {
	SNDDEVICE_NONE
	SNDDEVICE_PCSPEAKER
	SNDDEVICE_ADLIB
	SNDDEVICE_SB
	SNDDEVICE_PAS
	SNDDEVICE_GUS
	SNDDEVICE_WAVEBLASTER
	SNDDEVICE_SOUNDCANVAS
	SNDDEVICE_GENMIDI
	SNDDEVICE_AWE32
	SNDDEVICE_CD
}

struct sound_module_t { 
	sound_devices *snddevice_t
	num_sound_devices int
	Init fn (bool) bool
	Shutdown fn ()
	GetSfxLumpNum fn (*sfxinfo_t) int
	Update fn ()
	UpdateSoundParams fn (int, int, int)
	StartSound fn (*sfxinfo_t, int, int, int, int) int
	StopSound fn (int)
	SoundIsPlaying fn (int) bool
	CacheSounds fn (*sfxinfo_t, int)
}
 
fn I_InitSound(use_sfx_prefix bool)  

fn I_ShutdownSound()  

fn I_GetSfxLumpNum(sfxinfo *sfxinfo_t) int 

fn I_UpdateSound()  

fn I_UpdateSoundParams(channel int, vol int, sep int)  

fn I_StartSound(sfxinfo *sfxinfo_t, channel int, vol int, sep int, pitch int) int 

fn I_StopSound(channel int)  

fn I_SoundIsPlaying(channel int) bool 

fn I_PrecacheSounds(sounds *sfxinfo_t, num_sounds int)  

struct music_module_t { 
	sound_devices *snddevice_t
	num_sound_devices int
	Init fn () bool
	Shutdown fn ()
	SetMusicVolume fn (int)
	PauseMusic fn ()
	ResumeMusic fn ()
	RegisterSong fn (voidptr, int) voidptr
	UnRegisterSong fn (voidptr)
	PlaySong fn (voidptr, bool)
	StopSong fn ()
	MusicIsPlaying fn () bool
	Poll fn ()
}
 
fn I_InitMusic()  

fn I_ShutdownMusic()  

fn I_SetMusicVolume(volume int)  

fn I_PauseSong()  

fn I_ResumeSong()  

fn I_RegisterSong(data voidptr, len int) voidptr 

fn I_UnRegisterSong(handle voidptr)  

fn I_PlaySong(handle voidptr, looping bool)  

fn I_StopSong()  

fn I_MusicIsPlaying() bool 

__global snd_sfxdevice int 

__global snd_musicdevice int 

__global snd_samplerate int 

__global snd_cachesize int 

__global snd_maxslicetime_ms int 

__global snd_musiccmd byteptr 

__global snd_pitchshift int 

fn I_BindSoundVariables()  

enum opl_driver_ver_t {
	opl_doom1_1_666
	opl_doom2_1_666
	opl_doom_1_9
}

fn I_SetOPLDriverVer(ver opl_driver_ver_t)  

__global S_sfx []sfxinfo_t 

__global S_music []musicinfo_t 

enum musicenum_t {
	mus_None
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
	NUMMUSIC
}

enum sfxenum_t {
	sfx_None
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
	NUMSFX
}

fn S_Init(sfxVolume int, musicVolume int)  

fn S_Shutdown()  

fn S_Start()  

fn S_StartSound(origin voidptr, sound_id int)  

fn S_StopSound(origin *mobj_t)  

fn S_StartMusic(music_id int)  

fn S_ChangeMusic(music_id int, looping int)  

fn S_MusicPlaying() bool 

fn S_StopMusic()  

fn S_PauseSound()  

fn S_ResumeSound()  

fn S_UpdateSounds(listener *mobj_t)  

fn S_SetMusicVolume(volume int)  

fn S_SetSfxVolume(volume int)  

__global snd_channels int 

fn G_DeathMatchSpawnPlayer(playernum int)  

fn G_InitNew(skill skill_t, episode int, map int)  

fn G_DeferedInitNew(skill skill_t, episode int, map int)  

fn G_DeferedPlayDemo(demo byteptr)  

fn G_LoadGame(name byteptr)  

fn G_DoLoadGame()  

fn G_SaveGame(slot int, description byteptr)  

fn G_RecordDemo(name byteptr)  

fn G_BeginRecording()  

fn G_PlayDemo(name byteptr)  

fn G_TimeDemo(name byteptr)  

fn G_CheckDemoStatus() bool 

fn G_ExitLevel()  

fn G_SecretExitLevel()  

fn G_WorldDone()  

fn G_BuildTiccmd(cmd *ticcmd_t, maketic int)  

fn G_Ticker()  

fn G_Responder(ev *event_t) bool 

fn G_ScreenShot()  

fn G_DrawMouseSpeedBox()  

fn G_VanillaVersionCode() int 

__global vanilla_savegame_limit int 

__global vanilla_demo_limit int 

type netgame_startup_callback_t fn (int, int) bool 
struct loop_interface_t { 
	ProcessEvents fn ()
	BuildTiccmd fn (*ticcmd_t, int)
	RunTic fn (*ticcmd_t, *bool)
	RunMenu fn ()
}
 
fn D_RegisterLoopCallbacks(i *loop_interface_t)  

fn NetUpdate()  

fn D_QuitNetGame()  

fn TryRunTics()  

fn D_StartGameLoop()  

fn D_InitNetGame(connect_data *net_connect_data_t) bool 

fn D_StartNetGame(settings *net_gamesettings_t, callback netgame_startup_callback_t)  

__global singletics bool 

__global gametic int 

__global ticdup int 

fn D_NonVanillaRecord(conditional bool, feature byteptr) bool 

fn D_NonVanillaPlayback(conditional bool, lumpnum int, feature byteptr) bool 

__global nomonsters bool 

__global respawnparm bool 

__global fastparm bool 

__global devparm bool 

__global gamemode GameMode_t 

__global gamemission GameMission_t 

__global gameversion GameVersion_t 

__global gamevariant GameVariant_t 

__global gamedescription byteptr 

__global modifiedgame bool 

__global startskill skill_t 

__global startepisode int 

__global startmap int 

__global startloadgame int 

__global autostart bool 

__global gameskill skill_t 

__global gameepisode int 

__global gamemap int 

__global timelimit int 

__global respawnmonsters bool 

__global netgame bool 

__global deathmatch int 

__global sfxVolume int 

__global musicVolume int 

__global snd_MusicDevice int 

__global snd_SfxDevice int 

__global snd_DesiredMusicDevice int 

__global snd_DesiredSfxDevice int 

__global statusbaractive bool 

__global automapactive bool 

__global menuactive bool 

__global paused bool 

__global viewactive bool 

__global nodrawers bool 

__global testcontrols bool 

__global testcontrols_mousespeed int 

__global viewangleoffset int 

__global consoleplayer int 

__global displayplayer int 

__global totalkills int 

__global totalitems int 

__global totalsecret int 

__global levelstarttic int 

__global leveltime int 

__global usergame bool 

__global demoplayback bool 

__global demorecording bool 

__global lowres_turn bool 

__global singledemo bool 

__global gamestate gamestate_t 

__global players [4]player_t 

__global playeringame [4]bool 

__global deathmatchstarts [10]mapthing_t 

__global deathmatch_p *mapthing_t 

__global playerstarts [4]mapthing_t 

__global playerstartsingame [4]bool 

__global wminfo wbstartstruct_t 

__global savegamedir byteptr 

__global precache bool 

__global wipegamestate gamestate_t 

__global mouseSensitivity int 

__global bodyqueslot int 

__global skyflatnum int 

__global rndindex int 

__global netcmds *ticcmd_t 

enum dirtype_t {
	DI_EAST
	DI_NORTHEAST
	DI_NORTH
	DI_NORTHWEST
	DI_WEST
	DI_SOUTHWEST
	DI_SOUTH
	DI_SOUTHEAST
	DI_NODIR
	NUMDIRS
}

const (
opposite   = [ DI_WEST, DI_SOUTHWEST, DI_SOUTH, DI_SOUTHEAST, DI_EAST, DI_NORTHEAST, DI_NORTH, DI_NORTHWEST, DI_NODIR, ]
!!
)

const (
diags   = [ DI_NORTHWEST, DI_NORTHEAST, DI_SOUTHWEST, DI_SOUTHEAST, ]
!!
)

fn A_Fall(actor *mobj_t)  

__global soundtarget *mobj_t 

fn P_RecursiveSound(sec *sector_t, soundblocks int)  {
i := 0
check := &line_t{!}
other := &sector_t{!}
if sec.validcount == validcount && sec.soundtraversed <= soundblocks + 1 {
return 
}
sec.validcount = validcount
sec.soundtraversed = soundblocks + 1
sec.soundtarget = soundtarget
for i = 0 ; i < sec.linecount ; i ++ {
check = sec.lines [i] 
if !(check.flags & 4) {
continue

}
P_LineOpening(check)
if openrange <= 0 {
continue

}
if sides [check.sidenum [0] ] .sector == sec {
other = sides [check.sidenum [1] ] .sector
}
else { 
other = sides [check.sidenum [0] ] .sector
}
if check.flags & 64 {
if !soundblocks {
P_RecursiveSound(other, 1)
}
}
else { 
P_RecursiveSound(other, soundblocks)
}
}
}

fn P_NoiseAlert(target *mobj_t, emmiter *mobj_t)  {
soundtarget = target
validcount ++
P_RecursiveSound(emmiter.subsector.sector, 0)
}

fn P_CheckMeleeRange(actor *mobj_t) bool {
pl := &mobj_t{!}
dist := 0
if !actor.target {
return _false
}
pl = actor.target
dist = P_AproxDistance(pl.x - actor.x, pl.y - actor.y)
if dist >= (64 * (1 << 16)) - 20 * (1 << 16) + pl.info.radius {
return _false
}
if !P_CheckSight(actor, actor.target) {
return _false
}
return _true
}

fn P_CheckMissileRange(actor *mobj_t) bool {
dist := 0
if !P_CheckSight(actor, actor.target) {
return _false
}
if actor.flags & MF_JUSTHIT {
actor.flags &= ~MF_JUSTHIT
return _true
}
if actor.reactiontime {
return _false
}
dist = P_AproxDistance(actor.x - actor.target.x, actor.y - actor.target.y) - 64 * (1 << 16)
if !actor.info.meleestate {
dist -= 128 * (1 << 16)
}
dist >>= 16
if actor._type == MT_VILE {
if dist > 14 * 64 {
return _false
}
}
if actor._type == MT_UNDEAD {
if dist < 196 {
return _false
}
dist >>= 1
}
if actor._type == MT_CYBORG || actor._type == MT_SPIDER || actor._type == MT_SKULL {
dist >>= 1
}
if dist > 200 {
dist = 200
}
if actor._type == MT_CYBORG && dist > 160 {
dist = 160
}
if P_Random() < dist {
return _false
}
return _true
}

const (
xspeed   = [ (1 << 16), 47000, 0, -47000, -(1 << 16), -47000, 0, 47000, ]
!!
)

const (
yspeed   = [ 0, 47000, (1 << 16), 47000, 0, -47000, -(1 << 16), -47000, ]
!!
)

fn P_Move(actor *mobj_t) bool {
tryx := 0
tryy := 0
ld := &line_t{!}
try_ok := false
good := false
if actor.movedir == DI_NODIR {
return _false
}
if u32(actor.movedir) >= 8 {
I_Error('Weird actor->movedir!')
}
tryx = actor.x + actor.info.speed * xspeed [actor.movedir] 
tryy = actor.y + actor.info.speed * yspeed [actor.movedir] 
try_ok = P_TryMove(actor, tryx, tryy)
if !try_ok {
if actor.flags & MF_FLOAT && floatok {
if actor.z < tmfloorz {
actor.z += ((1 << 16) * 4)
}
else { 
actor.z -= ((1 << 16) * 4)
}
actor.flags |= MF_INFLOAT
return _true
}
if !numspechit {
return _false
}
actor.movedir = DI_NODIR
good = _false
for numspechit -- {
ld = spechit [numspechit] 
if P_UseSpecialLine(actor, ld, 0) {
good = _true
}
}
return good
}
else {
actor.flags &= ~MF_INFLOAT
}
if !(actor.flags & MF_FLOAT) {
actor.z = actor.floorz
}
return _true
}

fn P_TryWalk(actor *mobj_t) bool {
if !P_Move(actor) {
return _false
}
actor.movecount = P_Random() & 15
return _true
}

fn P_NewChaseDir(actor *mobj_t)  {
deltax := 0
deltay := 0
d := [3]dirtype_t
tdir := 0
olddir := 0
turnaround := 0
if !actor.target {
I_Error('P_NewChaseDir: called with no target')
}
olddir = actor.movedir
turnaround = opposite [olddir] 
deltax = actor.target.x - actor.x
deltay = actor.target.y - actor.y
if deltax > 10 * (1 << 16) {
d [1]  = DI_EAST
}
else if deltax < -10 * (1 << 16) {
d [1]  = DI_WEST
}
else { 
d [1]  = DI_NODIR
}
if deltay < -10 * (1 << 16) {
d [2]  = DI_SOUTH
}
else if deltay > 10 * (1 << 16) {
d [2]  = DI_NORTH
}
else { 
d [2]  = DI_NODIR
}
if d [1]  != DI_NODIR && d [2]  != DI_NODIR {
actor.movedir = diags [((deltay < 0) << 1) + (deltax > 0)] 
if actor.movedir != int(turnaround) && P_TryWalk(actor) {
return 
}
}
if P_Random() > 200 || abs(deltay) > abs(deltax) {
tdir = d [1] 
d [1]  = d [2] 
d [2]  = tdir
}
if d [1]  == turnaround {
d [1]  = DI_NODIR
}
if d [2]  == turnaround {
d [2]  = DI_NODIR
}
if d [1]  != DI_NODIR {
actor.movedir = d [1] 
if P_TryWalk(actor) {
return 
}
}
if d [2]  != DI_NODIR {
actor.movedir = d [2] 
if P_TryWalk(actor) {
return 
}
}
if olddir != DI_NODIR {
actor.movedir = olddir
if P_TryWalk(actor) {
return 
}
}
if P_Random() & 1 {
for tdir = DI_EAST ; tdir <= DI_SOUTHEAST ; tdir ++ {
if tdir != int(turnaround) {
actor.movedir = tdir
if P_TryWalk(actor) {
return 
}
}
}
}
else {
for tdir = DI_SOUTHEAST ; tdir != (DI_EAST - 1) ; tdir -- {
if tdir != int(turnaround) {
actor.movedir = tdir
if P_TryWalk(actor) {
return 
}
}
}
}
if turnaround != DI_NODIR {
actor.movedir = turnaround
if P_TryWalk(actor) {
return 
}
}
actor.movedir = DI_NODIR
}

fn P_LookForPlayers(actor *mobj_t, allaround bool) bool {
c := 0
stop := 0
player := &player_t{!}
an := 0
dist := 0
c = 0
stop = (actor.lastlook - 1) & 3
for  ;  ; actor.lastlook = (actor.lastlook + 1) & 3 {
if !playeringame [actor.lastlook]  {
continue

}
if c ++ == 2 || actor.lastlook == stop {
return _false
}
player = &players [actor.lastlook] 
if player.health <= 0 {
continue

}
if !P_CheckSight(actor, player.mo) {
continue

}
if !allaround {
an = R_PointToAngle2(actor.x, actor.y, player.mo.x, player.mo.y) - actor.angle
if an > 1073741824 && an < 3221225472 {
dist = P_AproxDistance(player.mo.x - actor.x, player.mo.y - actor.y)
if dist > (64 * (1 << 16)) {
continue

}
}
}
actor.target = player.mo
return _true
}
return _false
}

fn A_KeenDie(mo *mobj_t)  {
th := &thinker_t{!}
mo2 := &mobj_t{!}
junk := line_t{}/*struct init "line_t" line_t:struct line_s*/
A_Fall(mo)
for th = thinkercap.next ; th != &thinkercap ; th = th.next {
if th.function.acp1 != actionf_p1(P_MobjThinker) {
continue

}
mo2 = (*mobj_t)(th)
if mo2 != mo && mo2._type == mo._type && mo2.health > 0 {
return 
}
}
junk.tag = 666
EV_DoDoor(&junk, vld_open)
}

fn A_Look(actor *mobj_t)  {
targ := &mobj_t{!}
actor.threshold = 0
targ = actor.subsector.sector.soundtarget
if targ && (targ.flags & MF_SHOOTABLE) {
actor.target = targ
if actor.flags & MF_AMBUSH {
if P_CheckSight(actor, actor.target) {
goto seeyou
}
}
else { 
goto seeyou

}
}
if !P_LookForPlayers(actor, _false) {
return 
}
seeyou: 
if actor.info.seesound {
sound := 0
switch actor.info.seesound {
case sfx_posit1, sfx_posit2, sfx_posit3:
sound = sfx_posit1 + P_Random() % 3
case sfx_bgsit1, sfx_bgsit2:
sound = sfx_bgsit1 + P_Random() % 2
default: 
 {
sound = actor.info.seesound
}
}
if actor._type == MT_SPIDER || actor._type == MT_CYBORG {
S_StartSound((voidptr(0)), sound)
}
else { 
S_StartSound(actor, sound)
}
}
P_SetMobjState(actor, actor.info.seestate)
}

fn A_Chase(actor *mobj_t)  {
delta := 0
if actor.reactiontime {
actor.reactiontime --
}
if actor.threshold {
if !actor.target || actor.target.health <= 0 {
actor.threshold = 0
}
else { 
actor.threshold --
}
}
if actor.movedir < 8 {
actor.angle &= (7 << 29)
delta = actor.angle - (actor.movedir << 29)
if delta > 0 {
actor.angle -= 1073741824 / 2
}
else if delta < 0 {
actor.angle += 1073741824 / 2
}
}
if !actor.target || !(actor.target.flags & MF_SHOOTABLE) {
if P_LookForPlayers(actor, _true) {
return 
}
P_SetMobjState(actor, actor.info.spawnstate)
return 
}
if actor.flags & MF_JUSTATTACKED {
actor.flags &= ~MF_JUSTATTACKED
if gameskill != sk_nightmare && !fastparm {
P_NewChaseDir(actor)
}
return 
}
if actor.info.meleestate && P_CheckMeleeRange(actor) {
if actor.info.attacksound {
S_StartSound(actor, actor.info.attacksound)
}
P_SetMobjState(actor, actor.info.meleestate)
return 
}
if actor.info.missilestate {
if gameskill < sk_nightmare && !fastparm && actor.movecount {
goto nomissile
}
if !P_CheckMissileRange(actor) {
goto nomissile
}
P_SetMobjState(actor, actor.info.missilestate)
actor.flags |= MF_JUSTATTACKED
return 
}
nomissile: 
if netgame && !actor.threshold && !P_CheckSight(actor, actor.target) {
if P_LookForPlayers(actor, _true) {
return 
}
}
if actor.movecount -- < 0 || !P_Move(actor) {
P_NewChaseDir(actor)
}
if actor.info.activesound && P_Random() < 3 {
S_StartSound(actor, actor.info.activesound)
}
}

fn A_FaceTarget(actor *mobj_t)  {
if !actor.target {
return 
}
actor.flags &= ~MF_AMBUSH
actor.angle = R_PointToAngle2(actor.x, actor.y, actor.target.x, actor.target.y)
if actor.target.flags & MF_SHADOW {
actor.angle += P_SubRandom() << 21
}
}

fn A_PosAttack(actor *mobj_t)  {
angle := 0
damage := 0
slope := 0
if !actor.target {
return 
}
A_FaceTarget(actor)
angle = actor.angle
slope = P_AimLineAttack(actor, angle, (32 * 64 * (1 << 16)))
S_StartSound(actor, sfx_pistol)
angle += P_SubRandom() << 20
damage = ((P_Random() % 5) + 1) * 3
P_LineAttack(actor, angle, (32 * 64 * (1 << 16)), slope, damage)
}

fn A_SPosAttack(actor *mobj_t)  {
i := 0
angle := 0
bangle := 0
damage := 0
slope := 0
if !actor.target {
return 
}
S_StartSound(actor, sfx_shotgn)
A_FaceTarget(actor)
bangle = actor.angle
slope = P_AimLineAttack(actor, bangle, (32 * 64 * (1 << 16)))
for i = 0 ; i < 3 ; i ++ {
angle = bangle + (P_SubRandom() << 20)
damage = ((P_Random() % 5) + 1) * 3
P_LineAttack(actor, angle, (32 * 64 * (1 << 16)), slope, damage)
}
}

fn A_CPosAttack(actor *mobj_t)  {
angle := 0
bangle := 0
damage := 0
slope := 0
if !actor.target {
return 
}
S_StartSound(actor, sfx_shotgn)
A_FaceTarget(actor)
bangle = actor.angle
slope = P_AimLineAttack(actor, bangle, (32 * 64 * (1 << 16)))
angle = bangle + (P_SubRandom() << 20)
damage = ((P_Random() % 5) + 1) * 3
P_LineAttack(actor, angle, (32 * 64 * (1 << 16)), slope, damage)
}

fn A_CPosRefire(actor *mobj_t)  {
A_FaceTarget(actor)
if P_Random() < 40 {
return 
}
if !actor.target || actor.target.health <= 0 || !P_CheckSight(actor, actor.target) {
P_SetMobjState(actor, actor.info.seestate)
}
}

fn A_SpidRefire(actor *mobj_t)  {
A_FaceTarget(actor)
if P_Random() < 10 {
return 
}
if !actor.target || actor.target.health <= 0 || !P_CheckSight(actor, actor.target) {
P_SetMobjState(actor, actor.info.seestate)
}
}

fn A_BspiAttack(actor *mobj_t)  {
if !actor.target {
return 
}
A_FaceTarget(actor)
P_SpawnMissile(actor, actor.target, MT_ARACHPLAZ)
}

fn A_TroopAttack(actor *mobj_t)  {
damage := 0
if !actor.target {
return 
}
A_FaceTarget(actor)
if P_CheckMeleeRange(actor) {
S_StartSound(actor, sfx_claw)
damage = (P_Random() % 8 + 1) * 3
P_DamageMobj(actor.target, actor, actor, damage)
return 
}
P_SpawnMissile(actor, actor.target, MT_TROOPSHOT)
}

fn A_SargAttack(actor *mobj_t)  {
damage := 0
if !actor.target {
return 
}
A_FaceTarget(actor)
if P_CheckMeleeRange(actor) {
damage = ((P_Random() % 10) + 1) * 4
P_DamageMobj(actor.target, actor, actor, damage)
}
}

fn A_HeadAttack(actor *mobj_t)  {
damage := 0
if !actor.target {
return 
}
A_FaceTarget(actor)
if P_CheckMeleeRange(actor) {
damage = (P_Random() % 6 + 1) * 10
P_DamageMobj(actor.target, actor, actor, damage)
return 
}
P_SpawnMissile(actor, actor.target, MT_HEADSHOT)
}

fn A_CyberAttack(actor *mobj_t)  {
if !actor.target {
return 
}
A_FaceTarget(actor)
P_SpawnMissile(actor, actor.target, MT_ROCKET)
}

fn A_BruisAttack(actor *mobj_t)  {
damage := 0
if !actor.target {
return 
}
if P_CheckMeleeRange(actor) {
S_StartSound(actor, sfx_claw)
damage = (P_Random() % 8 + 1) * 10
P_DamageMobj(actor.target, actor, actor, damage)
return 
}
P_SpawnMissile(actor, actor.target, MT_BRUISERSHOT)
}

fn A_SkelMissile(actor *mobj_t)  {
mo := &mobj_t{!}
if !actor.target {
return 
}
A_FaceTarget(actor)
actor.z += 16 * (1 << 16)
mo = P_SpawnMissile(actor, actor.target, MT_TRACER)
actor.z -= 16 * (1 << 16)
mo.x += mo.momx
mo.y += mo.momy
mo.tracer = actor.target
}

__global TRACEANGLE int  = 201326592
fn A_Tracer(actor *mobj_t)  {
exact := 0
dist := 0
slope := 0
dest := &mobj_t{!}
th := &mobj_t{!}
if gametic & 3 {
return 
}
P_SpawnPuff(actor.x, actor.y, actor.z)
th = P_SpawnMobj(actor.x - actor.momx, actor.y - actor.momy, actor.z, MT_SMOKE)
th.momz = (1 << 16)
th.tics -= P_Random() & 3
if th.tics < 1 {
th.tics = 1
}
dest = actor.tracer
if !dest || dest.health <= 0 {
return 
}
exact = R_PointToAngle2(actor.x, actor.y, dest.x, dest.y)
if exact != actor.angle {
if exact - actor.angle > 2147483648 {
actor.angle -= TRACEANGLE
if exact - actor.angle < 2147483648 {
actor.angle = exact
}
}
else {
actor.angle += TRACEANGLE
if exact - actor.angle > 2147483648 {
actor.angle = exact
}
}
}
exact = actor.angle >> 19
actor.momx = FixedMul(actor.info.speed, finecosine [exact] )
actor.momy = FixedMul(actor.info.speed, finesine [exact] )
dist = P_AproxDistance(dest.x - actor.x, dest.y - actor.y)
dist = dist / actor.info.speed
if dist < 1 {
dist = 1
}
slope = (dest.z + 40 * (1 << 16) - actor.z) / dist
if slope < actor.momz {
actor.momz -= (1 << 16) / 8
}
else { 
actor.momz += (1 << 16) / 8
}
}

fn A_SkelWhoosh(actor *mobj_t)  {
if !actor.target {
return 
}
A_FaceTarget(actor)
S_StartSound(actor, sfx_skeswg)
}

fn A_SkelFist(actor *mobj_t)  {
damage := 0
if !actor.target {
return 
}
A_FaceTarget(actor)
if P_CheckMeleeRange(actor) {
damage = ((P_Random() % 10) + 1) * 6
S_StartSound(actor, sfx_skepch)
P_DamageMobj(actor.target, actor, actor, damage)
}
}

__global corpsehit *mobj_t 

__global vileobj *mobj_t 

__global viletryx int 

__global viletryy int 

fn PIT_VileCheck(thing *mobj_t) bool {
maxdist := 0
check := false
if !(thing.flags & MF_CORPSE) {
return _true
}
if thing.tics != -1 {
return _true
}
if thing.info.raisestate == S_NULL {
return _true
}
maxdist = thing.info.radius + mobjinfo [MT_VILE] .radius
if abs(thing.x - viletryx) > maxdist || abs(thing.y - viletryy) > maxdist {
return _true
}
corpsehit = thing
corpsehit.momx = corpsehit.momy = 0
corpsehit.height <<= 2
check = P_CheckPosition(corpsehit, corpsehit.x, corpsehit.y)
corpsehit.height >>= 2
if !check {
return _true
}
return _false
}

fn A_VileChase(actor *mobj_t)  {
xl := 0
xh := 0
yl := 0
yh := 0
bx := 0
by := 0
info := &mobjinfo_t{!}
temp := &mobj_t{!}
if actor.movedir != DI_NODIR {
viletryx = actor.x + actor.info.speed * xspeed [actor.movedir] 
viletryy = actor.y + actor.info.speed * yspeed [actor.movedir] 
xl = (viletryx - bmaporgx - 32 * (1 << 16) * 2) >> (16 + 7)
xh = (viletryx - bmaporgx + 32 * (1 << 16) * 2) >> (16 + 7)
yl = (viletryy - bmaporgy - 32 * (1 << 16) * 2) >> (16 + 7)
yh = (viletryy - bmaporgy + 32 * (1 << 16) * 2) >> (16 + 7)
vileobj = actor
for bx = xl ; bx <= xh ; bx ++ {
for by = yl ; by <= yh ; by ++ {
if !P_BlockThingsIterator(bx, by, PIT_VileCheck) {
temp = actor.target
actor.target = corpsehit
A_FaceTarget(actor)
actor.target = temp
P_SetMobjState(actor, S_VILE_HEAL1)
S_StartSound(corpsehit, sfx_slop)
info = corpsehit.info
P_SetMobjState(corpsehit, info.raisestate)
corpsehit.height <<= 2
corpsehit.flags = info.flags
corpsehit.health = info.spawnhealth
corpsehit.target = (voidptr(0))
return 
}
}
}
}
A_Chase(actor)
}

fn A_VileStart(actor *mobj_t)  {
S_StartSound(actor, sfx_vilatk)
}

fn A_Fire(actor *mobj_t)  

fn A_StartFire(actor *mobj_t)  {
S_StartSound(actor, sfx_flamst)
A_Fire(actor)
}

fn A_FireCrackle(actor *mobj_t)  {
S_StartSound(actor, sfx_flame)
A_Fire(actor)
}

fn A_Fire(actor *mobj_t)  {
dest := &mobj_t{!}
target := &mobj_t{!}
an := u32(0)
dest = actor.tracer
if !dest {
return 
}
target = P_SubstNullMobj(actor.target)
if !P_CheckSight(target, dest) {
return 
}
an = dest.angle >> 19
P_UnsetThingPosition(actor)
actor.x = dest.x + FixedMul(24 * (1 << 16), finecosine [an] )
actor.y = dest.y + FixedMul(24 * (1 << 16), finesine [an] )
actor.z = dest.z
P_SetThingPosition(actor)
}

fn A_VileTarget(actor *mobj_t)  {
fog := &mobj_t{!}
if !actor.target {
return 
}
A_FaceTarget(actor)
fog = P_SpawnMobj(actor.target.x, actor.target.x, actor.target.z, MT_FIRE)
actor.tracer = fog
fog.target = actor
fog.tracer = actor.target
A_Fire(fog)
}

fn A_VileAttack(actor *mobj_t)  {
fire := &mobj_t{!}
an := 0
if !actor.target {
return 
}
A_FaceTarget(actor)
if !P_CheckSight(actor, actor.target) {
return 
}
S_StartSound(actor, sfx_barexp)
P_DamageMobj(actor.target, actor, actor, 20)
actor.target.momz = 1000 * (1 << 16) / actor.target.info.mass
an = actor.angle >> 19
fire = actor.tracer
if !fire {
return 
}
fire.x = actor.target.x - FixedMul(24 * (1 << 16), finecosine [an] )
fire.y = actor.target.y - FixedMul(24 * (1 << 16), finesine [an] )
P_RadiusAttack(fire, actor, 70)
}

fn A_FatRaise(actor *mobj_t)  {
A_FaceTarget(actor)
S_StartSound(actor, sfx_manatk)
}

fn A_FatAttack1(actor *mobj_t)  {
mo := &mobj_t{!}
target := &mobj_t{!}
an := 0
A_FaceTarget(actor)
actor.angle += (1073741824 / 8)
target = P_SubstNullMobj(actor.target)
P_SpawnMissile(actor, target, MT_FATSHOT)
mo = P_SpawnMissile(actor, target, MT_FATSHOT)
mo.angle += (1073741824 / 8)
an = mo.angle >> 19
mo.momx = FixedMul(mo.info.speed, finecosine [an] )
mo.momy = FixedMul(mo.info.speed, finesine [an] )
}

fn A_FatAttack2(actor *mobj_t)  {
mo := &mobj_t{!}
target := &mobj_t{!}
an := 0
A_FaceTarget(actor)
actor.angle -= (1073741824 / 8)
target = P_SubstNullMobj(actor.target)
P_SpawnMissile(actor, target, MT_FATSHOT)
mo = P_SpawnMissile(actor, target, MT_FATSHOT)
mo.angle -= (1073741824 / 8) * 2
an = mo.angle >> 19
mo.momx = FixedMul(mo.info.speed, finecosine [an] )
mo.momy = FixedMul(mo.info.speed, finesine [an] )
}

fn A_FatAttack3(actor *mobj_t)  {
mo := &mobj_t{!}
target := &mobj_t{!}
an := 0
A_FaceTarget(actor)
target = P_SubstNullMobj(actor.target)
mo = P_SpawnMissile(actor, target, MT_FATSHOT)
mo.angle -= (1073741824 / 8) / 2
an = mo.angle >> 19
mo.momx = FixedMul(mo.info.speed, finecosine [an] )
mo.momy = FixedMul(mo.info.speed, finesine [an] )
mo = P_SpawnMissile(actor, target, MT_FATSHOT)
mo.angle += (1073741824 / 8) / 2
an = mo.angle >> 19
mo.momx = FixedMul(mo.info.speed, finecosine [an] )
mo.momy = FixedMul(mo.info.speed, finesine [an] )
}

fn A_SkullAttack(actor *mobj_t)  {
dest := &mobj_t{!}
an := 0
dist := 0
if !actor.target {
return 
}
dest = actor.target
actor.flags |= MF_SKULLFLY
S_StartSound(actor, actor.info.attacksound)
A_FaceTarget(actor)
an = actor.angle >> 19
actor.momx = FixedMul((20 * (1 << 16)), finecosine [an] )
actor.momy = FixedMul((20 * (1 << 16)), finesine [an] )
dist = P_AproxDistance(dest.x - actor.x, dest.y - actor.y)
dist = dist / (20 * (1 << 16))
if dist < 1 {
dist = 1
}
actor.momz = (dest.z + (dest.height >> 1) - actor.z) / dist
}

fn A_PainShootSkull(actor *mobj_t, angle angle_t)  {
x := 0
y := 0
z := 0
newmobj := &mobj_t{!}
an := 0
prestep := 0
count := 0
currentthinker := &thinker_t{!}
count = 0
currentthinker = thinkercap.next
for currentthinker != &thinkercap {
if (currentthinker.function.acp1 == actionf_p1(P_MobjThinker)) && ((*mobj_t)(currentthinker))._type == MT_SKULL {
count ++
}
currentthinker = currentthinker.next
}
if count > 20 {
return 
}
an = angle >> 19
prestep = 4 * (1 << 16) + 3 * (actor.info.radius + mobjinfo [MT_SKULL] .radius) / 2
x = actor.x + FixedMul(prestep, finecosine [an] )
y = actor.y + FixedMul(prestep, finesine [an] )
z = actor.z + 8 * (1 << 16)
newmobj = P_SpawnMobj(x, y, z, MT_SKULL)
if !P_TryMove(newmobj, newmobj.x, newmobj.y) {
P_DamageMobj(newmobj, actor, actor, 10000)
return 
}
newmobj.target = actor.target
A_SkullAttack(newmobj)
}

fn A_PainAttack(actor *mobj_t)  {
if !actor.target {
return 
}
A_FaceTarget(actor)
A_PainShootSkull(actor, actor.angle)
}

fn A_PainDie(actor *mobj_t)  {
A_Fall(actor)
A_PainShootSkull(actor, actor.angle + 1073741824)
A_PainShootSkull(actor, actor.angle + 2147483648)
A_PainShootSkull(actor, actor.angle + 3221225472)
}

fn A_Scream(actor *mobj_t)  {
sound := 0
switch actor.info.deathsound {
case 0:
 {
return 
}
case sfx_podth1, sfx_podth2, sfx_podth3:
sound = sfx_podth1 + P_Random() % 3
case sfx_bgdth1, sfx_bgdth2:
sound = sfx_bgdth1 + P_Random() % 2
default: 
 {
sound = actor.info.deathsound
}
}
if actor._type == MT_SPIDER || actor._type == MT_CYBORG {
S_StartSound((voidptr(0)), sound)
}
else { 
S_StartSound(actor, sound)
}
}

fn A_XScream(actor *mobj_t)  {
S_StartSound(actor, sfx_slop)
}

fn A_Pain(actor *mobj_t)  {
if actor.info.painsound {
S_StartSound(actor, actor.info.painsound)
}
}

fn A_Fall(actor *mobj_t)  {
actor.flags &= ~MF_SOLID
}

fn A_Explode(thingy *mobj_t)  {
P_RadiusAttack(thingy, thingy.target, 128)
}

fn CheckBossEnd(motype mobjtype_t) bool {
if gameversion < exe_ultimate {
if gamemap != 8 {
return _false
}
if motype == MT_BRUISER && gameepisode != 1 {
return _false
}
return _true
}
else {
switch gameepisode {
case 1:
 {
return gamemap == 8 && motype == MT_BRUISER
}
case 2:
 {
return gamemap == 8 && motype == MT_CYBORG
}
case 3:
 {
return gamemap == 8 && motype == MT_SPIDER
}
case 4:
 {
return (gamemap == 6 && motype == MT_CYBORG) || (gamemap == 8 && motype == MT_SPIDER)
}
default: 
 {
return gamemap == 8
}
}
}
}

fn A_BossDeath(mo *mobj_t)  {
th := &thinker_t{!}
mo2 := &mobj_t{!}
junk := line_t{}/*struct init "line_t" line_t:struct line_s*/
i := 0
if gamemode == commercial {
if gamemap != 7 {
return 
}
if (mo._type != MT_FATSO) && (mo._type != MT_BABY) {
return 
}
}
else {
if !CheckBossEnd(mo._type) {
return 
}
}
for i = 0 ; i < 4 ; i ++ {
if playeringame [i]  && players [i] .health > 0 {
break

}
}
if i == 4 {
return 
}
for th = thinkercap.next ; th != &thinkercap ; th = th.next {
if th.function.acp1 != actionf_p1(P_MobjThinker) {
continue

}
mo2 = (*mobj_t)(th)
if mo2 != mo && mo2._type == mo._type && mo2.health > 0 {
return 
}
}
if gamemode == commercial {
if gamemap == 7 {
if mo._type == MT_FATSO {
junk.tag = 666
EV_DoFloor(&junk, lowerFloorToLowest)
return 
}
if mo._type == MT_BABY {
junk.tag = 667
EV_DoFloor(&junk, raiseToTexture)
return 
}
}
}
else {
switch gameepisode {
case 1:
 {
junk.tag = 666
}
case 4:
 {
switch gamemap {
case 6:
 {
junk.tag = 666
}
case 8:
 {
junk.tag = 666
}
}
}
}
}
G_ExitLevel()
}

fn A_Hoof(mo *mobj_t)  {
S_StartSound(mo, sfx_hoof)
A_Chase(mo)
}

fn A_Metal(mo *mobj_t)  {
S_StartSound(mo, sfx_metal)
A_Chase(mo)
}

fn A_BabyMetal(mo *mobj_t)  {
S_StartSound(mo, sfx_bspwlk)
A_Chase(mo)
}

fn A_OpenShotgun2(player *player_t, psp *pspdef_t)  {
S_StartSound(player.mo, sfx_dbopn)
}

fn A_LoadShotgun2(player *player_t, psp *pspdef_t)  {
S_StartSound(player.mo, sfx_dbload)
}

fn A_ReFire(player *player_t, psp *pspdef_t)  

fn A_CloseShotgun2(player *player_t, psp *pspdef_t)  {
S_StartSound(player.mo, sfx_dbcls)
A_ReFire(player, psp)
}

__global braintargets [32]*mobj_t 

__global numbraintargets int 

__global braintargeton int  = 0
fn A_BrainAwake(mo *mobj_t)  {
thinker := &thinker_t{!}
m := &mobj_t{!}
numbraintargets = 0
braintargeton = 0
thinker = thinkercap.next
for thinker = thinkercap.next ; thinker != &thinkercap ; thinker = thinker.next {
if thinker.function.acp1 != actionf_p1(P_MobjThinker) {
continue

}
m = (*mobj_t)(thinker)
if m._type == MT_BOSSTARGET {
braintargets [numbraintargets]  = m
numbraintargets ++
}
}
S_StartSound((voidptr(0)), sfx_bossit)
}

fn A_BrainPain(mo *mobj_t)  {
S_StartSound((voidptr(0)), sfx_bospn)
}

fn A_BrainScream(mo *mobj_t)  {
x := 0
y := 0
z := 0
th := &mobj_t{!}
for x = mo.x - 196 * (1 << 16) ; x < mo.x + 320 * (1 << 16) ; x += (1 << 16) * 8 {
y = mo.y - 320 * (1 << 16)
z = 128 + P_Random() * 2 * (1 << 16)
th = P_SpawnMobj(x, y, z, MT_ROCKET)
th.momz = P_Random() * 512
P_SetMobjState(th, S_BRAINEXPLODE1)
th.tics -= P_Random() & 7
if th.tics < 1 {
th.tics = 1
}
}
S_StartSound((voidptr(0)), sfx_bosdth)
}

fn A_BrainExplode(mo *mobj_t)  {
x := 0
y := 0
z := 0
th := &mobj_t{!}
x = mo.x + P_SubRandom() * 2048
y = mo.y
z = 128 + P_Random() * 2 * (1 << 16)
th = P_SpawnMobj(x, y, z, MT_ROCKET)
th.momz = P_Random() * 512
P_SetMobjState(th, S_BRAINEXPLODE1)
th.tics -= P_Random() & 7
if th.tics < 1 {
th.tics = 1
}
}

fn A_BrainDie(mo *mobj_t)  {
G_ExitLevel()
}

fn A_BrainSpit(mo *mobj_t)  {
targ := &mobj_t{!}
newmobj := &mobj_t{!}
targ = braintargets [braintargeton] 
if numbraintargets == 0 {
I_Error('A_BrainSpit: numbraintargets was 0 (vanilla crashes here)')
}
braintargeton = (braintargeton + 1) % numbraintargets
newmobj = P_SpawnMissile(mo, targ, MT_SPAWNSHOT)
newmobj.target = targ
newmobj.reactiontime = ((targ.y - mo.y) / newmobj.momy) / newmobj.state.tics
S_StartSound((voidptr(0)), sfx_bospit)
}

fn A_SpawnFly(mo *mobj_t)  

fn A_SpawnSound(mo *mobj_t)  {
S_StartSound(mo, sfx_boscub)
A_SpawnFly(mo)
}

fn A_SpawnFly(mo *mobj_t)  {
newmobj := &mobj_t{!}
fog := &mobj_t{!}
targ := &mobj_t{!}
r := 0
_type := 0
if mo.reactiontime -- {
return 
}
targ = P_SubstNullMobj(mo.target)
fog = P_SpawnMobj(targ.x, targ.y, targ.z, MT_SPAWNFIRE)
S_StartSound(fog, sfx_telept)
r = P_Random()
if r < 50 {
_type = MT_TROOP
}
else if r < 90 {
_type = MT_SERGEANT
}
else if r < 120 {
_type = MT_SHADOWS
}
else if r < 130 {
_type = MT_PAIN
}
else if r < 160 {
_type = MT_HEAD
}
else if r < 162 {
_type = MT_VILE
}
else if r < 172 {
_type = MT_UNDEAD
}
else if r < 192 {
_type = MT_BABY
}
else if r < 222 {
_type = MT_FATSO
}
else if r < 246 {
_type = MT_KNIGHT
}
else { 
_type = MT_BRUISER
}
newmobj = P_SpawnMobj(targ.x, targ.y, targ.z, _type)
if P_LookForPlayers(newmobj, _true) {
P_SetMobjState(newmobj, newmobj.info.seestate)
}
P_TeleportMove(newmobj, newmobj.x, newmobj.y)
P_RemoveMobj(mo)
}

fn A_PlayerScream(mo *mobj_t)  {
sound := sfx_pldeth
if (gamemode == commercial) && (mo.health < -50) {
sound = sfx_pdiehi
}
S_StartSound(mo, sound)
}

