[translated]
module main


[typedef]
struct C.FILE {}


// vstart

fn abort() 

fn system( &i8) int

[c:'I_GetTime']
fn i_gettime() int

[c:'I_WaitVBL']
fn i_waitvbl(count int) 

[c:'D_StartTitle']
fn d_starttitle() 

[c:'DEH_String']
fn deh_string(s &i8) &i8

[c2v_variadic]
[c:'DEH_snprintf']
fn deh_snprintf(buffer &i8, len usize, fmt &i8) 

[c:'I_StartTextInput']
fn i_starttextinput(x1 int, y1 int, x2 int, y2 int) 

[c:'I_StopTextInput']
fn i_stoptextinput() 

[c:'I_Quit']
fn i_quit() 

[c:'I_SetPalette']
fn i_setpalette(palette &u8) 

[c:'M_ForceUppercase']
fn m_forceuppercase(text &i8) 

[c:'M_StringDuplicate']
fn m_stringduplicate(orig &i8) &i8

[c:'M_StringCopy']
fn m_stringcopy(dest &i8, src &i8, dest_size usize) bool

[c2v_variadic]
[c:'M_snprintf']
fn m_snprintf(buf &i8, buf_len usize, s &i8) int

type Vpatchclipfunc_t = fn (&Patch_t, int, int) bool
[c:'V_DrawPatch']
fn v_drawpatch(x int, y int, patch &Patch_t) 

[c:'V_DrawPatchDirect']
fn v_drawpatchdirect(x int, y int, patch &Patch_t) 

[c:'W_CheckNumForName']
fn w_checknumforname(name &i8) Lumpindex_t

[c:'W_CacheLumpName']
fn w_cachelumpname(name &i8, tag int) voidptr

[c:'W_WadNameForLump']
fn w_wadnameforlump(lump &Lumpinfo_t) &i8

[c:'W_IsIWADLump']
fn w_isiwadlump(lump &Lumpinfo_t) bool


const ( // empty enum
)

[c:'R_SetViewSize']
fn r_setviewsize(blocks int, detail int) 

[c:'G_DeferedInitNew']
fn g_deferedinitnew(skill Skill_t, episode int, map_ int) 

[c:'G_LoadGame']
fn g_loadgame(name &i8) 

[c:'G_SaveGame']
fn g_savegame(slot int, description &i8) 

[c:'G_ScreenShot']
fn g_screenshot() 

[c:'M_CheckParm']
fn m_checkparm(check &i8) int

[weak]__global ( key_menu_activate int 

)

[weak]__global ( key_menu_up int 

)

[weak]__global ( key_menu_down int 

)

[weak]__global ( key_menu_left int 

)

[weak]__global ( key_menu_right int 

)

[weak]__global ( key_menu_back int 

)

[weak]__global ( key_menu_forward int 

)

[weak]__global ( key_menu_confirm int 

)

[weak]__global ( key_menu_abort int 

)

[weak]__global ( key_menu_help int 

)

[weak]__global ( key_menu_save int 

)

[weak]__global ( key_menu_load int 

)

[weak]__global ( key_menu_volume int 

)

[weak]__global ( key_menu_detail int 

)

[weak]__global ( key_menu_qsave int 

)

[weak]__global ( key_menu_endgame int 

)

[weak]__global ( key_menu_messages int 

)

[weak]__global ( key_menu_qload int 

)

[weak]__global ( key_menu_quit int 

)

[weak]__global ( key_menu_gamma int 

)

[weak]__global ( key_menu_incscreen int 

)

[weak]__global ( key_menu_decscreen int 

)

[weak]__global ( key_menu_screenshot int 

)

[weak]__global ( joybfire int 

)

[weak]__global ( joybuse int 

)

[weak]__global ( joybmenu int 

)

[c:'P_SaveGameFile']
fn p_savegamefile(slot int) &i8

[weak]__global ( maplumpinfo &Lumpinfo_t 

)

[c:'S_Start']
fn s_start() 

[c:'S_StartSound']
fn s_startsound(origin voidptr, sound_id int) 

[c:'S_SetMusicVolume']
fn s_setmusicvolume(volume int) 

[c:'S_SetSfxVolume']
fn s_setsfxvolume(volume int) 

[weak]__global ( gametic int 

)

[weak]__global ( devparm bool 

)

[weak]__global ( automapactive bool 

)

[weak]__global ( testcontrols bool 

)

[weak]__global ( usergame bool 

)

[weak]__global ( gamestate Gamestate_t 

)

[weak]__global ( savegamedir &i8 

)

// skipped extern global mouseSensitivity
[c:'M_Responder']
fn m_responder(ev &Event_t) bool

[c:'M_Ticker']
fn m_ticker() 

[c:'M_Drawer']
fn m_drawer() 

[c:'M_Init']
fn m_init() 

[c:'M_StartControlPanel']
fn m_startcontrolpanel() 

// skipped extern global detailLevel
// skipped extern global screenblocks
[c_extern]__global ( hu_font [63]&Patch_t 

)

[weak]__global ( message_dontfuckwithme bool 

)

[weak]__global ( chat_on bool 

)

/*!*/[weak] __global ( mouseSensitivity  = int (5)
)

/*!*/[weak] __global ( showMessages  = int (1)
)

/*!*/[weak] __global ( detailLevel  = int (0)
)

/*!*/[weak] __global ( screenblocks  = int (9)
)

[weak]__global ( screenSize int 

)

[weak]__global ( quickSaveSlot int 

)

[weak]__global ( messageToPrint int 

)

[weak]__global ( messageString &i8 

)

[weak]__global ( messx int 

)

[weak]__global ( messy int 

)

[weak]__global ( messageLastMenuActive int 

)

[weak]__global ( messageNeedsInput bool 

)

[weak]__global ( messageRoutine fn (int) 

)

[export:'gammamsg']
const (
gammamsg   = [c'Gamma correction OFF', c'Gamma correction level 1', c'Gamma correction level 2', c'Gamma correction level 3', c'Gamma correction level 4']!

)

[weak]__global ( saveStringEnter int 

)

[weak]__global ( saveSlot int 

)

[weak]__global ( saveCharIndex int 

)

/*!*/[weak] __global ( joypadSave  = bool (false)
)

[weak]__global ( saveOldString [24]i8 

)

[weak]__global ( inhelpscreens bool 

)

[weak]__global ( sendpause bool 

)

[weak]__global ( savegamestrings [10][24]i8 

)

[weak]__global ( endstring [160]i8 

)

[weak]__global ( opldev bool 

)

struct Menuitem_t { 
	status i16
	name [10]i8
	routine fn (int)
	alphaKey i8
}
struct Menu_t { 
	numitems i16
	prevMenu &Menu_t
	menuitems &Menuitem_t
	routine fn ()
	x i16
	y i16
	lastOn i16
}
[weak]__global ( itemOn i16 

)

[weak]__global ( skullAnimCounter i16 

)

[weak]__global ( whichSkull i16 

)

[export:'skullName']
const (
skullName   = [c'M_SKULL1', c'M_SKULL2']!

)

[weak]__global ( currentMenu &Menu_t 

)

[c:'M_NewGame']
fn m_newgame(choice int) 

[c:'M_Episode']
fn m_episode(choice int) 

[c:'M_ChooseSkill']
fn m_chooseskill(choice int) 

[c:'M_LoadGame']
fn m_loadgame(choice int) 

[c:'M_SaveGame']
fn m_savegame(choice int) 

[c:'M_Options']
fn m_options(choice int) 

[c:'M_EndGame']
fn m_endgame(choice int) 

[c:'M_ReadThis']
fn m_readthis(choice int) 

[c:'M_ReadThis2']
fn m_readthis2(choice int) 

[c:'M_QuitDOOM']
fn m_quitdoom(choice int) 

[c:'M_ChangeMessages']
fn m_changemessages(choice int) 

[c:'M_ChangeSensitivity']
fn m_changesensitivity(choice int) 

[c:'M_SfxVol']
fn m_sfxvol(choice int) 

[c:'M_MusicVol']
fn m_musicvol(choice int) 

[c:'M_ChangeDetail']
fn m_changedetail(choice int) 

[c:'M_SizeDisplay']
fn m_sizedisplay(choice int) 

[c:'M_Sound']
fn m_sound(choice int) 

[c:'M_FinishReadThis']
fn m_finishreadthis(choice int) 

[c:'M_LoadSelect']
fn m_loadselect(choice int) 

[c:'M_SaveSelect']
fn m_saveselect(choice int) 

[c:'M_ReadSaveStrings']
fn m_readsavestrings() 

[c:'M_QuickSave']
fn m_quicksave() 

[c:'M_QuickLoad']
fn m_quickload() 

[c:'M_DrawMainMenu']
fn m_drawmainmenu() 

[c:'M_DrawReadThis1']
fn m_drawreadthis1() 

[c:'M_DrawReadThis2']
fn m_drawreadthis2() 

[c:'M_DrawNewGame']
fn m_drawnewgame() 

[c:'M_DrawEpisode']
fn m_drawepisode() 

[c:'M_DrawOptions']
fn m_drawoptions() 

[c:'M_DrawSound']
fn m_drawsound() 

[c:'M_DrawLoad']
fn m_drawload() 

[c:'M_DrawSave']
fn m_drawsave() 

[c:'M_DrawSaveLoadBorder']
fn m_drawsaveloadborder(x int, y int) 

[c:'M_SetupNextMenu']
fn m_setupnextmenu(menudef &Menu_t) 

[c:'M_DrawThermo']
fn m_drawthermo(x int, y int, thermwidth int, thermdot int) 

[c:'M_WriteText']
fn m_writetext(x int, y int, string_ &i8) 

[c:'M_StringWidth']
fn m_stringwidth(string_ &i8) int

[c:'M_StringHeight']
fn m_stringheight(string_ &i8) int

[c:'M_StartMessage']
fn m_startmessage(string_ &i8, routine voidptr, input bool) 

[c:'M_ClearMenus']
fn m_clearmenus() 

enum MenuEnum {
	newgame = 0	options
	loadgame
	savegame
	readthis
	quitdoom
	main_end
}

[weak]__global ( main_e MenuEnum 

)

[export:'MainMenu']
const (
MainMenu   = [Menuitem_t {
1, c'M_NGAME', m_newgame, `n`}
, Menuitem_t {
1, c'M_OPTION', m_options, `o`}
, Menuitem_t {
1, c'M_LOADG', m_loadgame, `l`}
, Menuitem_t {
1, c'M_SAVEG', m_savegame, `s`}
, Menuitem_t {
1, c'M_RDTHIS', m_readthis, `r`}
, Menuitem_t {
1, c'M_QUITG', m_quitdoom, `q`}
]!

)

/*!*/[weak] __global ( MainDef  = Menu_t {
MenuEnum.main_end, (voidptr(0)), &MainMenu, m_drawmainmenu, 97, 64, 0}

)


const ( // empty enum
	ep1 = 0
	ep2 = 1
	ep3 = 2
	ep4 = 3
	ep_end = 4
)

[export:'EpisodeMenu']
const (
EpisodeMenu   = [Menuitem_t {
1, c'M_EPI1', m_episode, `k`}
, Menuitem_t {
1, c'M_EPI2', m_episode, `t`}
, Menuitem_t {
1, c'M_EPI3', m_episode, `i`}
, Menuitem_t {
1, c'M_EPI4', m_episode, `t`}
]!

)

/*!*/[weak] __global ( EpiDef  = Menu_t {
ep_end, &MainDef, &EpisodeMenu, m_drawepisode, 48, 63, ep1}

)


const ( // empty enum
	killthings = 0
	toorough = 1
	hurtme = 2
	violence = 3
	nightmare = 4
	newg_end = 5
)

[export:'NewGameMenu']
const (
NewGameMenu   = [Menuitem_t {
1, c'M_JKILL', m_chooseskill, `i`}
, Menuitem_t {
1, c'M_ROUGH', m_chooseskill, `h`}
, Menuitem_t {
1, c'M_HURT', m_chooseskill, `h`}
, Menuitem_t {
1, c'M_ULTRA', m_chooseskill, `u`}
, Menuitem_t {
1, c'M_NMARE', m_chooseskill, `n`}
]!

)

/*!*/[weak] __global ( NewDef  = Menu_t {
newg_end, &EpiDef, &NewGameMenu, m_drawnewgame, 48, 63, hurtme}

)


const ( // empty enum
	endgame = 0
	messages = 1
	detail = 2
	scrnsize = 3
	option_empty1 = 4
	mousesens = 5
	option_empty2 = 6
	soundvol = 7
	opt_end = 8
)

[export:'OptionsMenu']
const (
OptionsMenu   = [Menuitem_t {
1, c'M_ENDGAM', m_endgame, `e`}
, Menuitem_t {
1, c'M_MESSG', m_changemessages, `m`}
, Menuitem_t {
1, c'M_DETAIL', m_changedetail, `g`}
, Menuitem_t {
2, c'M_SCRNSZ', m_sizedisplay, `s`}
, Menuitem_t {
-1, c'', voidptr(0), ` `}
, Menuitem_t {
2, c'M_MSENS', m_changesensitivity, `m`}
, Menuitem_t {
-1, c'', voidptr(0), ` `}
, Menuitem_t {
1, c'M_SVOL', m_sound, `s`}
]!

)

/*!*/[weak] __global ( OptionsDef  = Menu_t {
opt_end, &MainDef, &OptionsMenu, m_drawoptions, 60, 37, 0}

)


const ( // empty enum
	rdthsempty1 = 0
	read1_end = 1
)

[export:'ReadMenu1']
const (
ReadMenu1   = [Menuitem_t {
1, c'', m_readthis2, 0}
]!

)

/*!*/[weak] __global ( ReadDef1  = Menu_t {
read1_end, &MainDef, &ReadMenu1, m_drawreadthis1, 280, 185, 0}

)


const ( // empty enum
	rdthsempty2 = 0
	read2_end = 1
)

[export:'ReadMenu2']
const (
ReadMenu2   = [Menuitem_t {
1, c'', m_finishreadthis, 0}
]!

)

/*!*/[weak] __global ( ReadDef2  = Menu_t {
read2_end, &ReadDef1, &ReadMenu2, m_drawreadthis2, 330, 175, 0}

)


const ( // empty enum
	sfx_vol = 0
	sfx_empty1 = 1
	music_vol = 2
	sfx_empty2 = 3
	sound_end = 4
)

[export:'SoundMenu']
const (
SoundMenu   = [Menuitem_t {
2, c'M_SFXVOL', m_sfxvol, `s`}
, Menuitem_t {
-1, c'', voidptr(0), ` `}
, Menuitem_t {
2, c'M_MUSVOL', m_musicvol, `m`}
, Menuitem_t {
-1, c'', voidptr(0), ` `}
]!

)

/*!*/[weak] __global ( SoundDef  = Menu_t {
sound_end, &OptionsDef, &SoundMenu, m_drawsound, 80, 64, 0}

)


const ( // empty enum
	load1 = 0
	load2 = 1
	load3 = 2
	load4 = 3
	load5 = 4
	load6 = 5
	load_end = 6
)

[export:'LoadMenu']
const (
LoadMenu   = [Menuitem_t {
1, c'', m_loadselect, `1`}
, Menuitem_t {
1, c'', m_loadselect, `2`}
, Menuitem_t {
1, c'', m_loadselect, `3`}
, Menuitem_t {
1, c'', m_loadselect, `4`}
, Menuitem_t {
1, c'', m_loadselect, `5`}
, Menuitem_t {
1, c'', m_loadselect, `6`}
]!

)

/*!*/[weak] __global ( LoadDef  = Menu_t {
load_end, &MainDef, &LoadMenu, m_drawload, 80, 54, 0}

)

[export:'SaveMenu']
const (
SaveMenu   = [Menuitem_t {
1, c'', m_saveselect, `1`}
, Menuitem_t {
1, c'', m_saveselect, `2`}
, Menuitem_t {
1, c'', m_saveselect, `3`}
, Menuitem_t {
1, c'', m_saveselect, `4`}
, Menuitem_t {
1, c'', m_saveselect, `5`}
, Menuitem_t {
1, c'', m_saveselect, `6`}
]!

)

/*!*/[weak] __global ( SaveDef  = Menu_t {
load_end, &MainDef, &SaveMenu, m_drawsave, 80, 54, 0}

)

[c:'M_ReadSaveStrings']
fn m_readsavestrings()  {
	handle := &C.FILE(0)
	i := 0
	name := [256]i8{}
	for i = 0 ; i < load_end ; i ++ {
		retval := 0
		m_stringcopy(name, p_savegamefile(i), sizeof(name))
		handle = C.fopen(name, c'rb')
		if handle == (voidptr(0)) {
			m_stringcopy(savegamestrings [i] , c'empty slot', 24)
			LoadMenu [i] .status = 0
			continue
			
		}
		retval = C.fread(&savegamestrings [i] , 1, 24, handle)
		C.fclose(handle)
		LoadMenu [i] .status = retval == 24
	}
}

[c:'M_DrawLoad']
fn m_drawload()  {
	i := 0
	v_drawpatchdirect(72, 28, w_cachelumpname(deh_string(c'M_LOADG'), 8))
	for i = 0 ; i < load_end ; i ++ {
		m_drawsaveloadborder(LoadDef.x, LoadDef.y + 16 * i)
		m_writetext(LoadDef.x, LoadDef.y + 16 * i, savegamestrings [i] )
	}
}

[c:'M_DrawSaveLoadBorder']
fn m_drawsaveloadborder(x int, y int)  {
	i := 0
	v_drawpatchdirect(x - 8, y + 7, w_cachelumpname(deh_string(c'M_LSLEFT'), 8))
	for i = 0 ; i < 24 ; i ++ {
		v_drawpatchdirect(x, y + 7, w_cachelumpname(deh_string(c'M_LSCNTR'), 8))
		x += 8
	}
	v_drawpatchdirect(x, y + 7, w_cachelumpname(deh_string(c'M_LSRGHT'), 8))
}

[c:'M_LoadSelect']
fn m_loadselect(choice int)  {
	name := [256]i8{}
	m_stringcopy(name, p_savegamefile(choice), sizeof(name))
	g_loadgame(name)
	m_clearmenus()
}

[c:'M_LoadGame']
fn m_loadgame(choice int)  {
	if netgame {
		m_startmessage(deh_string(c"you can't do load while in a net game!\n\npress a key."), (voidptr(0)), false)
		return 
	}
	m_setupnextmenu(&LoadDef)
	m_readsavestrings()
}

[c:'M_DrawSave']
fn m_drawsave()  {
	i := 0
	v_drawpatchdirect(72, 28, w_cachelumpname(deh_string(c'M_SAVEG'), 8))
	for i = 0 ; i < load_end ; i ++ {
		m_drawsaveloadborder(LoadDef.x, LoadDef.y + 16 * i)
		m_writetext(LoadDef.x, LoadDef.y + 16 * i, savegamestrings [i] )
	}
	if saveStringEnter {
		i = m_stringwidth(savegamestrings [saveSlot] )
		m_writetext(LoadDef.x + i, LoadDef.y + 16 * saveSlot, c'_')
	}
}

[c:'M_DoSave']
fn m_dosave(slot int)  {
	g_savegame(slot, savegamestrings [slot] )
	m_clearmenus()
	if quickSaveSlot == -2 {
	quickSaveSlot = slot
	}
}

[c:'SetDefaultSaveName']
fn setdefaultsavename(slot int)  {
	if w_isiwadlump(maplumpinfo) && C.strcmp(savegamedir, c'') {
		m_snprintf(savegamestrings [itemOn] , 24, c'%s', maplumpinfo.name)
	}
	else {
		wadname := m_stringduplicate(w_wadnameforlump(maplumpinfo))
		ext := C.strrchr(wadname, `.`)
		if ext != (voidptr(0)) {
			*ext = ` `
		}
		m_snprintf(savegamestrings [itemOn] , 24, c'%s (%s)', maplumpinfo.name, wadname)
		C.free(wadname)
	}
	m_forceuppercase(savegamestrings [itemOn] )
	joypadSave = false
}

[c:'M_SaveSelect']
fn m_saveselect(choice int)  {
	x := 0
	y := 0
	
	saveStringEnter = 1
	x = LoadDef.x - 11
	y = LoadDef.y + choice * 16 - 4
	i_starttextinput(x, y, x + 8 + 24 * 8 + 8, y + 16 - 2)
	saveSlot = choice
	m_stringcopy(saveOldString, savegamestrings [choice] , 24)
	if !C.strcmp(savegamestrings [choice] , c'empty slot') {
		savegamestrings [choice]  [0]  = 0
		if joypadSave {
			setdefaultsavename(choice)
		}
	}
	saveCharIndex = C.strlen(savegamestrings [choice] )
}

[c:'M_SaveGame']
fn m_savegame(choice int)  {
	if !usergame {
		m_startmessage(deh_string(c"you can't save if you aren't playing!\n\npress a key."), (voidptr(0)), false)
		return 
	}
	if gamestate != Gamestate_t.gs_level {
	return 
	}
	m_setupnextmenu(&SaveDef)
	m_readsavestrings()
}

[weak]__global ( tempstring [90]i8 

)

[c:'M_QuickSaveResponse']
fn m_quicksaveresponse(key int)  {
	if key == key_menu_confirm {
		m_dosave(quickSaveSlot)
		s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchx)
	}
}

[c:'M_QuickSave']
fn m_quicksave()  {
	if !usergame {
		s_startsound((voidptr(0)), Sfxenum_t.sfx_oof)
		return 
	}
	if gamestate != Gamestate_t.gs_level {
	return 
	}
	if quickSaveSlot < 0 {
		m_startcontrolpanel()
		m_readsavestrings()
		m_setupnextmenu(&SaveDef)
		quickSaveSlot = -2
		return 
	}
	deh_snprintf(tempstring, sizeof(tempstring), c"quicksave over your game named\n\n'%s'?\n\npress y or n.", savegamestrings [quickSaveSlot] )
	m_startmessage(tempstring, m_quicksaveresponse, true)
}

[c:'M_QuickLoadResponse']
fn m_quickloadresponse(key int)  {
	if key == key_menu_confirm {
		m_loadselect(quickSaveSlot)
		s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchx)
	}
}

[c:'M_QuickLoad']
fn m_quickload()  {
	if netgame {
		m_startmessage(deh_string(c"you can't quickload during a netgame!\n\npress a key."), (voidptr(0)), false)
		return 
	}
	if quickSaveSlot < 0 {
		m_startmessage(deh_string(c"you haven't picked a quicksave slot yet!\n\npress a key."), (voidptr(0)), false)
		return 
	}
	deh_snprintf(tempstring, sizeof(tempstring), c"do you want to quickload the game named\n\n'%s'?\n\npress y or n.", savegamestrings [quickSaveSlot] )
	m_startmessage(tempstring, m_quickloadresponse, true)
}

[c:'M_DrawReadThis1']
fn m_drawreadthis1()  {
	inhelpscreens = true
	v_drawpatchdirect(0, 0, w_cachelumpname(deh_string(c'HELP2'), 8))
}

[c:'M_DrawReadThis2']
fn m_drawreadthis2()  {
	inhelpscreens = true
	v_drawpatchdirect(0, 0, w_cachelumpname(deh_string(c'HELP1'), 8))
}

[c:'M_DrawReadThisCommercial']
fn m_drawreadthiscommercial()  {
	inhelpscreens = true
	v_drawpatchdirect(0, 0, w_cachelumpname(deh_string(c'HELP'), 8))
}

[c:'M_DrawSound']
fn m_drawsound()  {
	v_drawpatchdirect(60, 38, w_cachelumpname(deh_string(c'M_SVOL'), 8))
	m_drawthermo(SoundDef.x, SoundDef.y + 16 * (sfx_vol + 1), 16, sfxVolume)
	m_drawthermo(SoundDef.x, SoundDef.y + 16 * (music_vol + 1), 16, musicVolume)
}

[c:'M_Sound']
fn m_sound(choice int)  {
	m_setupnextmenu(&SoundDef)
}

[c:'M_SfxVol']
fn m_sfxvol(choice int)  {
	match choice {
	 0// case comp body kind=IfStmt is_enum=false 
	{
	if sfxVolume {
	sfxVolume --
	}
	 }
	1// case comp body kind=IfStmt is_enum=false 
	{
	if sfxVolume < 15 {
	sfxVolume ++
	}
	}else{}
	}
	s_setsfxvolume(sfxVolume * 8)
}

[c:'M_MusicVol']
fn m_musicvol(choice int)  {
	match choice {
	 0// case comp body kind=IfStmt is_enum=false 
	{
	if musicVolume {
	musicVolume --
	}
	 }
	1// case comp body kind=IfStmt is_enum=false 
	{
	if musicVolume < 15 {
	musicVolume ++
	}
	}else{}
	}
	s_setmusicvolume(musicVolume * 8)
}

[c:'M_DrawMainMenu']
fn m_drawmainmenu()  {
	v_drawpatchdirect(94, 2, w_cachelumpname(deh_string(c'M_DOOM'), 8))
}

[c:'M_DrawNewGame']
fn m_drawnewgame()  {
	v_drawpatchdirect(96, 14, w_cachelumpname(deh_string(c'M_NEWG'), 8))
	v_drawpatchdirect(54, 38, w_cachelumpname(deh_string(c'M_SKILL'), 8))
}

[c:'M_NewGame']
fn m_newgame(choice int)  {
	if netgame && !demoplayback {
		m_startmessage(deh_string(c"you can't start a new game\nwhile in a network game.\n\npress a key."), (voidptr(0)), false)
		return 
	}
	if gamemode == GameMode_t.commercial || gameversion == GameVersion_t.exe_chex {
	m_setupnextmenu(&NewDef)
	}
	else { // 3
	m_setupnextmenu(&EpiDef)
}
}

[weak]__global ( epi int 

)

[c:'M_DrawEpisode']
fn m_drawepisode()  {
	v_drawpatchdirect(54, 38, w_cachelumpname(deh_string(c'M_EPISOD'), 8))
}

[c:'M_VerifyNightmare']
fn m_verifynightmare(key int)  {
	if key != key_menu_confirm {
	return 
	}
	g_deferedinitnew(nightmare, epi + 1, 1)
	m_clearmenus()
}

[c:'M_ChooseSkill']
fn m_chooseskill(choice int)  {
	if choice == nightmare {
		m_startmessage(deh_string(c"are you sure? this skill level\nisn't even remotely fair.\n\npress y or n."), m_verifynightmare, true)
		return 
	}
	g_deferedinitnew(choice, epi + 1, 1)
	m_clearmenus()
}

[c:'M_Episode']
fn m_episode(choice int)  {
	if (gamemode == GameMode_t.shareware) && choice {
		m_startmessage(deh_string(c'this is the shareware version of doom.\n\nyou need to order the entire trilogy.\n\npress a key.'), (voidptr(0)), false)
		m_setupnextmenu(&ReadDef1)
		return 
	}
	epi = choice
	m_setupnextmenu(&NewDef)
}

[export:'detailNames']
const (
detailNames   = [c'M_GDHIGH', c'M_GDLOW']!

)

[export:'msgNames']
const (
msgNames   = [c'M_MSGOFF', c'M_MSGON']!

)

[c:'M_DrawOptions']
fn m_drawoptions()  {
	v_drawpatchdirect(108, 15, w_cachelumpname(deh_string(c'M_OPTTTL'), 8))
	v_drawpatchdirect(OptionsDef.x + 175, OptionsDef.y + 16 * detail, w_cachelumpname(deh_string(detailNames [detailLevel] ), 8))
	v_drawpatchdirect(OptionsDef.x + 120, OptionsDef.y + 16 * messages, w_cachelumpname(deh_string(msgNames [showMessages] ), 8))
	m_drawthermo(OptionsDef.x, OptionsDef.y + 16 * (mousesens + 1), 10, mouseSensitivity)
	m_drawthermo(OptionsDef.x, OptionsDef.y + 16 * (scrnsize + 1), 9, screenSize)
}

[c:'M_Options']
fn m_options(choice int)  {
	m_setupnextmenu(&OptionsDef)
}

[c:'M_ChangeMessages']
fn m_changemessages(choice int)  {
	choice = 0
	showMessages = 1 - showMessages
	if !showMessages {
	players [consoleplayer] .message = deh_string(c'Messages OFF')
	}
	else { // 3
	players [consoleplayer] .message = deh_string(c'Messages ON')
}
	message_dontfuckwithme = true
}

[c:'M_EndGameResponse']
fn m_endgameresponse(key int)  {
	if key != key_menu_confirm {
	return 
	}
	currentMenu.lastOn = itemOn
	m_clearmenus()
	d_starttitle()
}

[c:'M_EndGame']
fn m_endgame(choice int)  {
	choice = 0
	if !usergame {
		s_startsound((voidptr(0)), Sfxenum_t.sfx_oof)
		return 
	}
	if netgame {
		m_startmessage(deh_string(c"you can't end a netgame!\n\npress a key."), (voidptr(0)), false)
		return 
	}
	m_startmessage(deh_string(c'are you sure you want to end the game?\n\npress y or n.'), m_endgameresponse, true)
}

[c:'M_ReadThis']
fn m_readthis(choice int)  {
	choice = 0
	m_setupnextmenu(&ReadDef1)
}

[c:'M_ReadThis2']
fn m_readthis2(choice int)  {
	choice = 0
	m_setupnextmenu(&ReadDef2)
}

[c:'M_FinishReadThis']
fn m_finishreadthis(choice int)  {
	choice = 0
	m_setupnextmenu(&MainDef)
}

[export:'quitsounds']
const (
quitsounds   = [Sfxenum_t.sfx_pldeth, Sfxenum_t.sfx_dmpain, Sfxenum_t.sfx_popain, Sfxenum_t.sfx_slop, Sfxenum_t.sfx_telept, Sfxenum_t.sfx_posit1, Sfxenum_t.sfx_posit3, Sfxenum_t.sfx_sgtatk]!

)

[export:'quitsounds2']
const (
quitsounds2   = [Sfxenum_t.sfx_vilact, Sfxenum_t.sfx_getpow, Sfxenum_t.sfx_boscub, Sfxenum_t.sfx_slop, Sfxenum_t.sfx_skeswg, Sfxenum_t.sfx_kntdth, Sfxenum_t.sfx_bspact, Sfxenum_t.sfx_sgtatk]!

)

[c:'M_QuitResponse']
fn m_quitresponse(key int)  {
	if key != key_menu_confirm {
	return 
	}
	if !netgame {
		if gamemode == GameMode_t.commercial {
		s_startsound((voidptr(0)), quitsounds2 [(gametic >> 2) & 7] )
		}
		else { // 3
		s_startsound((voidptr(0)), quitsounds [(gametic >> 2) & 7] )
}
		i_waitvbl(105)
	}
	i_quit()
}

[c:'M_SelectEndMessage']
fn m_selectendmessage() &i8 {
	return doom1_endmsg [gametic % 8] 
}

[c:'M_QuitDOOM']
fn m_quitdoom(choice int)  {
	deh_snprintf(endstring, sizeof(endstring), c'%s\n\n(press y to quit to dos.)', deh_string(m_selectendmessage()))
	m_startmessage(endstring, m_quitresponse, true)
}

[c:'M_ChangeSensitivity']
fn m_changesensitivity(choice int)  {
	match choice {
	 0// case comp body kind=IfStmt is_enum=false 
	{
	if mouseSensitivity {
	mouseSensitivity --
	}
	 }
	1// case comp body kind=IfStmt is_enum=false 
	{
	if mouseSensitivity < 9 {
	mouseSensitivity ++
	}
	}else{}
	}
}

[c:'M_ChangeDetail']
fn m_changedetail(choice int)  {
	choice = 0
	detailLevel = 1 - detailLevel
	r_setviewsize(screenblocks, detailLevel)
	if !detailLevel {
	players [consoleplayer] .message = deh_string(c'High detail')
	}
	else { // 3
	players [consoleplayer] .message = deh_string(c'Low detail')
}
}

[c:'M_SizeDisplay']
fn m_sizedisplay(choice int)  {
	match choice {
	 0// case comp body kind=IfStmt is_enum=false 
	{
	if screenSize > 0 {
		screenblocks --
		screenSize --
	}
	 }
	1// case comp body kind=IfStmt is_enum=false 
	{
	if screenSize < 8 {
		screenblocks ++
		screenSize ++
	}
	}else{}
	}
	r_setviewsize(screenblocks, detailLevel)
}

[c:'M_DrawThermo']
fn m_drawthermo(x int, y int, thermwidth int, thermdot int)  {
	xx := 0
	i := 0
	xx = x
	v_drawpatchdirect(xx, y, w_cachelumpname(deh_string(c'M_THERML'), 8))
	xx += 8
	for i = 0 ; i < thermwidth ; i ++ {
		v_drawpatchdirect(xx, y, w_cachelumpname(deh_string(c'M_THERMM'), 8))
		xx += 8
	}
	v_drawpatchdirect(xx, y, w_cachelumpname(deh_string(c'M_THERMR'), 8))
	v_drawpatchdirect((x + 8) + thermdot * 8, y, w_cachelumpname(deh_string(c'M_THERMO'), 8))
}

[c:'M_StartMessage']
fn m_startmessage(string_ &i8, routine voidptr, input bool)  {
	messageLastMenuActive = menuactive
	messageToPrint = 1
	messageString = string_
	messageRoutine = routine
	messageNeedsInput = input
	menuactive = true
	return 
}

[c:'M_StringWidth']
fn m_stringwidth(string_ &i8) int {
	i := usize(0)
	w := 0
	c := 0
	for i = 0 ; i < C.strlen(string_) ; i ++ {
		c = C.toupper(string_ [i] ) - `!`
		if c < 0 || c >= (`_` - `!` + 1) {
		w += 4
		}
		else { // 3
		w += (i16((hu_font [c] .width)))
}
	}
	return w
}

[c:'M_StringHeight']
fn m_stringheight(string_ &i8) int {
	i := usize(0)
	h := 0
	height := (i16((hu_font [0] .height)))
	h = height
	for i = 0 ; i < C.strlen(string_) ; i ++ {
	if string_ [i]  == `
` {
	h += height
	}
	}
	return h
}

[c:'M_WriteText']
fn m_writetext(x int, y int, string_ &i8)  {
	w := 0
	ch := &i8(0)
	c := 0
	cx := 0
	cy := 0
	ch = string_
	cx = x
	cy = y
	for 1 {
		c = *ch ++
		if !c {
		break
		
		}
		if c == `
` {
			cx = x
			cy += 12
			continue
			
		}
		c = C.toupper(c) - `!`
		if c < 0 || c >= (`_` - `!` + 1) {
			cx += 4
			continue
			
		}
		w = (i16((hu_font [c] .width)))
		if cx + w > 320 {
		break
		
		}
		v_drawpatchdirect(cx, cy, hu_font [c] )
		cx += w
	}
}

[c:'IsNullKey']
fn isnullkey(key int) bool {
	return key == 255 || key == (128 + 58) || key == (128 + 70) || key == (128 + 69)
}

[c:'M_Responder']
fn m_responder(ev &Event_t) bool {
	ch := 0
	key := 0
	i := 0
	mousewait := 0
	mousey := 0
	lasty := 0
	mousex := 0
	lastx := 0
	if testcontrols {
		if ev.type_ == Evtype_t.ev_quit || (ev.type_ == Evtype_t.ev_keydown && (ev.data1 == key_menu_activate || ev.data1 == key_menu_quit)) {
			i_quit()
			return true
		}
		return false
	}
	if ev.type_ == Evtype_t.ev_quit {
		if menuactive && messageToPrint && messageRoutine == m_quitresponse {
			m_quitresponse(key_menu_confirm)
		}
		else {
			s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			m_quitdoom(0)
		}
		return true
	}
	ch = 0
	key = -1
	if ev.type_ == Evtype_t.ev_joystick {
		if menuactive {
			if ev.data3 < 0 {
				key = key_menu_up
				joywait = i_gettime() + 5
			}
			else if ev.data3 > 0 {
				key = key_menu_down
				joywait = i_gettime() + 5
			}
			if ev.data2 < 0 {
				key = key_menu_left
				joywait = i_gettime() + 2
			}
			else if ev.data2 > 0 {
				key = key_menu_right
				joywait = i_gettime() + 2
			}
			if (((joybfire) >= 0) && (ev.data1 & (1 << (joybfire))) != 0) {
				if messageToPrint && messageNeedsInput {
					key = key_menu_confirm
				}
				else if saveStringEnter {
					key = 13
				}
				else {
					if currentMenu == &SaveDef {
						joypadSave = true
					}
					key = key_menu_forward
				}
				joywait = i_gettime() + 5
			}
			if (((joybuse) >= 0) && (ev.data1 & (1 << (joybuse))) != 0) {
				if messageToPrint && messageNeedsInput {
					key = key_menu_abort
				}
				else if saveStringEnter {
					key = 27
				}
				else {
					key = key_menu_back
				}
				joywait = i_gettime() + 5
			}
		}
		if (((joybmenu) >= 0) && (ev.data1 & (1 << (joybmenu))) != 0) {
			key = key_menu_activate
			joywait = i_gettime() + 5
		}
	}
	else {
		if ev.type_ == Evtype_t.ev_mouse && mousewait < i_gettime() {
			mousey += ev.data3
			if mousey < lasty - 30 {
				key = key_menu_down
				mousewait = i_gettime() + 5
				mousey = lasty
				lasty -= 30
			}
			else if mousey > lasty + 30 {
				key = key_menu_up
				mousewait = i_gettime() + 5
				mousey = lasty
				lasty += 30
			}
			mousex += ev.data2
			if mousex < lastx - 30 {
				key = key_menu_left
				mousewait = i_gettime() + 5
				mousex = lastx
				lastx -= 30
			}
			else if mousex > lastx + 30 {
				key = key_menu_right
				mousewait = i_gettime() + 5
				mousex = lastx
				lastx += 30
			}
			if ev.data1 & 1 {
				key = key_menu_forward
				mousewait = i_gettime() + 15
			}
			if ev.data1 & 2 {
				key = key_menu_back
				mousewait = i_gettime() + 15
			}
		}
		else {
			if ev.type_ == Evtype_t.ev_keydown {
				key = ev.data1
				ch = ev.data2
			}
		}
	}
	if key == -1 {
	return false
	}
	if saveStringEnter {
		match key {
		 127// case comp body kind=IfStmt is_enum=false 
		{
		if saveCharIndex > 0 {
			saveCharIndex --
			savegamestrings [saveSlot]  [saveCharIndex]  = 0
		}
		 }
		27// case comp body kind=BinaryOperator is_enum=false 
		{
		saveStringEnter = 0
		i_stoptextinput()
		m_stringcopy(savegamestrings [saveSlot] , saveOldString, 24)
		 }
		13// case comp body kind=BinaryOperator is_enum=false 
		{
		saveStringEnter = 0
		i_stoptextinput()
		if savegamestrings [saveSlot]  [0]  {
		m_dosave(saveSlot)
		}
		}
		 else { 
		if ev.type_ != Evtype_t.ev_keydown {
			
		}
		if vanilla_keyboard_mapping {
			ch = ev.data1
		}
		else {
			ch = ev.data3
		}
		ch = C.toupper(ch)
		if ch != ` ` && (ch - `!` < 0 || ch - `!` >= (`_` - `!` + 1)) {
			
		}
		if ch >= 32 && ch <= 127 && saveCharIndex < 24 - 1 && m_stringwidth(savegamestrings [saveSlot] ) < (24 - 2) * 8 {
			savegamestrings [saveSlot]  [saveCharIndex ++]  = ch
			savegamestrings [saveSlot]  [saveCharIndex]  = 0
		}
		}
		}
		return true
	}
	if messageToPrint {
		if messageNeedsInput {
			if key != ` ` && key != 27 && key != key_menu_confirm && key != key_menu_abort {
				return false
			}
		}
		menuactive = messageLastMenuActive
		messageToPrint = 0
		if messageRoutine {
		messageRoutine(key)
		}
		menuactive = false
		s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchx)
		return true
	}
	if (devparm && key == key_menu_help) || (key != 0 && key == key_menu_screenshot) {
		g_screenshot()
		return true
	}
	if !menuactive {
		if key == key_menu_decscreen {
			if automapactive || chat_on {
			return false
			}
			m_sizedisplay(0)
			s_startsound((voidptr(0)), Sfxenum_t.sfx_stnmov)
			return true
		}
		else if key == key_menu_incscreen {
			if automapactive || chat_on {
			return false
			}
			m_sizedisplay(1)
			s_startsound((voidptr(0)), Sfxenum_t.sfx_stnmov)
			return true
		}
		else if key == key_menu_help {
			m_startcontrolpanel()
			if gameversion >= GameVersion_t.exe_ultimate {
			currentMenu = &ReadDef2
			}
			else { // 3
			currentMenu = &ReadDef1
}
			itemOn = 0
			s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			return true
		}
		else if key == key_menu_save {
			m_startcontrolpanel()
			s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			m_savegame(0)
			return true
		}
		else if key == key_menu_load {
			m_startcontrolpanel()
			s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			m_loadgame(0)
			return true
		}
		else if key == key_menu_volume {
			m_startcontrolpanel()
			currentMenu = &SoundDef
			itemOn = sfx_vol
			s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			return true
		}
		else if key == key_menu_detail {
			m_changedetail(0)
			s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			return true
		}
		else if key == key_menu_qsave {
			s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			m_quicksave()
			return true
		}
		else if key == key_menu_endgame {
			s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			m_endgame(0)
			return true
		}
		else if key == key_menu_messages {
			m_changemessages(0)
			s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			return true
		}
		else if key == key_menu_qload {
			s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			m_quickload()
			return true
		}
		else if key == key_menu_quit {
			s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			m_quitdoom(0)
			return true
		}
		else if key == key_menu_gamma {
			usegamma ++
			if usegamma > 4 {
			usegamma = 0
			}
			players [consoleplayer] .message = deh_string(gammamsg [usegamma] )
			i_setpalette(w_cachelumpname(deh_string(c'PLAYPAL'), 8))
			return true
		}
	}
	if !menuactive {
		if key == key_menu_activate {
			m_startcontrolpanel()
			s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			return true
		}
		return false
	}
	if key == key_menu_down {
		for {
		if itemOn + 1 > currentMenu.numitems - 1 {
		itemOn = 0
		}
		else { // 3
		itemOn ++
}
		s_startsound((voidptr(0)), Sfxenum_t.sfx_pstop)
		// while()
		if ! (currentMenu.menuitems [itemOn] .status == -1 ) { break }
		}
		return true
	}
	else if key == key_menu_up {
		for {
		if !itemOn {
		itemOn = currentMenu.numitems - 1
		}
		else { // 3
		itemOn --
}
		s_startsound((voidptr(0)), Sfxenum_t.sfx_pstop)
		// while()
		if ! (currentMenu.menuitems [itemOn] .status == -1 ) { break }
		}
		return true
	}
	else if key == key_menu_left {
		if currentMenu.menuitems [itemOn] .routine && currentMenu.menuitems [itemOn] .status == 2 {
			s_startsound((voidptr(0)), Sfxenum_t.sfx_stnmov)
			currentMenu.menuitems [itemOn] .routine(0)
		}
		return true
	}
	else if key == key_menu_right {
		if currentMenu.menuitems [itemOn] .routine && currentMenu.menuitems [itemOn] .status == 2 {
			s_startsound((voidptr(0)), Sfxenum_t.sfx_stnmov)
			currentMenu.menuitems [itemOn] .routine(1)
		}
		return true
	}
	else if key == key_menu_forward {
		if currentMenu.menuitems [itemOn] .routine && currentMenu.menuitems [itemOn] .status {
			currentMenu.lastOn = itemOn
			if currentMenu.menuitems [itemOn] .status == 2 {
				currentMenu.menuitems [itemOn] .routine(1)
				s_startsound((voidptr(0)), Sfxenum_t.sfx_stnmov)
			}
			else {
				currentMenu.menuitems [itemOn] .routine(itemOn)
				s_startsound((voidptr(0)), Sfxenum_t.sfx_pistol)
			}
		}
		return true
	}
	else if key == key_menu_activate {
		currentMenu.lastOn = itemOn
		m_clearmenus()
		s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchx)
		return true
	}
	else if key == key_menu_back {
		currentMenu.lastOn = itemOn
		if currentMenu.prevMenu {
			currentMenu = currentMenu.prevMenu
			itemOn = currentMenu.lastOn
			s_startsound((voidptr(0)), Sfxenum_t.sfx_swtchn)
		}
		return true
	}
	else if ch != 0 || isnullkey(key) {
		for i = itemOn + 1 ; i < currentMenu.numitems ; i ++ {
			if currentMenu.menuitems [i] .alphaKey == ch {
				itemOn = i
				s_startsound((voidptr(0)), Sfxenum_t.sfx_pstop)
				return true
			}
		}
		for i = 0 ; i <= itemOn ; i ++ {
			if currentMenu.menuitems [i] .alphaKey == ch {
				itemOn = i
				s_startsound((voidptr(0)), Sfxenum_t.sfx_pstop)
				return true
			}
		}
	}
	return false
}

[c:'M_StartControlPanel']
fn m_startcontrolpanel()  {
	if menuactive {
	return 
	}
	menuactive = 1
	currentMenu = &MainDef
	itemOn = currentMenu.lastOn
}

[c:'I_OPL_DevMessages']
fn i_opl_devmessages( &i8,  usize) 

[c:'M_DrawOPLDev']
fn m_drawopldev()  {
	debug := [1024]i8{}
	curr := &i8(0)
	p := &i8(0)
	
	line := 0
	i_opl_devmessages(debug, sizeof(debug))
	curr = debug
	line = 0
	for  ;  ;  {
		p = C.strchr(curr, `
`)
		if p != (voidptr(0)) {
			*p = ` `
		}
		m_writetext(0, line * 8, curr)
		line ++
		if p == (voidptr(0)) {
			break
			
		}
		curr = p + 1
	}
}

[c:'M_Drawer']
fn m_drawer()  {
	x := i16(0)
	y := i16(0)
	i := u32(0)
	max := u32(0)
	string_ := [80]i8{}
	name := &i8(0)
	start := 0
	inhelpscreens = false
	if messageToPrint {
		start = 0
		y = 200 / 2 - m_stringheight(messageString) / 2
		for messageString [start]  != ` ` {
			foundnewline := false
			for i = 0 ; messageString [start + i]  != ` ` ; i ++ {
				if messageString [start + i]  == `
` {
					m_stringcopy(string_, messageString + start, sizeof(string_))
					if i < sizeof(string_) {
						string_ [i]  = ` `
					}
					foundnewline = true
					start += i + 1
					break
					
				}
			}
			if !foundnewline {
				m_stringcopy(string_, messageString + start, sizeof(string_))
				start += C.strlen(string_)
			}
			x = 320 / 2 - m_stringwidth(string_) / 2
			m_writetext(x, y, string_)
			y += (i16((hu_font [0] .height)))
		}
		return 
	}
	if opldev {
		m_drawopldev()
	}
	if !menuactive {
	return 
	}
	if currentMenu.routine {
	currentMenu.routine()
	}
	x = currentMenu.x
	y = currentMenu.y
	max = currentMenu.numitems
	for i = 0 ; i < max ; i ++ {
		name = deh_string(currentMenu.menuitems [i] .name)
		if name [0]  && w_checknumforname(name) > 0 {
			v_drawpatchdirect(x, y, w_cachelumpname(name, 8))
		}
		y += 16
	}
	v_drawpatchdirect(x + -32, currentMenu.y - 5 + itemOn * 16, w_cachelumpname(deh_string(skullName [whichSkull] ), 8))
}

[c:'M_ClearMenus']
fn m_clearmenus()  {
	menuactive = 0
}

[c:'M_SetupNextMenu']
fn m_setupnextmenu(menudef &Menu_t)  {
	currentMenu = menudef
	itemOn = currentMenu.lastOn
}

[c:'M_Ticker']
fn m_ticker()  {
	if skullAnimCounter -- <= 0 {
		whichSkull ^= 1
		skullAnimCounter = 8
	}
}

[c:'M_Init']
fn m_init()  {
	currentMenu = &MainDef
	menuactive = 0
	itemOn = currentMenu.lastOn
	whichSkull = 0
	skullAnimCounter = 10
	screenSize = screenblocks - 3
	messageToPrint = 0
	messageString = (voidptr(0))
	messageLastMenuActive = menuactive
	quickSaveSlot = -1
	if gameversion >= GameVersion_t.exe_ultimate {
		MainMenu [int(MenuEnum.readthis)] .routine = m_readthis2
		ReadDef2.prevMenu = (voidptr(0))
	}
	if gameversion >= GameVersion_t.exe_final && gameversion <= GameVersion_t.exe_final2 {
		ReadDef2.routine = m_drawreadthiscommercial
	}
	if gamemode == GameMode_t.commercial {
		MainMenu [int(MenuEnum.readthis)]  = MainMenu [int(MenuEnum.quitdoom)] 
		MainDef.numitems --
		MainDef.y += 8
		NewDef.prevMenu = &MainDef
		ReadDef1.routine = m_drawreadthiscommercial
		ReadDef1.x = 330
		ReadDef1.y = 165
		ReadMenu1 [int(rdthsempty1)] .routine = m_finishreadthis
	}
	if gameversion < GameVersion_t.exe_ultimate {
		EpiDef.numitems --
	}
	else if gameversion == GameVersion_t.exe_chex {
		EpiDef.numitems = 1
	}
	opldev = m_checkparm(c'-opldev') > 0
}

