[translated]
module main


[typedef]
struct C.FILE {}


// vstart

[c:'DEH_ParseAssignment']
fn deh_parseassignment(line &i8, variable_name &&u8, value &&u8) bool

[c2v_variadic]
[c:'DEH_Warning']
fn deh_warning(context &Deh_context_t, msg &i8) 

[c:'DEH_SetMapping']
fn deh_setmapping(context &Deh_context_t, mapping &Deh_mapping_t, structptr voidptr, name &i8, value int) bool

[c:'DEH_StructSHA1Sum']
fn deh_structsha1sum(context &Sha1_context_t, mapping &Deh_mapping_t, structptr voidptr) 

[weak]__global ( deh_weapon__deh_mapping_base Weaponinfo_t 

)

/*!*/[weak] __global ( weapon_mapping  = Deh_mapping_t {
&deh_weapon__deh_mapping_base, [Deh_mapping_entry_t {
c'Ammo type', &deh_weapon__deh_mapping_base.ammo, sizeof(deh_weapon__deh_mapping_base.ammo), false}
, Deh_mapping_entry_t {
c'Deselect frame', &deh_weapon__deh_mapping_base.upstate, sizeof(deh_weapon__deh_mapping_base.upstate), false}
, Deh_mapping_entry_t {
c'Select frame', &deh_weapon__deh_mapping_base.downstate, sizeof(deh_weapon__deh_mapping_base.downstate), false}
, Deh_mapping_entry_t {
c'Bobbing frame', &deh_weapon__deh_mapping_base.readystate, sizeof(deh_weapon__deh_mapping_base.readystate), false}
, Deh_mapping_entry_t {
c'Shooting frame', &deh_weapon__deh_mapping_base.atkstate, sizeof(deh_weapon__deh_mapping_base.atkstate), false}
, Deh_mapping_entry_t {
c'Firing frame', &deh_weapon__deh_mapping_base.flashstate, sizeof(deh_weapon__deh_mapping_base.flashstate), false}
, Deh_mapping_entry_t {
(voidptr(0)), (voidptr(0)), -1, 0/*IMPLICIT*/}
]!
}

)

[c:'DEH_WeaponStart']
fn deh_weaponstart(context &Deh_context_t, line &i8) voidptr {
	weapon_number := 0
	if C.sscanf(line, c'Weapon %i', &weapon_number) != 1 {
		deh_warning(context, c'Parse error on section start')
		return (voidptr(0))
	}
	if weapon_number < 0 || weapon_number >= Weapontype_t.numweapons {
		deh_warning(context, c'Invalid weapon number: %i', weapon_number)
		return (voidptr(0))
	}
	return &weaponinfo [weapon_number] 
}

[c:'DEH_WeaponParseLine']
fn deh_weaponparseline(context &Deh_context_t, line &i8, tag voidptr)  {
	variable_name := &i8(0)
	value := &i8(0)
	
	weapon := &Weaponinfo_t(0)
	ivalue := 0
	if tag == (voidptr(0)) {
	return 
	}
	weapon = &Weaponinfo_t(tag)
	if !deh_parseassignment(line, &variable_name, &value) {
		deh_warning(context, c'Failed to parse assignment')
		return 
	}
	ivalue = C.atoi(value)
	deh_setmapping(context, &weapon_mapping, weapon, variable_name, ivalue)
}

[c:'DEH_WeaponSHA1Sum']
fn deh_weaponsha1sum(context &Sha1_context_t)  {
	i := 0
	for i = 0 ; i < Weapontype_t.numweapons ; i ++ {
		deh_structsha1sum(context, &weapon_mapping, &weaponinfo [i] )
	}
}

/*!*/[weak] __global ( deh_section_weapon  = Deh_section_t {
c'Weapon', (voidptr(0)), deh_weaponstart, deh_weaponparseline, (voidptr(0)), deh_weaponsha1sum}

)

