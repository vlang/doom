[translated]
module main

[typedef]
struct C.FILE {}

// vstart

fn abort()

fn system(&i8) int

fn daemon(int, int) int

[c: 'DEH_String']
fn deh_string(s &i8) &i8

[c: 'DEH_printf']
[c2v_variadic]
fn deh_printf(fmt ...&i8)

[c: 'DEH_snprintf']
[c2v_variadic]
fn deh_snprintf(buffer &i8, len usize, fmt ...&i8)

[c: 'DEH_AddStringReplacement']
fn deh_addstringreplacement(from_text &i8, to_text &i8)

[c: 'DEH_ParseCommandLine']
fn deh_parsecommandline()

[c: 'DEH_LoadFile']
fn deh_loadfile(filename &i8) int

[c: 'DEH_AutoLoadPatches']
fn deh_autoloadpatches(path &i8)

[c: 'DEH_LoadLump']
fn deh_loadlump(lumpnum int, allow_long bool, allow_error bool) int

[c: 'DEH_LoadLumpByName']
fn deh_loadlumpbyname(name &i8, allow_long bool, allow_error bool) int

[c: 'I_GetTime']
fn i_gettime() int

[c: 'I_Sleep']
fn i_sleep(ms int)

[c: 'I_InitTimer']
fn i_inittimer()

const ( // empty enum
)

[c: 'NetUpdate']
fn netupdate()

[c: 'TryRunTics']
fn tryruntics()

[c: 'D_StartGameLoop']
fn d_startgameloop()

[c: 'I_InitSound']
fn i_initsound(use_sfx_prefix bool)

[c: 'I_InitMusic']
fn i_initmusic()

[c: 'I_BindSoundVariables']
fn i_bindsoundvariables()

struct Iwad_t {
	name        &i8
	mission     GameMission_t
	mode        GameMode_t
	description &i8
}

[c: 'D_FindWADByName']
fn d_findwadbyname(filename &i8) &i8

[c: 'D_FindIWAD']
fn d_findiwad(mask int, mission &GameMission_t) &i8

[c: 'D_SaveGameIWADName']
fn d_savegameiwadname(gamemission GameMission_t) &i8

[c: 'Z_Init']
fn z_init()

[c: 'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

[c: 'W_ParseCommandLine']
fn w_parsecommandline() bool

[c: 'W_CheckCorrectIWAD']
fn w_checkcorrectiwad(mission GameMission_t)

[c: 'W_AutoLoadWADs']
fn w_autoloadwads(path &i8)

[weak]
__global (
	numlumps u32
)

[c: 'W_AddFile']
fn w_addfile(filename &i8) &Wad_file_t

[c: 'W_CheckNumForName']
fn w_checknumforname(name &i8) Lumpindex_t

[c: 'W_CacheLumpName']
fn w_cachelumpname(name &i8, tag int) voidptr

[c: 'W_GenerateHashTable']
fn w_generatehashtable()

[c: 'W_ReleaseLumpName']
fn w_releaselumpname(name &i8)

[c: 'S_Init']
fn s_init(sfxvolume int, musicvolume int)

[c: 'S_Start']
fn s_start()

[c: 'S_StartMusic']
fn s_startmusic(music_id int)

[c: 'S_UpdateSounds']
fn s_updatesounds(listener &Mobj_t)

[c: 'V_EnableLoadingDisk']
fn v_enableloadingdisk(lump_name &i8, xoffs int, yoffs int)

[c: 'V_Init']
fn v_init()

[c: 'V_DrawPatch']
fn v_drawpatch(x int, y int, patch &Patch_t)

[c: 'V_DrawPatchDirect']
fn v_drawpatchdirect(x int, y int, patch &Patch_t)

[c: 'V_RestoreBuffer']
fn v_restorebuffer()

[c: 'V_DrawMouseSpeedBox']
fn v_drawmousespeedbox(speed int)

[c: 'D_PopEvent']
fn d_popevent() &Event_t

[c: 'F_Drawer']
fn f_drawer()

const ( // empty enum
	wipe_colorxform = 0
	wipe_melt       = 1
	wipe_numwipes   = 2
)

[c: 'wipe_StartScreen']
fn wipe_startscreen(x int, y int, width int, height int) int

[c: 'wipe_EndScreen']
fn wipe_endscreen(x int, y int, width int, height int) int

[c: 'wipe_ScreenWipe']
fn wipe_screenwipe(wipeno int, x int, y int, width int, height int, ticks int) int

[weak]
__global (
	myargc int
)

[c: 'M_CheckParm']
fn m_checkparm(check &i8) int

[c: 'M_CheckParmWithArgs']
fn m_checkparmwithargs(check &i8, num_args int) int

[c: 'M_ParmExists']
fn m_parmexists(check &i8) bool

[c: 'M_LoadDefaults']
fn m_loaddefaults()

[c: 'M_SaveDefaults']
fn m_savedefaults()

[c: 'M_SetConfigDir']
fn m_setconfigdir(dir &i8)

[c: 'M_BindIntVariable']
fn m_bindintvariable(name &i8, variable &int)

[c: 'M_BindStringVariable']
fn m_bindstringvariable(name &i8, variable &&u8)

[c: 'M_SetConfigFilenames']
fn m_setconfigfilenames(main_config &i8, extra_config &i8)

[c: 'M_GetSaveGameDir']
fn m_getsavegamedir(iwadname &i8) &i8

[c: 'M_GetAutoloadDir']
fn m_getautoloaddir(iwadname &i8) &i8

[c: 'M_BindBaseControls']
fn m_bindbasecontrols()

[c: 'M_BindWeaponControls']
fn m_bindweaponcontrols()

[c: 'M_BindMapControls']
fn m_bindmapcontrols()

[c: 'M_BindMenuControls']
fn m_bindmenucontrols()

[c: 'M_BindChatControls']
fn m_bindchatcontrols(num_players u32)

[c: 'M_ApplyPlatformDefaults']
fn m_applyplatformdefaults()

[c: 'M_FileExists']
fn m_fileexists(file &i8) bool

[c: 'M_DirName']
fn m_dirname(path &i8) &i8

[c: 'M_ForceUppercase']
fn m_forceuppercase(text &i8)

[c: 'M_StringCopy']
fn m_stringcopy(dest &i8, src &i8, dest_size usize) bool

[c: 'M_StringJoin']
[c2v_variadic]
fn m_stringjoin(s ...&i8) &i8

[c: 'M_StringEndsWith']
fn m_stringendswith(s &i8, suffix &i8) bool

[c: 'M_snprintf']
[c2v_variadic]
fn m_snprintf(buf &i8, buf_len usize, s ...&i8) int

[c: 'M_Responder']
fn m_responder(ev &Event_t) bool

[c: 'M_Drawer']
fn m_drawer()

[c: 'M_Init']
fn m_init()

[c: 'P_SaveGameFile']
fn p_savegamefile(slot int) &i8

[c: 'I_Endoom']
fn i_endoom(data &u8)

[c: 'I_BindInputVariables']
fn i_bindinputvariables()

[c: 'I_InitJoystick']
fn i_initjoystick()

[c: 'I_BindJoystickVariables']
fn i_bindjoystickvariables()

[c: 'I_Init']
fn i_init()

[c: 'I_Error']
[c2v_variadic]
fn i_error(error ...&i8)

[c: 'I_AtExit']
fn i_atexit(func Atexit_func_t, run_if_error bool)

[c: 'I_PrintStartupBanner']
fn i_printstartupbanner(gamedescription &i8)

[c: 'I_PrintBanner']
fn i_printbanner(text &i8)

[c: 'I_PrintDivider']
fn i_printdivider()

[c: 'I_InitGraphics']
fn i_initgraphics()

[c: 'I_GraphicsCheckCommandLine']
fn i_graphicscheckcommandline()

[c: 'I_SetPalette']
fn i_setpalette(palette &u8)

[c: 'I_UpdateNoBlit']
fn i_updatenoblit()

[c: 'I_FinishUpdate']
fn i_finishupdate()

[c: 'I_SetWindowTitle']
fn i_setwindowtitle(title &i8)

[c: 'I_CheckIsScreensaver']
fn i_checkisscreensaver()

[c: 'I_SetGrabMouseCallback']
fn i_setgrabmousecallback(func Grabmouse_callback_t)

[c: 'I_DisplayFPSDots']
fn i_displayfpsdots(dots_on bool)

[c: 'I_BindVideoVariables']
fn i_bindvideovariables()

[c: 'I_StartFrame']
fn i_startframe()

[c: 'I_StartTic']
fn i_starttic()

[c: 'G_InitNew']
fn g_initnew(skill Skill_t, episode int, map_ int)

[c: 'G_DeferedPlayDemo']
fn g_deferedplaydemo(demo &i8)

[c: 'G_LoadGame']
fn g_loadgame(name &i8)

[c: 'G_RecordDemo']
fn g_recorddemo(name &i8)

[c: 'G_BeginRecording']
fn g_beginrecording()

[c: 'G_TimeDemo']
fn g_timedemo(name &i8)

[c: 'G_CheckDemoStatus']
fn g_checkdemostatus() bool

[c: 'G_Responder']
fn g_responder(ev &Event_t) bool

[c: 'G_VanillaVersionCode']
fn g_vanillaversioncode() int

[c: 'HU_Init']
fn hu_init()

[c: 'HU_Drawer']
fn hu_drawer()

[c: 'HU_Erase']
fn hu_erase()

[c: 'WI_Drawer']
fn wi_drawer()

[c: 'ST_Drawer']
fn st_drawer(fullscreen bool, refresh bool)

[c: 'ST_Init']
fn st_init()

[c: 'AM_Drawer']
fn am_drawer()

[c: 'NET_Init']
fn net_init()

[c: 'NET_BindVariables']
fn net_bindvariables()

[weak]
__global (
	drone bool
)

[c: 'NET_DedicatedServer']
fn net_dedicatedserver()

type Net_query_callback_t = fn (&Net_addr_t, &Net_querydata_t, u32, voidptr)

[c: 'NET_LANQuery']
fn net_lanquery()

[c: 'NET_MasterQuery']
fn net_masterquery()

[c: 'NET_QueryAddress']
fn net_queryaddress(addr &i8)

[c: 'P_Init']
fn p_init()

[c: 'R_RenderPlayerView']
fn r_renderplayerview(player &Player_t)

[c: 'R_Init']
fn r_init()

[c: 'R_FillBackScreen']
fn r_fillbackscreen()

[c: 'R_DrawViewBorder']
fn r_drawviewborder()

[c: 'StatDump']
fn statdump()

[c: 'D_ProcessEvents']
fn d_processevents()

[c: 'D_PageTicker']
fn d_pageticker()

[c: 'D_PageDrawer']
fn d_pagedrawer()

[c: 'D_AdvanceDemo']
fn d_advancedemo()

[c: 'D_DoAdvanceDemo']
fn d_doadvancedemo()

[c: 'D_StartTitle']
fn d_starttitle()

[c: 'D_DoomLoop']
fn d_doomloop()

[weak]
__global (
	iwadfile &i8
)

[weak]
__global (
	storedemo bool
)

//!
[weak]
__global (
	main_loop_started = bool(false)
)

[weak]
__global (
	wadfile [1024]i8
)

[weak]
__global (
	mapdir [1024]i8
)

//!
[weak]
__global (
	show_endoom = int(1)
)

//!
[weak]
__global (
	show_diskicon = int(1)
)

[c: 'D_ConnectNetGame']
fn d_connectnetgame()

[c: 'D_CheckNetGame']
fn d_checknetgame()

[c: 'D_ProcessEvents']
fn d_processevents() {
	ev := &Event_t(0)
	if storedemo {
		return
	}
	for ; true; {
		ev = d_popevent()
		if ev == (voidptr(0)) {
			break
		}
		if m_responder(ev) {
			continue
		}
		g_responder(ev)
	}
}

[c: 'R_ExecuteSetViewSize']
fn r_executesetviewsize()

[c: 'D_Display']
fn d_display() bool {
	viewactivestate := false
	menuactivestate := false
	inhelpscreensstate := false
	fullscreen := false
	oldgamestate := -1
	borderdrawcount := 0
	y := 0
	wipe := false
	redrawsbar := false
	redrawsbar = false
	if setsizeneeded {
		r_executesetviewsize()
		oldgamestate = -1
		borderdrawcount = 3
	}
	if gamestate != wipegamestate {
		wipe = true
		wipe_startscreen(0, 0, 320, 200)
	} else { // 3
		wipe = false
	}
	if gamestate == Gamestate_t.gs_level && gametic {
		hu_erase()
	}
	match gamestate {
		.gs_level /* case comp body kind=IfStmt is_enum=true */ {
			if !gametic {
			}
			if automapactive {
				am_drawer()
			}
			if wipe || (viewheight != 200 && fullscreen) {
				redrawsbar = true
			}
			if inhelpscreensstate && !inhelpscreens {
				redrawsbar = true
			}
			st_drawer(viewheight == 200, redrawsbar)
			fullscreen = viewheight == 200
		}
		.gs_intermission /* case comp body kind=CallExpr is_enum=true */ {
			wi_drawer()
		}
		.gs_finale /* case comp body kind=CallExpr is_enum=true */ {
			f_drawer()
		}
		.gs_demoscreen /* case comp body kind=CallExpr is_enum=true */ {
			d_pagedrawer()
		}
		else {}
	}
	i_updatenoblit()
	if gamestate == Gamestate_t.gs_level && !automapactive && gametic {
		r_renderplayerview(&players[displayplayer])
	}
	if gamestate == Gamestate_t.gs_level && gametic {
		hu_drawer()
	}
	if gamestate != oldgamestate && gamestate != Gamestate_t.gs_level {
		i_setpalette(w_cachelumpname(deh_string(c'PLAYPAL'), 8))
	}
	if gamestate == Gamestate_t.gs_level && oldgamestate != Gamestate_t.gs_level {
		viewactivestate = false
		r_fillbackscreen()
	}
	if gamestate == Gamestate_t.gs_level && !automapactive && scaledviewwidth != 320 {
		if menuactive || menuactivestate || !viewactivestate {
			borderdrawcount = 3
		}
		if borderdrawcount {
			r_drawviewborder()
			borderdrawcount--
		}
	}
	if testcontrols {
		v_drawmousespeedbox(testcontrols_mousespeed)
	}
	menuactivestate = menuactive
	viewactivestate = viewactive
	inhelpscreensstate = inhelpscreens
	oldgamestate = gamestate
	wipegamestate = gamestate
	if paused {
		if automapactive {
			y = 4
		} else { // 3
			y = viewwindowy + 4
		}
		v_drawpatchdirect(viewwindowx + (scaledviewwidth - 68) / 2, y, w_cachelumpname(deh_string(c'M_PAUSE'),
			8))
	}
	m_drawer()
	netupdate()
	return wipe
}

[c: 'EnableLoadingDisk']
fn enableloadingdisk() {
	disk_lump_name := &i8(0)
	if show_diskicon {
		if m_checkparm(c'-cdrom') > 0 {
			disk_lump_name = deh_string(c'STCDROM')
		} else {
			disk_lump_name = deh_string(c'STDISK')
		}
		v_enableloadingdisk(disk_lump_name, 320 - 16, 200 - 16)
	}
}

[c: 'D_BindVariables']
fn d_bindvariables() {
	i := 0
	m_applyplatformdefaults()
	i_bindinputvariables()
	i_bindvideovariables()
	i_bindjoystickvariables()
	i_bindsoundvariables()
	m_bindbasecontrols()
	m_bindweaponcontrols()
	m_bindmapcontrols()
	m_bindmenucontrols()
	m_bindchatcontrols(4)
	key_multi_msgplayer[0] = `g`
	key_multi_msgplayer[1] = `i`
	key_multi_msgplayer[2] = `b`
	key_multi_msgplayer[3] = `r`
	net_bindvariables()
	m_bindintvariable(c'mouse_sensitivity', &mouseSensitivity)
	m_bindintvariable(c'sfx_volume', &sfxVolume)
	m_bindintvariable(c'music_volume', &musicVolume)
	m_bindintvariable(c'show_messages', &showMessages)
	m_bindintvariable(c'screenblocks', &screenblocks)
	m_bindintvariable(c'detaillevel', &detailLevel)
	m_bindintvariable(c'snd_channels', &snd_channels)
	m_bindintvariable(c'vanilla_savegame_limit', &vanilla_savegame_limit)
	m_bindintvariable(c'vanilla_demo_limit', &vanilla_demo_limit)
	m_bindintvariable(c'show_endoom', &show_endoom)
	m_bindintvariable(c'show_diskicon', &show_diskicon)
	for i = 0; i < 10; i++ {
		buf := [12]i8{}
		m_snprintf(buf, sizeof(buf), c'chatmacro%i', i)
		m_bindstringvariable(buf, &chat_macros[i])
	}
}

[c: 'D_GrabMouseCallback']
fn d_grabmousecallback() bool {
	if drone {
		return false
	}
	if menuactive || paused {
		return false
	}
	return (gamestate == Gamestate_t.gs_level) && !demoplayback && !advancedemo
}

[c: 'D_RunFrame']
fn d_runframe() {
	nowtime := 0
	tics := 0
	wipestart := 0
	wipe := false
	if wipe {
		for {
			nowtime = i_gettime()
			tics = nowtime - wipestart
			i_sleep(1)
			// while()
			if !(tics <= 0) {
				break
			}
		}
		wipestart = nowtime
		wipe = !wipe_screenwipe(1, 0, 0, 320, 200, tics)
		i_updatenoblit()
		m_drawer()
		i_finishupdate()
		return
	}
	i_startframe()
	tryruntics()
	s_updatesounds(players[consoleplayer].mo)
	if screenvisible && !nodrawers {
		wipe = d_display()
		if wipe {
			wipe_endscreen(0, 0, 320, 200)
			wipestart = i_gettime() - 1
		} else {
			i_finishupdate()
		}
	}
}

[c: 'D_DoomLoop']
fn d_doomloop() {
	if gamevariant == GameVariant_t.bfgedition
		&& (demorecording || (gameaction == Gameaction_t.ga_playdemo) || netgame) {
		C.printf(c' WARNING: You are playing using one of the Doom Classic\n IWAD files shipped with the Doom 3: BFG Edition. These are\n known to be incompatible with the regular IWAD files and\n may cause demos and network games to get out of sync.\n')
	}
	if demorecording {
		g_beginrecording()
	}
	main_loop_started = true
	i_setwindowtitle(gamedescription)
	i_graphicscheckcommandline()
	i_setgrabmousecallback(d_grabmousecallback)
	i_initgraphics()
	enableloadingdisk()
	tryruntics()
	v_restorebuffer()
	r_executesetviewsize()
	d_startgameloop()
	if testcontrols {
		wipegamestate = gamestate
	}
	for 1 {
		d_runframe()
	}
}

[weak]
__global (
	demosequence int
)

[weak]
__global (
	pagetic int
)

[c: 'D_PageTicker']
fn d_pageticker() {
	if pagetic-- < 0 {
		d_advancedemo()
	}
}

[c: 'D_PageDrawer']
fn d_pagedrawer() {
	v_drawpatch(0, 0, w_cachelumpname(pagename, 8))
}

[c: 'D_AdvanceDemo']
fn d_advancedemo() {
	advancedemo = true
}

[c: 'D_DoAdvanceDemo']
fn d_doadvancedemo() {
	players[consoleplayer].playerstate = Playerstate_t.pst_live
	advancedemo = false
	usergame = false
	paused = false
	gameaction = Gameaction_t.ga_nothing
	if gameversion == GameVersion_t.exe_ultimate || gameversion == GameVersion_t.exe_final {
		demosequence = (demosequence + 1) % 7
	} else { // 3
		demosequence = (demosequence + 1) % 6
	}
	match demosequence {
		0 /* case comp body kind=IfStmt is_enum=false */ {
			if gamemode == GameMode_t.commercial {
				pagetic = 35 * 11
			} else { // 3
				pagetic = 170
			}
			gamestate = Gamestate_t.gs_demoscreen
			pagename = deh_string(c'TITLEPIC')
			if gamemode == GameMode_t.commercial {
				s_startmusic(Musicenum_t.mus_dm2ttl)
			} else { // 3
				s_startmusic(Musicenum_t.mus_intro)
			}
		}
		1 /* case comp body kind=CallExpr is_enum=false */ {
			g_deferedplaydemo(deh_string(c'demo1'))
		}
		2 /* case comp body kind=BinaryOperator is_enum=false */ {
			pagetic = 200
			gamestate = Gamestate_t.gs_demoscreen
			pagename = deh_string(c'CREDIT')
		}
		3 /* case comp body kind=CallExpr is_enum=false */ {
			g_deferedplaydemo(deh_string(c'demo2'))
		}
		4 /* case comp body kind=BinaryOperator is_enum=false */ {
			gamestate = Gamestate_t.gs_demoscreen
			if gamemode == GameMode_t.commercial {
				pagetic = 35 * 11
				pagename = deh_string(c'TITLEPIC')
				s_startmusic(Musicenum_t.mus_dm2ttl)
			} else {
				pagetic = 200
				if gameversion >= GameVersion_t.exe_ultimate {
					pagename = deh_string(c'CREDIT')
				} else { // 3
					pagename = deh_string(c'HELP2')
				}
			}
		}
		5 /* case comp body kind=CallExpr is_enum=false */ {
			g_deferedplaydemo(deh_string(c'demo3'))
		}
		6 /* case comp body kind=CallExpr is_enum=false */ {
			g_deferedplaydemo(deh_string(c'demo4'))
		}
		else {}
	}
	if gamevariant == GameVariant_t.bfgedition && !C.strcasecmp(pagename, c'TITLEPIC')
		&& w_checknumforname(c'titlepic') < 0 {
		pagename = deh_string(c'INTERPIC')
	}
}

[c: 'D_StartTitle']
fn d_starttitle() {
	gameaction = Gameaction_t.ga_nothing
	demosequence = -1
	d_advancedemo()
}

[export: 'banners']
const (
	banners = [
		c'                         DOOM 2: Hell on Earth v%i.%i                           ',
		c'                         DOOM 2: Hell on Earth v%i.%i66                          ',
		c'                            DOOM Shareware Startup v%i.%i                           ',
		c'                            DOOM Registered Startup v%i.%i                           ',
		c'                          DOOM System Startup v%i.%i                          ',
		c'                          DOOM System Startup v%i.%i66                                                   The Ultimate DOOM Startup v%i.%i                        ',
		c'                     DOOM 2: TNT - Evilution v%i.%i                           ',
		c'                   DOOM 2: Plutonia Experiment v%i.%i                           ',
	]!
)

[c: 'GetGameName']
fn getgamename(gamename &i8) &i8 {
	i := usize(0)
	deh_sub := &i8(0)
	for i = 0; i < (sizeof(banners) / sizeof(*banners)); i++ {
		deh_sub = deh_string(banners[i])
		if deh_sub != banners[i] {
			gamename_size := usize(0)
			version := 0
			gamename_size = C.strlen(deh_sub) + 10
			gamename = z_malloc(gamename_size, 1, 0)
			version = g_vanillaversioncode()
			m_snprintf(gamename, gamename_size, deh_sub, version / 100, version % 100)
			for gamename[0] != `\x00` && C.isspace(gamename[0]) {
				C.memmove(gamename, gamename + 1, gamename_size - 1)
			}
			for gamename[0] != `\x00` && C.isspace(gamename[C.strlen(gamename) - 1]) {
				gamename[C.strlen(gamename) - 1] = `\x00`
			}
			return gamename
		}
	}
	return gamename
}

struct Pack_ {
	name    &i8
	mission int
}

[export: 'packs_']
const (
	packs_ = [Pack_{c'doom2', GameMission_t.doom2}, Pack_{c'tnt', GameMission_t.pack_tnt},
		Pack_{c'plutonia', GameMission_t.pack_plut}]!
)

[c: 'SetMissionForPackName']
fn setmissionforpackname(pack_name &i8) {
	i := 0
	for i = 0; i < (sizeof(packs_) / sizeof(*packs_)); i++ {
		if !C.strcasecmp(pack_name, packs_[i].name) {
			gamemission = packs_[i].mission
			return
		}
	}
	C.printf(c'Valid mission packs are:\n')
	for i = 0; i < (sizeof(packs_) / sizeof(*packs_)); i++ {
		C.printf(c'\t%s\n', packs_[i].name)
	}
	i_error(c'Unknown mission pack name: %s', pack_name)
}

[c: 'D_IdentifyVersion']
fn d_identifyversion() {
	if gamemission == GameMission_t.none_ {
		i := u32(0)
		for i = 0; i < numlumps; i++ {
			if !C.strncasecmp(lumpinfo[i].name, c'MAP01', 8) {
				gamemission = GameMission_t.doom2
				break
			} else if !C.strncasecmp(lumpinfo[i].name, c'E1M1', 8) {
				gamemission = GameMission_t.doom
				break
			}
		}
		if gamemission == GameMission_t.none_ {
			i_error(c'Unknown or invalid IWAD file.')
		}
	}
	if GameMission_t.doom == GameMission_t.doom {
		if w_checknumforname(c'E4M1') > 0 {
			gamemode = GameMode_t.retail
		} else if w_checknumforname(c'E3M1') > 0 {
			gamemode = GameMode_t.registered
		} else {
			gamemode = GameMode_t.shareware
		}
	} else {
		p := 0
		gamemode = GameMode_t.commercial
		p = m_checkparmwithargs(c'-pack', 1)
		if p > 0 {
			setmissionforpackname(myargv[p + 1])
		}
	}
}

[c: 'D_SetGameDescription']
fn d_setgamedescription() {
	gamedescription = c'Unknown'
	if GameMission_t.doom == GameMission_t.doom {
		if gamevariant == GameVariant_t.freedoom {
			gamedescription = getgamename(c'Freedoom: Phase 1')
		} else if gamemode == GameMode_t.retail {
			gamedescription = getgamename(c'The Ultimate DOOM')
		} else if gamemode == GameMode_t.registered {
			gamedescription = getgamename(c'DOOM Registered')
		} else if gamemode == GameMode_t.shareware {
			gamedescription = getgamename(c'DOOM Shareware')
		}
	} else {
		if gamevariant == GameVariant_t.freedm {
			gamedescription = getgamename(c'FreeDM')
		} else if gamevariant == GameVariant_t.freedoom {
			gamedescription = getgamename(c'Freedoom: Phase 2')
		} else if GameMission_t.doom == GameMission_t.doom2 {
			gamedescription = getgamename(c'DOOM 2: Hell on Earth')
		} else if GameMission_t.doom == GameMission_t.pack_plut {
			gamedescription = getgamename(c'DOOM 2: Plutonia Experiment')
		} else if GameMission_t.doom == GameMission_t.pack_tnt {
			gamedescription = getgamename(c'DOOM 2: TNT - Evilution')
		}
	}
}

[weak]
__global (
	title [128]i8
)

[c: 'D_AddFile']
fn d_addfile(filename &i8) bool {
	C.printf(c' adding %s\n', filename)
	handle := w_addfile(filename)
	return handle != (voidptr(0))
}

[export: 'copyright_banners']
const (
	copyright_banners = [
		c'===========================================================================\nATTENTION:  This version of DOOM has been modified.  If you would like to\nget a copy of the original game, call 1-800-IDGAMES or see the readme file.\n        You will not receive technical support for modified games.\n                      press enter to continue\n===========================================================================\n',
		c'===========================================================================\n                 Commercial product - do not distribute!\n         Please report software piracy to the SPA: 1-800-388-PIR8\n===========================================================================\n',
		c'===========================================================================\n                                Shareware!\n===========================================================================\n',
	]!
)

[c: 'PrintDehackedBanners']
fn printdehackedbanners() {
	i := usize(0)
	for i = 0; i < (sizeof(copyright_banners) / sizeof(*copyright_banners)); i++ {
		deh_s := &i8(0)
		deh_s = deh_string(copyright_banners[i])
		if deh_s != copyright_banners[i] {
			C.printf(c'%s', deh_s)
			if deh_s[C.strlen(deh_s) - 1] != `\x0a` {
				C.printf(c'\n')
			}
		}
	}
}

struct GameVersionStruct {
	description &i8
	cmdline     &i8
	version     GameVersion_t
}

[export: 'gameversions']
const (
	gameversions = [
		GameVersionStruct{c'Doom 1.2', c'1.2', GameVersion_t.exe_doom_1_2},
		GameVersionStruct{c'Doom 1.666', c'1.666', GameVersion_t.exe_doom_1_666},
		GameVersionStruct{c'Doom 1.7/1.7a', c'1.7', GameVersion_t.exe_doom_1_7},
		GameVersionStruct{c'Doom 1.8', c'1.8', GameVersion_t.exe_doom_1_8},
		GameVersionStruct{c'Doom 1.9', c'1.9', GameVersion_t.exe_doom_1_9},
		GameVersionStruct{c'Hacx', c'hacx', GameVersion_t.exe_hacx},
		GameVersionStruct{c'Ultimate Doom', c'ultimate', GameVersion_t.exe_ultimate},
		GameVersionStruct{c'Final Doom', c'final', GameVersion_t.exe_final},
		GameVersionStruct{c'Final Doom (alt)', c'final2', GameVersion_t.exe_final2},
		GameVersionStruct{c'Chex Quest', c'chex', GameVersion_t.exe_chex},
		GameVersionStruct{(voidptr(0)), (voidptr(0)), 0},
	]!
)

[c: 'InitGameVersion']
fn initgameversion() {
	demolump := &u8(0)
	demolumpname := [6]i8{}
	demoversion := 0
	p := 0
	i := 0
	status := false
	p = m_checkparmwithargs(c'-gameversion', 1)
	if p {
		for i = 0; gameversions[i].description != (voidptr(0)); i++ {
			if !C.strcmp(myargv[p + 1], gameversions[i].cmdline) {
				gameversion = gameversions[i].version
				break
			}
		}
		if gameversions[i].description == (voidptr(0)) {
			C.printf(c'Supported game versions:\n')
			for i = 0; gameversions[i].description != (voidptr(0)); i++ {
				C.printf(c'\t%s (%s)\n', gameversions[i].cmdline, gameversions[i].description)
			}
			i_error(c"Unknown game version '%s'", myargv[p + 1])
		}
	} else {
		if gamemission == GameMission_t.pack_chex {
			gameversion = GameVersion_t.exe_chex
		} else if gamemission == GameMission_t.pack_hacx {
			gameversion = GameVersion_t.exe_hacx
		} else if gamemode == GameMode_t.shareware
			|| gamemode == GameMode_t.registered
			|| (gamemode == GameMode_t.commercial && gamemission == GameMission_t.doom2) {
			gameversion = GameVersion_t.exe_doom_1_9
			for i = 1; i <= 3; i++ {
				m_snprintf(demolumpname, 6, c'demo%i', i)
				if w_checknumforname(demolumpname) > 0 {
					demolump = w_cachelumpname(demolumpname, 1)
					demoversion = demolump[0]
					w_releaselumpname(demolumpname)
					status = true
					match demoversion {
						0, 1, 2, 3, 4 {
							gameversion = GameVersion_t.exe_doom_1_2
						}
						106 /* case comp body kind=BinaryOperator is_enum=false */ {
							gameversion = GameVersion_t.exe_doom_1_666
						}
						107 /* case comp body kind=BinaryOperator is_enum=false */ {
							gameversion = GameVersion_t.exe_doom_1_7
						}
						108 /* case comp body kind=BinaryOperator is_enum=false */ {
							gameversion = GameVersion_t.exe_doom_1_8
						}
						109 /* case comp body kind=BinaryOperator is_enum=false */ {
							gameversion = GameVersion_t.exe_doom_1_9
						}
						else {
							status = false
						}
					}
					if status {
						break
					}
				}
			}
		} else if gamemode == GameMode_t.retail {
			gameversion = GameVersion_t.exe_ultimate
		} else if gamemode == GameMode_t.commercial {
			gameversion = GameVersion_t.exe_final
		}
	}
	if gameversion <= GameVersion_t.exe_doom_1_2 && deathmatch == 2 {
		deathmatch = 1
	}
	if gameversion < GameVersion_t.exe_ultimate && gamemode == GameMode_t.retail {
		gamemode = GameMode_t.registered
	}
	if gameversion < GameVersion_t.exe_final && gamemode == GameMode_t.commercial
		&& (gamemission == GameMission_t.pack_tnt || gamemission == GameMission_t.pack_plut) {
		gamemission = GameMission_t.doom2
	}
}

[c: 'PrintGameVersion']
fn printgameversion() {
	i := 0
	for i = 0; gameversions[i].description != (voidptr(0)); i++ {
		if gameversions[i].version == gameversion {
			C.printf(c"Emulating the behavior of the '%s' executable.\n", gameversions[i].description)
			break
		}
	}
}

[c: 'D_Endoom']
fn d_endoom() {
	endoom := &u8(0)
	if !show_endoom || !main_loop_started || screensaver_mode || m_checkparm(c'-testcontrols') > 0 {
		return
	}
	endoom = w_cachelumpname(deh_string(c'ENDOOM'), 1)
	i_endoom(endoom)
}

[c: 'LoadIwadDeh']
fn loadiwaddeh() {
	if gamevariant == GameVariant_t.freedoom || gamevariant == GameVariant_t.freedm {
		deh_loadlumpbyname(c'DEHACKED', false, true)
	}
	if gameversion == GameVersion_t.exe_hacx {
		if !deh_loadlumpbyname(c'DEHACKED', true, false) {
			i_error(c'DEHACKED lump not found.  Please check that this is the Hacx v1.2 IWAD.')
		}
	}
	if gameversion == GameVersion_t.exe_chex {
		chex_deh := (voidptr(0))
		dirname := &i8(0)
		dirname = m_dirname(iwadfile)
		chex_deh = m_stringjoin(dirname, c'/', c'chex.deh', (voidptr(0)))
		C.free(dirname)
		if !m_fileexists(chex_deh) {
			C.free(chex_deh)
			chex_deh = d_findwadbyname(c'chex.deh')
		}
		if chex_deh == (voidptr(0)) {
			i_error(c'Unable to find Chex Quest dehacked file (chex.deh).\nThe dehacked file is required in order to emulate\nchex.exe correctly.  It can be found in your nearest\n/idgames repository mirror at:\n\n   utils/exe_edit/patches/chexdeh.zip')
		}
		if !deh_loadfile(chex_deh) {
			i_error(c'Failed to load chex.deh needed for emulating chex.exe.')
		}
	}
}

[c: 'G_CheckDemoStatusAtExit']
fn g_checkdemostatusatexit() {
	g_checkdemostatus()
}

[c: 'D_DoomMain']
fn d_doommain() {
	p := 0
	file := [256]i8{}
	demolumpname := [9]i8{}
	numiwadlumps := 0
	i_atexit(d_endoom, false)
	i_printbanner(c'Chocolate Doom 3.0.0')
	deh_printf(c'Z_Init: Init zone memory allocation daemon. \n')
	z_init()
	if m_checkparm(c'-dedicated') > 0 {
		C.printf(c'Dedicated server mode.\n')
		net_dedicatedserver()
	}
	if m_checkparm(c'-search') {
		net_masterquery()
		C.exit(0)
	}
	p = m_checkparmwithargs(c'-query', 1)
	if p {
		net_queryaddress(myargv[p + 1])
		C.exit(0)
	}
	if m_checkparm(c'-localsearch') {
		net_lanquery()
		C.exit(0)
	}
	nomonsters = m_checkparm(c'-nomonsters')
	respawnparm = m_checkparm(c'-respawn')
	fastparm = m_checkparm(c'-fast')
	devparm = m_checkparm(c'-devparm')
	i_displayfpsdots(devparm)
	if m_checkparm(c'-deathmatch') {
		deathmatch = 1
	}
	if m_checkparm(c'-altdeath') {
		deathmatch = 2
	}
	if devparm {
		deh_printf(c'Development mode ON.\n')
	}
	{
		m_setconfigdir((voidptr(0)))
	}
	p = m_checkparm(c'-turbo')
	if p {
		scale := 200
		if p < myargc - 1 {
			scale = C.atoi(myargv[p + 1])
		}
		if scale < 10 {
			scale = 10
		}
		if scale > 400 {
			scale = 400
		}
		deh_printf(c'turbo scale: %i%%\n', scale)
		forwardmove[0] = forwardmove[0] * scale / 100
		forwardmove[1] = forwardmove[1] * scale / 100
		sidemove[0] = sidemove[0] * scale / 100
		sidemove[1] = sidemove[1] * scale / 100
	}
	deh_printf(c'V_Init: allocate screens.\n')
	v_init()
	deh_printf(c'M_LoadDefaults: Load system defaults.\n')
	m_setconfigfilenames(c'default.cfg', c'chocolate-doom.cfg')
	d_bindvariables()
	m_loaddefaults()
	i_atexit(m_savedefaults, false)
	iwadfile = d_findiwad(((1 << GameMission_t.doom) | (1 << GameMission_t.doom2) | (1 << GameMission_t.pack_tnt) | (1 << GameMission_t.pack_plut) | (1 << GameMission_t.pack_chex) | (1 << GameMission_t.pack_hacx)),
		&gamemission)
	if iwadfile == (voidptr(0)) {
		i_error(c"Game mode indeterminate.  No IWAD file was found.  Try\nspecifying one with the '-iwad' command line parameter.\n")
	}
	modifiedgame = false
	deh_printf(c'W_Init: Init WADfiles.\n')
	d_addfile(iwadfile)
	numiwadlumps = numlumps
	w_checkcorrectiwad(GameMission_t.doom)
	d_identifyversion()
	initgameversion()
	if w_checknumforname(c'FREEDOOM') >= 0 {
		if w_checknumforname(c'FREEDM') >= 0 {
			gamevariant = GameVariant_t.freedm
		} else {
			gamevariant = GameVariant_t.freedoom
		}
	} else if w_checknumforname(c'DMENUPIC') >= 0 {
		gamevariant = GameVariant_t.bfgedition
	}
	if !m_parmexists(c'-nodeh') {
		loadiwaddeh()
	}
	if gamevariant == GameVariant_t.bfgedition {
		C.printf(c'BFG Edition: Using workarounds as needed.\n')
		deh_addstringreplacement(c'level 31: wolfenstein', c'level 31: idkfa')
		deh_addstringreplacement(c'level 32: grosse', c'level 32: keen')
		deh_addstringreplacement(c'level 1: congo', c'level 33: betray')
		deh_addstringreplacement(c'M_GDHIGH', c'M_MSGON')
		deh_addstringreplacement(c'M_GDLOW', c'M_MSGOFF')
		deh_addstringreplacement(c'M_SCRNSZ', c'M_DISP')
	}
	if !m_parmexists(c'-noautoload') && gamemode != GameMode_t.shareware {
		autoload_dir := &i8(0)
		if gamemission < GameMission_t.pack_chex {
			autoload_dir = m_getautoloaddir(c'doom-all')
			deh_autoloadpatches(autoload_dir)
			w_autoloadwads(autoload_dir)
			C.free(autoload_dir)
		}
		autoload_dir = m_getautoloaddir(d_savegameiwadname(gamemission))
		deh_autoloadpatches(autoload_dir)
		w_autoloadwads(autoload_dir)
		C.free(autoload_dir)
	}
	deh_parsecommandline()
	modifiedgame = w_parsecommandline()
	p = m_checkparmwithargs(c'-playdemo', 1)
	if !p {
		p = m_checkparmwithargs(c'-timedemo', 1)
	}
	if p {
		uc_filename := C.strdup(myargv[p + 1])
		m_forceuppercase(uc_filename)
		if m_stringendswith(uc_filename, c'.LMP') {
			m_stringcopy(file, myargv[p + 1], sizeof(file))
		} else {
			deh_snprintf(file, sizeof(file), c'%s.lmp', myargv[p + 1])
		}
		C.free(uc_filename)
		if d_addfile(file) {
			m_stringcopy(demolumpname, lumpinfo[numlumps - 1].name, sizeof(demolumpname))
		} else {
			m_stringcopy(demolumpname, myargv[p + 1], sizeof(demolumpname))
		}
		C.printf(c'Playing demo %s.\n', file)
	}
	i_atexit(g_checkdemostatusatexit, true)
	w_generatehashtable()
	if m_parmexists(c'-dehlump') {
		i := 0
		loaded := 0
		for i = numiwadlumps; i < numlumps; i++ {
			if !C.strncmp(lumpinfo[i].name, c'DEHACKED', 8) {
				deh_loadlump(i, false, false)
				loaded++
			}
		}
		C.printf(c'  loaded %i DEHACKED lumps from PWAD files.\n', loaded)
	}
	d_setgamedescription()
	savegamedir = m_getsavegamedir(d_savegameiwadname(gamemission))
	if modifiedgame && (gamevariant != GameVariant_t.freedoom) {
		name := [c'e2m1', c'e2m2', c'e2m3', c'e2m4', c'e2m5', c'e2m6', c'e2m7', c'e2m8', c'e2m9',
			c'e3m1', c'e3m3', c'e3m3', c'e3m4', c'e3m5', c'e3m6', c'e3m7', c'e3m8', c'e3m9', c'dphoof',
			c'bfgga0', c'heada1', c'cybra1', c'spida1d1']!

		i := 0
		if gamemode == GameMode_t.shareware {
			i_error(deh_string(c'\nYou cannot -file with the shareware version. Register!'))
		}
		if gamemode == GameMode_t.registered {
			for i = 0; i < 23; i++ {
				if w_checknumforname(name[i]) < 0 {
					i_error(deh_string(c'\nThis is not the registered version.'))
				}
			}
		}
	}
	if w_checknumforname(c'SS_START') >= 0 || w_checknumforname(c'FF_END') >= 0 {
		i_printdivider()
		C.printf(c" WARNING: The loaded WAD file contains modified sprites or\n floor textures.  You may want to use the '-merge' command\n line option instead of '-file'.\n")
	}
	i_printstartupbanner(gamedescription)
	printdehackedbanners()
	deh_printf(c'I_Init: Setting up machine state.\n')
	i_checkisscreensaver()
	i_inittimer()
	i_initjoystick()
	i_initsound(true)
	i_initmusic()
	C.printf(c'NET_Init: Init network subsystem.\n')
	net_init()
	d_connectnetgame()
	startskill = Skill_t.sk_medium
	startepisode = 1
	startmap = 1
	autostart = false
	p = m_checkparmwithargs(c'-skill', 1)
	if p {
		startskill = myargv[p + 1][0] - `1`
		autostart = true
	}
	p = m_checkparmwithargs(c'-episode', 1)
	if p {
		startepisode = myargv[p + 1][0] - `0`
		startmap = 1
		autostart = true
	}
	timelimit = 0
	p = m_checkparmwithargs(c'-timer', 1)
	if p {
		timelimit = C.atoi(myargv[p + 1])
	}
	p = m_checkparm(c'-avg')
	if p {
		timelimit = 20
	}
	p = m_checkparmwithargs(c'-warp', 1)
	if p {
		if gamemode == GameMode_t.commercial {
			startmap = C.atoi(myargv[p + 1])
		} else {
			startepisode = myargv[p + 1][0] - `0`
			if p + 2 < myargc {
				startmap = myargv[p + 2][0] - `0`
			} else {
				startmap = 1
			}
		}
		autostart = true
	}
	p = m_checkparm(c'-testcontrols')
	if p > 0 {
		startepisode = 1
		startmap = 1
		autostart = true
		testcontrols = true
	}
	p = m_checkparmwithargs(c'-loadgame', 1)
	if p {
		startloadgame = C.atoi(myargv[p + 1])
	} else {
		startloadgame = -1
	}
	deh_printf(c'M_Init: Init miscellaneous info.\n')
	m_init()
	deh_printf(c'R_Init: Init DOOM refresh daemon - ')
	r_init()
	deh_printf(c'\nP_Init: Init Playloop state.\n')
	p_init()
	deh_printf(c'S_Init: Setting up sound.\n')
	s_init(sfxVolume * 8, musicVolume * 8)
	deh_printf(c'D_CheckNetGame: Checking network game status.\n')
	d_checknetgame()
	printgameversion()
	deh_printf(c'HU_Init: Setting up heads up display.\n')
	hu_init()
	deh_printf(c'ST_Init: Init status bar.\n')
	st_init()
	if gamemode == GameMode_t.commercial && w_checknumforname(c'map01') < 0 {
		storedemo = true
	}
	if m_checkparmwithargs(c'-statdump', 1) {
		i_atexit(statdump, true)
		deh_printf(c'External statistics registered.\n')
	}
	p = m_checkparmwithargs(c'-record', 1)
	if p {
		g_recorddemo(myargv[p + 1])
		autostart = true
	}
	p = m_checkparmwithargs(c'-playdemo', 1)
	if p {
		singledemo = true
		g_deferedplaydemo(demolumpname)
		d_doomloop()
	}
	p = m_checkparmwithargs(c'-timedemo', 1)
	if p {
		g_timedemo(demolumpname)
		d_doomloop()
	}
	if startloadgame >= 0 {
		m_stringcopy(file, p_savegamefile(startloadgame), sizeof(file))
		g_loadgame(file)
	}
	if gameaction != Gameaction_t.ga_loadgame {
		if autostart || netgame {
			g_initnew(startskill, startepisode, startmap)
		} else { // 3
			d_starttitle()
		}
	}
	d_doomloop()
}
