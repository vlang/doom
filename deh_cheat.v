[translated]
module main

[typedef]
struct C.FILE {}

// vstart

[c: 'DEH_Error']
[c2v_variadic]
fn deh_error(context &Deh_context_t, msg ...&i8)

[c: 'DEH_Warning']
[c2v_variadic]
fn deh_warning(context &Deh_context_t, msg ...&i8)

[c: 'DEH_ParseAssignment']
fn deh_parseassignment(line &i8, variable_name &&u8, value &&u8) bool

struct Deh_cheat_t {
	name &i8
	seq  &Cheatseq_t
}

[export: 'allcheats']
const (
	allcheats = [Deh_cheat_t{c'Change music', &cheat_mus},
		Deh_cheat_t{c'Chainsaw', &cheat_choppers}, Deh_cheat_t{c'God mode', &cheat_god},
		Deh_cheat_t{c'Ammo & Keys', &cheat_ammo}, Deh_cheat_t{c'Ammo', &cheat_ammonokey},
		Deh_cheat_t{c'No Clipping 1', &cheat_noclip},
		Deh_cheat_t{c'No Clipping 2', &cheat_commercial_noclip},
		Deh_cheat_t{c'Invincibility', &cheat_powerup[0]},
		Deh_cheat_t{c'Berserk', &cheat_powerup[1]},
		Deh_cheat_t{c'Invisibility', &cheat_powerup[2]},
		Deh_cheat_t{c'Radiation Suit', &cheat_powerup[3]},
		Deh_cheat_t{c'Auto-map', &cheat_powerup[4]},
		Deh_cheat_t{c'Lite-Amp Goggles', &cheat_powerup[5]},
		Deh_cheat_t{c'BEHOLD menu', &cheat_powerup[6]}, Deh_cheat_t{c'Level Warp', &cheat_clev},
		Deh_cheat_t{c'Player Position', &cheat_mypos}, Deh_cheat_t{c'Map cheat', &cheat_amap}]!
)

[c: 'FindCheatByName']
fn findcheatbyname(name &i8) &Deh_cheat_t {
	i := usize(0)
	for i = 0; i < (sizeof(allcheats) / sizeof(*allcheats)); i++ {
		if !C.strcasecmp(allcheats[i].name, name) {
			return &allcheats[i]
		}
	}
	return voidptr(0)
}

[c: 'DEH_CheatStart']
fn deh_cheatstart(context &Deh_context_t, line &i8) voidptr {
	return voidptr(0)
}

[c: 'DEH_CheatParseLine']
fn deh_cheatparseline(context &Deh_context_t, line &i8, tag voidptr) {
	cheat := &Deh_cheat_t(0)
	variable_name := &i8(0)
	value := &i8(0)
	unsvalue := &u8(0)
	i := u32(0)
	if !deh_parseassignment(line, &variable_name, &value) {
		deh_warning(context, c'Failed to parse assignment')
		return
	}
	unsvalue = &u8(value)
	cheat = findcheatbyname(variable_name)
	if cheat == (voidptr(0)) {
		deh_warning(context, c"Unknown cheat '%s'", variable_name)
		return
	}
	i = 0
	for unsvalue[i] != 0 && unsvalue[i] != 255 {
		if !deh_allow_long_cheats && i >= cheat.seq.sequence_len {
			deh_warning(context, c'Cheat sequence longer than supported by Vanilla dehacked')
			break
		}
		if deh_apply_cheats {
			cheat.seq.sequence[i] = unsvalue[i]
		}
		i++
		if i >= 25 - cheat.seq.parameter_chars {
			deh_error(context, c'Cheat sequence too long!')
			return
		}
	}
	if deh_apply_cheats {
		cheat.seq.sequence[i] = `\x00`
	}
}

//!
[weak]
__global (
	deh_section_cheat = Deh_section_t{c'Cheat', (voidptr(0)), deh_cheatstart, deh_cheatparseline, (voidptr(0)), (voidptr(0))}
)
