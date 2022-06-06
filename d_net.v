[translated]
module main


[typedef]
struct C.FILE {}


// vstart

struct Lldiv_t { 
	quot i64
	rem i64
}
fn system( &i8) int

type Byte = u8
type Pixel_t = u8
type Dpixel_t = i16
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
	sk_noitems = -1	sk_baby = 0	sk_easy
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
	invulntics = 30 * 35	invistics = 60 * 35	infratics = 120 * 35	irontics = 60 * 35}

[c:'D_ProcessEvents']
fn d_processevents() 

[c:'D_DoAdvanceDemo']
fn d_doadvancedemo() 

[c:'M_CheckParm']
fn m_checkparm(check &i8) int

[c:'M_ParmExists']
fn m_parmexists(check &i8) bool

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
	bt_attack = 1	bt_use = 2	bt_special = 128	bt_specialmask = 3	bt_change = 4	bt_weaponmask = 8 + 16 + 32	bt_weaponshift = 3	bts_pause = 1	bts_savegame = 2	bts_savemask = 4 + 8 + 16	bts_saveshift = 2}

enum Buttoncode2_t {
	bt2_lookup = 1	bt2_lookdown = 2	bt2_centerview = 4	bt2_invuse = 8	bt2_invdrop = 16	bt2_jump = 32	bt2_health = 128}

[c:'M_Ticker']
fn m_ticker() 

[c:'M_StringCopy']
fn m_stringcopy(dest &i8, src &i8, dest_size usize) bool

struct Ticcmd_t { 
	forwardmove i8
	sidemove i8
	angleturn i16
	chatchar u8
	buttons u8
	consistancy u8
	buttons2 u8
	inventory int
	lookfly u8
	arti u8
}
type Atexit_func_t = fn ()
type Grabmouse_callback_t = fn () bool
[c:'G_CheckDemoStatus']
fn g_checkdemostatus() bool

[c:'G_BuildTiccmd']
fn g_buildticcmd(cmd &Ticcmd_t, maketic int) 

[c:'G_Ticker']
fn g_ticker() 


const ( // empty enum
	ml_label = 0
	ml_things = 1
	ml_linedefs = 2
	ml_sidedefs = 3
	ml_vertexes = 4
	ml_segs = 5
	ml_ssectors = 6
	ml_nodes = 7
	ml_sectors = 8
	ml_reject = 9
	ml_blockmap = 10
)

struct Mapvertex_t { 
	x i16
	y i16
}
struct Mapsidedef_t { 
	textureoffset i16
	rowoffset i16
	toptexture [8]i8
	bottomtexture [8]i8
	midtexture [8]i8
	sector i16
}
struct Maplinedef_t { 
	v1 i16
	v2 i16
	flags i16
	special i16
	tag i16
	sidenum [2]i16
}
struct Mapsector_t { 
	floorheight i16
	ceilingheight i16
	floorpic [8]i8
	ceilingpic [8]i8
	lightlevel i16
	special i16
	tag i16
}
struct Mapsubsector_t { 
	numsegs i16
	firstseg i16
}
struct Mapseg_t { 
	v1 i16
	v2 i16
	angle i16
	linedef i16
	side i16
	offset i16
}
struct Mapnode_t { 
	x i16
	y i16
	dx i16
	dy i16
	bbox [2][4]i16
	children [2]u16
}
struct Mapthing_t { 
	x i16
	y i16
	angle i16
	type_ i16
	options i16
}
type Sha1_context_t = Sha1_context_s
type Sha1_digest_t = [20]u8
struct Sha1_context_s { 
	h0 u32
	h1 u32
	h2 u32
	h3 u32
	h4 u32
	nblocks u32
	buf [64]u8
	count int
}
type Net_module_t = Net_module_s
type Net_packet_t = Net_packet_s
type Net_addr_t = Net_addr_s
struct Net_packet_s { 
	data &u8
	len usize
	alloced usize
	pos u32
}
struct Net_module_s { 
	InitClient fn () bool
	InitServer fn () bool
	SendPacket fn (&Net_addr_t, &Net_packet_t)
	RecvPacket fn (&&Net_addr_t, &&Net_packet_t) bool
	AddrToString fn (&Net_addr_t, &i8, int)
	FreeAddress fn (&Net_addr_t)
	ResolveAddress fn (&i8) &Net_addr_t
}
struct Net_addr_s { 
	module_ &Net_module_t
	refcount int
	handle voidptr
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
	gamemode int
	gamemission int
	lowres_turn int
	drone int
	max_players int
	is_freedoom int
	wad_sha1sum Sha1_digest_t
	deh_sha1sum Sha1_digest_t
	player_class int
}
struct Net_gamesettings_t { 
	ticdup int
	extratics int
	deathmatch int
	episode int
	nomonsters int
	fast_monsters int
	respawn_monsters int
	map_ int
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
struct Net_ticdiff_t { 
	diff u32
	cmd Ticcmd_t
}
struct Net_full_ticcmd_t { 
	latency int
	seq u32
	playeringame [8]bool
	cmds [8]Net_ticdiff_t
}
struct Net_querydata_t { 
	version &i8
	server_state int
	num_players int
	max_players int
	gamemode int
	gamemission int
	description &i8
	protocol Net_protocol_t
}
struct Net_waitdata_t { 
	num_players int
	num_drones int
	ready_players int
	max_players int
	is_controller int
	consoleplayer int
	player_names [8][30]i8
	player_addrs [8][30]i8
	wad_sha1sum Sha1_digest_t
	deh_sha1sum Sha1_digest_t
	is_freedoom int
}
type Netgame_startup_callback_t = fn (int, int) bool
struct Loop_interface_t { 
	ProcessEvents fn ()
	BuildTiccmd fn (&Ticcmd_t, int)
	RunTic fn (&Ticcmd_t, &bool)
	RunMenu fn ()
}
[c:'D_RegisterLoopCallbacks']
fn d_registerloopcallbacks(i &Loop_interface_t) 

[c:'D_InitNetGame']
fn d_initnetgame(connect_data &Net_connect_data_t) bool

[c:'D_StartNetGame']
fn d_startnetgame(settings &Net_gamesettings_t, callback Netgame_startup_callback_t) 

struct Weaponinfo_t { 
	ammo Ammotype_t
	upstate int
	downstate int
	readystate int
	atkstate int
	flashstate int
}
type Fixed_t = int
type Angle_t = u32
type Actionf_v = fn ()
type Actionf_p1 = fn (voidptr)
type Actionf_p2 = fn (voidptr, voidptr)
union Actionf_t { 
	acv Actionf_v
	acp1 Actionf_p1
	acp2 Actionf_p2
}
type Think_t = Actionf_t
struct Thinker_t { 
	prev &Thinker_t
	next &Thinker_t
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
	sprite Spritenum_t
	frame int
	tics int
	action Actionf_t
	nextstate Statenum_t
	misc1 int
	misc2 int
}
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
enum Psprnum_t {
	ps_weapon
	ps_flash
	numpsprites
}

struct Pspdef_t { 
	state &State_t
	tics int
	sx int
	sy int
}
enum Mobjflag_t {
	mf_special = 1	mf_solid = 2	mf_shootable = 4	mf_nosector = 8	mf_noblockmap = 16	mf_ambush = 32	mf_justhit = 64	mf_justattacked = 128	mf_spawnceiling = 256	mf_nogravity = 512	mf_dropoff = 1024	mf_pickup = 2048	mf_noclip = 4096	mf_slide = 8192	mf_float = 16384	mf_teleport = 32768	mf_missile = 65536	mf_dropped = 131072	mf_shadow = 262144	mf_noblood = 524288	mf_corpse = 1048576	mf_infloat = 2097152	mf_countkill = 4194304	mf_countitem = 8388608	mf_skullfly = 16777216	mf_notdmatch = 33554432	mf_translation = 201326592	mf_transshift = 26}

struct Mobj_t { 
	thinker Thinker_t
	x int
	y int
	z int
	snext &Mobj_t
	sprev &Mobj_t
	angle Angle_t
	sprite Spritenum_t
	frame int
	bnext &Mobj_t
	bprev &Mobj_t
	subsector &Subsector_t
	floorz int
	ceilingz int
	radius int
	height int
	momx int
	momy int
	momz int
	validcount int
	type_ Mobjtype_t
	info &Mobjinfo_t
	tics int
	state &State_t
	flags int
	health int
	movedir int
	movecount int
	target &Mobj_t
	reactiontime int
	threshold int
	player &Player_t
	lastlook int
	spawnpoint Mapthing_t
	tracer &Mobj_t
}
enum Playerstate_t {
	pst_live
	pst_dead
	pst_reborn
}

enum Cheat_t {
	cf_noclip = 1	cf_godmode = 2	cf_nomomentum = 4}

struct Player_t { 
	mo &Mobj_t
	playerstate Playerstate_t
	cmd Ticcmd_t
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
	readyweapon Weapontype_t
	pendingweapon Weapontype_t
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
	message &i8
	damagecount int
	bonuscount int
	attacker &Mobj_t
	extralight int
	fixedcolormap int
	colormap int
	psprites [2]Pspdef_t
	didsecret bool
}
struct Wbplayerstruct_t { 
	in_ bool
	skills int
	sitems int
	ssecret int
	stime int
	frags [4]int
	score int
}
struct Wbstartstruct_t { 
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
	plyr [4]Wbplayerstruct_t
}
[weak]__global ( nomonsters bool 

)

[weak]__global ( respawnparm bool 

)

[weak]__global ( fastparm bool 

)

[weak]__global ( gamemode GameMode_t 

)

[weak]__global ( gamemission GameMission_t 

)

[weak]__global ( gameversion GameVersion_t 

)

[weak]__global ( startskill Skill_t 

)

[weak]__global ( startepisode int 

)

[weak]__global ( startmap int 

)

[weak]__global ( startloadgame int 

)

[weak]__global ( autostart bool 

)

[weak]__global ( timelimit int 

)

[weak]__global ( netgame bool 

)

[weak]__global ( deathmatch int 

)

[weak]__global ( viewangleoffset int 

)

[weak]__global ( consoleplayer int 

)

[weak]__global ( demoplayback bool 

)

[weak]__global ( demorecording bool 

)

[weak]__global ( lowres_turn bool 

)

[c_extern]__global ( players [4]Player_t 

)

[c_extern]__global ( playeringame [4]bool 

)

[weak]__global ( netcmds &Ticcmd_t 

)

[c:'W_Checksum']
fn w_checksum(digest &u8) 

type Wad_file_t = Wad_file_s
struct Wad_file_class_t { 
	OpenFile fn (&i8) &Wad_file_t
	CloseFile fn (&Wad_file_t)
	Read fn (&Wad_file_t, u32, voidptr, usize) usize
}
struct Wad_file_s { 
	file_class &Wad_file_class_t
	mapped &u8
	length u32
	path &i8
}
type Lumpinfo_t = Lumpinfo_s
type Lumpindex_t = int
struct Lumpinfo_s { 
	name [8]i8
	wad_file &Wad_file_t
	position int
	size int
	cache voidptr
	next Lumpindex_t
}
[c:'W_CheckNumForName']
fn w_checknumforname(name &i8) Lumpindex_t

struct Patch_t { 
	width i16
	height i16
	leftoffset i16
	topoffset i16
	columnofs [8]int
}
struct Post_t { 
	topdelta u8
	length u8
}
type Column_t = Post_t
struct Vertex_t { 
	x int
	y int
}
struct Degenmobj_t { 
	thinker Thinker_t
	x int
	y int
	z int
}
struct Sector_t { 
	floorheight int
	ceilingheight int
	floorpic i16
	ceilingpic i16
	lightlevel i16
	special i16
	tag i16
	soundtraversed int
	soundtarget &Mobj_t
	blockbox [4]int
	soundorg Degenmobj_t
	validcount int
	thinglist &Mobj_t
	specialdata voidptr
	linecount int
	lines &&Line_t
}
struct Side_t { 
	textureoffset int
	rowoffset int
	toptexture i16
	bottomtexture i16
	midtexture i16
	sector &Sector_t
}
enum Slopetype_t {
	st_horizontal
	st_vertical
	st_positive
	st_negative
}

struct Line_t { 
	v1 &Vertex_t
	v2 &Vertex_t
	dx int
	dy int
	flags i16
	special i16
	tag i16
	sidenum [2]i16
	bbox [4]int
	slopetype Slopetype_t
	frontsector &Sector_t
	backsector &Sector_t
	validcount int
	specialdata voidptr
}
struct Subsector_t { 
	sector &Sector_t
	numlines i16
	firstline i16
}
struct Seg_t { 
	v1 &Vertex_t
	v2 &Vertex_t
	offset int
	angle Angle_t
	sidedef &Side_t
	linedef &Line_t
	frontsector &Sector_t
	backsector &Sector_t
}
struct Node_t { 
	x int
	y int
	dx int
	dy int
	bbox [2][4]int
	children [2]u16
}
type Lighttable_t = u8
struct Drawseg_t { 
	curline &Seg_t
	x1 int
	x2 int
	scale1 int
	scale2 int
	scalestep int
	silhouette int
	bsilheight int
	tsilheight int
	sprtopclip &i16
	sprbottomclip &i16
	maskedtexturecol &i16
}
struct Vissprite_t { 
	prev &Vissprite_t
	next &Vissprite_t
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
	colormap &Lighttable_t
	mobjflags int
}
struct Spriteframe_t { 
	rotate bool
	lump [8]i16
	flip [8]u8
}
struct Spritedef_t { 
	numframes int
	spriteframes &Spriteframe_t
}
struct Visplane_t { 
	height int
	picnum int
	lightlevel int
	minx int
	maxx int
	pad1 u8
	top [320]u8
	pad2 u8
	pad3 u8
	bottom [320]u8
	pad4 u8
}
[c:'DEH_String']
fn deh_string(s &i8) &i8

[c2v_variadic]
[c:'DEH_printf']
fn deh_printf(fmt &i8) 

[c:'DEH_Checksum']
fn deh_checksum(digest &u8) 

[c:'PlayerQuitGame']
fn playerquitgame(player &Player_t)  {
	exitmsg := [80]i8{}
	player_num := u32(0)
	player_num = player - players
	m_stringcopy(exitmsg, deh_string(c'Player 1 left the game'), sizeof(exitmsg))
	exitmsg [7]  += player_num
	playeringame [player_num]  = false
	players [consoleplayer] .message = exitmsg
	if demorecording {
		g_checkdemostatus()
	}
}

[weak]__global ( advancedemo bool 

)

[c:'RunTic']
fn runtic(cmds &Ticcmd_t, ingame &bool)  {
	i := u32(0)
	for i = 0 ; i < 4 ; i ++ {
		if !demoplayback && playeringame [i]  && !ingame [i]  {
			playerquitgame(&players [i] )
		}
	}
	netcmds = cmds
	if advancedemo {
	d_doadvancedemo()
	}
	g_ticker()
}

/*!*/[weak] __global ( doom_loop_interface  = Loop_interface_t {
d_processevents, g_buildticcmd, runtic, m_ticker}

)

[c:'LoadGameSettings']
fn loadgamesettings(settings &Net_gamesettings_t)  {
	i := u32(0)
	deathmatch = settings.deathmatch
	startepisode = settings.episode
	startmap = settings.map_
	startskill = settings.skill
	startloadgame = settings.loadgame
	lowres_turn = settings.lowres_turn
	nomonsters = settings.nomonsters
	fastparm = settings.fast_monsters
	respawnparm = settings.respawn_monsters
	timelimit = settings.timelimit
	consoleplayer = settings.consoleplayer
	if lowres_turn {
		C.printf(c'NOTE: Turning resolution is reduced; this is probably because there is a client recording a Vanilla demo.\n')
	}
	for i = 0 ; i < 4 ; i ++ {
		playeringame [i]  = i < settings.num_players
	}
}

[c:'SaveGameSettings']
fn savegamesettings(settings &Net_gamesettings_t)  {
	settings.deathmatch = deathmatch
	settings.episode = startepisode
	settings.map_ = startmap
	settings.skill = startskill
	settings.loadgame = startloadgame
	settings.gameversion = gameversion
	settings.nomonsters = nomonsters
	settings.fast_monsters = fastparm
	settings.respawn_monsters = respawnparm
	settings.timelimit = timelimit
	settings.lowres_turn = (m_parmexists(c'-record') && !m_parmexists(c'-longtics')) || m_parmexists(c'-shorttics')
}

[c:'InitConnectData']
fn initconnectdata(connect_data &Net_connect_data_t)  {
	shorttics := false
	connect_data.max_players = 4
	connect_data.drone = false
	if m_checkparm(c'-left') > 0 {
		viewangleoffset = 1073741824
		connect_data.drone = true
	}
	if m_checkparm(c'-right') > 0 {
		viewangleoffset = 3221225472
		connect_data.drone = true
	}
	connect_data.gamemode = gamemode
	connect_data.gamemission = gamemission
	shorttics = m_parmexists(c'-shorttics')
	connect_data.lowres_turn = (m_parmexists(c'-record') && !m_parmexists(c'-longtics')) || shorttics
	w_checksum(connect_data.wad_sha1sum)
	deh_checksum(connect_data.deh_sha1sum)
	connect_data.is_freedoom = w_checknumforname(c'FREEDOOM') >= 0
}

[c:'D_ConnectNetGame']
fn d_connectnetgame()  {
	connect_data := Net_connect_data_t{}
	initconnectdata(&connect_data)
	netgame = d_initnetgame(&connect_data)
	if m_checkparm(c'-solo-net') > 0 {
		netgame = true
	}
}

[c:'D_CheckNetGame']
fn d_checknetgame()  {
	settings := Net_gamesettings_t{}
	if netgame {
		autostart = true
	}
	d_registerloopcallbacks(&doom_loop_interface)
	savegamesettings(&settings)
	d_startnetgame(&settings, (voidptr(0)))
	loadgamesettings(&settings)
	deh_printf(c'startskill %i  deathmatch: %i  startmap: %i  startepisode: %i\n', startskill, deathmatch, startmap, startepisode)
	deh_printf(c'player %i of %i (%i nodes)\n', consoleplayer + 1, settings.num_players, settings.num_players)
	if timelimit > 0 && deathmatch {
		if timelimit == 20 && m_checkparm(c'-avg') {
			deh_printf(c'Austin Virtual Gaming: Levels will end after 20 minutes\n')
		}
		else {
			deh_printf(c'Levels will end after %d minute', timelimit)
			if timelimit > 1 {
			C.printf(c's')
			}
			C.printf(c'.\n')
		}
	}
}

