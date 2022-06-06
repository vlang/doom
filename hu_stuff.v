[translated]
module main

[typedef]
struct C.FILE {}

// vstart

[c: 'DEH_String']
fn deh_string(s &i8) &i8

[c: 'DEH_snprintf']
[c2v_variadic]
fn deh_snprintf(buffer &i8, len usize, fmt ...&i8)

[c: 'I_StartTextInput']
fn i_starttextinput(x1 int, y1 int, x2 int, y2 int)

[c: 'I_StopTextInput']
fn i_stoptextinput()

[c: 'HU_Init']
fn hu_init()

[c: 'HU_Start']
fn hu_start()

[c: 'HU_Responder']
fn hu_responder(ev &Event_t) bool

[c: 'HU_Ticker']
fn hu_ticker()

[c: 'HU_Drawer']
fn hu_drawer()

[c: 'HU_dequeueChatChar']
fn hu_dequeuechatchar() i8

[c: 'HU_Erase']
fn hu_erase()

// skipped extern global chat_macros

const ( // empty enum
)

struct Hu_textline_t {
	x           int
	y           int
	f           &&Patch_t
	sc          int
	l           [81]i8
	len         int
	needsupdate int
}

struct Hu_stext_t {
	l      [4]Hu_textline_t
	h      int
	cl     int
	on     &bool
	laston bool
}

struct Hu_itext_t {
	l      Hu_textline_t
	lm     int
	on     &bool
	laston bool
}

[c: 'HUlib_init']
fn hulib_init()

[c: 'HUlib_initTextLine']
fn hulib_inittextline(t &Hu_textline_t, x int, y int, f &&Patch_t, sc int)

[c: 'HUlib_addCharToTextLine']
fn hulib_addchartotextline(t &Hu_textline_t, ch i8) bool

[c: 'HUlib_drawTextLine']
fn hulib_drawtextline(l &Hu_textline_t, drawcursor bool)

[c: 'HUlib_eraseTextLine']
fn hulib_erasetextline(l &Hu_textline_t)

[c: 'HUlib_initSText']
fn hulib_initstext(s &Hu_stext_t, x int, y int, h int, font &&Patch_t, startchar int, on &bool)

[c: 'HUlib_addMessageToSText']
fn hulib_addmessagetostext(s &Hu_stext_t, prefix &i8, msg &i8)

[c: 'HUlib_drawSText']
fn hulib_drawstext(s &Hu_stext_t)

[c: 'HUlib_eraseSText']
fn hulib_erasestext(s &Hu_stext_t)

[c: 'HUlib_initIText']
fn hulib_inititext(it &Hu_itext_t, x int, y int, font &&Patch_t, startchar int, on &bool)

[c: 'HUlib_resetIText']
fn hulib_resetitext(it &Hu_itext_t)

[c: 'HUlib_keyInIText']
fn hulib_keyinitext(it &Hu_itext_t, ch u8) bool

[c: 'HUlib_drawIText']
fn hulib_drawitext(it &Hu_itext_t)

[c: 'HUlib_eraseIText']
fn hulib_eraseitext(it &Hu_itext_t)

[weak]
__global (
	key_message_refresh int
)

[weak]
__global (
	key_multi_msg int
)

[c_extern]
__global (
	key_multi_msgplayer [8]int
)

[c: 'M_StringCopy']
fn m_stringcopy(dest &i8, src &i8, dest_size usize) bool

[c: 'M_snprintf']
[c2v_variadic]
fn m_snprintf(buf &i8, buf_len usize, s ...&i8) int

[c: 'W_CacheLumpName']
fn w_cachelumpname(name &i8, tag int) voidptr

[c: 'S_Start']
fn s_start()

[c: 'S_StartSound']
fn s_startsound(origin voidptr, sound_id int)

[export: 'chat_macros']
const (
	chat_macros = [c'No', c"I'm ready to kick butt!", c"I'm OK.", c"I'm not looking too good!",
		c'Help!', c'You suck!', c'Next time, scumbag...', c'Come here!', c"I'll take care of it.",
		c'Yes']!
)

[export: 'player_names']
const (
	player_names = [c'Green: ', c'Indigo: ', c'Brown: ', c'Red: ']!
)

[weak]
__global (
	chat_char i8
)

[weak]
__global (
	w_title Hu_textline_t
)

[weak]
__global (
	w_chat Hu_itext_t
)

//!
[weak]
__global (
	always_off = bool(false)
)

[weak]
__global (
	chat_dest [4]i8
)

[weak]
__global (
	w_inputbuffer [4]Hu_itext_t
)

[weak]
__global (
	message_on bool
)

[weak]
__global (
	message_nottobefuckedwith bool
)

[weak]
__global (
	w_message Hu_stext_t
)

[weak]
__global (
	message_counter int
)

//!
[weak]
__global (
	headsupactive = bool(false)
)

[export: 'mapnames']
const (
	mapnames = [c'E1M1: Hangar', c'E1M2: Nuclear Plant', c'E1M3: Toxin Refinery',
		c'E1M4: Command Control', c'E1M5: Phobos Lab', c'E1M6: Central Processing',
		c'E1M7: Computer Station', c'E1M8: Phobos Anomaly', c'E1M9: Military Base',
		c'E2M1: Deimos Anomaly', c'E2M2: Containment Area', c'E2M3: Refinery', c'E2M4: Deimos Lab',
		c'E2M5: Command Center', c'E2M6: Halls of the Damned', c'E2M7: Spawning Vats',
		c'E2M8: Tower of Babel', c'E2M9: Fortress of Mystery', c'E3M1: Hell Keep',
		c'E3M2: Slough of Despair', c'E3M3: Pandemonium', c'E3M4: House of Pain',
		c'E3M5: Unholy Cathedral', c'E3M6: Mt. Erebus', c'E3M7: Limbo', c'E3M8: Dis', c'E3M9: Warrens',
		c'E4M1: Hell Beneath', c'E4M2: Perfect Hatred', c'E4M3: Sever The Wicked',
		c'E4M4: Unruly Evil', c'E4M5: They Will Repent', c'E4M6: Against Thee Wickedly',
		c'E4M7: And Hell Followed', c'E4M8: Unto The Cruel', c'E4M9: Fear', c'NEWLEVEL', c'NEWLEVEL',
		c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL']!
)

[export: 'mapnames_chex']
const (
	mapnames_chex = [c'E1M1: Hangar', c'E1M2: Nuclear Plant', c'E1M3: Toxin Refinery',
		c'E1M4: Command Control', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab',
		c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab',
		c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab',
		c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab',
		c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab',
		c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab',
		c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab',
		c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab',
		c'E1M5: Phobos Lab', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL',
		c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL']!
)

[export: 'mapnames_commercial']
const (
	mapnames_commercial = [c'level 1: entryway', c'level 2: underhalls', c'level 3: the gantlet',
		c'level 4: the focus', c'level 5: the waste tunnels', c'level 6: the crusher',
		c'level 7: dead simple', c'level 8: tricks and traps', c'level 9: the pit',
		c'level 10: refueling base', c"level 11: 'o' of destruction!", c'level 12: the factory',
		c'level 13: downtown', c'level 14: the inmost dens', c'level 15: industrial zone',
		c'level 16: suburbs', c'level 17: tenements', c'level 18: the courtyard',
		c'level 19: the citadel', c'level 20: gotcha!', c'level 21: nirvana',
		c'level 22: the catacombs', c"level 23: barrels o' fun", c'level 24: the chasm',
		c'level 25: bloodfalls', c'level 26: the abandoned mines', c'level 27: monster condo',
		c'level 28: the spirit world', c'level 29: the living end', c'level 30: icon of sin',
		c'level 31: wolfenstein', c'level 32: grosse', c'level 1: congo', c'level 2: well of souls',
		c'level 3: aztec', c'level 4: caged', c'level 5: ghost town', c"level 6: baron's lair",
		c'level 7: caughtyard', c'level 8: realm', c'level 9: abattoire', c'level 10: onslaught',
		c'level 11: hunted', c'level 12: speed', c'level 13: the crypt', c'level 14: genesis',
		c'level 15: the twilight', c'level 16: the omen', c'level 17: compound',
		c'level 18: neurosphere', c'level 19: nme', c'level 20: the death domain', c'level 21: slayer',
		c'level 22: impossible mission', c'level 23: tombstone', c'level 24: the final frontier',
		c'level 25: the temple of darkness', c'level 26: bunker', c'level 27: anti-christ',
		c'level 28: the sewers', c'level 29: odyssey of noises', c'level 30: the gateway of hell',
		c'level 31: cyberden', c'level 32: go 2 it', c'level 1: system control', c'level 2: human bbq',
		c'level 3: power control', c'level 4: wormhole', c'level 5: hanger', c'level 6: open season',
		c'level 7: prison', c'level 8: metal', c'level 9: stronghold', c'level 10: redemption',
		c'level 11: storage facility', c'level 12: crater', c'level 13: nukage processing',
		c'level 14: steel works', c'level 15: dead zone', c'level 16: deepest reaches',
		c'level 17: processing area', c'level 18: mill', c'level 19: shipping/respawning',
		c'level 20: central processing', c'level 21: administration center', c'level 22: habitat',
		c'level 23: lunar mining project', c'level 24: quarry', c"level 25: baron's den",
		c'level 26: ballistyx', c'level 27: mount pain', c'level 28: heck', c'level 29: river styx',
		c'level 30: last call', c'level 31: pharaoh', c'level 32: caribbean', c'', c'', c'']!
)

[c: 'HU_Init']
fn hu_init() {
	i := 0
	j := 0
	buffer := [9]i8{}
	j = `!`
	for i = 0; i < (`_` - `!` + 1); i++ {
		deh_snprintf(buffer, 9, c'STCFN%.3d', j++)
		hu_font[i] = &Patch_t(w_cachelumpname(buffer, 1))
	}
}

[c: 'HU_Stop']
fn hu_stop() {
	headsupactive = false
}

[c: 'HU_Start']
fn hu_start() {
	i := 0
	s := &i8(0)
	if headsupactive {
		hu_stop()
	}
	plr = &players[consoleplayer]
	message_on = false
	message_dontfuckwithme = false
	message_nottobefuckedwith = false
	chat_on = false
	hulib_initstext(&w_message, 0, 0, 1, hu_font, `!`, &message_on)
	hulib_inittextline(&w_title, 0, (167 - (i16((hu_font[0].height)))), hu_font, `!`)
	s = (mapnames[(gameepisode - 1) * 9 + gamemap - 1])
	if GameMission_t.doom == GameMission_t.doom && gameversion == GameVersion_t.exe_chex {
		s = (mapnames_chex[(gameepisode - 1) * 9 + gamemap - 1])
	}
	s = deh_string(s)
	for *s {
		hulib_addchartotextline(&w_title, *(s++))
	}
	hulib_inititext(&w_chat, 0, (0 + 1 * ((i16((hu_font[0].height))) + 1)), hu_font, `!`,
		&chat_on)
	for i = 0; i < 4; i++ {
		hulib_inititext(&w_inputbuffer[i], 0, 0, 0, 0, &always_off)
	}
	headsupactive = true
}

[c: 'HU_Drawer']
fn hu_drawer() {
	hulib_drawstext(&w_message)
	hulib_drawitext(&w_chat)
	if automapactive {
		hulib_drawtextline(&w_title, false)
	}
}

[c: 'HU_Erase']
fn hu_erase() {
	hulib_erasestext(&w_message)
	hulib_eraseitext(&w_chat)
	hulib_erasetextline(&w_title)
}

[c: 'HU_Ticker']
fn hu_ticker() {
	i := 0
	rc := 0

	c := i8(0)
	if message_counter && !message_counter-- {
		message_on = false
		message_nottobefuckedwith = false
	}
	if showMessages || message_dontfuckwithme {
		if (plr.message && !message_nottobefuckedwith) || (plr.message && message_dontfuckwithme) {
			hulib_addmessagetostext(&w_message, 0, plr.message)
			plr.message = 0
			message_on = true
			message_counter = (4 * 35)
			message_nottobefuckedwith = message_dontfuckwithme
			message_dontfuckwithme = 0
		}
	}
	if netgame {
		for i = 0; i < 4; i++ {
			if !playeringame[i] {
				continue
			}
			if i != consoleplayer {
				c = players[i].cmd.chatchar
				if c {
					{
						if c <= 5 {
							chat_dest[i] = c
						} else {
							rc = hulib_keyinitext(&w_inputbuffer[i], c)
							if rc && c == 13 {
								if w_inputbuffer[i].l.len
									&& (chat_dest[i] == consoleplayer + 1 || chat_dest[i] == 5) {
									hulib_addmessagetostext(&w_message, deh_string(player_names[i]),
										w_inputbuffer[i].l.l)
									message_nottobefuckedwith = true
									message_on = true
									message_counter = (4 * 35)
									if gamemode == GameMode_t.commercial {
										s_startsound(0, Sfxenum_t.sfx_radio)
									} else if gameversion > GameVersion_t.exe_doom_1_2 {
										s_startsound(0, Sfxenum_t.sfx_tink)
									}
								}
								hulib_resetitext(&w_inputbuffer[i])
							}
						}
						players[i].cmd.chatchar = 0
					}
				}
			}
		}
	}
}

[weak]
__global (
	chatchars [128]i8
)

//!
[weak]
__global (
	head = int(0)
)

//!
[weak]
__global (
	tail = int(0)
)

[c: 'HU_queueChatChar']
fn hu_queuechatchar(c i8) {
	if ((head + 1) & (128 - 1)) == tail {
		plr.message = deh_string(c'[Message unsent]')
	} else {
		chatchars[head] = c
		head = (head + 1) & (128 - 1)
	}
}

[c: 'HU_dequeueChatChar']
fn hu_dequeuechatchar() i8 {
	c := i8(0)
	if head != tail {
		c = chatchars[tail]
		tail = (tail + 1) & (128 - 1)
	} else {
		c = 0
	}
	return c
}

[c: 'StartChatInput']
fn startchatinput(dest int) {
	chat_on = true
	hulib_resetitext(&w_chat)
	hu_queuechatchar(5)
	i_starttextinput(0, 8, 320, 16)
}

[c: 'StopChatInput']
fn stopchatinput() {
	chat_on = false
	i_stoptextinput()
}

[c: 'HU_Responder']
fn hu_responder(ev &Event_t) bool {
	lastmessage := [81]i8{}
	macromessage := &i8(0)
	eatkey := false
	altdown := false
	c := u8(0)
	i := 0
	numplayers := 0
	num_nobrainers := 0
	numplayers = 0
	for i = 0; i < 4; i++ {
		numplayers += playeringame[i]
	}
	if ev.data1 == (128 + 54) {
		return false
	} else if ev.data1 == (128 + 56) || ev.data1 == (128 + 56) {
		altdown = ev.type_ == Evtype_t.ev_keydown
		return false
	}
	if ev.type_ != Evtype_t.ev_keydown {
		return false
	}
	if !chat_on {
		if ev.data1 == key_message_refresh {
			message_on = true
			message_counter = (4 * 35)
			eatkey = true
		} else if netgame && ev.data2 == key_multi_msg {
			eatkey = true
			startchatinput(5)
		} else if netgame && numplayers > 2 {
			for i = 0; i < 4; i++ {
				if ev.data2 == key_multi_msgplayer[i] {
					if playeringame[i] && i != consoleplayer {
						eatkey = true
						startchatinput(i + 1)
						break
					} else if i == consoleplayer {
						num_nobrainers++
						if num_nobrainers < 3 {
							plr.message = deh_string(c'You mumble to yourself')
						} else if num_nobrainers < 6 {
							plr.message = deh_string(c"Who's there?")
						} else if num_nobrainers < 9 {
							plr.message = deh_string(c'You scare yourself')
						} else if num_nobrainers < 32 {
							plr.message = deh_string(c'You start to rave')
						} else { // 3
							plr.message = deh_string(c"You've lost it...")
						}
					}
				}
			}
		}
	} else {
		if altdown {
			c = ev.data1 - `0`
			if c > 9 {
				return false
			}
			macromessage = chat_macros[c]
			hu_queuechatchar(13)
			for *macromessage {
				hu_queuechatchar(*macromessage++)
			}
			hu_queuechatchar(13)
			stopchatinput()
			m_stringcopy(lastmessage, chat_macros[c], sizeof(lastmessage))
			plr.message = lastmessage
			eatkey = true
		} else {
			c = ev.data3
			eatkey = hulib_keyinitext(&w_chat, c)
			if eatkey {
				hu_queuechatchar(c)
			}
			if c == 13 {
				stopchatinput()
				if w_chat.l.len {
					m_stringcopy(lastmessage, w_chat.l.l, sizeof(lastmessage))
					plr.message = lastmessage
				}
			} else if c == 27 {
				stopchatinput()
			}
		}
	}
	return eatkey
}
