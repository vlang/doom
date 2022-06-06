[translated]
module main


[typedef]
struct C.FILE {}


// vstart

[weak]__global ( __stdoutp &C.FILE 

)

[weak]__global ( __mb_cur_max int 

)

enum Deh_input_type_t {
	deh_input_file
	deh_input_lump
}

struct Deh_context_t { 
	type_ Deh_input_type_t
	filename &i8
	input_buffer &u8
	input_buffer_len usize
	input_buffer_pos u32
	lumpnum int
	stream &C.FILE
	linenum int
	last_was_newline bool
	readbuffer &i8
	readbuffer_size int
	had_error bool
}
type Deh_section_t = Deh_section_s
type Deh_section_init_t = fn ()
type Deh_section_start_t = fn (&Deh_context_t, &i8) voidptr
type Deh_section_end_t = fn (&Deh_context_t, voidptr)
type Deh_line_parser_t = fn (&Deh_context_t, &i8, voidptr)
type Deh_sha1_hash_t = fn (&Sha1_context_t)
struct Deh_section_s { 
	name &i8
	init Deh_section_init_t
	start Deh_section_start_t
	line_parser Deh_line_parser_t
	end Deh_section_end_t
	sha1_hash Deh_sha1_hash_t
}
[c2v_variadic]
[c:'DEH_Warning']
fn deh_warning(context &Deh_context_t, msg &i8) 

[c:'DEH_AddStringReplacement']
fn deh_addstringreplacement(from_text &i8, to_text &i8) 

[c:'DEH_ParseAssignment']
fn deh_parseassignment(line &i8, variable_name &&u8, value &&u8) bool

[weak]__global ( deh_allow_extended_strings bool 

)

[weak]__global ( deh_allow_long_strings bool 

)

[weak]__global ( deh_allow_long_cheats bool 

)

[weak]__global ( deh_apply_cheats bool 

)

[c_extern]__global ( doom1_endmsg []&i8 

)

[c_extern]__global ( doom2_endmsg []&i8 

)

struct Bex_string_t { 
	macro &i8
	string_ &i8
}
[export:'bex_stringtable']
const (
bex_stringtable   = [Bex_string_t {
c'D_DEVSTR', c'Development mode ON.\n'}
, Bex_string_t {
c'D_CDROM', c'CD-ROM Version: default.cfg from c:\\doomdata\n'}
, Bex_string_t {
c'QUITMSG', c'are you sure you want to\nquit this great game?'}
, Bex_string_t {
c'LOADNET', c"you can't do load while in a net game!\n\npress a key."}
, Bex_string_t {
c'QLOADNET', c"you can't quickload during a netgame!\n\npress a key."}
, Bex_string_t {
c'QSAVESPOT', c"you haven't picked a quicksave slot yet!\n\npress a key."}
, Bex_string_t {
c'SAVEDEAD', c"you can't save if you aren't playing!\n\npress a key."}
, Bex_string_t {
c'QSPROMPT', c"quicksave over your game named\n\n'%s'?\n\npress y or n."}
, Bex_string_t {
c'QLPROMPT', c"do you want to quickload the game named\n\n'%s'?\n\npress y or n."}
, Bex_string_t {
c'NEWGAME', c"you can't start a new game\nwhile in a network game.\n\npress a key."}
, Bex_string_t {
c'NIGHTMARE', c"are you sure? this skill level\nisn't even remotely fair.\n\npress y or n."}
, Bex_string_t {
c'SWSTRING', c'this is the shareware version of doom.\n\nyou need to order the entire trilogy.\n\npress a key.'}
, Bex_string_t {
c'MSGOFF', c'Messages OFF'}
, Bex_string_t {
c'MSGON', c'Messages ON'}
, Bex_string_t {
c'NETEND', c"you can't end a netgame!\n\npress a key."}
, Bex_string_t {
c'ENDGAME', c'are you sure you want to end the game?\n\npress y or n.'}
, Bex_string_t {
c'DETAILHI', c'High detail'}
, Bex_string_t {
c'DETAILLO', c'Low detail'}
, Bex_string_t {
c'GAMMALVL0', c'Gamma correction OFF'}
, Bex_string_t {
c'GAMMALVL1', c'Gamma correction level 1'}
, Bex_string_t {
c'GAMMALVL2', c'Gamma correction level 2'}
, Bex_string_t {
c'GAMMALVL3', c'Gamma correction level 3'}
, Bex_string_t {
c'GAMMALVL4', c'Gamma correction level 4'}
, Bex_string_t {
c'EMPTYSTRING', c'empty slot'}
, Bex_string_t {
c'GGSAVED', c'game saved.'}
, Bex_string_t {
c'SAVEGAMENAME', c'doomsav'}
, Bex_string_t {
c'GOTARMOR', c'Picked up the armor.'}
, Bex_string_t {
c'GOTMEGA', c'Picked up the MegaArmor!'}
, Bex_string_t {
c'GOTHTHBONUS', c'Picked up a health bonus.'}
, Bex_string_t {
c'GOTARMBONUS', c'Picked up an armor bonus.'}
, Bex_string_t {
c'GOTSTIM', c'Picked up a stimpack.'}
, Bex_string_t {
c'GOTMEDINEED', c'Picked up a medikit that you REALLY need!'}
, Bex_string_t {
c'GOTMEDIKIT', c'Picked up a medikit.'}
, Bex_string_t {
c'GOTSUPER', c'Supercharge!'}
, Bex_string_t {
c'GOTBLUECARD', c'Picked up a blue keycard.'}
, Bex_string_t {
c'GOTYELWCARD', c'Picked up a yellow keycard.'}
, Bex_string_t {
c'GOTREDCARD', c'Picked up a red keycard.'}
, Bex_string_t {
c'GOTBLUESKUL', c'Picked up a blue skull key.'}
, Bex_string_t {
c'GOTYELWSKUL', c'Picked up a yellow skull key.'}
, Bex_string_t {
c'GOTREDSKULL', c'Picked up a red skull key.'}
, Bex_string_t {
c'GOTINVUL', c'Invulnerability!'}
, Bex_string_t {
c'GOTBERSERK', c'Berserk!'}
, Bex_string_t {
c'GOTINVIS', c'Partial Invisibility'}
, Bex_string_t {
c'GOTSUIT', c'Radiation Shielding Suit'}
, Bex_string_t {
c'GOTMAP', c'Computer Area Map'}
, Bex_string_t {
c'GOTVISOR', c'Light Amplification Visor'}
, Bex_string_t {
c'GOTMSPHERE', c'MegaSphere!'}
, Bex_string_t {
c'GOTCLIP', c'Picked up a clip.'}
, Bex_string_t {
c'GOTCLIPBOX', c'Picked up a box of bullets.'}
, Bex_string_t {
c'GOTROCKET', c'Picked up a rocket.'}
, Bex_string_t {
c'GOTROCKBOX', c'Picked up a box of rockets.'}
, Bex_string_t {
c'GOTCELL', c'Picked up an energy cell.'}
, Bex_string_t {
c'GOTCELLBOX', c'Picked up an energy cell pack.'}
, Bex_string_t {
c'GOTSHELLS', c'Picked up 4 shotgun shells.'}
, Bex_string_t {
c'GOTSHELLBOX', c'Picked up a box of shotgun shells.'}
, Bex_string_t {
c'GOTBACKPACK', c'Picked up a backpack full of ammo!'}
, Bex_string_t {
c'GOTBFG9000', c'You got the BFG9000!  Oh, yes.'}
, Bex_string_t {
c'GOTCHAINGUN', c'You got the chaingun!'}
, Bex_string_t {
c'GOTCHAINSAW', c'A chainsaw!  Find some meat!'}
, Bex_string_t {
c'GOTLAUNCHER', c'You got the rocket launcher!'}
, Bex_string_t {
c'GOTPLASMA', c'You got the plasma gun!'}
, Bex_string_t {
c'GOTSHOTGUN', c'You got the shotgun!'}
, Bex_string_t {
c'GOTSHOTGUN2', c'You got the super shotgun!'}
, Bex_string_t {
c'PD_BLUEO', c'You need a blue key to activate this object'}
, Bex_string_t {
c'PD_REDO', c'You need a red key to activate this object'}
, Bex_string_t {
c'PD_YELLOWO', c'You need a yellow key to activate this object'}
, Bex_string_t {
c'PD_BLUEK', c'You need a blue key to open this door'}
, Bex_string_t {
c'PD_REDK', c'You need a red key to open this door'}
, Bex_string_t {
c'PD_YELLOWK', c'You need a yellow key to open this door'}
, Bex_string_t {
c'HUSTR_MSGU', c'[Message unsent]'}
, Bex_string_t {
c'HUSTR_MESSAGESENT', c'[Message Sent]'}
, Bex_string_t {
c'HUSTR_CHATMACRO0', c'No'}
, Bex_string_t {
c'HUSTR_CHATMACRO1', c"I'm ready to kick butt!"}
, Bex_string_t {
c'HUSTR_CHATMACRO2', c"I'm OK."}
, Bex_string_t {
c'HUSTR_CHATMACRO3', c"I'm not looking too good!"}
, Bex_string_t {
c'HUSTR_CHATMACRO4', c'Help!'}
, Bex_string_t {
c'HUSTR_CHATMACRO5', c'You suck!'}
, Bex_string_t {
c'HUSTR_CHATMACRO6', c'Next time, scumbag...'}
, Bex_string_t {
c'HUSTR_CHATMACRO7', c'Come here!'}
, Bex_string_t {
c'HUSTR_CHATMACRO8', c"I'll take care of it."}
, Bex_string_t {
c'HUSTR_CHATMACRO9', c'Yes'}
, Bex_string_t {
c'HUSTR_TALKTOSELF1', c'You mumble to yourself'}
, Bex_string_t {
c'HUSTR_TALKTOSELF2', c"Who's there?"}
, Bex_string_t {
c'HUSTR_TALKTOSELF3', c'You scare yourself'}
, Bex_string_t {
c'HUSTR_TALKTOSELF4', c'You start to rave'}
, Bex_string_t {
c'HUSTR_TALKTOSELF5', c"You've lost it..."}
, Bex_string_t {
c'HUSTR_PLRGREEN', c'Green: '}
, Bex_string_t {
c'HUSTR_PLRINDIGO', c'Indigo: '}
, Bex_string_t {
c'HUSTR_PLRBROWN', c'Brown: '}
, Bex_string_t {
c'HUSTR_PLRRED', c'Red: '}
, Bex_string_t {
c'HUSTR_E1M1', c'E1M1: Hangar'}
, Bex_string_t {
c'HUSTR_E1M2', c'E1M2: Nuclear Plant'}
, Bex_string_t {
c'HUSTR_E1M3', c'E1M3: Toxin Refinery'}
, Bex_string_t {
c'HUSTR_E1M4', c'E1M4: Command Control'}
, Bex_string_t {
c'HUSTR_E1M5', c'E1M5: Phobos Lab'}
, Bex_string_t {
c'HUSTR_E1M6', c'E1M6: Central Processing'}
, Bex_string_t {
c'HUSTR_E1M7', c'E1M7: Computer Station'}
, Bex_string_t {
c'HUSTR_E1M8', c'E1M8: Phobos Anomaly'}
, Bex_string_t {
c'HUSTR_E1M9', c'E1M9: Military Base'}
, Bex_string_t {
c'HUSTR_E2M1', c'E2M1: Deimos Anomaly'}
, Bex_string_t {
c'HUSTR_E2M2', c'E2M2: Containment Area'}
, Bex_string_t {
c'HUSTR_E2M3', c'E2M3: Refinery'}
, Bex_string_t {
c'HUSTR_E2M4', c'E2M4: Deimos Lab'}
, Bex_string_t {
c'HUSTR_E2M5', c'E2M5: Command Center'}
, Bex_string_t {
c'HUSTR_E2M6', c'E2M6: Halls of the Damned'}
, Bex_string_t {
c'HUSTR_E2M7', c'E2M7: Spawning Vats'}
, Bex_string_t {
c'HUSTR_E2M8', c'E2M8: Tower of Babel'}
, Bex_string_t {
c'HUSTR_E2M9', c'E2M9: Fortress of Mystery'}
, Bex_string_t {
c'HUSTR_E3M1', c'E3M1: Hell Keep'}
, Bex_string_t {
c'HUSTR_E3M2', c'E3M2: Slough of Despair'}
, Bex_string_t {
c'HUSTR_E3M3', c'E3M3: Pandemonium'}
, Bex_string_t {
c'HUSTR_E3M4', c'E3M4: House of Pain'}
, Bex_string_t {
c'HUSTR_E3M5', c'E3M5: Unholy Cathedral'}
, Bex_string_t {
c'HUSTR_E3M6', c'E3M6: Mt. Erebus'}
, Bex_string_t {
c'HUSTR_E3M7', c'E3M7: Limbo'}
, Bex_string_t {
c'HUSTR_E3M8', c'E3M8: Dis'}
, Bex_string_t {
c'HUSTR_E3M9', c'E3M9: Warrens'}
, Bex_string_t {
c'HUSTR_E4M1', c'E4M1: Hell Beneath'}
, Bex_string_t {
c'HUSTR_E4M2', c'E4M2: Perfect Hatred'}
, Bex_string_t {
c'HUSTR_E4M3', c'E4M3: Sever The Wicked'}
, Bex_string_t {
c'HUSTR_E4M4', c'E4M4: Unruly Evil'}
, Bex_string_t {
c'HUSTR_E4M5', c'E4M5: They Will Repent'}
, Bex_string_t {
c'HUSTR_E4M6', c'E4M6: Against Thee Wickedly'}
, Bex_string_t {
c'HUSTR_E4M7', c'E4M7: And Hell Followed'}
, Bex_string_t {
c'HUSTR_E4M8', c'E4M8: Unto The Cruel'}
, Bex_string_t {
c'HUSTR_E4M9', c'E4M9: Fear'}
, Bex_string_t {
c'HUSTR_1', c'level 1: entryway'}
, Bex_string_t {
c'HUSTR_2', c'level 2: underhalls'}
, Bex_string_t {
c'HUSTR_3', c'level 3: the gantlet'}
, Bex_string_t {
c'HUSTR_4', c'level 4: the focus'}
, Bex_string_t {
c'HUSTR_5', c'level 5: the waste tunnels'}
, Bex_string_t {
c'HUSTR_6', c'level 6: the crusher'}
, Bex_string_t {
c'HUSTR_7', c'level 7: dead simple'}
, Bex_string_t {
c'HUSTR_8', c'level 8: tricks and traps'}
, Bex_string_t {
c'HUSTR_9', c'level 9: the pit'}
, Bex_string_t {
c'HUSTR_10', c'level 10: refueling base'}
, Bex_string_t {
c'HUSTR_11', c"level 11: 'o' of destruction!"}
, Bex_string_t {
c'HUSTR_12', c'level 12: the factory'}
, Bex_string_t {
c'HUSTR_13', c'level 13: downtown'}
, Bex_string_t {
c'HUSTR_14', c'level 14: the inmost dens'}
, Bex_string_t {
c'HUSTR_15', c'level 15: industrial zone'}
, Bex_string_t {
c'HUSTR_16', c'level 16: suburbs'}
, Bex_string_t {
c'HUSTR_17', c'level 17: tenements'}
, Bex_string_t {
c'HUSTR_18', c'level 18: the courtyard'}
, Bex_string_t {
c'HUSTR_19', c'level 19: the citadel'}
, Bex_string_t {
c'HUSTR_20', c'level 20: gotcha!'}
, Bex_string_t {
c'HUSTR_21', c'level 21: nirvana'}
, Bex_string_t {
c'HUSTR_22', c'level 22: the catacombs'}
, Bex_string_t {
c'HUSTR_23', c"level 23: barrels o' fun"}
, Bex_string_t {
c'HUSTR_24', c'level 24: the chasm'}
, Bex_string_t {
c'HUSTR_25', c'level 25: bloodfalls'}
, Bex_string_t {
c'HUSTR_26', c'level 26: the abandoned mines'}
, Bex_string_t {
c'HUSTR_27', c'level 27: monster condo'}
, Bex_string_t {
c'HUSTR_28', c'level 28: the spirit world'}
, Bex_string_t {
c'HUSTR_29', c'level 29: the living end'}
, Bex_string_t {
c'HUSTR_30', c'level 30: icon of sin'}
, Bex_string_t {
c'HUSTR_31', c'level 31: wolfenstein'}
, Bex_string_t {
c'HUSTR_32', c'level 32: grosse'}
, Bex_string_t {
c'PHUSTR_1', c'level 1: congo'}
, Bex_string_t {
c'PHUSTR_2', c'level 2: well of souls'}
, Bex_string_t {
c'PHUSTR_3', c'level 3: aztec'}
, Bex_string_t {
c'PHUSTR_4', c'level 4: caged'}
, Bex_string_t {
c'PHUSTR_5', c'level 5: ghost town'}
, Bex_string_t {
c'PHUSTR_6', c"level 6: baron's lair"}
, Bex_string_t {
c'PHUSTR_7', c'level 7: caughtyard'}
, Bex_string_t {
c'PHUSTR_8', c'level 8: realm'}
, Bex_string_t {
c'PHUSTR_9', c'level 9: abattoire'}
, Bex_string_t {
c'PHUSTR_10', c'level 10: onslaught'}
, Bex_string_t {
c'PHUSTR_11', c'level 11: hunted'}
, Bex_string_t {
c'PHUSTR_12', c'level 12: speed'}
, Bex_string_t {
c'PHUSTR_13', c'level 13: the crypt'}
, Bex_string_t {
c'PHUSTR_14', c'level 14: genesis'}
, Bex_string_t {
c'PHUSTR_15', c'level 15: the twilight'}
, Bex_string_t {
c'PHUSTR_16', c'level 16: the omen'}
, Bex_string_t {
c'PHUSTR_17', c'level 17: compound'}
, Bex_string_t {
c'PHUSTR_18', c'level 18: neurosphere'}
, Bex_string_t {
c'PHUSTR_19', c'level 19: nme'}
, Bex_string_t {
c'PHUSTR_20', c'level 20: the death domain'}
, Bex_string_t {
c'PHUSTR_21', c'level 21: slayer'}
, Bex_string_t {
c'PHUSTR_22', c'level 22: impossible mission'}
, Bex_string_t {
c'PHUSTR_23', c'level 23: tombstone'}
, Bex_string_t {
c'PHUSTR_24', c'level 24: the final frontier'}
, Bex_string_t {
c'PHUSTR_25', c'level 25: the temple of darkness'}
, Bex_string_t {
c'PHUSTR_26', c'level 26: bunker'}
, Bex_string_t {
c'PHUSTR_27', c'level 27: anti-christ'}
, Bex_string_t {
c'PHUSTR_28', c'level 28: the sewers'}
, Bex_string_t {
c'PHUSTR_29', c'level 29: odyssey of noises'}
, Bex_string_t {
c'PHUSTR_30', c'level 30: the gateway of hell'}
, Bex_string_t {
c'PHUSTR_31', c'level 31: cyberden'}
, Bex_string_t {
c'PHUSTR_32', c'level 32: go 2 it'}
, Bex_string_t {
c'THUSTR_1', c'level 1: system control'}
, Bex_string_t {
c'THUSTR_2', c'level 2: human bbq'}
, Bex_string_t {
c'THUSTR_3', c'level 3: power control'}
, Bex_string_t {
c'THUSTR_4', c'level 4: wormhole'}
, Bex_string_t {
c'THUSTR_5', c'level 5: hanger'}
, Bex_string_t {
c'THUSTR_6', c'level 6: open season'}
, Bex_string_t {
c'THUSTR_7', c'level 7: prison'}
, Bex_string_t {
c'THUSTR_8', c'level 8: metal'}
, Bex_string_t {
c'THUSTR_9', c'level 9: stronghold'}
, Bex_string_t {
c'THUSTR_10', c'level 10: redemption'}
, Bex_string_t {
c'THUSTR_11', c'level 11: storage facility'}
, Bex_string_t {
c'THUSTR_12', c'level 12: crater'}
, Bex_string_t {
c'THUSTR_13', c'level 13: nukage processing'}
, Bex_string_t {
c'THUSTR_14', c'level 14: steel works'}
, Bex_string_t {
c'THUSTR_15', c'level 15: dead zone'}
, Bex_string_t {
c'THUSTR_16', c'level 16: deepest reaches'}
, Bex_string_t {
c'THUSTR_17', c'level 17: processing area'}
, Bex_string_t {
c'THUSTR_18', c'level 18: mill'}
, Bex_string_t {
c'THUSTR_19', c'level 19: shipping/respawning'}
, Bex_string_t {
c'THUSTR_20', c'level 20: central processing'}
, Bex_string_t {
c'THUSTR_21', c'level 21: administration center'}
, Bex_string_t {
c'THUSTR_22', c'level 22: habitat'}
, Bex_string_t {
c'THUSTR_23', c'level 23: lunar mining project'}
, Bex_string_t {
c'THUSTR_24', c'level 24: quarry'}
, Bex_string_t {
c'THUSTR_25', c"level 25: baron's den"}
, Bex_string_t {
c'THUSTR_26', c'level 26: ballistyx'}
, Bex_string_t {
c'THUSTR_27', c'level 27: mount pain'}
, Bex_string_t {
c'THUSTR_28', c'level 28: heck'}
, Bex_string_t {
c'THUSTR_29', c'level 29: river styx'}
, Bex_string_t {
c'THUSTR_30', c'level 30: last call'}
, Bex_string_t {
c'THUSTR_31', c'level 31: pharaoh'}
, Bex_string_t {
c'THUSTR_32', c'level 32: caribbean'}
, Bex_string_t {
c'AMSTR_FOLLOWON', c'Follow Mode ON'}
, Bex_string_t {
c'AMSTR_FOLLOWOFF', c'Follow Mode OFF'}
, Bex_string_t {
c'AMSTR_GRIDON', c'Grid ON'}
, Bex_string_t {
c'AMSTR_GRIDOFF', c'Grid OFF'}
, Bex_string_t {
c'AMSTR_MARKEDSPOT', c'Marked Spot'}
, Bex_string_t {
c'AMSTR_MARKSCLEARED', c'All Marks Cleared'}
, Bex_string_t {
c'STSTR_MUS', c'Music Change'}
, Bex_string_t {
c'STSTR_NOMUS', c'IMPOSSIBLE SELECTION'}
, Bex_string_t {
c'STSTR_DQDON', c'Degreelessness Mode On'}
, Bex_string_t {
c'STSTR_DQDOFF', c'Degreelessness Mode Off'}
, Bex_string_t {
c'STSTR_KFAADDED', c'Very Happy Ammo Added'}
, Bex_string_t {
c'STSTR_FAADDED', c'Ammo (no keys) Added'}
, Bex_string_t {
c'STSTR_NCON', c'No Clipping Mode ON'}
, Bex_string_t {
c'STSTR_NCOFF', c'No Clipping Mode OFF'}
, Bex_string_t {
c'STSTR_BEHOLD', c'inVuln, Str, Inviso, Rad, Allmap, or Lite-amp'}
, Bex_string_t {
c'STSTR_BEHOLDX', c'Power-up Toggled'}
, Bex_string_t {
c'STSTR_CHOPPERS', c"... doesn't suck - GM"}
, Bex_string_t {
c'STSTR_CLEV', c'Changing Level...'}
, Bex_string_t {
c'E1TEXT', c"Once you beat the big badasses and\nclean out the moon base you're supposed\nto win, aren't you? Aren't you? Where's\nyour fat reward and ticket home? What\nthe hell is this? It's not supposed to\nend this way!\n\nIt stinks like rotten meat, but looks\nlike the lost Deimos base.  Looks like\nyou're stuck on The Shores of Hell.\nThe only way out is through.\n\nTo continue the DOOM experience, play\nThe Shores of Hell and its amazing\nsequel, Inferno!\n"}
, Bex_string_t {
c'E2TEXT', c"You've done it! The hideous cyber-\ndemon lord that ruled the lost Deimos\nmoon base has been slain and you\nare triumphant! But ... where are\nyou? You clamber to the edge of the\nmoon and look down to see the awful\ntruth.\n\nDeimos floats above Hell itself!\nYou've never heard of anyone escaping\nfrom Hell, but you'll make the bastards\nsorry they ever heard of you! Quickly,\nyou rappel down to  the surface of\nHell.\n\nNow, it's on to the final chapter of\nDOOM! -- Inferno."}
, Bex_string_t {
c'E3TEXT', c"The loathsome spiderdemon that\nmasterminded the invasion of the moon\nbases and caused so much death has had\nits ass kicked for all time.\n\nA hidden doorway opens and you enter.\nYou've proven too tough for Hell to\ncontain, and now Hell at last plays\nfair -- for you emerge from the door\nto see the green fields of Earth!\nHome at last.\n\nYou wonder what's been happening on\nEarth while you were battling evil\nunleashed. It's good that no Hell-\nspawn could have come through that\ndoor with you ..."}
, Bex_string_t {
c'E4TEXT', c'the spider mastermind must have sent forth\nits legions of hellspawn before your\nfinal confrontation with that terrible\nbeast from hell.  but you stepped forward\nand brought forth eternal damnation and\nsuffering upon the horde as a true hero\nwould in the face of something so evil.\n\nbesides, someone was gonna pay for what\nhappened to daisy, your pet rabbit.\n\nbut now, you see spread before you more\npotential pain and gibbitude as a nation\nof demons run amok among our cities.\n\nnext stop, hell on earth!'}
, Bex_string_t {
c'C1TEXT', c"YOU HAVE ENTERED DEEPLY INTO THE INFESTED\nSTARPORT. BUT SOMETHING IS WRONG. THE\nMONSTERS HAVE BROUGHT THEIR OWN REALITY\nWITH THEM, AND THE STARPORT'S TECHNOLOGY\nIS BEING SUBVERTED BY THEIR PRESENCE.\n\nAHEAD, YOU SEE AN OUTPOST OF HELL, A\nFORTIFIED ZONE. IF YOU CAN GET PAST IT,\nYOU CAN PENETRATE INTO THE HAUNTED HEART\nOF THE STARBASE AND FIND THE CONTROLLING\nSWITCH WHICH HOLDS EARTH'S POPULATION\nHOSTAGE."}
, Bex_string_t {
c'C2TEXT', c'YOU HAVE WON! YOUR VICTORY HAS ENABLED\nHUMANKIND TO EVACUATE EARTH AND ESCAPE\nTHE NIGHTMARE.  NOW YOU ARE THE ONLY\nHUMAN LEFT ON THE FACE OF THE PLANET.\nCANNIBAL MUTATIONS, CARNIVOROUS ALIENS,\nAND EVIL SPIRITS ARE YOUR ONLY NEIGHBORS.\nYOU SIT BACK AND WAIT FOR DEATH, CONTENT\nTHAT YOU HAVE SAVED YOUR SPECIES.\n\nBUT THEN, EARTH CONTROL BEAMS DOWN A\nMESSAGE FROM SPACE: \"SENSORS HAVE LOCATED\nTHE SOURCE OF THE ALIEN INVASION. IF YOU\nGO THERE, YOU MAY BE ABLE TO BLOCK THEIR\nENTRY.  THE ALIEN BASE IS IN THE HEART OF\nYOUR OWN HOME CITY, NOT FAR FROM THE\nSTARPORT.\" SLOWLY AND PAINFULLY YOU GET\nUP AND RETURN TO THE FRAY.'}
, Bex_string_t {
c'C3TEXT', c"YOU ARE AT THE CORRUPT HEART OF THE CITY,\nSURROUNDED BY THE CORPSES OF YOUR ENEMIES.\nYOU SEE NO WAY TO DESTROY THE CREATURES'\nENTRYWAY ON THIS SIDE, SO YOU CLENCH YOUR\nTEETH AND PLUNGE THROUGH IT.\n\nTHERE MUST BE A WAY TO CLOSE IT ON THE\nOTHER SIDE. WHAT DO YOU CARE IF YOU'VE\nGOT TO GO THROUGH HELL TO GET TO IT?"}
, Bex_string_t {
c'C4TEXT', c"THE HORRENDOUS VISAGE OF THE BIGGEST\nDEMON YOU'VE EVER SEEN CRUMBLES BEFORE\nYOU, AFTER YOU PUMP YOUR ROCKETS INTO\nHIS EXPOSED BRAIN. THE MONSTER SHRIVELS\nUP AND DIES, ITS THRASHING LIMBS\nDEVASTATING UNTOLD MILES OF HELL'S\nSURFACE.\n\nYOU'VE DONE IT. THE INVASION IS OVER.\nEARTH IS SAVED. HELL IS A WRECK. YOU\nWONDER WHERE BAD FOLKS WILL GO WHEN THEY\nDIE, NOW. WIPING THE SWEAT FROM YOUR\nFOREHEAD YOU BEGIN THE LONG TREK BACK\nHOME. REBUILDING EARTH OUGHT TO BE A\nLOT MORE FUN THAN RUINING IT WAS.\n"}
, Bex_string_t {
c'C5TEXT', c"CONGRATULATIONS, YOU'VE FOUND THE SECRET\nLEVEL! LOOKS LIKE IT'S BEEN BUILT BY\nHUMANS, RATHER THAN DEMONS. YOU WONDER\nWHO THE INMATES OF THIS CORNER OF HELL\nWILL BE."}
, Bex_string_t {
c'C6TEXT', c"CONGRATULATIONS, YOU'VE FOUND THE\nSUPER SECRET LEVEL!  YOU'D BETTER\nBLAZE THROUGH THIS ONE!\n"}
, Bex_string_t {
c'P1TEXT', c"You gloat over the steaming carcass of the\nGuardian.  With its death, you've wrested\nthe Accelerator from the stinking claws\nof Hell.  You relax and glance around the\nroom.  Damn!  There was supposed to be at\nleast one working prototype, but you can't\nsee it. The demons must have taken it.\n\nYou must find the prototype, or all your\nstruggles will have been wasted. Keep\nmoving, keep fighting, keep killing.\nOh yes, keep living, too."}
, Bex_string_t {
c'P2TEXT', c"Even the deadly Arch-Vile labyrinth could\nnot stop you, and you've gotten to the\nprototype Accelerator which is soon\nefficiently and permanently deactivated.\n\nYou're good at that kind of thing."}
, Bex_string_t {
c'P3TEXT', c"You've bashed and battered your way into\nthe heart of the devil-hive.  Time for a\nSearch-and-Destroy mission, aimed at the\nGatekeeper, whose foul offspring is\ncascading to Earth.  Yeah, he's bad. But\nyou know who's worse!\n\nGrinning evilly, you check your gear, and\nget ready to give the bastard a little Hell\nof your own making!"}
, Bex_string_t {
c'P4TEXT', c"The Gatekeeper's evil face is splattered\nall over the place.  As its tattered corpse\ncollapses, an inverted Gate forms and\nsucks down the shards of the last\nprototype Accelerator, not to mention the\nfew remaining demons.  You're done. Hell\nhas gone back to pounding bad dead folks \ninstead of good live ones.  Remember to\ntell your grandkids to put a rocket\nlauncher in your coffin. If you go to Hell\nwhen you die, you'll need it for some\nfinal cleaning-up ..."}
, Bex_string_t {
c'P5TEXT', c"You've found the second-hardest level we\ngot. Hope you have a saved game a level or\ntwo previous.  If not, be prepared to die\naplenty. For master marines only."}
, Bex_string_t {
c'P6TEXT', c'Betcha wondered just what WAS the hardest\nlevel we had ready for ya?  Now you know.\nNo one gets out alive.'}
, Bex_string_t {
c'T1TEXT', c"You've fought your way out of the infested\nexperimental labs.   It seems that UAC has\nonce again gulped it down.  With their\nhigh turnover, it must be hard for poor\nold UAC to buy corporate health insurance\nnowadays..\n\nAhead lies the military complex, now\nswarming with diseased horrors hot to get\ntheir teeth into you. With luck, the\ncomplex still has some warlike ordnance\nlaying around."}
, Bex_string_t {
c'T2TEXT', c"You hear the grinding of heavy machinery\nahead.  You sure hope they're not stamping\nout new hellspawn, but you're ready to\nream out a whole herd if you have to.\nThey might be planning a blood feast, but\nyou feel about as mean as two thousand\nmaniacs packed into one mad killer.\n\nYou don't plan to go down easy."}
, Bex_string_t {
c'T3TEXT', c"The vista opening ahead looks real damn\nfamiliar. Smells familiar, too -- like\nfried excrement. You didn't like this\nplace before, and you sure as hell ain't\nplanning to like it now. The more you\nbrood on it, the madder you get.\nHefting your gun, an evil grin trickles\nonto your face. Time to take some names."}
, Bex_string_t {
c'T4TEXT', c"Suddenly, all is silent, from one horizon\nto the other. The agonizing echo of Hell\nfades away, the nightmare sky turns to\nblue, the heaps of monster corpses start \nto evaporate along with the evil stench \nthat filled the air. Jeeze, maybe you've\ndone it. Have you really won?\n\nSomething rumbles in the distance.\nA blue light begins to glow inside the\nruined skull of the demon-spitter."}
, Bex_string_t {
c'T5TEXT', c"What now? Looks totally different. Kind\nof like King Tut's condo. Well,\nwhatever's here can't be any worse\nthan usual. Can it?  Or maybe it's best\nto let sleeping gods lie.."}
, Bex_string_t {
c'T6TEXT', c"Time for a vacation. You've burst the\nbowels of hell and by golly you're ready\nfor a break. You mutter to yourself,\nMaybe someone else can kick Hell's ass\nnext time around. Ahead lies a quiet town,\nwith peaceful flowing water, quaint\nbuildings, and presumably no Hellspawn.\n\nAs you step off the transport, you hear\nthe stomp of a cyberdemon's iron shoe."}
, Bex_string_t {
c'CC_ZOMBIE', c'ZOMBIEMAN'}
, Bex_string_t {
c'CC_SHOTGUN', c'SHOTGUN GUY'}
, Bex_string_t {
c'CC_HEAVY', c'HEAVY WEAPON DUDE'}
, Bex_string_t {
c'CC_IMP', c'IMP'}
, Bex_string_t {
c'CC_DEMON', c'DEMON'}
, Bex_string_t {
c'CC_LOST', c'LOST SOUL'}
, Bex_string_t {
c'CC_CACO', c'CACODEMON'}
, Bex_string_t {
c'CC_HELL', c'HELL KNIGHT'}
, Bex_string_t {
c'CC_BARON', c'BARON OF HELL'}
, Bex_string_t {
c'CC_ARACH', c'ARACHNOTRON'}
, Bex_string_t {
c'CC_PAIN', c'PAIN ELEMENTAL'}
, Bex_string_t {
c'CC_REVEN', c'REVENANT'}
, Bex_string_t {
c'CC_MANCU', c'MANCUBUS'}
, Bex_string_t {
c'CC_ARCH', c'ARCH-VILE'}
, Bex_string_t {
c'CC_SPIDER', c'THE SPIDER MASTERMIND'}
, Bex_string_t {
c'CC_CYBER', c'THE CYBERDEMON'}
, Bex_string_t {
c'CC_HERO', c'OUR HERO'}
, Bex_string_t {
c'BGFLATE1', c'FLOOR4_8'}
, Bex_string_t {
c'BGFLATE2', c'SFLR6_1'}
, Bex_string_t {
c'BGFLATE3', c'MFLR8_4'}
, Bex_string_t {
c'BGFLATE4', c'MFLR8_3'}
, Bex_string_t {
c'BGFLAT06', c'SLIME16'}
, Bex_string_t {
c'BGFLAT11', c'RROCK14'}
, Bex_string_t {
c'BGFLAT20', c'RROCK07'}
, Bex_string_t {
c'BGFLAT30', c'RROCK17'}
, Bex_string_t {
c'BGFLAT15', c'RROCK13'}
, Bex_string_t {
c'BGFLAT31', c'RROCK19'}
, Bex_string_t {
c'BGCASTCALL', c'BOSSBACK'}
]!

)

[c:'DEH_BEXStrStart']
fn deh_bexstrstart(context &Deh_context_t, line &i8) voidptr {
	s := [10]i8{}
	if C.sscanf(line, c'%9s', s) == 0 || C.strncmp(c'[STRINGS]', s, sizeof(s)) {
		deh_warning(context, c'Parse error on section start')
	}
	return (voidptr(0))
}

[c:'DEH_BEXStrParseLine']
fn deh_bexstrparseline(context &Deh_context_t, line &i8, tag voidptr)  {
	variable_name := &i8(0)
	value := &i8(0)
	
	i := 0
	if !deh_parseassignment(line, &variable_name, &value) {
		deh_warning(context, c'Failed to parse assignment')
		return 
	}
	for i = 0 ; i < (sizeof(bex_stringtable) / sizeof(*bex_stringtable)) ; i ++ {
		if !C.strcmp(bex_stringtable [i] .macro, variable_name) {
			deh_addstringreplacement(bex_stringtable [i] .string_, value)
		}
	}
}

/*!*/[weak] __global ( deh_section_bexstr  = Deh_section_t {
c'[STRINGS]', (voidptr(0)), deh_bexstrstart, deh_bexstrparseline, (voidptr(0)), (voidptr(0))}

)

