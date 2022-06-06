[translated]
module main


[typedef]
struct C.FILE {}


// vstart

fn system( &i8) int

fn index( &i8,  int) &i8

fn index( &i8,  int) &i8

fn ffs( int) int

[c:'DEH_String']
fn deh_string(s &i8) &i8

[c2v_variadic]
[c:'I_Error']
fn i_error(error &i8) 

[c:'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

[c:'W_GetNumForName']
fn w_getnumforname(name &i8) Lumpindex_t

[c:'W_CacheLumpNum']
fn w_cachelumpnum(lump Lumpindex_t, tag int) voidptr

[c:'FixedMul']
fn fixedmul(a int, b int) int

[c:'FixedDiv']
fn fixeddiv(a int, b int) int


const ( // empty enum
)

[c:'R_PointOnSegSide']
fn r_pointonsegside(x int, y int, line &Seg_t) int

[c:'R_PointToAngle']
fn r_pointtoangle(x int, y int) Angle_t

[c:'R_Init']
fn r_init() 

[c:'R_RenderMaskedSegRange']
fn r_rendermaskedsegrange(ds &Drawseg_t, x1 int, x2 int) 

[c:'R_DrawMaskedColumn']
fn r_drawmaskedcolumn(column &Column_t) 

[c:'R_SortVisSprites']
fn r_sortvissprites() 

[c:'R_AddSprites']
fn r_addsprites(sec &Sector_t) 

[c:'R_InitSprites']
fn r_initsprites(namelist &&u8) 

[c:'R_ClearSprites']
fn r_clearsprites() 

[c:'R_DrawMasked']
fn r_drawmasked() 

[c:'R_DrawColumn']
fn r_drawcolumn() 

[c:'R_DrawFuzzColumn']
fn r_drawfuzzcolumn() 

struct Maskdraw_t { 
	x1 int
	x2 int
	column int
	topclip int
	bottomclip int
}
[weak]__global ( spritelights &&Lighttable_t 

)

[weak]__global ( sprtemp [29]Spriteframe_t 

)

[weak]__global ( maxframe int 

)

[weak]__global ( spritename &i8 

)

[c:'R_InstallSpriteLump']
fn r_installspritelump(lump int, frame u32, rotation u32, flipped bool)  {
	r := 0
	if frame >= 29 || rotation > 8 {
	i_error(c'R_InstallSpriteLump: Bad frame characters in lump %i', lump)
	}
	if int(frame) > maxframe {
	maxframe = frame
	}
	if rotation == 0 {
		if sprtemp [frame] .rotate == false {
		i_error(c'R_InitSprites: Sprite %s frame %c has multip rot=0 lump', spritename, `A` + frame)
		}
		if sprtemp [frame] .rotate == true {
		i_error(c'R_InitSprites: Sprite %s frame %c has rotations and a rot=0 lump', spritename, `A` + frame)
		}
		sprtemp [frame] .rotate = false
		for r = 0 ; r < 8 ; r ++ {
			sprtemp [frame] .lump [r]  = lump - firstspritelump
			sprtemp [frame] .flip [r]  = u8(flipped)
		}
		return 
	}
	if sprtemp [frame] .rotate == false {
	i_error(c'R_InitSprites: Sprite %s frame %c has rotations and a rot=0 lump', spritename, `A` + frame)
	}
	sprtemp [frame] .rotate = true
	rotation --
	if sprtemp [frame] .lump [rotation]  != -1 {
	i_error(c'R_InitSprites: Sprite %s : %c : %c has two lumps mapped to it', spritename, `A` + frame, `1` + rotation)
	}
	sprtemp [frame] .lump [rotation]  = lump - firstspritelump
	sprtemp [frame] .flip [rotation]  = u8(flipped)
}

[c:'R_InitSpriteDefs']
fn r_initspritedefs(namelist &&u8)  {
	check := &&u8(0)
	i := 0
	l := 0
	frame := 0
	rotation := 0
	start := 0
	end := 0
	patched := 0
	check = namelist
	for *check != (voidptr(0)) {
	check ++
	}
	numsprites = check - namelist
	if !numsprites {
	return 
	}
	sprites = z_malloc(numsprites * sizeof(*sprites), 1, (voidptr(0)))
	start = firstspritelump - 1
	end = lastspritelump + 1
	for i = 0 ; i < numsprites ; i ++ {
		spritename = deh_string(namelist [i] )
		C.memset(sprtemp, -1, sizeof(sprtemp))
		maxframe = -1
		for l = start + 1 ; l < end ; l ++ {
			if !C.strncasecmp(lumpinfo [l] .name, spritename, 4) {
				frame = lumpinfo [l] .name [4]  - `A`
				rotation = lumpinfo [l] .name [5]  - `0`
				if modifiedgame {
				patched = w_getnumforname(lumpinfo [l] .name)
				}
				else { // 3
				patched = l
}
				r_installspritelump(patched, frame, rotation, false)
				if lumpinfo [l] .name [6]  {
					frame = lumpinfo [l] .name [6]  - `A`
					rotation = lumpinfo [l] .name [7]  - `0`
					r_installspritelump(l, frame, rotation, true)
				}
			}
		}
		if maxframe == -1 {
			sprites [i] .numframes = 0
			continue
			
		}
		maxframe ++
		for frame = 0 ; frame < maxframe ; frame ++ {
			match int(sprtemp [frame] .rotate) {
			 -1// case comp body kind=CallExpr is_enum=true 
			{
			i_error(c'R_InitSprites: No patches found for %s frame %c', spritename, frame + `A`)
			 }
			0// case comp body kind=BreakStmt is_enum=true 
			{
			
			 }
			1// case comp body kind=ForStmt is_enum=true 
			{
			for rotation = 0 ; rotation < 8 ; rotation ++ {
			if sprtemp [frame] .lump [rotation]  == -1 {
			i_error(c'R_InitSprites: Sprite %s frame %c is missing rotations', spritename, frame + `A`)
			}
			}
			}else{}
			}
		}
		sprites [i] .numframes = maxframe
		sprites [i] .spriteframes = z_malloc(maxframe * sizeof(Spriteframe_t), 1, (voidptr(0)))
		C.memcpy(sprites [i] .spriteframes, sprtemp, maxframe * sizeof(Spriteframe_t))
	}
}

[weak]__global ( newvissprite int 

)

[c:'R_InitSprites']
fn r_initsprites(namelist &&u8)  {
	i := 0
	for i = 0 ; i < 320 ; i ++ {
		negonearray [i]  = -1
	}
	r_initspritedefs(namelist)
}

[c:'R_ClearSprites']
fn r_clearsprites()  {
	vissprite_p = vissprites
}

[weak]__global ( overflowsprite Vissprite_t 

)

[c:'R_NewVisSprite']
fn r_newvissprite() &Vissprite_t {
	vissprite_p ++
	return vissprite_p - 1
}

[c:'R_DrawMaskedColumn']
fn r_drawmaskedcolumn(column &Column_t)  {
	topscreen := 0
	bottomscreen := 0
	basetexturemid := 0
	basetexturemid = dc_texturemid
	for  ; column.topdelta != 255 ;  {
		topscreen = sprtopscreen + spryscale * column.topdelta
		bottomscreen = topscreen + spryscale * column.length
		dc_yl = (topscreen + (1 << 16) - 1) >> 16
		dc_yh = (bottomscreen - 1) >> 16
		if dc_yh >= mfloorclip [dc_x]  {
		dc_yh = mfloorclip [dc_x]  - 1
		}
		if dc_yl <= mceilingclip [dc_x]  {
		dc_yl = mceilingclip [dc_x]  + 1
		}
		if dc_yl <= dc_yh {
			dc_source = &u8(column) + 3
			dc_texturemid = basetexturemid - (column.topdelta << 16)
			colfunc()
		}
		column = &Column_t((&u8(column) + column.length + 4))
	}
	dc_texturemid = basetexturemid
}

[c:'R_DrawVisSprite']
fn r_drawvissprite(vis &Vissprite_t, x1 int, x2 int)  {
	column := &Column_t(0)
	texturecolumn := 0
	frac := 0
	patch := &Patch_t(0)
	patch = w_cachelumpnum(vis.patch + firstspritelump, 8)
	dc_colormap = vis.colormap
	if !dc_colormap {
		colfunc = fuzzcolfunc
	}
	else if vis.mobjflags & Mobjflag_t.mf_translation {
		colfunc = transcolfunc
		dc_translation = translationtables - 256 + ((vis.mobjflags & Mobjflag_t.mf_translation) >> (Mobjflag_t.mf_transshift - 8))
	}
	dc_iscale = C.abs(vis.xiscale) >> detailshift
	dc_texturemid = vis.texturemid
	frac = vis.startfrac
	spryscale = vis.scale
	sprtopscreen = centeryfrac - fixedmul(dc_texturemid, spryscale)
	for dc_x = vis.x1 ; dc_x <= vis.x2 ; dc_x ++ {
		texturecolumn = frac >> 16
		if texturecolumn < 0 || texturecolumn >= (i16((patch.width))) {
		i_error(c'R_DrawSpriteRange: bad texturecolumn')
		}
		column = &Column_t((&u8(patch) + (int((patch.columnofs [texturecolumn] )))))
		r_drawmaskedcolumn(column)
		frac += vis.xiscale
	}
	colfunc = basecolfunc
}

[c:'R_ProjectSprite']
fn r_projectsprite(thing &Mobj_t)  {
	tr_x := 0
	tr_y := 0
	gxt := 0
	gyt := 0
	tx := 0
	tz := 0
	xscale := 0
	x1 := 0
	x2 := 0
	sprdef := &Spritedef_t(0)
	sprframe := &Spriteframe_t(0)
	lump := 0
	rot := u32(0)
	flip := false
	index := 0
	vis := &Vissprite_t(0)
	ang := u32(0)
	iscale := 0
	tr_x = thing.x - viewx
	tr_y = thing.y - viewy
	gxt = fixedmul(tr_x, viewcos)
	gyt = -fixedmul(tr_y, viewsin)
	tz = gxt - gyt
	if tz < ((1 << 16) * 4) {
	return 
	}
	xscale = fixeddiv(projection, tz)
	gxt = -fixedmul(tr_x, viewsin)
	gyt = fixedmul(tr_y, viewcos)
	tx = -(gyt + gxt)
	if C.abs(tx) > (tz << 2) {
	return 
	}
	if u32(thing.sprite) >= u32(numsprites) {
	i_error(c'R_ProjectSprite: invalid sprite number %i ', thing.sprite)
	}
	sprdef = &sprites [thing.sprite] 
	if (thing.frame & 32767) >= sprdef.numframes {
	i_error(c'R_ProjectSprite: invalid sprite frame %i : %i ', thing.sprite, thing.frame)
	}
	sprframe = &sprdef.spriteframes [thing.frame & 32767] 
	if sprframe.rotate {
		ang = r_pointtoangle(thing.x, thing.y)
		rot = (ang - thing.angle + u32((536870912 / 2)) * 9) >> 29
		lump = sprframe.lump [rot] 
		flip = bool(sprframe.flip [rot] )
	}
	else {
		lump = sprframe.lump [0] 
		flip = bool(sprframe.flip [0] )
	}
	tx -= spriteoffset [lump] 
	x1 = (centerxfrac + fixedmul(tx, xscale)) >> 16
	if x1 > viewwidth {
	return 
	}
	tx += spritewidth [lump] 
	x2 = ((centerxfrac + fixedmul(tx, xscale)) >> 16) - 1
	if x2 < 0 {
	return 
	}
	vis = r_newvissprite()
	vis.mobjflags = thing.flags
	vis.scale = xscale << detailshift
	vis.gx = thing.x
	vis.gy = thing.y
	vis.gz = thing.z
	vis.gzt = thing.z + spritetopoffset [lump] 
	vis.texturemid = vis.gzt - viewz
	vis.x1 = if x1 < 0{ 0 } else {x1}
	vis.x2 = if x2 >= viewwidth{ viewwidth - 1 } else {x2}
	iscale = fixeddiv((1 << 16), xscale)
	if flip {
		vis.startfrac = spritewidth [lump]  - 1
		vis.xiscale = -iscale
	}
	else {
		vis.startfrac = 0
		vis.xiscale = iscale
	}
	if vis.x1 > x1 {
	vis.startfrac += vis.xiscale * (vis.x1 - x1)
	}
	vis.patch = lump
	if thing.flags & Mobjflag_t.mf_shadow {
		vis.colormap = (voidptr(0))
	}
	else if fixedcolormap {
		vis.colormap = fixedcolormap
	}
	else if thing.frame & 32768 {
		vis.colormap = colormaps
	}
	else {
		index = xscale >> (12 - detailshift)
		if index >= 48 {
		index = 48 - 1
		}
		vis.colormap = spritelights [index] 
	}
}

[c:'R_AddSprites']
fn r_addsprites(sec &Sector_t)  {
	thing := &Mobj_t(0)
	lightnum := 0
	if sec.validcount == validcount {
	return 
	}
	sec.validcount = validcount
	lightnum = (sec.lightlevel >> 4) + extralight
	if lightnum < 0 {
	spritelights = scalelight [0] 
	}
	else if lightnum >= 16 {
	spritelights = scalelight [16 - 1] 
	}
	else { // 3
	spritelights = scalelight [lightnum] 
}
	for thing = sec.thinglist ; thing ; thing = thing.snext {
	r_projectsprite(thing)
	}
}

[c:'R_DrawPSprite']
fn r_drawpsprite(psp &Pspdef_t)  {
	tx := 0
	x1 := 0
	x2 := 0
	sprdef := &Spritedef_t(0)
	sprframe := &Spriteframe_t(0)
	lump := 0
	flip := false
	vis := &Vissprite_t(0)
	avis := Vissprite_t{}
	if u32(psp.state.sprite) >= u32(numsprites) {
	i_error(c'R_ProjectSprite: invalid sprite number %i ', psp.state.sprite)
	}
	sprdef = &sprites [psp.state.sprite] 
	if (psp.state.frame & 32767) >= sprdef.numframes {
	i_error(c'R_ProjectSprite: invalid sprite frame %i : %i ', psp.state.sprite, psp.state.frame)
	}
	sprframe = &sprdef.spriteframes [psp.state.frame & 32767] 
	lump = sprframe.lump [0] 
	flip = bool(sprframe.flip [0] )
	tx = psp.sx - (320 / 2) * (1 << 16)
	tx -= spriteoffset [lump] 
	x1 = (centerxfrac + fixedmul(tx, pspritescale)) >> 16
	if x1 > viewwidth {
	return 
	}
	tx += spritewidth [lump] 
	x2 = ((centerxfrac + fixedmul(tx, pspritescale)) >> 16) - 1
	if x2 < 0 {
	return 
	}
	vis = &avis
	vis.mobjflags = 0
	vis.texturemid = ((200 / 2) << 16) + (1 << 16) / 2 - (psp.sy - spritetopoffset [lump] )
	vis.x1 = if x1 < 0{ 0 } else {x1}
	vis.x2 = if x2 >= viewwidth{ viewwidth - 1 } else {x2}
	vis.scale = pspritescale << detailshift
	if flip {
		vis.xiscale = -pspriteiscale
		vis.startfrac = spritewidth [lump]  - 1
	}
	else {
		vis.xiscale = pspriteiscale
		vis.startfrac = 0
	}
	if vis.x1 > x1 {
	vis.startfrac += vis.xiscale * (vis.x1 - x1)
	}
	vis.patch = lump
	if viewplayer.powers [int(Powertype_t.pw_invisibility)]  > 4 * 32 || viewplayer.powers [int(Powertype_t.pw_invisibility)]  & 8 {
		vis.colormap = (voidptr(0))
	}
	else if fixedcolormap {
		vis.colormap = fixedcolormap
	}
	else if psp.state.frame & 32768 {
		vis.colormap = colormaps
	}
	else {
		vis.colormap = spritelights [48 - 1] 
	}
	r_drawvissprite(vis, vis.x1, vis.x2)
}

[c:'R_DrawPlayerSprites']
fn r_drawplayersprites()  {
	i := 0
	lightnum := 0
	psp := &Pspdef_t(0)
	lightnum = (viewplayer.mo.subsector.sector.lightlevel >> 4) + extralight
	if lightnum < 0 {
	spritelights = scalelight [0] 
	}
	else if lightnum >= 16 {
	spritelights = scalelight [16 - 1] 
	}
	else { // 3
	spritelights = scalelight [lightnum] 
}
	mfloorclip = screenheightarray
	mceilingclip = negonearray
	i = 0
	for psp = viewplayer.psprites ; i < Psprnum_t.numpsprites ; i ++ {
		if psp.state {
		r_drawpsprite(psp)
		}
		psp ++
	}
}

[c:'R_SortVisSprites']
fn r_sortvissprites()  {
	i := 0
	count := 0
	ds := &Vissprite_t(0)
	best := &Vissprite_t(0)
	unsorted := Vissprite_t{}
	bestscale := 0
	count = vissprite_p - vissprites
	unsorted.next = &unsorted
	unsorted.prev = &unsorted
	if !count {
	return 
	}
	for ds = vissprites ; ds < vissprite_p ; ds ++ {
		ds.next = ds + 1
		ds.prev = ds - 1
	}
	vissprites [0] .prev = &unsorted
	unsorted.next = &vissprites [0] 
	prevv := vissprite_p - 1
	prevv.next = &unsorted
	unsorted.prev = vissprite_p - 1
	vsprsortedhead.next = &vsprsortedhead
	vsprsortedhead.prev = &vsprsortedhead
	for i = 0 ; i < count ; i ++ {
		bestscale = 2147483647
		best = unsorted.next
		for ds = unsorted.next ; ds != &unsorted ; ds = ds.next {
			if ds.scale < bestscale {
				bestscale = ds.scale
				best = ds
			}
		}
		best.next.prev = best.prev
		best.prev.next = best.next
		best.next = &vsprsortedhead
		best.prev = vsprsortedhead.prev
		vsprsortedhead.prev.next = best
		vsprsortedhead.prev = best
	}
}

[c:'R_DrawSprite']
fn r_drawsprite(spr &Vissprite_t)  {
	ds := &Drawseg_t(0)
	clipbot := [320]i16{}
	cliptop := [320]i16{}
	x := 0
	r1 := 0
	r2 := 0
	scale := 0
	lowscale := 0
	silhouette := 0
	for x = spr.x1 ; x <= spr.x2 ; x ++ {
	clipbot [x]  = -2
	cliptop [x]  = -2
	}
	for ds = ds_p - 1 ; ds >= drawsegs ; ds -- {
		if ds.x1 > spr.x2 || ds.x2 < spr.x1 || (!ds.silhouette && !ds.maskedtexturecol) {
			continue
			
		}
		r1 = if ds.x1 < spr.x1{ spr.x1 } else {ds.x1}
		r2 = if ds.x2 > spr.x2{ spr.x2 } else {ds.x2}
		if ds.scale1 > ds.scale2 {
			lowscale = ds.scale2
			scale = ds.scale1
		}
		else {
			lowscale = ds.scale1
			scale = ds.scale2
		}
		if scale < spr.scale || (lowscale < spr.scale && !r_pointonsegside(spr.gx, spr.gy, ds.curline)) {
			if ds.maskedtexturecol {
			r_rendermaskedsegrange(ds, r1, r2)
			}
			continue
			
		}
		silhouette = ds.silhouette
		if spr.gz >= ds.bsilheight {
		silhouette &= ~1
		}
		if spr.gzt <= ds.tsilheight {
		silhouette &= ~2
		}
		if silhouette == 1 {
			for x = r1 ; x <= r2 ; x ++ {
			if clipbot [x]  == -2 {
			clipbot [x]  = ds.sprbottomclip [x] 
			}
			}
		}
		else if silhouette == 2 {
			for x = r1 ; x <= r2 ; x ++ {
			if cliptop [x]  == -2 {
			cliptop [x]  = ds.sprtopclip [x] 
			}
			}
		}
		else if silhouette == 3 {
			for x = r1 ; x <= r2 ; x ++ {
				if clipbot [x]  == -2 {
				clipbot [x]  = ds.sprbottomclip [x] 
				}
				if cliptop [x]  == -2 {
				cliptop [x]  = ds.sprtopclip [x] 
				}
			}
		}
	}
	for x = spr.x1 ; x <= spr.x2 ; x ++ {
		if clipbot [x]  == -2 {
		clipbot [x]  = viewheight
		}
		if cliptop [x]  == -2 {
		cliptop [x]  = -1
		}
	}
	mfloorclip = clipbot
	mceilingclip = cliptop
	r_drawvissprite(spr, spr.x1, spr.x2)
}

[c:'R_DrawMasked']
fn r_drawmasked()  {
	spr := &Vissprite_t(0)
	ds := &Drawseg_t(0)
	r_sortvissprites()
	if vissprite_p > vissprites {
		for spr = vsprsortedhead.next ; spr != &vsprsortedhead ; spr = spr.next {
			r_drawsprite(spr)
		}
	}
	for ds = ds_p - 1 ; ds >= drawsegs ; ds -- {
	if ds.maskedtexturecol {
	r_rendermaskedsegrange(ds, ds.x1, ds.x2)
	}
	}
	if !viewangleoffset {
	r_drawplayersprites()
	}
}

