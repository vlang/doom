[translated]
module main

[typedef]
struct C.FILE {}

// vstart

fn abort()

fn rand() int

fn system(&i8) int

[c: '_Exit']
fn _exit(int)

[c: '_Exit']
fn _exit(int)

fn random() int

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

struct Va_list {
	type_  int
	name   &i8
	arg1   f64
	arg2   f64
	retval f64
}

[c: 'I_GetTime']
fn i_gettime() int

const ( // empty enum
)

[weak]
__global (
	singletics bool
)

[weak]
__global (
	ticdup int
)

[c: 'D_NonVanillaRecord']
fn d_nonvanillarecord(conditional bool, feature &i8) bool

[c: 'D_NonVanillaPlayback']
fn d_nonvanillaplayback(conditional bool, lumpnum int, feature &i8) bool

[weak]
__global (
	gameskill Skill_t
)

[weak]
__global (
	respawnmonsters bool
)

[weak]
__global (
	nodrawers bool
)

[weak]
__global (
	testcontrols_mousespeed int
)

[weak]
__global (
	displayplayer int
)

[weak]
__global (
	levelstarttic int
)

[weak]
__global (
	wipegamestate Gamestate_t
)

[weak]
__global (
	rndindex int
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

[c: 'F_Responder']
fn f_responder(ev &Event_t) bool

[c: 'F_Ticker']
fn f_ticker()

[c: 'F_StartFinale']
fn f_startfinale()

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
	joybstrafe int
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
fn m_stringcopy(dest &i8, src &i8, dest_size usize) bool

[c: 'M_snprintf']
[c2v_variadic]
fn m_snprintf(buf &i8, buf_len usize, s ...&i8) int

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

[c: 'I_Quit']
fn i_quit()

[c: 'I_Error']
[c2v_variadic]
fn i_error(error ...&i8)

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

[c: 'ST_Responder']
fn st_responder(ev &Event_t) bool

[c: 'ST_Ticker']
fn st_ticker()

[c: 'AM_Responder']
fn am_responder(ev &Event_t) bool

[c: 'AM_Ticker']
fn am_ticker()

[c: 'AM_Stop']
fn am_stop()

[c: 'StatCopy']
fn statcopy(stats &Wbstartstruct_t)

[c: 'V_ScreenShot']
fn v_screenshot(format &i8)

[c: 'R_FlatNumForName']
fn r_flatnumforname(name &i8) int

[c: 'R_TextureNumForName']
fn r_texturenumforname(name &i8) int

[c: 'R_PointInSubsector']
fn r_pointinsubsector(x int, y int) &Subsector_t

[c: 'R_FillBackScreen']
fn r_fillbackscreen()

[c: 'P_SpawnMobj']
fn p_spawnmobj(x int, y int, z int, type_ Mobjtype_t) &Mobj_t

[c: 'P_RemoveMobj']
fn p_removemobj(th &Mobj_t)

[c: 'P_CheckPosition']
fn p_checkposition(thing &Mobj_t, x int, y int) bool

[c: 'S_Start']
fn s_start()

[c: 'S_StartSound']
fn s_startsound(origin voidptr, sound_id int)

[c: 'S_PauseSound']
fn s_pausesound()

[c: 'S_ResumeSound']
fn s_resumesound()

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

// skipped extern global vanilla_savegame_limit
// skipped extern global vanilla_demo_limit
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

//!
[weak]
__global (
	vanilla_savegame_limit = int(1)
)

//!
[weak]
__global (
	vanilla_demo_limit = int(1)
)

[c: 'G_CmdChecksum']
fn g_cmdchecksum(cmd &Ticcmd_t) int {
	i := usize(0)
	sum := 0
	for i = 0; i < sizeof(Ticcmd_t) / 4 - 1; i++ {
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
		&& players[consoleplayer].weaponowned[int(Weapontype_t.wp_chainsaw)]
		&& !players[consoleplayer].powers[int(Powertype_t.pw_strength)] {
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
	C.memset(cmd, 0, sizeof(Ticcmd_t))
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
		.ev_keydown /* case comp body kind=IfStmt is_enum=true */ {
			if ev.data1 == key_pause {
				sendpause = true
			} else if ev.data1 < 256 {
				gamekeydown[ev.data1] = true
			}
			return true
		}
		.ev_keyup /* case comp body kind=IfStmt is_enum=true */ {
			if ev.data1 < 256 {
				gamekeydown[ev.data1] = false
			}
			return false
		}
		.ev_mouse /* case comp body kind=CallExpr is_enum=true */ {
			setmousebuttons(ev.data1)
			mousex = ev.data2 * (mouseSensitivity + 5) / 10
			mousey = ev.data3 * (mouseSensitivity + 5) / 10
			return true
		}
		.ev_joystick /* case comp body kind=CallExpr is_enum=true */ {
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
			.ga_loadlevel /* case comp body kind=CallExpr is_enum=true */ {
				g_doloadlevel()
			}
			.ga_newgame /* case comp body kind=CallExpr is_enum=true */ {
				g_donewgame()
			}
			.ga_loadgame /* case comp body kind=CallExpr is_enum=true */ {
				g_doloadgame()
			}
			.ga_savegame /* case comp body kind=CallExpr is_enum=true */ {
				g_dosavegame()
			}
			.ga_playdemo /* case comp body kind=CallExpr is_enum=true */ {
				g_doplaydemo()
			}
			.ga_completed /* case comp body kind=CallExpr is_enum=true */ {
				g_docompleted()
			}
			.ga_victory /* case comp body kind=CallExpr is_enum=true */ {
				f_startfinale()
			}
			.ga_worlddone /* case comp body kind=CallExpr is_enum=true */ {
				g_doworlddone()
			}
			.ga_screenshot /* case comp body kind=CallExpr is_enum=true */ {
				v_screenshot(c'DOOM%02i.%s')
				players[consoleplayer].message = deh_string(c'screen shot')
				gameaction = Gameaction_t.ga_nothing
			}
			.ga_nothing /* case comp body kind=BreakStmt is_enum=true */ {}
			else {}
		}
	}
	buf = (gametic / ticdup) % 128
	for i = 0; i < 4; i++ {
		if playeringame[i] {
			cmd = &players[i].cmd
			C.memcpy(cmd, &netcmds[i], sizeof(Ticcmd_t))
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
					.bts_pause /* case comp body kind=BreakStmt is_enum=true */ {}
					else {}
				}
				x := (players[i].cmd.buttons & Buttoncode_t.bt_specialmask)
				match x {
					u8(Buttoncode_t.bts_pause) /* case comp body kind=CompoundAssignOperator is_enum=false */ {
						paused ^= 1
						if paused {
							s_pausesound()
						} else { // 3
							s_resumesound()
						}
					}
					u8(Buttoncode_t.bts_savegame) /* case comp body kind=IfStmt is_enum=false */ {
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
		.gs_level /* case comp body kind=CallExpr is_enum=true */ {
			p_ticker()
			st_ticker()
			am_ticker()
			hu_ticker()
		}
		.gs_intermission /* case comp body kind=CallExpr is_enum=true */ {
			wi_ticker()
		}
		.gs_finale /* case comp body kind=CallExpr is_enum=true */ {
			f_ticker()
		}
		.gs_demoscreen /* case comp body kind=CallExpr is_enum=true */ {
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
	p.weaponowned[int(Weapontype_t.wp_fist)] = true
	p.weaponowned[int(Weapontype_t.wp_pistol)] = true
	p.ammo[int(Ammotype_t.am_clip)] = deh_initial_bullets
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
		4096 /* case comp body kind=BinaryOperator is_enum=false */ {
			xa = finetangent[2048]
			ya = finetangent[0]
		}
		5120 /* case comp body kind=BinaryOperator is_enum=false */ {
			xa = finetangent[3072]
			ya = finetangent[1024]
		}
		6144 /* case comp body kind=BinaryOperator is_enum=false */ {
			xa = finesine[0]
			ya = finetangent[2048]
		}
		7168 /* case comp body kind=BinaryOperator is_enum=false */ {
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
				8 /* case comp body kind=BinaryOperator is_enum=false */ {
					gameaction = Gameaction_t.ga_victory
					return
				}
				9 /* case comp body kind=ForStmt is_enum=false */ {
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
				15 /* case comp body kind=BinaryOperator is_enum=false */ {
					wminfo.next = 30
				}
				31 /* case comp body kind=BinaryOperator is_enum=false */ {
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
				1 /* case comp body kind=BinaryOperator is_enum=false */ {
					wminfo.next = 3
				}
				2 /* case comp body kind=BinaryOperator is_enum=false */ {
					wminfo.next = 5
				}
				3 /* case comp body kind=BinaryOperator is_enum=false */ {
					wminfo.next = 6
				}
				4 /* case comp body kind=BinaryOperator is_enum=false */ {
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
		mobjinfo[int(Mobjtype_t.mt_bruisershot)].speed = 20 * (1 << 16)
		mobjinfo[int(Mobjtype_t.mt_headshot)].speed = 20 * (1 << 16)
		mobjinfo[int(Mobjtype_t.mt_troopshot)].speed = 20 * (1 << 16)
	} else if skill != Skill_t.sk_nightmare && gameskill == Skill_t.sk_nightmare {
		for i = Statenum_t.s_sarg_run1; i <= Statenum_t.s_sarg_pain2; i++ {
			states[i].tics <<= 1
		}
		mobjinfo[int(Mobjtype_t.mt_bruisershot)].speed = 15 * (1 << 16)
		mobjinfo[int(Mobjtype_t.mt_headshot)].speed = 10 * (1 << 16)
		mobjinfo[int(Mobjtype_t.mt_troopshot)].speed = 10 * (1 << 16)
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
			1 /* case comp body kind=BinaryOperator is_enum=false */ {
				skytexturename = c'SKY1'
			}
			2 /* case comp body kind=BinaryOperator is_enum=false */ {
				skytexturename = c'SKY2'
			}
			3 /* case comp body kind=BinaryOperator is_enum=false */ {
				skytexturename = c'SKY3'
			}
			4 /* case comp body kind=BinaryOperator is_enum=false */ {
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
	demoname_size := usize(0)
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
		.exe_doom_1_666 /* case comp body kind=ReturnStmt is_enum=true */ {
			return 106
		}
		.exe_doom_1_7 /* case comp body kind=ReturnStmt is_enum=true */ {
			return 107
		}
		.exe_doom_1_8 /* case comp body kind=ReturnStmt is_enum=true */ {
			return 108
		}
		.exe_doom_1_9 /* case comp body kind=ReturnStmt is_enum=true */ {
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
		104 /* case comp body kind=ReturnStmt is_enum=false */ {
			return c'v1.4'
		}
		105 /* case comp body kind=ReturnStmt is_enum=false */ {
			return c'v1.5'
		}
		106 /* case comp body kind=ReturnStmt is_enum=false */ {
			return c'v1.6/v1.666'
		}
		107 /* case comp body kind=ReturnStmt is_enum=false */ {
			return c'v1.7/v1.7a'
		}
		108 /* case comp body kind=ReturnStmt is_enum=false */ {
			return c'v1.8'
		}
		109 /* case comp body kind=ReturnStmt is_enum=false */ {
			return c'v1.9'
		}
		111 /* case comp body kind=ReturnStmt is_enum=false */ {
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
