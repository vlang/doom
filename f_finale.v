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

[c: 'V_DrawPatch']
fn v_drawpatch(x int, y int, patch &Patch_t)

[c: 'V_DrawPatchFlipped']
fn v_drawpatchflipped(x int, y int, patch &Patch_t)

[c: 'V_MarkRect']
fn v_markrect(x int, y int, width int, height int)

[c: 'W_CacheLumpNum']
fn w_cachelumpnum(lump Lumpindex_t, tag int) voidptr

[c: 'W_CacheLumpName']
fn w_cachelumpname(name &i8, tag int) voidptr

const ( // empty enum
)

[c: 'S_Start']
fn s_start()

[c: 'S_StartSound']
fn s_startsound(origin voidptr, sound_id int)

[c: 'S_StartMusic']
fn s_startmusic(music_id int)

[c: 'S_ChangeMusic']
fn s_changemusic(music_id int, looping int)

enum Finalestage_t {
	f_stage_text
	f_stage_artscreen
	f_stage_cast
}

[weak]
__global (
	finalestage Finalestage_t
)

[weak]
__global (
	finalecount u32
)

struct Textscreen_t {
	mission    GameMission_t
	episode    int
	level      int
	background &i8
	text       &i8
}

[export: 'textscreens']
const (
	textscreens = [
		Textscreen_t{GameMission_t.doom, 1, 8, c'FLOOR4_8', c"Once you beat the big badasses and\nclean out the moon base you're supposed\nto win, aren't you? Aren't you? Where's\nyour fat reward and ticket home? What\nthe hell is this? It's not supposed to\nend this way!\n\nIt stinks like rotten meat, but looks\nlike the lost Deimos base.  Looks like\nyou're stuck on The Shores of Hell.\nThe only way out is through.\n\nTo continue the DOOM experience, play\nThe Shores of Hell and its amazing\nsequel, Inferno!\n"},
		Textscreen_t{GameMission_t.doom, 2, 8, c'SFLR6_1', c"You've done it! The hideous cyber-\ndemon lord that ruled the lost Deimos\nmoon base has been slain and you\nare triumphant! But ... where are\nyou? You clamber to the edge of the\nmoon and look down to see the awful\ntruth.\n\nDeimos floats above Hell itself!\nYou've never heard of anyone escaping\nfrom Hell, but you'll make the bastards\nsorry they ever heard of you! Quickly,\nyou rappel down to  the surface of\nHell.\n\nNow, it's on to the final chapter of\nDOOM! -- Inferno."},
		Textscreen_t{GameMission_t.doom, 3, 8, c'MFLR8_4', c"The loathsome spiderdemon that\nmasterminded the invasion of the moon\nbases and caused so much death has had\nits ass kicked for all time.\n\nA hidden doorway opens and you enter.\nYou've proven too tough for Hell to\ncontain, and now Hell at last plays\nfair -- for you emerge from the door\nto see the green fields of Earth!\nHome at last.\n\nYou wonder what's been happening on\nEarth while you were battling evil\nunleashed. It's good that no Hell-\nspawn could have come through that\ndoor with you ..."},
		Textscreen_t{GameMission_t.doom, 4, 8, c'MFLR8_3', c'the spider mastermind must have sent forth\nits legions of hellspawn before your\nfinal confrontation with that terrible\nbeast from hell.  but you stepped forward\nand brought forth eternal damnation and\nsuffering upon the horde as a true hero\nwould in the face of something so evil.\n\nbesides, someone was gonna pay for what\nhappened to daisy, your pet rabbit.\n\nbut now, you see spread before you more\npotential pain and gibbitude as a nation\nof demons run amok among our cities.\n\nnext stop, hell on earth!'},
		Textscreen_t{GameMission_t.doom2, 1, 6, c'SLIME16', c"YOU HAVE ENTERED DEEPLY INTO THE INFESTED\nSTARPORT. BUT SOMETHING IS WRONG. THE\nMONSTERS HAVE BROUGHT THEIR OWN REALITY\nWITH THEM, AND THE STARPORT'S TECHNOLOGY\nIS BEING SUBVERTED BY THEIR PRESENCE.\n\nAHEAD, YOU SEE AN OUTPOST OF HELL, A\nFORTIFIED ZONE. IF YOU CAN GET PAST IT,\nYOU CAN PENETRATE INTO THE HAUNTED HEART\nOF THE STARBASE AND FIND THE CONTROLLING\nSWITCH WHICH HOLDS EARTH'S POPULATION\nHOSTAGE."},
		Textscreen_t{GameMission_t.doom2, 1, 11, c'RROCK14', c'YOU HAVE WON! YOUR VICTORY HAS ENABLED\nHUMANKIND TO EVACUATE EARTH AND ESCAPE\nTHE NIGHTMARE.  NOW YOU ARE THE ONLY\nHUMAN LEFT ON THE FACE OF THE PLANET.\nCANNIBAL MUTATIONS, CARNIVOROUS ALIENS,\nAND EVIL SPIRITS ARE YOUR ONLY NEIGHBORS.\nYOU SIT BACK AND WAIT FOR DEATH, CONTENT\nTHAT YOU HAVE SAVED YOUR SPECIES.\n\nBUT THEN, EARTH CONTROL BEAMS DOWN A\nMESSAGE FROM SPACE: "SENSORS HAVE LOCATED\nTHE SOURCE OF THE ALIEN INVASION. IF YOU\nGO THERE, YOU MAY BE ABLE TO BLOCK THEIR\nENTRY.  THE ALIEN BASE IS IN THE HEART OF\nYOUR OWN HOME CITY, NOT FAR FROM THE\nSTARPORT." SLOWLY AND PAINFULLY YOU GET\nUP AND RETURN TO THE FRAY.'},
		Textscreen_t{GameMission_t.doom2, 1, 20, c'RROCK07', c"YOU ARE AT THE CORRUPT HEART OF THE CITY,\nSURROUNDED BY THE CORPSES OF YOUR ENEMIES.\nYOU SEE NO WAY TO DESTROY THE CREATURES'\nENTRYWAY ON THIS SIDE, SO YOU CLENCH YOUR\nTEETH AND PLUNGE THROUGH IT.\n\nTHERE MUST BE A WAY TO CLOSE IT ON THE\nOTHER SIDE. WHAT DO YOU CARE IF YOU'VE\nGOT TO GO THROUGH HELL TO GET TO IT?"},
		Textscreen_t{GameMission_t.doom2, 1, 30, c'RROCK17', c"THE HORRENDOUS VISAGE OF THE BIGGEST\nDEMON YOU'VE EVER SEEN CRUMBLES BEFORE\nYOU, AFTER YOU PUMP YOUR ROCKETS INTO\nHIS EXPOSED BRAIN. THE MONSTER SHRIVELS\nUP AND DIES, ITS THRASHING LIMBS\nDEVASTATING UNTOLD MILES OF HELL'S\nSURFACE.\n\nYOU'VE DONE IT. THE INVASION IS OVER.\nEARTH IS SAVED. HELL IS A WRECK. YOU\nWONDER WHERE BAD FOLKS WILL GO WHEN THEY\nDIE, NOW. WIPING THE SWEAT FROM YOUR\nFOREHEAD YOU BEGIN THE LONG TREK BACK\nHOME. REBUILDING EARTH OUGHT TO BE A\nLOT MORE FUN THAN RUINING IT WAS.\n"},
		Textscreen_t{GameMission_t.doom2, 1, 15, c'RROCK13', c"CONGRATULATIONS, YOU'VE FOUND THE SECRET\nLEVEL! LOOKS LIKE IT'S BEEN BUILT BY\nHUMANS, RATHER THAN DEMONS. YOU WONDER\nWHO THE INMATES OF THIS CORNER OF HELL\nWILL BE."},
		Textscreen_t{GameMission_t.doom2, 1, 31, c'RROCK19', c"CONGRATULATIONS, YOU'VE FOUND THE\nSUPER SECRET LEVEL!  YOU'D BETTER\nBLAZE THROUGH THIS ONE!\n"},
		Textscreen_t{GameMission_t.pack_tnt, 1, 6, c'SLIME16', c"You've fought your way out of the infested\nexperimental labs.   It seems that UAC has\nonce again gulped it down.  With their\nhigh turnover, it must be hard for poor\nold UAC to buy corporate health insurance\nnowadays..\n\nAhead lies the military complex, now\nswarming with diseased horrors hot to get\ntheir teeth into you. With luck, the\ncomplex still has some warlike ordnance\nlaying around."},
		Textscreen_t{GameMission_t.pack_tnt, 1, 11, c'RROCK14', c"You hear the grinding of heavy machinery\nahead.  You sure hope they're not stamping\nout new hellspawn, but you're ready to\nream out a whole herd if you have to.\nThey might be planning a blood feast, but\nyou feel about as mean as two thousand\nmaniacs packed into one mad killer.\n\nYou don't plan to go down easy."},
		Textscreen_t{GameMission_t.pack_tnt, 1, 20, c'RROCK07', c"The vista opening ahead looks real damn\nfamiliar. Smells familiar, too -- like\nfried excrement. You didn't like this\nplace before, and you sure as hell ain't\nplanning to like it now. The more you\nbrood on it, the madder you get.\nHefting your gun, an evil grin trickles\nonto your face. Time to take some names."},
		Textscreen_t{GameMission_t.pack_tnt, 1, 30, c'RROCK17', c"Suddenly, all is silent, from one horizon\nto the other. The agonizing echo of Hell\nfades away, the nightmare sky turns to\nblue, the heaps of monster corpses start \nto evaporate along with the evil stench \nthat filled the air. Jeeze, maybe you've\ndone it. Have you really won?\n\nSomething rumbles in the distance.\nA blue light begins to glow inside the\nruined skull of the demon-spitter."},
		Textscreen_t{GameMission_t.pack_tnt, 1, 15, c'RROCK13', c"What now? Looks totally different. Kind\nof like King Tut's condo. Well,\nwhatever's here can't be any worse\nthan usual. Can it?  Or maybe it's best\nto let sleeping gods lie.."},
		Textscreen_t{GameMission_t.pack_tnt, 1, 31, c'RROCK19', c"Time for a vacation. You've burst the\nbowels of hell and by golly you're ready\nfor a break. You mutter to yourself,\nMaybe someone else can kick Hell's ass\nnext time around. Ahead lies a quiet town,\nwith peaceful flowing water, quaint\nbuildings, and presumably no Hellspawn.\n\nAs you step off the transport, you hear\nthe stomp of a cyberdemon's iron shoe."},
		Textscreen_t{GameMission_t.pack_plut, 1, 6, c'SLIME16', c"You gloat over the steaming carcass of the\nGuardian.  With its death, you've wrested\nthe Accelerator from the stinking claws\nof Hell.  You relax and glance around the\nroom.  Damn!  There was supposed to be at\nleast one working prototype, but you can't\nsee it. The demons must have taken it.\n\nYou must find the prototype, or all your\nstruggles will have been wasted. Keep\nmoving, keep fighting, keep killing.\nOh yes, keep living, too."},
		Textscreen_t{GameMission_t.pack_plut, 1, 11, c'RROCK14', c"Even the deadly Arch-Vile labyrinth could\nnot stop you, and you've gotten to the\nprototype Accelerator which is soon\nefficiently and permanently deactivated.\n\nYou're good at that kind of thing."},
		Textscreen_t{GameMission_t.pack_plut, 1, 20, c'RROCK07', c"You've bashed and battered your way into\nthe heart of the devil-hive.  Time for a\nSearch-and-Destroy mission, aimed at the\nGatekeeper, whose foul offspring is\ncascading to Earth.  Yeah, he's bad. But\nyou know who's worse!\n\nGrinning evilly, you check your gear, and\nget ready to give the bastard a little Hell\nof your own making!"},
		Textscreen_t{GameMission_t.pack_plut, 1, 30, c'RROCK17', c"The Gatekeeper's evil face is splattered\nall over the place.  As its tattered corpse\ncollapses, an inverted Gate forms and\nsucks down the shards of the last\nprototype Accelerator, not to mention the\nfew remaining demons.  You're done. Hell\nhas gone back to pounding bad dead folks \ninstead of good live ones.  Remember to\ntell your grandkids to put a rocket\nlauncher in your coffin. If you go to Hell\nwhen you die, you'll need it for some\nfinal cleaning-up ..."},
		Textscreen_t{GameMission_t.pack_plut, 1, 15, c'RROCK13', c"You've found the second-hardest level we\ngot. Hope you have a saved game a level or\ntwo previous.  If not, be prepared to die\naplenty. For master marines only."},
		Textscreen_t{GameMission_t.pack_plut, 1, 31, c'RROCK19', c'Betcha wondered just what WAS the hardest\nlevel we had ready for ya?  Now you know.\nNo one gets out alive.'},
	]!
)

[weak]
__global (
	finaletext &i8
)

[weak]
__global (
	finaleflat &i8
)

[c: 'F_StartCast']
fn f_startcast()

[c: 'F_CastTicker']
fn f_castticker()

[c: 'F_CastResponder']
fn f_castresponder(ev &Event_t) bool

[c: 'F_CastDrawer']
fn f_castdrawer()

[c: 'F_StartFinale']
fn f_startfinale() {
	i := usize(0)
	gameaction = Gameaction_t.ga_nothing
	gamestate = Gamestate_t.gs_finale
	viewactive = false
	automapactive = false
	if GameMission_t.doom == GameMission_t.doom {
		s_changemusic(Musicenum_t.mus_victor, true)
	} else {
		s_changemusic(Musicenum_t.mus_read_m, true)
	}
	for i = 0; i < (sizeof(textscreens) / sizeof(*textscreens)); i++ {
		screen := &textscreens[i]
		if gameversion == GameVersion_t.exe_chex && screen.mission == GameMission_t.doom {
			screen.level = 5
		}
		if GameMission_t.doom == screen.mission
			&& (GameMission_t.doom != GameMission_t.doom || gameepisode == screen.episode)
			&& gamemap == screen.level {
			finaletext = screen.text
			finaleflat = screen.background
		}
	}
	finaletext = deh_string(finaletext)
	finaleflat = deh_string(finaleflat)
	finalestage = Finalestage_t.f_stage_text
	finalecount = 0
}

[c: 'F_Responder']
fn f_responder(event &Event_t) bool {
	if finalestage == Finalestage_t.f_stage_cast {
		return f_castresponder(event)
	}
	return false
}

[c: 'F_Ticker']
fn f_ticker() {
	i := usize(0)
	if (gamemode == GameMode_t.commercial) && (finalecount > 50) {
		for i = 0; i < 4; i++ {
			if players[i].cmd.buttons {
				break
			}
		}
		if i < 4 {
			if gamemap == 30 {
				f_startcast()
			} else { // 3
				gameaction = Gameaction_t.ga_worlddone
			}
		}
	}
	finalecount++
	if finalestage == Finalestage_t.f_stage_cast {
		f_castticker()
		return
	}
	if gamemode == GameMode_t.commercial {
		return
	}
	if finalestage == Finalestage_t.f_stage_text && finalecount > C.strlen(finaletext) * 3 + 250 {
		finalecount = 0
		finalestage = Finalestage_t.f_stage_artscreen
		wipegamestate = -1
		if gameepisode == 3 {
			s_startmusic(Musicenum_t.mus_bunny)
		}
	}
}

[c: 'F_TextWrite']
fn f_textwrite() {
	src := &u8(0)
	dest := &Pixel_t(0)
	x := 0
	y := 0
	w := 0

	count := 0
	ch := &i8(0)
	c := 0
	cx := 0
	cy := 0
	src = w_cachelumpname(finaleflat, 8)
	dest = I_VideoBuffer
	for y = 0; y < 200; y++ {
		for x = 0; x < 320 / 64; x++ {
			C.memcpy(dest, src + ((y & 63) << 6), 64)
			dest += 64
		}
		if 320 & 63 {
			C.memcpy(dest, src + ((y & 63) << 6), 320 & 63)
			dest += (320 & 63)
		}
	}
	v_markrect(0, 0, 320, 200)
	cx = 10
	cy = 10
	ch = finaletext
	count = (int(finalecount) - 10) / 3
	if count < 0 {
		count = 0
	}
	for ; count; count-- {
		c = *ch++
		if !c {
			break
		}
		if c == `\x0a` {
			cx = 10
			cy += 11
			continue
		}
		c = C.toupper(c) - `!`
		if c < 0 || c > (`_` - `!` + 1) {
			cx += 4
			continue
		}
		w = (i16((hu_font[c].width)))
		if cx + w > 320 {
			break
		}
		v_drawpatch(cx, cy, hu_font[c])
		cx += w
	}
}

struct Castinfo_t {
	name  &i8
	type_ Mobjtype_t
}

[export: 'castorder']
const (
	castorder = [Castinfo_t{c'ZOMBIEMAN', Mobjtype_t.mt_possessed},
		Castinfo_t{c'SHOTGUN GUY', Mobjtype_t.mt_shotguy},
		Castinfo_t{c'HEAVY WEAPON DUDE', Mobjtype_t.mt_chainguy},
		Castinfo_t{c'IMP', Mobjtype_t.mt_troop}, Castinfo_t{c'DEMON', Mobjtype_t.mt_sergeant},
		Castinfo_t{c'LOST SOUL', Mobjtype_t.mt_skull}, Castinfo_t{c'CACODEMON', Mobjtype_t.mt_head},
		Castinfo_t{c'HELL KNIGHT', Mobjtype_t.mt_knight},
		Castinfo_t{c'BARON OF HELL', Mobjtype_t.mt_bruiser},
		Castinfo_t{c'ARACHNOTRON', Mobjtype_t.mt_baby},
		Castinfo_t{c'PAIN ELEMENTAL', Mobjtype_t.mt_pain},
		Castinfo_t{c'REVENANT', Mobjtype_t.mt_undead}, Castinfo_t{c'MANCUBUS', Mobjtype_t.mt_fatso},
		Castinfo_t{c'ARCH-VILE', Mobjtype_t.mt_vile},
		Castinfo_t{c'THE SPIDER MASTERMIND', Mobjtype_t.mt_spider},
		Castinfo_t{c'THE CYBERDEMON', Mobjtype_t.mt_cyborg},
		Castinfo_t{c'OUR HERO', Mobjtype_t.mt_player}, Castinfo_t{(voidptr(0)), 0}]!
)

[weak]
__global (
	castnum int
)

[weak]
__global (
	casttics int
)

[weak]
__global (
	caststate &State_t
)

[weak]
__global (
	castdeath bool
)

[weak]
__global (
	castframes int
)

[weak]
__global (
	castonmelee int
)

[weak]
__global (
	castattacking bool
)

[c: 'F_StartCast']
fn f_startcast() {
	wipegamestate = -1
	castnum = 0
	caststate = &states[mobjinfo[castorder[castnum].type_].seestate]
	casttics = caststate.tics
	castdeath = false
	finalestage = Finalestage_t.f_stage_cast
	castframes = 0
	castonmelee = 0
	castattacking = false
	s_changemusic(Musicenum_t.mus_evil, true)
}

[c: 'F_CastTicker']
fn f_castticker() {
	st := 0
	sfx := 0
	if casttics-- > 0 {
		return
	}
	if caststate.tics == -1 || caststate.nextstate == Statenum_t.s_null {
		castnum++
		castdeath = false
		if castorder[castnum].name == (voidptr(0)) {
			castnum = 0
		}
		if mobjinfo[castorder[castnum].type_].seesound {
			s_startsound((voidptr(0)), mobjinfo[castorder[castnum].type_].seesound)
		}
		caststate = &states[mobjinfo[castorder[castnum].type_].seestate]
		castframes = 0
	} else {
		if caststate == &states[int(Statenum_t.s_play_atk1)] {
			goto stopattack
			// id: 0x121380370
		}
		st = caststate.nextstate
		caststate = &states[st]
		castframes++
		match st {
			.s_play_atk1 /* case comp body kind=BinaryOperator is_enum=true */ {
				sfx = Sfxenum_t.sfx_dshtgn
			}
			.s_poss_atk2 /* case comp body kind=BinaryOperator is_enum=true */ {
				sfx = Sfxenum_t.sfx_pistol
			}
			.s_spos_atk2 /* case comp body kind=BinaryOperator is_enum=true */ {
				sfx = Sfxenum_t.sfx_shotgn
			}
			.s_vile_atk2 /* case comp body kind=BinaryOperator is_enum=true */ {
				sfx = Sfxenum_t.sfx_vilatk
			}
			.s_skel_fist2 /* case comp body kind=BinaryOperator is_enum=true */ {
				sfx = Sfxenum_t.sfx_skeswg
			}
			.s_skel_fist4 /* case comp body kind=BinaryOperator is_enum=true */ {
				sfx = Sfxenum_t.sfx_skepch
			}
			.s_skel_miss2 /* case comp body kind=BinaryOperator is_enum=true */ {
				sfx = Sfxenum_t.sfx_skeatk
			}
			.s_fatt_atk8, .s_fatt_atk5, .s_fatt_atk2 {
				sfx = .sfx_firsht
			}
			.s_cpos_atk2, .s_cpos_atk3, .s_cpos_atk4 {
				sfx = .sfx_shotgn
			}
			.s_troo_atk3 /* case comp body kind=BinaryOperator is_enum=true */ {
				sfx = Sfxenum_t.sfx_claw
			}
			.s_sarg_atk2 /* case comp body kind=BinaryOperator is_enum=true */ {
				sfx = Sfxenum_t.sfx_sgtatk
			}
			.s_boss_atk2, .s_bos2_atk2, .s_head_atk2 {
				sfx = .sfx_firsht
			}
			.s_skull_atk2 /* case comp body kind=BinaryOperator is_enum=true */ {
				sfx = Sfxenum_t.sfx_sklatk
			}
			.s_spid_atk2, .s_spid_atk3 {
				sfx = .sfx_shotgn
			}
			.s_bspi_atk2 /* case comp body kind=BinaryOperator is_enum=true */ {
				sfx = Sfxenum_t.sfx_plasma
			}
			.s_cyber_atk2, .s_cyber_atk4, .s_cyber_atk6 {
				sfx = .sfx_rlaunc
			}
			.s_pain_atk3 /* case comp body kind=BinaryOperator is_enum=true */ {
				sfx = Sfxenum_t.sfx_sklatk
			}
			else {
				sfx = 0
			}
		}
		if sfx {
			s_startsound((voidptr(0)), sfx)
		}
	}
	if castframes == 12 {
		castattacking = true
		if castonmelee {
			caststate = &states[mobjinfo[castorder[castnum].type_].meleestate]
		} else { // 3
			caststate = &states[mobjinfo[castorder[castnum].type_].missilestate]
		}
		castonmelee ^= 1
		if caststate == &states[int(Statenum_t.s_null)] {
			if castonmelee {
				caststate = &states[mobjinfo[castorder[castnum].type_].meleestate]
			} else { // 3
				caststate = &states[mobjinfo[castorder[castnum].type_].missilestate]
			}
		}
	}
	if castattacking {
		if castframes == 24 || caststate == &states[mobjinfo[castorder[castnum].type_].seestate] {
			// RRRREG stopattack id=0x121380370
			stopattack:
			castattacking = false
			castframes = 0
			caststate = &states[mobjinfo[castorder[castnum].type_].seestate]
		}
	}
	casttics = caststate.tics
	if casttics == -1 {
		casttics = 15
	}
}

[c: 'F_CastResponder']
fn f_castresponder(ev &Event_t) bool {
	if ev.type_ != Evtype_t.ev_keydown {
		return false
	}
	if castdeath {
		return true
	}
	castdeath = true
	caststate = &states[mobjinfo[castorder[castnum].type_].deathstate]
	casttics = caststate.tics
	castframes = 0
	castattacking = false
	if mobjinfo[castorder[castnum].type_].deathsound {
		s_startsound((voidptr(0)), mobjinfo[castorder[castnum].type_].deathsound)
	}
	return true
}

[c: 'F_CastPrint']
fn f_castprint(text &i8) {
	ch := &i8(0)
	c := 0
	cx := 0
	w := 0
	width := 0
	ch = text
	width = 0
	for ch {
		c = *ch++
		if !c {
			break
		}
		c = C.toupper(c) - `!`
		if c < 0 || c > (`_` - `!` + 1) {
			width += 4
			continue
		}
		w = (i16((hu_font[c].width)))
		width += w
	}
	cx = 320 / 2 - width / 2
	ch = text
	for ch {
		c = *ch++
		if !c {
			break
		}
		c = C.toupper(c) - `!`
		if c < 0 || c > (`_` - `!` + 1) {
			cx += 4
			continue
		}
		w = (i16((hu_font[c].width)))
		v_drawpatch(cx, 180, hu_font[c])
		cx += w
	}
}

[c: 'F_CastDrawer']
fn f_castdrawer() {
	sprdef := &Spritedef_t(0)
	sprframe := &Spriteframe_t(0)
	lump := 0
	flip := false
	patch := &Patch_t(0)
	v_drawpatch(0, 0, w_cachelumpname(deh_string(c'BOSSBACK'), 8))
	f_castprint(deh_string(castorder[castnum].name))
	sprdef = &sprites[caststate.sprite]
	sprframe = &sprdef.spriteframes[caststate.frame & 32767]
	lump = sprframe.lump[0]
	flip = bool(sprframe.flip[0])
	patch = w_cachelumpnum(lump + firstspritelump, 8)
	if flip {
		v_drawpatchflipped(320 / 2, 170, patch)
	} else { // 3
		v_drawpatch(320 / 2, 170, patch)
	}
}

[c: 'F_DrawPatchCol']
fn f_drawpatchcol(x int, patch &Patch_t, col int) {
	column := &Column_t(0)
	source := &u8(0)
	dest := &Pixel_t(0)
	desttop := &Pixel_t(0)
	count := 0
	column = &Column_t((&u8(patch) + (int((patch.columnofs[col])))))
	desttop = I_VideoBuffer + x
	for column.topdelta != 255 {
		source = &u8(column) + 3
		dest = desttop + column.topdelta * 320
		count = column.length
		for count-- {
			*dest = *source++
			dest += 320
		}
		column = &Column_t((&u8(column) + column.length + 4))
	}
}

[c: 'F_BunnyScroll']
fn f_bunnyscroll() {
	scrolled := 0
	x := 0
	p1 := &Patch_t(0)
	p2 := &Patch_t(0)
	name := [10]i8{}
	stage := 0
	laststage := 0
	p1 = w_cachelumpname(deh_string(c'PFUB2'), 5)
	p2 = w_cachelumpname(deh_string(c'PFUB1'), 5)
	v_markrect(0, 0, 320, 200)
	scrolled = (320 - (int(finalecount) - 230) / 2)
	if scrolled > 320 {
		scrolled = 320
	}
	if scrolled < 0 {
		scrolled = 0
	}
	for x = 0; x < 320; x++ {
		if x + scrolled < 320 {
			f_drawpatchcol(x, p1, x + scrolled)
		} else { // 3
			f_drawpatchcol(x, p2, x + scrolled - 320)
		}
	}
	if finalecount < 1130 {
		return
	}
	if finalecount < 1180 {
		v_drawpatch((320 - 13 * 8) / 2, (200 - 8 * 8) / 2, w_cachelumpname(deh_string(c'END0'),
			8))
		laststage = 0
		return
	}
	stage = (finalecount - 1180) / 5
	if stage > 6 {
		stage = 6
	}
	if stage > laststage {
		s_startsound((voidptr(0)), Sfxenum_t.sfx_pistol)
		laststage = stage
	}
	deh_snprintf(name, 10, c'END%i', stage)
	v_drawpatch((320 - 13 * 8) / 2, (200 - 8 * 8) / 2, w_cachelumpname(name, 8))
}

[c: 'F_ArtScreenDrawer']
fn f_artscreendrawer() {
	lumpname := &i8(0)
	if gameepisode == 3 {
		f_bunnyscroll()
	} else {
		match gameepisode {
			1 /* case comp body kind=IfStmt is_enum=false */ {
				if gameversion >= GameVersion_t.exe_ultimate {
					lumpname = c'CREDIT'
				} else {
					lumpname = c'HELP2'
				}
			}
			2 /* case comp body kind=BinaryOperator is_enum=false */ {
				lumpname = c'VICTORY2'
			}
			4 /* case comp body kind=BinaryOperator is_enum=false */ {
				lumpname = c'ENDPIC'
			}
			else {
				return
			}
		}
		lumpname = deh_string(lumpname)
		v_drawpatch(0, 0, w_cachelumpname(lumpname, 8))
	}
}

[c: 'F_Drawer']
fn f_drawer() {
	match finalestage {
		.f_stage_cast /* case comp body kind=CallExpr is_enum=true */ {
			f_castdrawer()
		}
		.f_stage_text /* case comp body kind=CallExpr is_enum=true */ {
			f_textwrite()
		}
		.f_stage_artscreen /* case comp body kind=CallExpr is_enum=true */ {
			f_artscreendrawer()
		}
		else {}
	}
}
