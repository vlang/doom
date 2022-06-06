[translated]
module main

struct C.FILE {}

// fn C.memcpy(voidptr, voidptr, int)
// fn C.memmove(voidptr, voidptr, int)
// fn C.memset(voidptr, voidptr, int) int
// fn C.puts(voidptr) int
fn C.perror(voidptr)
fn C.sscanf(voidptr, voidptr) voidptr
fn C.strcasecmp(voidptr, voidptr) int
fn C.strncasecmp(voidptr, voidptr, int) int
fn C.strcmp(voidptr, voidptr) int
fn C.strncmp(voidptr, voidptr, int) int

// fn C.fopen(byteptr, byteptr) &C.FILE
fn C.fprintf(&C.FILE, byteptr) &C.FILE
fn C.fclose(&C.FILE)
fn C.ftell(&C.FILE) int

// fn C.remove (byteptr)
fn C.rename(byteptr, byteptr)
fn C.isspace(byte) int
fn C.atoi(byteptr) int

// fn C.abs(int) int
// fn C.strlen(byteptr) int

/*
fn abs(x f64) f64 {
	if x < 0 {
		return -x
	}
	return x
}
*/

// vstart

struct Lldiv_t {
	quot i64
	rem  i64
}

fn abort()

fn exit(int)

fn exit(int)

fn rand() int

fn system(&i8) int

[c: '_Exit']
fn _exit(int)

[c: '_Exit']
fn _exit(int)

fn random() int

type Double_t = F64

fn cos(f64) f64

fn cos(f64) f64

fn sin(f64) f64

fn sin(f64) f64

fn tan(f64) f64

fn tan(f64) f64

fn exp(f64) f64

fn exp(f64) f64

fn log(f64) f64

fn log(f64) f64

fn pow(f64, f64) f64

fn pow(f64, f64) f64

fn erf(f64) f64

fn erf(f64) f64

fn floor(f64) f64

fn floor(f64) f64

fn rintf(f32) f32

fn rintf(f32) f32

fn rint(f64) f64

fn rint(f64) f64

fn round(f64) f64

fn round(f64) f64

struct Float2 {
	__sinval f32
	__cosval f32
}

struct Double2 {
	__sinval f64
	__cosval f64
}

struct Va_list {
	type_  int
	name   &i8
	arg1   f64
	arg2   f64
	retval f64
}

type Byte = u8
type Pixel_t = u8
type Dpixel_t = i16

[c: 'I_GetTime']
fn i_gettime() int

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
	sk_noitems = -1
	sk_baby = 0
	sk_easy
	sk_medium
	sk_hard
	sk_nightmare
}

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
	invulntics = 30 * 35
	invistics = 60 * 35
	infratics = 120 * 35
	irontics = 60 * 35
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
	wad_sha1sum  Sha1_digest_t
	deh_sha1sum  Sha1_digest_t
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
	wad_sha1sum   Sha1_digest_t
	deh_sha1sum   Sha1_digest_t
	is_freedoom   int
}

type Netgame_startup_callback_t = fn (int, int) bool

struct Loop_interface_t {
	ProcessEvents fn ()
	BuildTiccmd   fn (&Ticcmd_t, int)
	RunTic        fn (&Ticcmd_t, &bool)
	RunMenu       fn ()
}

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

[c: 'D_NonVanillaPlayback']
fn d_nonvanillaplayback(conditional bool, lumpnum int, feature &i8) bool

struct Weaponinfo_t {
	ammo       Ammotype_t
	upstate    int
	downstate  int
	readystate int
	atkstate   int
	flashstate int
}

type Fixed_t = int

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

type Angle_t = int
type Actionf_v = fn ()

type Actionf_p1 = fn (voidptr)

type Actionf_p2 = fn (voidptr, voidptr)

union Actionf_t {
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

enum Mobjflag_t {
	mf_special = 1
	mf_solid = 2
	mf_shootable = 4
	mf_nosector = 8
	mf_noblockmap = 16
	mf_ambush = 32
	mf_justhit = 64
	mf_justattacked = 128
	mf_spawnceiling = 256
	mf_nogravity = 512
	mf_dropoff = 1024
	mf_pickup = 2048
	mf_noclip = 4096
	mf_slide = 8192
	mf_float = 16384
	mf_teleport = 32768
	mf_missile = 65536
	mf_dropped = 131072
	mf_shadow = 262144
	mf_noblood = 524288
	mf_corpse = 1048576
	mf_infloat = 2097152
	mf_countkill = 4194304
	mf_countitem = 8388608
	mf_skullfly = 16777216
	mf_notdmatch = 33554432
	mf_translation = 201326592
	mf_transshift = 26
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

enum Playerstate_t {
	pst_live
	pst_dead
	pst_reborn
}

enum Cheat_t {
	cf_noclip = 1
	cf_godmode = 2
	cf_nomomentum = 4
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
	automapactive bool
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
	wminfo Wbstartstruct_t
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

[c: 'DEH_String']
fn deh_string(s &i8) &i8

[weak]
__global (
	deh_initial_health int
)

[weak]
__global (
	deh_initial_bullets int
)

[c: 'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

[c: 'Z_Free']
fn z_free(ptr voidptr)

[c: 'Z_CheckHeap']
fn z_checkheap()

enum Evtype_t {
	ev_keydown
	ev_keyup
	ev_mouse
	ev_joystick
	ev_quit
}

enum Buttoncode_t {
	bt_attack = 1
	bt_use = 2
	bt_special = 128
	bt_specialmask = 3
	bt_change = 4
	bt_weaponmask = 8 + 16 + 32
	bt_weaponshift = 3
	bts_pause = 1
	bts_savegame = 2
	bts_savemask = 4 + 8 + 16
	bts_saveshift = 2
}

enum Buttoncode2_t {
	bt2_lookup = 1
	bt2_lookdown = 2
	bt2_centerview = 4
	bt2_invuse = 8
	bt2_invdrop = 16
	bt2_jump = 32
	bt2_health = 128
}

[c: 'F_Responder']
fn f_responder(ev &Event_t) bool

[c: 'F_Ticker']
fn f_ticker()

[c: 'F_StartFinale']
fn f_startfinale()

[weak]
__global (
	myargv &&u8
)

[c: 'M_CheckParm']
fn m_checkparm(check &i8) int

[c: 'M_CheckParmWithArgs']
fn m_checkparmwithargs(check &i8, num_args int) int

[c: 'M_ParmExists']
fn m_parmexists(check &i8) bool

[weak]
__global (
	key_right int
)

[weak]
__global (
	key_left int
)

[weak]
__global (
	key_up int
)

[weak]
__global (
	key_down int
)

[weak]
__global (
	key_strafeleft int
)

[weak]
__global (
	key_straferight int
)

[weak]
__global (
	key_fire int
)

[weak]
__global (
	key_use int
)

[weak]
__global (
	key_strafe int
)

[weak]
__global (
	key_speed int
)

[weak]
__global (
	key_pause int
)

[weak]
__global (
	key_weapon1 int
)

[weak]
__global (
	key_weapon2 int
)

[weak]
__global (
	key_weapon3 int
)

[weak]
__global (
	key_weapon4 int
)

[weak]
__global (
	key_weapon5 int
)

[weak]
__global (
	key_weapon6 int
)

[weak]
__global (
	key_weapon7 int
)

[weak]
__global (
	key_weapon8 int
)

[weak]
__global (
	key_demo_quit int
)

[weak]
__global (
	key_spy int
)

[weak]
__global (
	key_prevweapon int
)

[weak]
__global (
	key_nextweapon int
)

[weak]
__global (
	mousebfire int
)

[weak]
__global (
	mousebstrafe int
)

[weak]
__global (
	mousebforward int
)

[weak]
__global (
	mousebstrafeleft int
)

[weak]
__global (
	mousebstraferight int
)

[weak]
__global (
	mousebbackward int
)

[weak]
__global (
	mousebuse int
)

[weak]
__global (
	mousebprevweapon int
)

[weak]
__global (
	mousebnextweapon int
)

[weak]
__global (
	joybfire int
)

[weak]
__global (
	joybstrafe int
)

[weak]
__global (
	joybuse int
)

[weak]
__global (
	joybspeed int
)

[weak]
__global (
	joybstrafeleft int
)

[weak]
__global (
	joybstraferight int
)

[weak]
__global (
	joybprevweapon int
)

[weak]
__global (
	joybnextweapon int
)

[weak]
__global (
	dclick_use int
)

[c: 'M_WriteFile']
fn m_writefile(name &i8, source voidptr, length int) bool

[c: 'M_TempFile']
fn m_tempfile(s &i8) &i8

[c: 'M_StringCopy']
fn m_stringcopy(dest &i8, src &i8, dest_size u32) bool

[c: 'M_snprintf']
[c2v_variadic]
fn m_snprintf(buf &i8, buf_len u32, s ...&i8) int

[c: 'M_Responder']
fn m_responder(ev &Event_t) bool

[c: 'M_Ticker']
fn m_ticker()

[c: 'M_StartControlPanel']
fn m_startcontrolpanel()

[c: 'P_Random']
fn p_random() int

[c: 'M_ClearRandom']
fn m_clearrandom()

type Atexit_func_t = fn ()

[c: 'I_Quit']
fn i_quit()

[c: 'I_Error']
[c2v_variadic]
fn i_error(error ...&i8)

type Grabmouse_callback_t = fn () bool

type Wad_file_t = Wad_file_s

struct Wad_file_class_t {
	OpenFile  fn (&i8) &Wad_file_t
	CloseFile fn (&Wad_file_t)
	Read      fn (&Wad_file_t, u32, voidptr, u32) u32
}

struct Wad_file_s {
	file_class &Wad_file_class_t
	mapped     &u8
	length     u32
	path       &i8
}

type Lumpinfo_t = Lumpinfo_s
type Lumpindex_t = int

struct Lumpinfo_s {
	name     [8]i8
	wad_file &Wad_file_t
	position int
	size     int
	cache    voidptr
	next     Lumpindex_t
}

[c: 'W_CheckNumForName']
fn w_checknumforname(name &i8) Lumpindex_t

[c: 'W_GetNumForName']
fn w_getnumforname(name &i8) Lumpindex_t

[c: 'W_CacheLumpNum']
fn w_cachelumpnum(lump Lumpindex_t, tag int) voidptr

[c: 'W_ReleaseLumpName']
fn w_releaselumpname(name &i8)

[c: 'P_SetupLevel']
fn p_setuplevel(episode int, map_ int, playermask int, skill Skill_t)

[c: 'P_TempSaveGameFile']
fn p_tempsavegamefile() &i8

[c: 'P_SaveGameFile']
fn p_savegamefile(slot int) &i8

[c: 'P_ReadSaveGameHeader']
fn p_readsavegameheader() bool

[c: 'P_WriteSaveGameHeader']
fn p_writesavegameheader(description &i8)

[c: 'P_ReadSaveGameEOF']
fn p_readsavegameeof() bool

[c: 'P_WriteSaveGameEOF']
fn p_writesavegameeof()

[c: 'P_ArchivePlayers']
fn p_archiveplayers()

[c: 'P_UnArchivePlayers']
fn p_unarchiveplayers()

[c: 'P_ArchiveWorld']
fn p_archiveworld()

[c: 'P_UnArchiveWorld']
fn p_unarchiveworld()

[c: 'P_ArchiveThinkers']
fn p_archivethinkers()

[c: 'P_UnArchiveThinkers']
fn p_unarchivethinkers()

[c: 'P_ArchiveSpecials']
fn p_archivespecials()

[c: 'P_UnArchiveSpecials']
fn p_unarchivespecials()

[weak]
__global (
	save_stream &C.FILE
)

[weak]
__global (
	savegame_error bool
)

[c: 'P_Ticker']
fn p_ticker()

[c: 'D_PageTicker']
fn d_pageticker()

[c: 'D_AdvanceDemo']
fn d_advancedemo()

[weak]
__global (
	gameaction Gameaction_t
)

enum Stateenum_t {
	nostate = -1
	statcount
	shownextloc
}

[c: 'WI_Ticker']
fn wi_ticker()

[c: 'WI_Start']
fn wi_start(wbstartstruct &Wbstartstruct_t)

[c: 'WI_End']
fn wi_end()

[c: 'HU_Responder']
fn hu_responder(ev &Event_t) bool

[c: 'HU_Ticker']
fn hu_ticker()

[c: 'HU_dequeueChatChar']
fn hu_dequeuechatchar() i8

struct Cheatseq_t {
	sequence         [25]i8
	sequence_len     u32
	parameter_chars  int
	chars_read       u32
	param_chars_read int
	parameter_buf    [5]i8
}

[c: 'ST_Responder']
fn st_responder(ev &Event_t) bool

[c: 'ST_Ticker']
fn st_ticker()

enum St_stateenum_t {
	automapstate
	firstpersonstate
}

enum St_chatstateenum_t {
	startchatstate
	waitdeststate
	getchatstate
}

[c: 'AM_Responder']
fn am_responder(ev &Event_t) bool

[c: 'AM_Ticker']
fn am_ticker()

[c: 'AM_Stop']
fn am_stop()

[c: 'StatCopy']
fn statcopy(stats &Wbstartstruct_t)

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
type Vpatchclipfunc_t = fn (&Patch_t, int, int) bool

[c: 'V_ScreenShot']
fn v_screenshot(format &i8)

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

type Lighttable_t = u8

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

[weak]
__global (
	viewz int
)

[c: 'R_FlatNumForName']
fn r_flatnumforname(name &i8) int

[c: 'R_TextureNumForName']
fn r_texturenumforname(name &i8) int

[weak]
__global (
	extralight int
)

[weak]
__global (
	fixedcolormap &Lighttable_t
)

[c: 'R_PointInSubsector']
fn r_pointinsubsector(x int, y int) &Subsector_t

type Drawfunc_t = fn (int, int)

type Planefunction_t = fn (int, int)

[c: 'R_FillBackScreen']
fn r_fillbackscreen()

[c: 'P_SpawnMobj']
fn p_spawnmobj(x int, y int, z int, type_ Mobjtype_t) &Mobj_t

[c: 'P_RemoveMobj']
fn p_removemobj(th &Mobj_t)

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

type Traverser_t = fn (&Intercept_t) bool

[c: 'P_CheckPosition']
fn p_checkposition(thing &Mobj_t, x int, y int) bool

[weak]
__global (
	maxammo [4]int
)

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
	snddevice_none = 0
	snddevice_pcspeaker = 1
	snddevice_adlib = 2
	snddevice_sb = 3
	snddevice_pas = 4
	snddevice_gus = 5
	snddevice_waveblaster = 6
	snddevice_soundcanvas = 7
	snddevice_genmidi = 8
	snddevice_awe32 = 9
	snddevice_cd = 10
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

enum Opl_driver_ver_t {
	opl_doom1_1_666
	opl_doom2_1_666
	opl_doom_1_9
}

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

[c: 'S_Start']
fn s_start()

[c: 'S_StartSound']
fn s_startsound(origin voidptr, sound_id int)

[c: 'S_PauseSound']
fn s_pausesound()

[c: 'S_ResumeSound']
fn s_resumesound()

[weak]
__global (
	skytexture int
)

[c: 'G_DeathMatchSpawnPlayer']
fn g_deathmatchspawnplayer(playernum int)

[c: 'G_InitNew']
fn g_initnew(skill Skill_t, episode int, map_ int)

[c: 'G_DeferedInitNew']
fn g_deferedinitnew(skill Skill_t, episode int, map_ int)

[c: 'G_DeferedPlayDemo']
fn g_deferedplaydemo(demo &i8)

[c: 'G_LoadGame']
fn g_loadgame(name &i8)

[c: 'G_DoLoadGame']
fn g_doloadgame()

[c: 'G_SaveGame']
fn g_savegame(slot int, description &i8)

[c: 'G_RecordDemo']
fn g_recorddemo(name &i8)

[c: 'G_BeginRecording']
fn g_beginrecording()

[c: 'G_PlayDemo']
fn g_playdemo(name &i8)

[c: 'G_TimeDemo']
fn g_timedemo(name &i8)

[c: 'G_CheckDemoStatus']
fn g_checkdemostatus() bool

[c: 'G_ExitLevel']
fn g_exitlevel()

[c: 'G_SecretExitLevel']
fn g_secretexitlevel()

[c: 'G_WorldDone']
fn g_worlddone()

[c: 'G_BuildTiccmd']
fn g_buildticcmd(cmd &Ticcmd_t, maketic int)

[c: 'G_Ticker']
fn g_ticker()

[c: 'G_Responder']
fn g_responder(ev &Event_t) bool

[c: 'G_ScreenShot']
fn g_screenshot()

[c: 'G_VanillaVersionCode']
fn g_vanillaversioncode() int

[weak]
__global (
	vanilla_savegame_limit int
)

[weak]
__global (
	vanilla_demo_limit int
)

[c: 'G_ReadDemoTiccmd']
fn g_readdemoticcmd(cmd &Ticcmd_t)

[c: 'G_WriteDemoTiccmd']
fn g_writedemoticcmd(cmd &Ticcmd_t)

[c: 'G_PlayerReborn']
fn g_playerreborn(player int)

[c: 'G_DoReborn']
fn g_doreborn(playernum int)

[c: 'G_DoLoadLevel']
fn g_doloadlevel()

[c: 'G_DoNewGame']
fn g_donewgame()

[c: 'G_DoPlayDemo']
fn g_doplaydemo()

[c: 'G_DoCompleted']
fn g_docompleted()

[c: 'G_DoVictory']
fn g_dovictory()

[c: 'G_DoWorldDone']
fn g_doworlddone()

[c: 'G_DoSaveGame']
fn g_dosavegame()

[weak]
__global (
	oldgamestate Gamestate_t
)

[weak]
__global (
	sendpause bool
)

[weak]
__global (
	sendsave bool
)

[weak]
__global (
	timingdemo bool
)

[weak]
__global (
	starttime int
)

[weak]
__global (
	turbodetected [4]bool
)

[weak]
__global (
	demoname &i8
)

[weak]
__global (
	longtics bool
)

[weak]
__global (
	netdemo bool
)

[weak]
__global (
	demobuffer &u8
)

[weak]
__global (
	demo_p &u8
)

[weak]
__global (
	demoend &u8
)

[weak]
__global (
	consistancy [4][128]u8
)

[export: 'forwardmove']
const (
	forwardmove = [25, 50]!
)

[export: 'sidemove']
const (
	sidemove = [24, 40]!
)

[export: 'angleturn']
const (
	angleturn = [640, 1280, 320]!
)

[export: 'weapon_keys']
const (
	weapon_keys = [&key_weapon1, &key_weapon2, &key_weapon3, &key_weapon4, &key_weapon5, &key_weapon6,
		&key_weapon7, &key_weapon8]!
)

//!
[weak]
__global (
	next_weapon = int(0)
)

struct Weapon {
	weapon     Weapontype_t
	weapon_num Weapontype_t
}

[export: 'weapon_order_table']
const (
	weapon_order_table = [Weapon{Weapontype_t.wp_fist, Weapontype_t.wp_fist},
		Weapon{Weapontype_t.wp_chainsaw, Weapontype_t.wp_fist},
		Weapon{Weapontype_t.wp_pistol, Weapontype_t.wp_pistol},
		Weapon{Weapontype_t.wp_shotgun, Weapontype_t.wp_shotgun},
		Weapon{Weapontype_t.wp_supershotgun, Weapontype_t.wp_shotgun},
		Weapon{Weapontype_t.wp_chaingun, Weapontype_t.wp_chaingun},
		Weapon{Weapontype_t.wp_missile, Weapontype_t.wp_missile},
		Weapon{Weapontype_t.wp_plasma, Weapontype_t.wp_plasma},
		Weapon{Weapontype_t.wp_bfg, Weapontype_t.wp_bfg}]!
)

[weak]
__global (
	gamekeydown [256]bool
)

[weak]
__global (
	turnheld int
)

[weak]
__global (
	mousearray [9]bool
)

//!
[weak]
__global (
	mousebuttons = &bool(&mousearray[1])
)

[weak]
__global (
	mousex int
)

[weak]
__global (
	mousey int
)

[weak]
__global (
	dclicktime int
)

[weak]
__global (
	dclickstate bool
)

[weak]
__global (
	dclicks int
)

[weak]
__global (
	dclicktime2 int
)

[weak]
__global (
	dclickstate2 bool
)

[weak]
__global (
	dclicks2 int
)

[weak]
__global (
	joyxmove int
)

[weak]
__global (
	joyymove int
)

[weak]
__global (
	joystrafemove int
)

[weak]
__global (
	joyarray [21]bool
)

//!
[weak]
__global (
	joybuttons = &bool(&joyarray[1])
)

[weak]
__global (
	savegameslot int
)

[weak]
__global (
	savedescription [32]i8
)

[weak]
__global (
	bodyque [32]&Mobj_t
)

[c: 'G_CmdChecksum']
fn g_cmdchecksum(cmd &Ticcmd_t) int {
	i := u32(0)
	sum := 0
	for i = 0; i < sizeof(u32) / 4 - 1; i++ {
		sum += (&int(cmd))[i]
	}
	return sum
}

[c: 'WeaponSelectable']
fn weaponselectable(weapon Weapontype_t) bool {
	if weapon == Weapontype_t.wp_supershotgun && GameMission_t.doom == GameMission_t.doom {
		return false
	}
	if (weapon == Weapontype_t.wp_plasma || weapon == Weapontype_t.wp_bfg)
		&& gamemission == GameMission_t.doom && gamemode == GameMode_t.shareware {
		return false
	}
	if !players[consoleplayer].weaponowned[weapon] {
		return false
	}
	if weapon == Weapontype_t.wp_fist
		&& players[consoleplayer].weaponowned[Weapontype_t.wp_chainsaw]
		&& !players[consoleplayer].powers[Powertype_t.pw_strength] {
		return false
	}
	return true
}

[c: 'G_NextWeapon']
fn g_nextweapon(direction int) int {
	weapon := Weapontype_t{}
	start_i := 0
	i := 0

	if players[consoleplayer].pendingweapon == Weapontype_t.wp_nochange {
		weapon = players[consoleplayer].readyweapon
	} else {
		weapon = players[consoleplayer].pendingweapon
	}
	for i = 0; i < (sizeof(weapon_order_table) / sizeof(*weapon_order_table)); i++ {
		if weapon_order_table[i].weapon == weapon {
			break
		}
	}
	start_i = i
	for {
		i += direction
		i = (i + (sizeof(weapon_order_table) / sizeof(*weapon_order_table))) % (sizeof(weapon_order_table) / sizeof(*weapon_order_table))
		// while()
		if !(i != start_i && !weaponselectable(weapon_order_table[i].weapon)) {
			break
		}
	}
	return weapon_order_table[i].weapon_num
}

[c: 'G_BuildTiccmd']
fn g_buildticcmd(cmd &Ticcmd_t, maketic int) {
	i := 0
	strafe := false
	bstrafe := false
	speed := 0
	tspeed := 0
	forward := 0
	side := 0
	C.printf(c'\n\nTAAAA SIZEOF=%d\n', sizeof(u32))
	C.printf(c'TAAAA len mousebuttons=%d\n', sizeof(mousebuttons))
	C.printf(c'mousebstrafe=%d\n', mousebstrafe)
	C.memset(cmd, 0, sizeof(u32))
	cmd.consistancy = consistancy[consoleplayer][maketic % 128]
	strafe = gamekeydown[key_strafe] || mousebuttons[mousebstrafe] || joybuttons[joybstrafe]
	speed = key_speed >= 256 || joybspeed >= 20 || gamekeydown[key_speed] || joybuttons[joybspeed]
	forward = 0
	side = 0
	if joyxmove < 0 || joyxmove > 0 || gamekeydown[key_right] || gamekeydown[key_left] {
		turnheld += ticdup
	} else { // 3
		turnheld = 0
	}
	if turnheld < 6 {
		tspeed = 2
	} else { // 3
		tspeed = speed
	}
	if strafe {
		if gamekeydown[key_right] {
			side += sidemove[speed]
		}
		if gamekeydown[key_left] {
			side -= sidemove[speed]
		}
		if joyxmove > 0 {
			side += sidemove[speed]
		}
		if joyxmove < 0 {
			side -= sidemove[speed]
		}
	} else {
		if gamekeydown[key_right] {
			cmd.angleturn -= angleturn[tspeed]
		}
		if gamekeydown[key_left] {
			cmd.angleturn += angleturn[tspeed]
		}
		if joyxmove > 0 {
			cmd.angleturn -= angleturn[tspeed]
		}
		if joyxmove < 0 {
			cmd.angleturn += angleturn[tspeed]
		}
	}
	if gamekeydown[key_up] {
		forward += forwardmove[speed]
	}
	if gamekeydown[key_down] {
		forward -= forwardmove[speed]
	}
	if joyymove < 0 {
		forward += forwardmove[speed]
	}
	if joyymove > 0 {
		forward -= forwardmove[speed]
	}
	if gamekeydown[key_strafeleft] || joybuttons[joybstrafeleft] || mousebuttons[mousebstrafeleft]
		|| joystrafemove < 0 {
		side -= sidemove[speed]
	}
	if gamekeydown[key_straferight] || joybuttons[joybstraferight]
		|| mousebuttons[mousebstraferight] || joystrafemove > 0 {
		side += sidemove[speed]
	}
	cmd.chatchar = hu_dequeuechatchar()
	if gamekeydown[key_fire] || mousebuttons[mousebfire] || joybuttons[joybfire] {
		cmd.buttons |= Buttoncode_t.bt_attack
	}
	if gamekeydown[key_use] || joybuttons[joybuse] || mousebuttons[mousebuse] {
		cmd.buttons |= Buttoncode_t.bt_use
		dclicks = 0
	}
	if gamestate == Gamestate_t.gs_level && next_weapon != 0 {
		i = g_nextweapon(next_weapon)
		cmd.buttons |= Buttoncode_t.bt_change
		cmd.buttons |= i << Buttoncode_t.bt_weaponshift
	} else {
		for i = 0; i < (sizeof(weapon_keys) / sizeof(*weapon_keys)); i++ {
			key := *weapon_keys[i]
			if gamekeydown[key] {
				cmd.buttons |= Buttoncode_t.bt_change
				cmd.buttons |= i << Buttoncode_t.bt_weaponshift
				break
			}
		}
	}
	next_weapon = 0
	if mousebuttons[mousebforward] {
		forward += forwardmove[speed]
	}
	if mousebuttons[mousebbackward] {
		forward -= forwardmove[speed]
	}
	if dclick_use {
		if mousebuttons[mousebforward] != dclickstate && dclicktime > 1 {
			dclickstate = mousebuttons[mousebforward]
			if dclickstate {
				dclicks++
			}
			if dclicks == 2 {
				cmd.buttons |= Buttoncode_t.bt_use
				dclicks = 0
			} else { // 3
				dclicktime = 0
			}
		} else {
			dclicktime += ticdup
			if dclicktime > 20 {
				dclicks = 0
				dclickstate = 0
			}
		}
		bstrafe = mousebuttons[mousebstrafe] || joybuttons[joybstrafe]
		if bstrafe != dclickstate2 && dclicktime2 > 1 {
			dclickstate2 = bstrafe
			if dclickstate2 {
				dclicks2++
			}
			if dclicks2 == 2 {
				cmd.buttons |= Buttoncode_t.bt_use
				dclicks2 = 0
			} else { // 3
				dclicktime2 = 0
			}
		} else {
			dclicktime2 += ticdup
			if dclicktime2 > 20 {
				dclicks2 = 0
				dclickstate2 = 0
			}
		}
	}
	forward += mousey
	if strafe {
		side += mousex * 2
	} else { // 3
		cmd.angleturn -= mousex * 8
	}
	if mousex == 0 {
		testcontrols_mousespeed = 0
	}
	mousex = 0
	mousey = 0
	if forward > (forwardmove[1]) {
		forward = (forwardmove[1])
	} else if forward < -(forwardmove[1]) {
		forward = -(forwardmove[1])
	}
	if side > (forwardmove[1]) {
		side = (forwardmove[1])
	} else if side < -(forwardmove[1]) {
		side = -(forwardmove[1])
	}
	cmd.forwardmove += forward
	cmd.sidemove += side
	if sendpause {
		sendpause = false
		cmd.buttons = Buttoncode_t.bt_special | Buttoncode_t.bts_pause
	}
	if sendsave {
		sendsave = false
		cmd.buttons = Buttoncode_t.bt_special | Buttoncode_t.bts_savegame | (savegameslot << Buttoncode_t.bts_saveshift)
	}
	if lowres_turn {
		carry := 0
		desired_angleturn := i16(0)
		desired_angleturn = cmd.angleturn + carry
		cmd.angleturn = (desired_angleturn + 128) & 65280
		carry = desired_angleturn - cmd.angleturn
	}
}

[c: 'G_DoLoadLevel']
fn g_doloadlevel() {
	i := 0
	skyflatnum = r_flatnumforname(deh_string(c'F_SKY1'))
	if (gamemode == GameMode_t.commercial)
		&& (gameversion == GameVersion_t.exe_final2 || gameversion == GameVersion_t.exe_chex) {
		skytexturename := &i8(0)
		if gamemap < 12 {
			skytexturename = c'SKY1'
		} else if gamemap < 21 {
			skytexturename = c'SKY2'
		} else {
			skytexturename = c'SKY3'
		}
		skytexturename = deh_string(skytexturename)
		skytexture = r_texturenumforname(skytexturename)
	}
	levelstarttic = gametic
	if wipegamestate == Gamestate_t.gs_level {
		wipegamestate = -1
	}
	gamestate = Gamestate_t.gs_level
	for i = 0; i < 4; i++ {
		turbodetected[i] = false
		if playeringame[i] && players[i].playerstate == Playerstate_t.pst_dead {
			players[i].playerstate = Playerstate_t.pst_reborn
		}
		frags_size := 16
		C.memset(players[i].frags, 0, frags_size)
	}
	p_setuplevel(gameepisode, gamemap, 0, gameskill)
	displayplayer = consoleplayer
	gameaction = Gameaction_t.ga_nothing
	z_checkheap()
	C.memset(gamekeydown, 0, sizeof(gamekeydown))
	joyxmove = 0
	joyymove = 0
	joystrafemove = 0
	mousex = 0
	mousey = 0
	sendpause = false
	sendsave = false
	paused = false
	C.memset(mousearray, 0, sizeof(mousearray))
	C.memset(joyarray, 0, sizeof(joyarray))
	if testcontrols {
		players[consoleplayer].message = c'Press escape to quit.'
	}
}

[c: 'SetJoyButtons']
fn setjoybuttons(buttons_mask u32) {
	i := 0
	for i = 0; i < 20; i++ {
		button_on := (buttons_mask & (1 << i)) != 0
		if !joybuttons[i] && button_on {
			if i == joybprevweapon {
				next_weapon = -1
			} else if i == joybnextweapon {
				next_weapon = 1
			}
		}
		joybuttons[i] = button_on
	}
}

[c: 'SetMouseButtons']
fn setmousebuttons(buttons_mask u32) {
	i := 0
	for i = 0; i < 8; i++ {
		button_on := (buttons_mask & (1 << i)) != 0
		if !mousebuttons[i] && button_on {
			if i == mousebprevweapon {
				next_weapon = -1
			} else if i == mousebnextweapon {
				next_weapon = 1
			}
		}
		mousebuttons[i] = button_on
	}
}

[c: 'G_Responder']
fn g_responder(ev &Event_t) bool {
	if gamestate == Gamestate_t.gs_level && ev.type_ == Evtype_t.ev_keydown && ev.data1 == key_spy
		&& (singledemo || !deathmatch) {
		for {
			displayplayer++
			if displayplayer == 4 {
				displayplayer = 0
			}
			// while()
			if !(!playeringame[displayplayer] && displayplayer != consoleplayer) {
				break
			}
		}
		return true
	}
	if gameaction == Gameaction_t.ga_nothing && !singledemo
		&& (demoplayback || gamestate == Gamestate_t.gs_demoscreen) {
		if ev.type_ == Evtype_t.ev_keydown
			|| (ev.type_ == Evtype_t.ev_mouse && ev.data1)
			|| (ev.type_ == Evtype_t.ev_joystick && ev.data1) {
			m_startcontrolpanel()
			return true
		}
		return false
	}
	if gamestate == Gamestate_t.gs_level {
		if hu_responder(ev) {
			return true
		}
		if st_responder(ev) {
			return true
		}
		if am_responder(ev) {
			return true
		}
	}
	if gamestate == Gamestate_t.gs_finale {
		if f_responder(ev) {
			return true
		}
	}
	if testcontrols && ev.type_ == Evtype_t.ev_mouse {
		testcontrols_mousespeed = C.abs(ev.data2)
	}
	if ev.type_ == Evtype_t.ev_keydown && ev.data1 == key_prevweapon {
		next_weapon = -1
	} else if ev.type_ == Evtype_t.ev_keydown && ev.data1 == key_nextweapon {
		next_weapon = 1
	}
	match ev.type_ {
		.ev_keydown /* case comp body IfStmt */ {
			if ev.data1 == key_pause {
				sendpause = true
			} else if ev.data1 < 256 {
				gamekeydown[ev.data1] = true
			}
			return true
		}
		.ev_keyup /* case comp body IfStmt */ {
			if ev.data1 < 256 {
				gamekeydown[ev.data1] = false
			}
			return false
		}
		.ev_mouse /* case comp body CallExpr */ {
			setmousebuttons(ev.data1)
			mousex = ev.data2 * (mouseSensitivity + 5) / 10
			mousey = ev.data3 * (mouseSensitivity + 5) / 10
			return true
		}
		.ev_joystick /* case comp body CallExpr */ {
			setjoybuttons(ev.data1)
			joyxmove = ev.data2
			joyymove = ev.data3
			joystrafemove = ev.data4
			return true
		}
		else {}
	}
	return false
}

[c: 'G_Ticker']
fn g_ticker() {
	i := 0
	buf := 0
	cmd := &Ticcmd_t(0)
	for i = 0; i < 4; i++ {
		if playeringame[i] && players[i].playerstate == Playerstate_t.pst_reborn {
			g_doreborn(i)
		}
	}
	for gameaction != Gameaction_t.ga_nothing {
		match gameaction {
			.ga_loadlevel /* case comp body CallExpr */ {
				g_doloadlevel()
			}
			.ga_newgame /* case comp body CallExpr */ {
				g_donewgame()
			}
			.ga_loadgame /* case comp body CallExpr */ {
				g_doloadgame()
			}
			.ga_savegame /* case comp body CallExpr */ {
				g_dosavegame()
			}
			.ga_playdemo /* case comp body CallExpr */ {
				g_doplaydemo()
			}
			.ga_completed /* case comp body CallExpr */ {
				g_docompleted()
			}
			.ga_victory /* case comp body CallExpr */ {
				f_startfinale()
			}
			.ga_worlddone /* case comp body CallExpr */ {
				g_doworlddone()
			}
			.ga_screenshot /* case comp body CallExpr */ {
				v_screenshot(c'DOOM%02i.%s')
				players[consoleplayer].message = deh_string(c'screen shot')
				gameaction = .ga_nothing
			}
			.ga_nothing /* case comp body BreakStmt */ {}
			else {}
		}
	}
	buf = (gametic / ticdup) % 128
	for i = 0; i < 4; i++ {
		if playeringame[i] {
			cmd = &players[i].cmd
			C.memcpy(cmd, &netcmds[i], sizeof(u32))
			if demoplayback {
				g_readdemoticcmd(cmd)
			}
			if demorecording {
				g_writedemoticcmd(cmd)
			}
			if cmd.forwardmove > 50 {
				turbodetected[i] = true
			}
			if (gametic & 31) == 0 && ((gametic >> 5) % 4) == i && turbodetected[i] {
				turbomessage := [80]i8{}
				player_names := [4]&i8{}
				m_snprintf(turbomessage, sizeof(turbomessage), c'%s is turbo!', player_names[i])
				players[consoleplayer].message = turbomessage
				turbodetected[i] = false
			}
			if netgame && !netdemo && !(gametic % ticdup) {
				if gametic > 128 && consistancy[i][buf] != cmd.consistancy {
					i_error(c'consistency failure (%i should be %i)', cmd.consistancy,
						consistancy[i][buf])
				}
				if players[i].mo {
					consistancy[i][buf] = players[i].mo.x
				} else { // 3
					consistancy[i][buf] = rndindex
				}
			}
		}
	}
	for i = 0; i < 4; i++ {
		if playeringame[i] {
			if players[i].cmd.buttons & Buttoncode_t.bt_special {
				valera := 0
				qqq := Buttoncode_t.bts_pause
				match qqq {
					.bts_pause /* case comp body BreakStmt */ {}
					else {}
				}
				x := (players[i].cmd.buttons & Buttoncode_t.bt_specialmask)
				match x {
					u8(Buttoncode_t.bts_pause) /* case comp body CompoundAssignOperator */ {
						paused ^= 1
						if paused {
							s_pausesound()
						} else { // 3
							s_resumesound()
						}
					}
					u8(Buttoncode_t.bts_savegame) /* case comp body IfStmt */ {
						if !savedescription[0] {
							m_stringcopy(savedescription, c'NET GAME', sizeof(savedescription))
						}
						savegameslot = (players[i].cmd.buttons & Buttoncode_t.bts_savemask) >> Buttoncode_t.bts_saveshift
						gameaction = Gameaction_t.ga_savegame
					}
					else {}
				}
			}
		}
	}
	if oldgamestate == Gamestate_t.gs_intermission && gamestate != Gamestate_t.gs_intermission {
		wi_end()
	}
	oldgamestate = gamestate
	match gamestate {
		.gs_level /* case comp body CallExpr */ {
			p_ticker()
			st_ticker()
			am_ticker()
			hu_ticker()
		}
		.gs_intermission /* case comp body CallExpr */ {
			wi_ticker()
		}
		.gs_finale /* case comp body CallExpr */ {
			f_ticker()
		}
		.gs_demoscreen /* case comp body CallExpr */ {
			d_pageticker()
		}
		else {}
	}
}

[c: 'G_InitPlayer']
fn g_initplayer(player int) {
	g_playerreborn(player)
}

[c: 'G_PlayerFinishLevel']
fn g_playerfinishlevel(player int) {
	p := &Player_t(0)
	p = &players[player]
	C.memset(p.powers, 0, sizeof(p.powers))
	C.memset(p.cards, 0, sizeof(p.cards))
	p.mo.flags &= ~Mobjflag_t.mf_shadow
	p.extralight = 0
	p.fixedcolormap = 0
	p.damagecount = 0
	p.bonuscount = 0
}

[c: 'G_PlayerReborn']
fn g_playerreborn(player int) {
	p := &Player_t(0)
	i := 0
	frags := [4]int{}
	killcount := 0
	itemcount := 0
	secretcount := 0
	C.memcpy(frags, players[player].frags, sizeof(frags))
	killcount = players[player].killcount
	itemcount = players[player].itemcount
	secretcount = players[player].secretcount
	p = &players[player]
	C.memset(p, 0, sizeof(*p))
	C.memcpy(players[player].frags, frags, 16)
	players[player].killcount = killcount
	players[player].itemcount = itemcount
	players[player].secretcount = secretcount
	p.usedown = true
	p.attackdown = true
	p.playerstate = Playerstate_t.pst_live
	p.health = deh_initial_health
	p.readyweapon = Weapontype_t.wp_pistol
	p.pendingweapon = Weapontype_t.wp_pistol
	p.weaponowned[Weapontype_t.wp_fist] = true
	p.weaponowned[Weapontype_t.wp_pistol] = true
	p.ammo[Ammotype_t.am_clip] = deh_initial_bullets
	for i = 0; i < Ammotype_t.numammo; i++ {
		p.maxammo[i] = maxammo[i]
	}
}

[c: 'P_SpawnPlayer']
fn p_spawnplayer(mthing &Mapthing_t)

[c: 'G_CheckSpot']
fn g_checkspot(playernum int, mthing &Mapthing_t) bool {
	x := 0
	y := 0
	ss := &Subsector_t(0)
	mo := &Mobj_t(0)
	i := 0
	if !players[playernum].mo {
		for i = 0; i < playernum; i++ {
			if players[i].mo.x == mthing.x << 16 && players[i].mo.y == mthing.y << 16 {
				return false
			}
		}
		return true
	}
	x = mthing.x << 16
	y = mthing.y << 16
	if !p_checkposition(players[playernum].mo, x, y) {
		return false
	}
	if bodyqueslot >= 32 {
		p_removemobj(bodyque[bodyqueslot % 32])
	}
	bodyque[bodyqueslot % 32] = players[playernum].mo
	bodyqueslot++
	ss = r_pointinsubsector(x, y)
	xa := 0
	ya := 0

	an := 0
	an = (536870912 >> 19) * (int(mthing.angle) / 45)
	match an {
		4096 /* case comp body BinaryOperator */ {
			xa = finetangent[2048]
			ya = finetangent[0]
		}
		5120 /* case comp body BinaryOperator */ {
			xa = finetangent[3072]
			ya = finetangent[1024]
		}
		6144 /* case comp body BinaryOperator */ {
			xa = finesine[0]
			ya = finetangent[2048]
		}
		7168 /* case comp body BinaryOperator */ {
			xa = finesine[1024]
			ya = finetangent[3072]
		}
		0, 1024, 2048, 3072 {
			xa = finecosine[an]
			ya = finesine[an]
		}
		else {
			i_error(c'G_CheckSpot: unexpected angle %d', an)
			xa = 0
			ya = 0
		}
	}
	mo = p_spawnmobj(x + 20 * xa, y + 20 * ya, ss.sector.floorheight, Mobjtype_t.mt_tfog)
	if players[consoleplayer].viewz != 1 {
		s_startsound(mo, Sfxenum_t.sfx_telept)
	}
	return true
}

[c: 'G_DeathMatchSpawnPlayer']
fn g_deathmatchspawnplayer(playernum int) {
	i := 0
	j := 0

	selections := 0
	selections = deathmatch_p - deathmatchstarts
	if selections < 4 {
		i_error(c'Only %i deathmatch spots, 4 required', selections)
	}
	for j = 0; j < 20; j++ {
		i = p_random() % selections
		if g_checkspot(playernum, &deathmatchstarts[i]) {
			deathmatchstarts[i].type_ = playernum + 1
			p_spawnplayer(&deathmatchstarts[i])
			return
		}
	}
	p_spawnplayer(&playerstarts[playernum])
}

[c: 'G_DoReborn']
fn g_doreborn(playernum int) {
	i := 0
	if !netgame {
		gameaction = Gameaction_t.ga_loadlevel
	} else {
		players[playernum].mo.player = (voidptr(0))
		if deathmatch {
			g_deathmatchspawnplayer(playernum)
			return
		}
		if g_checkspot(playernum, &playerstarts[playernum]) {
			p_spawnplayer(&playerstarts[playernum])
			return
		}
		for i = 0; i < 4; i++ {
			if g_checkspot(playernum, &playerstarts[i]) {
				playerstarts[i].type_ = playernum + 1
				p_spawnplayer(&playerstarts[i])
				playerstarts[i].type_ = i + 1
				return
			}
		}
		p_spawnplayer(&playerstarts[playernum])
	}
}

[c: 'G_ScreenShot']
fn g_screenshot() {
	gameaction = Gameaction_t.ga_screenshot
}

[export: 'pars']
const (
	pars = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]!, [0, 30, 75, 120, 90, 165, 180, 180, 30, 165]!,
		[0, 90, 90, 90, 120, 90, 360, 240, 30, 170]!, [0, 90, 45, 90, 150, 90, 90, 165, 30, 135]!]!
)

[export: 'cpars']
const (
	cpars = [30, 90, 120, 120, 90, 150, 120, 120, 270, 90, 210, 150, 150, 150, 210, 150, 420, 150,
		210, 150, 240, 150, 180, 150, 150, 300, 330, 420, 300, 180, 120, 30]!
)

[weak]
__global (
	secretexit bool
)

[weak]
__global (
	pagename &i8
)

[c: 'G_ExitLevel']
fn g_exitlevel() {
	secretexit = false
	gameaction = Gameaction_t.ga_completed
}

[c: 'G_SecretExitLevel']
fn g_secretexitlevel() {
	if (gamemode == GameMode_t.commercial) && (w_checknumforname(c'map31') < 0) {
		secretexit = false
	} else { // 3
		secretexit = true
	}
	gameaction = Gameaction_t.ga_completed
}

[c: 'G_DoCompleted']
fn g_docompleted() {
	i := 0
	gameaction = Gameaction_t.ga_nothing
	for i = 0; i < 4; i++ {
		if playeringame[i] {
			g_playerfinishlevel(i)
		}
	}
	if automapactive {
		am_stop()
	}
	if gamemode != GameMode_t.commercial {
		if gameversion == GameVersion_t.exe_chex {
			if gamemap == 5 {
				gameaction = Gameaction_t.ga_victory
				return
			}
		} else {
			match gamemap {
				8 /* case comp body BinaryOperator */ {
					gameaction = Gameaction_t.ga_victory
					return
				}
				9 /* case comp body ForStmt */ {
					for i = 0; i < 4; i++ {
						players[i].didsecret = true
					}
				}
				else {}
			}
		}
	}
	if (gamemap == 8) && (gamemode != GameMode_t.commercial) {
		gameaction = Gameaction_t.ga_victory
		return
	}
	if (gamemap == 9) && (gamemode != GameMode_t.commercial) {
		for i = 0; i < 4; i++ {
			players[i].didsecret = true
		}
	}
	wminfo.didsecret = players[consoleplayer].didsecret
	wminfo.epsd = gameepisode - 1
	wminfo.last = gamemap - 1
	if gamemode == GameMode_t.commercial {
		if secretexit {
			match gamemap {
				15 /* case comp body BinaryOperator */ {
					wminfo.next = 30
				}
				31 /* case comp body BinaryOperator */ {
					wminfo.next = 31
				}
				else {}
			}
		} else {
			match gamemap {
				31, 32 {
					wminfo.next = 15
				}
				else {
					wminfo.next = gamemap
				}
			}
		}
	} else {
		if secretexit {
			wminfo.next = 8
		} else if gamemap == 9 {
			match gameepisode {
				1 /* case comp body BinaryOperator */ {
					wminfo.next = 3
				}
				2 /* case comp body BinaryOperator */ {
					wminfo.next = 5
				}
				3 /* case comp body BinaryOperator */ {
					wminfo.next = 6
				}
				4 /* case comp body BinaryOperator */ {
					wminfo.next = 2
				}
				else {}
			}
		} else { // 3
			wminfo.next = gamemap
		}
	}
	wminfo.maxkills = totalkills
	wminfo.maxitems = totalitems
	wminfo.maxsecret = totalsecret
	wminfo.maxfrags = 0
	if gamemode == GameMode_t.commercial {
		if gamemap == 33 {
			wminfo.partime = 0
		} else {
			wminfo.partime = 35 * cpars[gamemap - 1]
		}
	} else if gameepisode < 4 {
		wminfo.partime = 35 * pars[gameepisode][gamemap]
	} else {
		wminfo.partime = 35 * cpars[gamemap]
	}
	wminfo.pnum = consoleplayer
	for i = 0; i < 4; i++ {
		wminfo.plyr[i].in_ = playeringame[i]
		wminfo.plyr[i].skills = players[i].killcount
		wminfo.plyr[i].sitems = players[i].itemcount
		wminfo.plyr[i].ssecret = players[i].secretcount
		wminfo.plyr[i].stime = leveltime
		C.memcpy(wminfo.plyr[i].frags, players[i].frags, 16)
	}
	gamestate = Gamestate_t.gs_intermission
	viewactive = false
	automapactive = false
	statcopy(&wminfo)
	wi_start(&wminfo)
}

[c: 'G_WorldDone']
fn g_worlddone() {
	gameaction = Gameaction_t.ga_worlddone
	if secretexit {
		players[consoleplayer].didsecret = true
	}
	if gamemode == GameMode_t.commercial {
		match gamemap {
			15, 31 {
				if !secretexit {
				}
			}
			6, 11, 20, 30 {
				f_startfinale()
			}
			else {}
		}
	}
}

[c: 'G_DoWorldDone']
fn g_doworlddone() {
	gamestate = Gamestate_t.gs_level
	gamemap = wminfo.next + 1
	g_doloadlevel()
	gameaction = Gameaction_t.ga_nothing
	viewactive = true
}

[weak]
__global (
	setsizeneeded bool
)

[c: 'R_ExecuteSetViewSize']
fn r_executesetviewsize()

[weak]
__global (
	savename [256]i8
)

[c: 'G_LoadGame']
fn g_loadgame(name &i8) {
	m_stringcopy(savename, name, sizeof(savename))
	gameaction = Gameaction_t.ga_loadgame
}

[c: 'G_DoLoadGame']
fn g_doloadgame() {
	savedleveltime := 0
	gameaction = Gameaction_t.ga_nothing
	save_stream = C.fopen(savename, c'rb')
	if save_stream == (voidptr(0)) {
		i_error(c'Could not load savegame %s', savename)
	}
	savegame_error = false
	if !p_readsavegameheader() {
		C.fclose(save_stream)
		return
	}
	savedleveltime = leveltime
	g_initnew(gameskill, gameepisode, gamemap)
	leveltime = savedleveltime
	p_unarchiveplayers()
	p_unarchiveworld()
	p_unarchivethinkers()
	p_unarchivespecials()
	if !p_readsavegameeof() {
		i_error(c'Bad savegame')
	}
	C.fclose(save_stream)
	if setsizeneeded {
		r_executesetviewsize()
	}
	r_fillbackscreen()
}

[c: 'G_SaveGame']
fn g_savegame(slot int, description &i8) {
	savegameslot = slot
	m_stringcopy(savedescription, description, sizeof(savedescription))
	sendsave = true
}

[c: 'G_DoSaveGame']
fn g_dosavegame() {
	savegame_file := &i8(0)
	temp_savegame_file := &i8(0)
	recovery_savegame_file := &i8(0)
	recovery_savegame_file = (voidptr(0))
	temp_savegame_file = p_tempsavegamefile()
	savegame_file = p_savegamefile(savegameslot)
	save_stream = C.fopen(temp_savegame_file, c'wb')
	if save_stream == (voidptr(0)) {
		recovery_savegame_file = m_tempfile(c'recovery.dsg')
		save_stream = C.fopen(recovery_savegame_file, c'wb')
		if save_stream == (voidptr(0)) {
			i_error(c"Failed to open either '%s' or '%s' to write savegame.", temp_savegame_file,
				recovery_savegame_file)
		}
	}
	savegame_error = false
	p_writesavegameheader(savedescription)
	p_archiveplayers()
	p_archiveworld()
	p_archivethinkers()
	p_archivespecials()
	p_writesavegameeof()
	if vanilla_savegame_limit && C.ftell(save_stream) > 180224 {
		i_error(c'Savegame buffer overrun')
	}
	C.fclose(save_stream)
	if recovery_savegame_file != (voidptr(0)) {
		i_error(c"Failed to open savegame file '%s' for writing. But your game has been saved to '%s' for recovery.",
			temp_savegame_file, recovery_savegame_file)
	}
	C.remove(savegame_file)
	C.rename(temp_savegame_file, savegame_file)
	gameaction = Gameaction_t.ga_nothing
	m_stringcopy(savedescription, c'', sizeof(savedescription))
	players[consoleplayer].message = deh_string(c'game saved.')
	r_fillbackscreen()
}

[weak]
__global (
	d_skill Skill_t
)

[weak]
__global (
	d_episode int
)

[weak]
__global (
	d_map int
)

[c: 'G_DeferedInitNew']
fn g_deferedinitnew(skill Skill_t, episode int, map_ int) {
	d_skill = skill
	d_episode = episode
	d_map = map_
	gameaction = Gameaction_t.ga_newgame
}

[c: 'G_DoNewGame']
fn g_donewgame() {
	demoplayback = false
	netdemo = false
	netgame = false
	deathmatch = false
	playeringame[1] = 0
	playeringame[2] = 0
	playeringame[3] = 0
	respawnparm = false
	fastparm = false
	nomonsters = false
	consoleplayer = 0
	g_initnew(d_skill, d_episode, d_map)
	gameaction = Gameaction_t.ga_nothing
}

[c: 'G_InitNew']
fn g_initnew(skill Skill_t, episode int, map_ int) {
	skytexturename := &i8(0)
	i := 0
	if paused {
		paused = false
		s_resumesound()
	}
	if skill > Skill_t.sk_nightmare {
		skill = Skill_t.sk_nightmare
	}
	if gameversion >= GameVersion_t.exe_ultimate {
		if episode == 0 {
			episode = 4
		}
	} else {
		if episode < 1 {
			episode = 1
		}
		if episode > 3 {
			episode = 3
		}
	}
	if episode > 1 && gamemode == GameMode_t.shareware {
		episode = 1
	}
	if map_ < 1 {
		map_ = 1
	}
	if (map_ > 9) && (gamemode != GameMode_t.commercial) {
		map_ = 9
	}
	m_clearrandom()
	if skill == Skill_t.sk_nightmare || respawnparm {
		respawnmonsters = true
	} else { // 3
		respawnmonsters = false
	}
	if fastparm || (skill == Skill_t.sk_nightmare && gameskill != Skill_t.sk_nightmare) {
		for i = Statenum_t.s_sarg_run1; i <= Statenum_t.s_sarg_pain2; i++ {
			states[i].tics >>= 1
		}
		mobjinfo[Mobjtype_t.mt_bruisershot].speed = 20 * (1 << 16)
		mobjinfo[Mobjtype_t.mt_headshot].speed = 20 * (1 << 16)
		mobjinfo[Mobjtype_t.mt_troopshot].speed = 20 * (1 << 16)
	} else if skill != Skill_t.sk_nightmare && gameskill == Skill_t.sk_nightmare {
		for i = Statenum_t.s_sarg_run1; i <= Statenum_t.s_sarg_pain2; i++ {
			states[i].tics <<= 1
		}
		mobjinfo[Mobjtype_t.mt_bruisershot].speed = 15 * (1 << 16)
		mobjinfo[Mobjtype_t.mt_headshot].speed = 10 * (1 << 16)
		mobjinfo[Mobjtype_t.mt_troopshot].speed = 10 * (1 << 16)
	}
	for i = 0; i < 4; i++ {
		players[i].playerstate = Playerstate_t.pst_reborn
	}
	usergame = true
	paused = false
	demoplayback = false
	automapactive = false
	viewactive = true
	gameepisode = episode
	gamemap = map_
	gameskill = skill
	viewactive = true
	if gamemode == GameMode_t.commercial {
		skytexturename = deh_string(c'SKY3')
		skytexture = r_texturenumforname(skytexturename)
		if gamemap < 21 {
			skytexturename = deh_string(if gamemap < 12 { c'SKY1' } else { c'SKY2' })
			skytexture = r_texturenumforname(skytexturename)
		}
	} else {
		match gameepisode {
			1 /* case comp body BinaryOperator */ {
				skytexturename = c'SKY1'
			}
			2 /* case comp body BinaryOperator */ {
				skytexturename = c'SKY2'
			}
			3 /* case comp body BinaryOperator */ {
				skytexturename = c'SKY3'
			}
			4 /* case comp body BinaryOperator */ {
				skytexturename = c'SKY4'
			}
			else {}
		}
		skytexturename = deh_string(skytexturename)
		skytexture = r_texturenumforname(skytexturename)
	}
	g_doloadlevel()
}

[c: 'G_ReadDemoTiccmd']
fn g_readdemoticcmd(cmd &Ticcmd_t) {
	if *demo_p == 128 {
		g_checkdemostatus()
		return
	}
	cmd.forwardmove = (i8(*demo_p++))
	cmd.sidemove = (i8(*demo_p++))
	if longtics {
		cmd.angleturn = *demo_p++
		cmd.angleturn |= (*demo_p++) << 8
	} else {
		cmd.angleturn = (u8(*demo_p++)) << 8
	}
	cmd.buttons = u8(*demo_p++)
}

[c: 'IncreaseDemoBuffer']
fn increasedemobuffer() {
	current_length := 0
	new_demobuffer := &u8(0)
	new_demop := &u8(0)
	new_length := 0
	current_length = demoend - demobuffer
	new_length = current_length * 2
	new_demobuffer = z_malloc(new_length, 1, 0)
	new_demop = new_demobuffer + (demo_p - demobuffer)
	C.memcpy(new_demobuffer, demobuffer, current_length)
	z_free(demobuffer)
	demobuffer = new_demobuffer
	demo_p = new_demop
	demoend = demobuffer + new_length
}

[c: 'G_WriteDemoTiccmd']
fn g_writedemoticcmd(cmd &Ticcmd_t) {
	demo_start := &u8(0)
	if gamekeydown[key_demo_quit] {
		g_checkdemostatus()
	}
	demo_start = demo_p
	*demo_p = cmd.forwardmove
	demo_p++
	*demo_p = cmd.sidemove
	demo_p++
	if longtics {
		*demo_p = (cmd.angleturn & 255)
		demo_p++
		*demo_p = (cmd.angleturn >> 8) & 255
		demo_p++
	} else {
		*demo_p = cmd.angleturn >> 8
		demo_p++
	}
	*demo_p = cmd.buttons
	demo_p++
	demo_p = demo_start
	if demo_p > demoend - 16 {
		if vanilla_demo_limit {
			g_checkdemostatus()
			return
		} else {
			increasedemobuffer()
		}
	}
	g_readdemoticcmd(cmd)
}

[c: 'G_RecordDemo']
fn g_recorddemo(name &i8) {
	demoname_size := u32(0)
	i := 0
	maxsize := 0
	usergame = false
	demoname_size = C.strlen(name) + 5
	demoname = z_malloc(demoname_size, 1, (voidptr(0)))
	m_snprintf(demoname, demoname_size, c'%s.lmp', name)
	maxsize = 131072
	i = m_checkparmwithargs(c'-maxdemo', 1)
	if i {
		maxsize = C.atoi(myargv[i + 1]) * 1024
	}
	demobuffer = z_malloc(maxsize, 1, (voidptr(0)))
	demoend = demobuffer + maxsize
	demorecording = true
}

[c: 'G_VanillaVersionCode']
fn g_vanillaversioncode() int {
	match gameversion {
		.exe_doom_1_666 /* case comp body ReturnStmt */ {
			return 106
		}
		.exe_doom_1_7 /* case comp body ReturnStmt */ {
			return 107
		}
		.exe_doom_1_8 /* case comp body ReturnStmt */ {
			return 108
		}
		.exe_doom_1_9 /* case comp body ReturnStmt */ {
			return 109
		}
		else {
			return 109
		}
	}
}

[c: 'G_BeginRecording']
fn g_beginrecording() {
	i := 0
	demo_p = demobuffer
	longtics = d_nonvanillarecord(m_parmexists(c'-longtics'), c'Doom 1.91 demo format')
	lowres_turn = !longtics
	if longtics {
		*demo_p = 111
		demo_p++
	} else if gameversion > GameVersion_t.exe_doom_1_2 {
		*demo_p = g_vanillaversioncode()
		demo_p++
	}
	*demo_p = gameskill
	demo_p++
	*demo_p = gameepisode
	demo_p++
	*demo_p = gamemap
	demo_p++
	if longtics || gameversion > GameVersion_t.exe_doom_1_2 {
		*demo_p = deathmatch
		demo_p++
		*demo_p = respawnparm
		demo_p++
		*demo_p = fastparm
		demo_p++
		*demo_p = nomonsters
		demo_p++
		*demo_p = consoleplayer
		demo_p++
	}
	for i = 0; i < 4; i++ {
		*demo_p = playeringame[i]
		demo_p++
	}
}

[weak]
__global (
	defdemoname &i8
)

[c: 'G_DeferedPlayDemo']
fn g_deferedplaydemo(name &i8) {
	defdemoname = name
	gameaction = Gameaction_t.ga_playdemo
}

[c: 'DemoVersionDescription']
fn demoversiondescription(version int) &i8 {
	resultbuf := [16]i8{}
	match version {
		104 /* case comp body ReturnStmt */ {
			return c'v1.4'
		}
		105 /* case comp body ReturnStmt */ {
			return c'v1.5'
		}
		106 /* case comp body ReturnStmt */ {
			return c'v1.6/v1.666'
		}
		107 /* case comp body ReturnStmt */ {
			return c'v1.7/v1.7a'
		}
		108 /* case comp body ReturnStmt */ {
			return c'v1.8'
		}
		109 /* case comp body ReturnStmt */ {
			return c'v1.9'
		}
		111 /* case comp body ReturnStmt */ {
			return c'v1.91 hack demo?'
		}
		else {}
	}
	if version >= 0 && version <= 4 {
		return c'v1.0/v1.1/v1.2'
	} else {
		m_snprintf(resultbuf, sizeof(resultbuf), c'%i.%i (unknown)', version / 100, version % 100)
		return resultbuf
	}
}

[c: 'G_DoPlayDemo']
fn g_doplaydemo() {
	skill := Skill_t{}
	i := 0
	lumpnum := 0
	episode := 0
	map_ := 0

	demoversion := 0
	olddemo := false
	lumpnum = w_getnumforname(defdemoname)
	gameaction = Gameaction_t.ga_nothing
	demobuffer = w_cachelumpnum(lumpnum, 1)
	demo_p = demobuffer
	demoversion = *demo_p++
	if demoversion >= 0 && demoversion <= 4 {
		olddemo = true
		demo_p--
	}
	longtics = false
	if d_nonvanillaplayback(demoversion == 111, lumpnum, c'Doom 1.91 demo format') {
		longtics = true
	} else if demoversion != g_vanillaversioncode() && !(gameversion <= GameVersion_t.exe_doom_1_2
		&& olddemo) {
		message := c'Demo is from a different game version!(read %d, should be %d)*** You may need to upgrade your version of Doom to v1 ***    See: https://www.doomworld.com/classicdoom/info/patches.php    This appears to be %s.'
		i_error(message, demoversion, g_vanillaversioncode(), demoversiondescription(demoversion))
	}
	skill = *demo_p++
	episode = *demo_p++
	map_ = *demo_p++
	if !olddemo {
		deathmatch = *demo_p++
		respawnparm = *demo_p++
		fastparm = *demo_p++
		nomonsters = *demo_p++
		consoleplayer = *demo_p++
	} else {
		deathmatch = 0
		respawnparm = 0
		fastparm = 0
		nomonsters = 0
		consoleplayer = 0
	}
	for i = 0; i < 4; i++ {
		playeringame[i] = *demo_p++
	}
	if playeringame[1] || m_checkparm(c'-solo-net') > 0 || m_checkparm(c'-netdemo') > 0 {
		netgame = true
		netdemo = true
	}
	precache = false
	g_initnew(skill, episode, map_)
	precache = true
	starttime = i_gettime()
	usergame = false
	demoplayback = true
}

[c: 'G_TimeDemo']
fn g_timedemo(name &i8) {
	nodrawers = m_checkparm(c'-nodraw')
	timingdemo = true
	singletics = true
	defdemoname = name
	gameaction = Gameaction_t.ga_playdemo
}

[c: 'G_CheckDemoStatus']
fn g_checkdemostatus() bool {
	endtime := 0
	if timingdemo {
		fps := f32(0.0)
		realtics := 0
		endtime = i_gettime()
		realtics = endtime - starttime
		fps = (f32(gametic) * 35) / realtics
		timingdemo = false
		demoplayback = false
		i_error(c'timed %i gametics in %i realtics (%f fps)', gametic, realtics, fps)
	}
	if demoplayback {
		w_releaselumpname(defdemoname)
		demoplayback = false
		netdemo = false
		netgame = false
		deathmatch = false
		playeringame[1] = 0
		playeringame[2] = 0
		playeringame[3] = 0
		respawnparm = false
		fastparm = false
		nomonsters = false
		consoleplayer = 0
		if singledemo {
			i_quit()
		} else { // 3
			d_advancedemo()
		}
		return true
	}
	if demorecording {
		*demo_p = 128
		demo_p++
		m_writefile(demoname, demobuffer, demo_p - demobuffer)
		z_free(demobuffer)
		demorecording = false
		i_error(c'Demo %s recorded', demoname)
	}
	return false
}
