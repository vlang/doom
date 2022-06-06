[translated]
module main


[typedef]
struct C.FILE {}


// vstart

[c2v_variadic]
[c:'DEH_Error']
fn deh_error(context &Deh_context_t, msg &i8) 

[c2v_variadic]
[c:'DEH_Warning']
fn deh_warning(context &Deh_context_t, msg &i8) 

[c:'DEH_ParseAssignment']
fn deh_parseassignment(line &i8, variable_name &&u8, value &&u8) bool

[c:'DEH_SetMapping']
fn deh_setmapping(context &Deh_context_t, mapping &Deh_mapping_t, structptr voidptr, name &i8, value int) bool

[c:'DEH_StructSHA1Sum']
fn deh_structsha1sum(context &Sha1_context_t, mapping &Deh_mapping_t, structptr voidptr) 

[weak]__global ( deh_frame__deh_mapping_base State_t 

)

/*!*/[weak] __global ( state_mapping  = Deh_mapping_t {
&deh_frame__deh_mapping_base, [Deh_mapping_entry_t {
c'Sprite number', &deh_frame__deh_mapping_base.sprite, sizeof(deh_frame__deh_mapping_base.sprite), false}
, Deh_mapping_entry_t {
c'Sprite subnumber', &deh_frame__deh_mapping_base.frame, sizeof(deh_frame__deh_mapping_base.frame), false}
, Deh_mapping_entry_t {
c'Duration', &deh_frame__deh_mapping_base.tics, sizeof(deh_frame__deh_mapping_base.tics), false}
, Deh_mapping_entry_t {
c'Next frame', &deh_frame__deh_mapping_base.nextstate, sizeof(deh_frame__deh_mapping_base.nextstate), false}
, Deh_mapping_entry_t {
c'Unknown 1', &deh_frame__deh_mapping_base.misc1, sizeof(deh_frame__deh_mapping_base.misc1), false}
, Deh_mapping_entry_t {
c'Unknown 2', &deh_frame__deh_mapping_base.misc2, sizeof(deh_frame__deh_mapping_base.misc2), false}
, Deh_mapping_entry_t {
c'Codep frame', (voidptr(0)), -1, false}
, Deh_mapping_entry_t {
(voidptr(0)), (voidptr(0)), -1, 0/*IMPLICIT*/}
]!
}

)

[c:'DEH_FrameStart']
fn deh_framestart(context &Deh_context_t, line &i8) voidptr {
	frame_number := 0
	state := &State_t(0)
	if C.sscanf(line, c'Frame %i', &frame_number) != 1 {
		deh_warning(context, c'Parse error on section start')
		return (voidptr(0))
	}
	if frame_number < 0 || frame_number >= Statenum_t.numstates {
		deh_warning(context, c'Invalid frame number: %i', frame_number)
		return (voidptr(0))
	}
	if frame_number >= 966 {
		deh_warning(context, c'Attempt to modify frame %i: this will cause problems in Vanilla dehacked.', frame_number)
	}
	state = &states [frame_number] 
	return state
}

[c:'DEH_FrameOverflow']
fn deh_frameoverflow(context &Deh_context_t, varname &i8, value int)  {
	if !C.strcasecmp(varname, c'Duration') {
		weaponinfo [0] .ammo = value
	}
	else if !C.strcasecmp(varname, c'Codep frame') {
		weaponinfo [0] .upstate = value
	}
	else if !C.strcasecmp(varname, c'Next frame') {
		weaponinfo [0] .downstate = value
	}
	else if !C.strcasecmp(varname, c'Unknown 1') {
		weaponinfo [0] .readystate = value
	}
	else if !C.strcasecmp(varname, c'Unknown 2') {
		weaponinfo [0] .atkstate = value
	}
	else {
		deh_error(context, c"Unable to simulate frame overflow: field '%s'", varname)
	}
}

[c:'DEH_FrameParseLine']
fn deh_frameparseline(context &Deh_context_t, line &i8, tag voidptr)  {
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
	if state == &states [int(Statenum_t.numstates) - 1]  {
		deh_frameoverflow(context, variable_name, ivalue)
	}
	else {
		deh_setmapping(context, &state_mapping, state, variable_name, ivalue)
	}
}

[c:'DEH_FrameSHA1Sum']
fn deh_framesha1sum(context &Sha1_context_t)  {
	i := 0
	for i = 0 ; i < Statenum_t.numstates ; i ++ {
		deh_structsha1sum(context, &state_mapping, &states [i] )
	}
}

/*!*/[weak] __global ( deh_section_frame  = Deh_section_t {
c'Frame', (voidptr(0)), deh_framestart, deh_frameparseline, (voidptr(0)), deh_framesha1sum}

)

