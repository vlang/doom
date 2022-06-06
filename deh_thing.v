[translated]
module main


[typedef]
struct C.FILE {}


// vstart

fn index( &i8,  int) &i8

fn index( &i8,  int) &i8

[c:'DEH_ParseAssignment']
fn deh_parseassignment(line &i8, variable_name &&u8, value &&u8) bool

[c2v_variadic]
[c:'DEH_Warning']
fn deh_warning(context &Deh_context_t, msg &i8) 

type Deh_mapping_t = Deh_mapping_s
type Deh_mapping_entry_t = Deh_mapping_entry_s
struct Deh_mapping_entry_s { 
	name &i8
	location voidptr
	size int
	is_string bool
}
struct Deh_mapping_s { 
	base voidptr
	entries [32]Deh_mapping_entry_t
}
[c:'DEH_SetMapping']
fn deh_setmapping(context &Deh_context_t, mapping &Deh_mapping_t, structptr voidptr, name &i8, value int) bool

[c:'DEH_StructSHA1Sum']
fn deh_structsha1sum(context &Sha1_context_t, mapping &Deh_mapping_t, structptr voidptr) 

[weak]__global ( deh_thing__deh_mapping_base Mobjinfo_t 

)

/*!*/[weak] __global ( thing_mapping  = Deh_mapping_t {
&deh_thing__deh_mapping_base, [Deh_mapping_entry_t {
c'ID #', &deh_thing__deh_mapping_base.doomednum, sizeof(deh_thing__deh_mapping_base.doomednum), false}
, Deh_mapping_entry_t {
c'Initial frame', &deh_thing__deh_mapping_base.spawnstate, sizeof(deh_thing__deh_mapping_base.spawnstate), false}
, Deh_mapping_entry_t {
c'Hit points', &deh_thing__deh_mapping_base.spawnhealth, sizeof(deh_thing__deh_mapping_base.spawnhealth), false}
, Deh_mapping_entry_t {
c'First moving frame', &deh_thing__deh_mapping_base.seestate, sizeof(deh_thing__deh_mapping_base.seestate), false}
, Deh_mapping_entry_t {
c'Alert sound', &deh_thing__deh_mapping_base.seesound, sizeof(deh_thing__deh_mapping_base.seesound), false}
, Deh_mapping_entry_t {
c'Reaction time', &deh_thing__deh_mapping_base.reactiontime, sizeof(deh_thing__deh_mapping_base.reactiontime), false}
, Deh_mapping_entry_t {
c'Attack sound', &deh_thing__deh_mapping_base.attacksound, sizeof(deh_thing__deh_mapping_base.attacksound), false}
, Deh_mapping_entry_t {
c'Injury frame', &deh_thing__deh_mapping_base.painstate, sizeof(deh_thing__deh_mapping_base.painstate), false}
, Deh_mapping_entry_t {
c'Pain chance', &deh_thing__deh_mapping_base.painchance, sizeof(deh_thing__deh_mapping_base.painchance), false}
, Deh_mapping_entry_t {
c'Pain sound', &deh_thing__deh_mapping_base.painsound, sizeof(deh_thing__deh_mapping_base.painsound), false}
, Deh_mapping_entry_t {
c'Close attack frame', &deh_thing__deh_mapping_base.meleestate, sizeof(deh_thing__deh_mapping_base.meleestate), false}
, Deh_mapping_entry_t {
c'Far attack frame', &deh_thing__deh_mapping_base.missilestate, sizeof(deh_thing__deh_mapping_base.missilestate), false}
, Deh_mapping_entry_t {
c'Death frame', &deh_thing__deh_mapping_base.deathstate, sizeof(deh_thing__deh_mapping_base.deathstate), false}
, Deh_mapping_entry_t {
c'Exploding frame', &deh_thing__deh_mapping_base.xdeathstate, sizeof(deh_thing__deh_mapping_base.xdeathstate), false}
, Deh_mapping_entry_t {
c'Death sound', &deh_thing__deh_mapping_base.deathsound, sizeof(deh_thing__deh_mapping_base.deathsound), false}
, Deh_mapping_entry_t {
c'Speed', &deh_thing__deh_mapping_base.speed, sizeof(deh_thing__deh_mapping_base.speed), false}
, Deh_mapping_entry_t {
c'Width', &deh_thing__deh_mapping_base.radius, sizeof(deh_thing__deh_mapping_base.radius), false}
, Deh_mapping_entry_t {
c'Height', &deh_thing__deh_mapping_base.height, sizeof(deh_thing__deh_mapping_base.height), false}
, Deh_mapping_entry_t {
c'Mass', &deh_thing__deh_mapping_base.mass, sizeof(deh_thing__deh_mapping_base.mass), false}
, Deh_mapping_entry_t {
c'Missile damage', &deh_thing__deh_mapping_base.damage, sizeof(deh_thing__deh_mapping_base.damage), false}
, Deh_mapping_entry_t {
c'Action sound', &deh_thing__deh_mapping_base.activesound, sizeof(deh_thing__deh_mapping_base.activesound), false}
, Deh_mapping_entry_t {
c'Bits', &deh_thing__deh_mapping_base.flags, sizeof(deh_thing__deh_mapping_base.flags), false}
, Deh_mapping_entry_t {
c'Respawn frame', &deh_thing__deh_mapping_base.raisestate, sizeof(deh_thing__deh_mapping_base.raisestate), false}
, Deh_mapping_entry_t {
(voidptr(0)), (voidptr(0)), -1, 0/*IMPLICIT*/}
]!
}

)

[c:'DEH_ThingStart']
fn deh_thingstart(context &Deh_context_t, line &i8) voidptr {
	thing_number := 0
	mobj := &Mobjinfo_t(0)
	if C.sscanf(line, c'Thing %i', &thing_number) != 1 {
		deh_warning(context, c'Parse error on section start')
		return (voidptr(0))
	}
	thing_number --
	if thing_number < 0 || thing_number >= Mobjtype_t.nummobjtypes {
		deh_warning(context, c'Invalid thing number: %i', thing_number)
		return (voidptr(0))
	}
	mobj = &mobjinfo [thing_number] 
	return mobj
}

[c:'DEH_ThingParseLine']
fn deh_thingparseline(context &Deh_context_t, line &i8, tag voidptr)  {
	mobj := &Mobjinfo_t(0)
	variable_name := &i8(0)
	value := &i8(0)
	
	ivalue := 0
	if tag == (voidptr(0)) {
	return 
	}
	mobj = &Mobjinfo_t(tag)
	if !deh_parseassignment(line, &variable_name, &value) {
		deh_warning(context, c'Failed to parse assignment')
		return 
	}
	ivalue = C.atoi(value)
	deh_setmapping(context, &thing_mapping, mobj, variable_name, ivalue)
}

[c:'DEH_ThingSHA1Sum']
fn deh_thingsha1sum(context &Sha1_context_t)  {
	i := 0
	for i = 0 ; i < Mobjtype_t.nummobjtypes ; i ++ {
		deh_structsha1sum(context, &thing_mapping, &mobjinfo [i] )
	}
}

/*!*/[weak] __global ( deh_section_thing  = Deh_section_t {
c'Thing', (voidptr(0)), deh_thingstart, deh_thingparseline, (voidptr(0)), deh_thingsha1sum}

)

