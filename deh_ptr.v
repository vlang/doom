[translated]
module main

[typedef]
struct C.FILE {}

// vstart

[c: 'SHA1_Update']
fn sha1_update(context &Sha1_context_t, buf &u8, len usize)

[c: 'SHA1_UpdateInt32']
fn sha1_updateint32(context &Sha1_context_t, val u32)

[c: 'DEH_Warning']
[c2v_variadic]
fn deh_warning(context &Deh_context_t, msg ...&i8)

[c: 'DEH_ParseAssignment']
fn deh_parseassignment(line &i8, variable_name &&u8, value &&u8) bool

[weak]
__global (
	codeptrs [967]Actionf_t
)

[c: 'CodePointerIndex']
fn codepointerindex(ptr &Actionf_t) int {
	i := 0
	for i = 0; i < Statenum_t.numstates; i++ {
		if !C.memcmp(&codeptrs[i], ptr, sizeof(Actionf_t)) {
			return i
		}
	}
	return -1
}

[c: 'DEH_PointerInit']
fn deh_pointerinit() {
	i := 0
	for i = 0; i < Statenum_t.numstates; i++ {
		codeptrs[i] = states[i].action
	}
}

[c: 'DEH_PointerStart']
fn deh_pointerstart(context &Deh_context_t, line &i8) voidptr {
	frame_number := 0
	if C.sscanf(line, c'Pointer %*i (%*s %i)', &frame_number) != 1 {
		deh_warning(context, c'Parse error on section start')
		return voidptr(0)
	}
	if frame_number < 0 || frame_number >= Statenum_t.numstates {
		deh_warning(context, c'Invalid frame number: %i', frame_number)
		return voidptr(0)
	}
	return &states[frame_number]
}

[c: 'DEH_PointerParseLine']
fn deh_pointerparseline(context &Deh_context_t, line &i8, tag voidptr) {
	state := &State_t(0)
	variable_name := &i8(0)
	value := &i8(0)

	ivalue := 0
	if tag == (voidptr(0)) {
		return
	}
	state = &State_t(tag)
	if !deh_parseassignment(line, &variable_name, &value) {
		deh_warning(context, c'Failed to parse assignment')
		return
	}
	ivalue = C.atoi(value)
	if !C.strcasecmp(variable_name, c'Codep frame') {
		if ivalue < 0 || ivalue >= Statenum_t.numstates {
			deh_warning(context, c"Invalid state '%i'", ivalue)
		} else {
			state.action = codeptrs[ivalue]
		}
	} else {
		deh_warning(context, c"Unknown variable name '%s'", variable_name)
	}
}

[c: 'DEH_PointerSHA1Sum']
fn deh_pointersha1sum(context &Sha1_context_t) {
	i := 0
	for i = 0; i < Statenum_t.numstates; i++ {
		sha1_updateint32(context, codepointerindex(&states[i].action))
	}
}

//!
[weak]
__global (
	deh_section_pointer = Deh_section_t{c'Pointer', deh_pointerinit, deh_pointerstart, deh_pointerparseline, (voidptr(0)), deh_pointersha1sum}
)
