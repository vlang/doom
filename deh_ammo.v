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
	finecosine &int
)

[c_extern]
__global (
	finetangent [4096]int
)

[c_extern]
__global (
	gammatable [5][256]u8
)

[c_extern]
__global (
	tantoangle [2049]Angle_t
)

const ( // empty enum
)

[c_extern]
__global (
	states [967]State_t
)

[c_extern]
__global (
	sprnames []&i8
)

[c_extern]
__global (
	mobjinfo [137]Mobjinfo_t
)

[weak]
__global (
	video_driver &i8
)

[weak]
__global (
	screenvisible bool
)

[weak]
__global (
	vanilla_keyboard_mapping int
)

[weak]
__global (
	screensaver_mode bool
)

[weak]
__global (
	usegamma int
)

[weak]
__global (
	I_VideoBuffer &Pixel_t
)

[weak]
__global (
	screen_width int
)

[weak]
__global (
	screen_height int
)

[weak]
__global (
	fullscreen int
)

[weak]
__global (
	aspect_ratio_correct int
)

[weak]
__global (
	integer_scaling int
)

[weak]
__global (
	vga_porch_flash int
)

[weak]
__global (
	force_software_renderer int
)

[weak]
__global (
	window_position &i8
)

[weak]
__global (
	joywait u32
)

[c_extern]
__global (
	weaponinfo [9]Weaponinfo_t
)

[weak]
__global (
	scaledviewwidth int
)

[weak]
__global (
	viewheight int
)

[weak]
__global (
	numvertexes int
)

[weak]
__global (
	vertexes &Vertex_t
)

[weak]
__global (
	numsegs int
)

[weak]
__global (
	numnodes int
)

[weak]
__global (
	viewplayer &Player_t
)

[c_extern]
__global (
	xtoviewangle [321]Angle_t
)

[weak]
__global (
	rw_distance int
)

[weak]
__global (
	rw_normalangle Angle_t
)

[weak]
__global (
	viewcos int
)

[weak]
__global (
	viewsin int
)

[weak]
__global (
	viewwindowx int
)

[weak]
__global (
	viewwindowy int
)

[weak]
__global (
	centerx int
)

[weak]
__global (
	centery int
)

[weak]
__global (
	centerxfrac int
)

[weak]
__global (
	centeryfrac int
)

[weak]
__global (
	projection int
)

[weak]
__global (
	validcount int
)

[weak]
__global (
	linecount int
)

[weak]
__global (
	loopcount int
)

[c_extern]
__global (
	scalelight [16][48]&Lighttable_t
)

[c_extern]
__global (
	scalelightfixed [48]&Lighttable_t
)

[c_extern]
__global (
	zlight [16][128]&Lighttable_t
)

[weak]
__global (
	extralight int
)

[weak]
__global (
	fixedcolormap &Lighttable_t
)

[weak]
__global (
	detailshift int
)

[weak]
__global (
	colfunc fn ()
)

[weak]
__global (
	transcolfunc fn ()
)

[weak]
__global (
	basecolfunc fn ()
)

[weak]
__global (
	fuzzcolfunc fn ()
)

[weak]
__global (
	spanfunc fn ()
)

[weak]
__global (
	rw_x int
)

[weak]
__global (
	rw_stopx int
)

[weak]
__global (
	segtextured bool
)

[weak]
__global (
	markfloor bool
)

[weak]
__global (
	markceiling bool
)

[weak]
__global (
	skymap bool
)

[weak]
__global (
	hscalelight &&Lighttable_t
)

[weak]
__global (
	vscalelight &&Lighttable_t
)

[weak]
__global (
	dscalelight &&Lighttable_t
)

[weak]
__global (
	lastopening &i16
)

[weak]
__global (
	floorfunc Planefunction_t
)

[weak]
__global (
	ceilingfunc_t Planefunction_t
)

[c_extern]
__global (
	floorclip [320]i16
)

[c_extern]
__global (
	ceilingclip [320]i16
)

[c_extern]
__global (
	yslope [200]int
)

[c_extern]
__global (
	distscale [320]int
)

[c_extern]
__global (
	vissprites [128]Vissprite_t
)

[weak]
__global (
	vissprite_p &Vissprite_t
)

[weak]
__global (
	vsprsortedhead Vissprite_t
)

[c_extern]
__global (
	negonearray [320]i16
)

[c_extern]
__global (
	screenheightarray [320]i16
)

[weak]
__global (
	mfloorclip &i16
)

[weak]
__global (
	mceilingclip &i16
)

[weak]
__global (
	spryscale int
)

[weak]
__global (
	sprtopscreen int
)

[weak]
__global (
	pspritescale int
)

[weak]
__global (
	pspriteiscale int
)

[weak]
__global (
	dc_colormap &Lighttable_t
)

[weak]
__global (
	dc_x int
)

[weak]
__global (
	dc_yl int
)

[weak]
__global (
	dc_yh int
)

[weak]
__global (
	dc_iscale int
)

[weak]
__global (
	dc_texturemid int
)

[weak]
__global (
	dc_source &u8
)

[weak]
__global (
	ds_y int
)

[weak]
__global (
	ds_x1 int
)

[weak]
__global (
	ds_x2 int
)

[weak]
__global (
	ds_colormap &Lighttable_t
)

[weak]
__global (
	ds_xfrac int
)

[weak]
__global (
	ds_yfrac int
)

[weak]
__global (
	ds_xstep int
)

[weak]
__global (
	ds_ystep int
)

[weak]
__global (
	ds_source &u8
)

[weak]
__global (
	translationtables &u8
)

[weak]
__global (
	dc_translation &u8
)

[c_extern]
__global (
	itemrespawnque [128]Mapthing_t
)

[c_extern]
__global (
	itemrespawntime [128]int
)

[weak]
__global (
	iquehead int
)

[weak]
__global (
	iquetail int
)

[c_extern]
__global (
	intercepts [189]Intercept_t
)

[weak]
__global (
	intercept_p &Intercept_t
)

[weak]
__global (
	opentop int
)

[weak]
__global (
	openbottom int
)

[weak]
__global (
	openrange int
)

[weak]
__global (
	lowfloor int
)

[weak]
__global (
	trace Divline_t
)

[weak]
__global (
	floatok bool
)

[weak]
__global (
	tmfloorz int
)

[weak]
__global (
	tmceilingz int
)

[weak]
__global (
	ceilingline &Line_t
)

[c_extern]
__global (
	spechit [20]&Line_t
)

[weak]
__global (
	numspechit int
)

[weak]
__global (
	linetarget &Mobj_t
)

[weak]
__global (
	rejectmatrix &u8
)

[weak]
__global (
	blockmaplump &i16
)

[weak]
__global (
	blockmap &i16
)

[weak]
__global (
	bmapwidth int
)

[weak]
__global (
	bmapheight int
)

[weak]
__global (
	bmaporgx int
)

[weak]
__global (
	bmaporgy int
)

[weak]
__global (
	blocklinks &&Mobj_t
)

[c_extern]
__global (
	maxammo [4]int
)

[c_extern]
__global (
	clipammo [4]int
)

[weak]
__global (
	levelTimer bool
)

[weak]
__global (
	levelTimeCount int
)

[c_extern]
__global (
	buttonlist [16]Button_t
)

[c_extern]
__global (
	activeplats [30]&Plat_t
)

[c: 'DEH_AmmoStart']
fn deh_ammostart(context &Deh_context_t, line &i8) voidptr {
	ammo_number := 0
	if C.sscanf(line, c'Ammo %i', &ammo_number) != 1 {
		deh_warning(context, c'Parse error on section start')
		return voidptr(0)
	}
	if ammo_number < 0 || ammo_number >= Ammotype_t.numammo {
		deh_warning(context, c'Invalid ammo number: %i', ammo_number)
		return voidptr(0)
	}
	return &maxammo[ammo_number]
}

[c: 'DEH_AmmoParseLine']
fn deh_ammoparseline(context &Deh_context_t, line &i8, tag voidptr) {
	variable_name := &i8(0)
	value := &i8(0)

	ivalue := 0
	ammo_number := 0
	if tag == (voidptr(0)) {
		return
	}
	ammo_number = (&int(tag)) - maxammo
	if !deh_parseassignment(line, &variable_name, &value) {
		deh_warning(context, c'Failed to parse assignment')
		return
	}
	ivalue = C.atoi(value)
	if !C.strcasecmp(variable_name, c'Per ammo') {
		clipammo[ammo_number] = ivalue
	} else if !C.strcasecmp(variable_name, c'Max ammo') {
		maxammo[ammo_number] = ivalue
	} else {
		deh_warning(context, c"Field named '%s' not found", variable_name)
	}
}

[c: 'DEH_AmmoSHA1Hash']
fn deh_ammosha1hash(context &Sha1_context_t) {
	i := 0
	for i = 0; i < Ammotype_t.numammo; i++ {
		sha1_updateint32(context, clipammo[i])
		sha1_updateint32(context, maxammo[i])
	}
}

//!
[weak]
__global (
	deh_section_ammo = Deh_section_t{c'Ammo', (voidptr(0)), deh_ammostart, deh_ammoparseline, (voidptr(0)), deh_ammosha1hash}
)
