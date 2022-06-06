[translated]
module main


[typedef]
struct C.FILE {}


// vstart

[c:'SHA1_Update']
fn sha1_update(context &Sha1_context_t, buf &u8, len usize) 

[c:'SHA1_UpdateInt32']
fn sha1_updateint32(context &Sha1_context_t, val u32) 

[c2v_variadic]
[c:'DEH_Warning']
fn deh_warning(context &Deh_context_t, msg &i8) 

[c:'DEH_ParseAssignment']
fn deh_parseassignment(line &i8, variable_name &&u8, value &&u8) bool

// skipped extern global deh_max_health
// skipped extern global deh_max_armor
// skipped extern global deh_green_armor_class
// skipped extern global deh_blue_armor_class
// skipped extern global deh_max_soulsphere
// skipped extern global deh_soulsphere_health
// skipped extern global deh_megasphere_health
// skipped extern global deh_god_mode_health
// skipped extern global deh_idfa_armor
// skipped extern global deh_idfa_armor_class
// skipped extern global deh_idkfa_armor
// skipped extern global deh_idkfa_armor_class
// skipped extern global deh_bfg_cells_per_shot
// skipped extern global deh_species_infighting
/*!*/[weak] __global ( deh_max_health  = int (200)
)

/*!*/[weak] __global ( deh_max_armor  = int (200)
)

/*!*/[weak] __global ( deh_green_armor_class  = int (1)
)

/*!*/[weak] __global ( deh_blue_armor_class  = int (2)
)

/*!*/[weak] __global ( deh_max_soulsphere  = int (200)
)

/*!*/[weak] __global ( deh_soulsphere_health  = int (100)
)

/*!*/[weak] __global ( deh_megasphere_health  = int (200)
)

/*!*/[weak] __global ( deh_god_mode_health  = int (100)
)

/*!*/[weak] __global ( deh_idfa_armor  = int (200)
)

/*!*/[weak] __global ( deh_idfa_armor_class  = int (2)
)

/*!*/[weak] __global ( deh_idkfa_armor  = int (200)
)

/*!*/[weak] __global ( deh_idkfa_armor_class  = int (2)
)

/*!*/[weak] __global ( deh_bfg_cells_per_shot  = int (40)
)

/*!*/[weak] __global ( deh_species_infighting  = int (0)
)

struct MiscSetting { 
	deh_name &i8
	value &int
}
[export:'misc_settings']
const (
misc_settings   = [MiscSetting {
c'Initial Health', &deh_initial_health}
, MiscSetting {
c'Initial Bullets', &deh_initial_bullets}
, MiscSetting {
c'Max Health', &deh_max_health}
, MiscSetting {
c'Max Armor', &deh_max_armor}
, MiscSetting {
c'Green Armor Class', &deh_green_armor_class}
, MiscSetting {
c'Blue Armor Class', &deh_blue_armor_class}
, MiscSetting {
c'Max Soulsphere', &deh_max_soulsphere}
, MiscSetting {
c'Soulsphere Health', &deh_soulsphere_health}
, MiscSetting {
c'Megasphere Health', &deh_megasphere_health}
, MiscSetting {
c'God Mode Health', &deh_god_mode_health}
, MiscSetting {
c'IDFA Armor', &deh_idfa_armor}
, MiscSetting {
c'IDFA Armor Class', &deh_idfa_armor_class}
, MiscSetting {
c'IDKFA Armor', &deh_idkfa_armor}
, MiscSetting {
c'IDKFA Armor Class', &deh_idkfa_armor_class}
, MiscSetting {
c'BFG Cells/Shot', &deh_bfg_cells_per_shot}
]!

)

[c:'DEH_MiscStart']
fn deh_miscstart(context &Deh_context_t, line &i8) voidptr {
	return (voidptr(0))
}

[c:'DEH_MiscParseLine']
fn deh_miscparseline(context &Deh_context_t, line &i8, tag voidptr)  {
	variable_name := &i8(0)
	value := &i8(0)
	
	ivalue := 0
	i := usize(0)
	if !deh_parseassignment(line, &variable_name, &value) {
		deh_warning(context, c'Failed to parse assignment')
		return 
	}
	ivalue = C.atoi(value)
	if !C.strcasecmp(variable_name, c'Monsters Infight') {
		if ivalue == 202 {
			deh_species_infighting = 0
		}
		else if ivalue == 221 {
			deh_species_infighting = 1
		}
		else {
			deh_warning(context, c"Invalid value for 'Monsters Infight': %i", ivalue)
		}
		return 
	}
	for i = 0 ; i < (sizeof(misc_settings) / sizeof(*misc_settings)) ; i ++ {
		if !C.strcasecmp(variable_name, misc_settings [i] .deh_name) {
			*misc_settings [i] .value = ivalue
			return 
		}
	}
	deh_warning(context, c"Unknown Misc variable '%s'", variable_name)
}

[c:'DEH_MiscSHA1Sum']
fn deh_miscsha1sum(context &Sha1_context_t)  {
	i := u32(0)
	for i = 0 ; i < (sizeof(misc_settings) / sizeof(*misc_settings)) ; i ++ {
		sha1_updateint32(context, *misc_settings [i] .value)
	}
}

/*!*/[weak] __global ( deh_section_misc  = Deh_section_t {
c'Misc', (voidptr(0)), deh_miscstart, deh_miscparseline, (voidptr(0)), deh_miscsha1sum}

)

