[translated]
module main

[typedef]
struct C.FILE {}

// vstart

[c: 'DEH_String']
fn deh_string(s &i8) &i8

[c: 'I_Error']
[c2v_variadic]
fn i_error(error ...&i8)

[c: 'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

[c: 'Z_Free']
fn z_free(ptr voidptr)

[c: 'W_CacheLumpName']
fn w_cachelumpname(name &i8, tag int) voidptr

const ( // empty enum
)

[c: 'R_Init']
fn r_init()

[c: 'R_DrawColumn']
fn r_drawcolumn()

[c: 'R_DrawColumnLow']
fn r_drawcolumnlow()

[c: 'R_DrawFuzzColumn']
fn r_drawfuzzcolumn()

[c: 'R_DrawFuzzColumnLow']
fn r_drawfuzzcolumnlow()

[c: 'R_DrawTranslatedColumn']
fn r_drawtranslatedcolumn()

[c: 'R_DrawTranslatedColumnLow']
fn r_drawtranslatedcolumnlow()

[c: 'R_VideoErase']
fn r_videoerase(ofs u32, count int)

[c: 'R_DrawSpan']
fn r_drawspan()

[c: 'R_DrawSpanLow']
fn r_drawspanlow()

[c: 'R_InitBuffer']
fn r_initbuffer(width int, height int)

[c: 'R_InitTranslationTables']
fn r_inittranslationtables()

[c: 'R_FillBackScreen']
fn r_fillbackscreen()

[c: 'R_DrawViewBorder']
fn r_drawviewborder()

[c: 'V_DrawPatch']
fn v_drawpatch(x int, y int, patch &Patch_t)

[c: 'V_MarkRect']
fn v_markrect(x int, y int, width int, height int)

[c: 'V_UseBuffer']
fn v_usebuffer(buffer &Pixel_t)

[c: 'V_RestoreBuffer']
fn v_restorebuffer()

[weak]
__global (
	viewimage &u8
)

[weak]
__global (
	ylookup [832]&Pixel_t
)

[weak]
__global (
	columnofs [1120]int
)

[weak]
__global (
	translations [3][256]u8
)

//!
[weak]
__global (
	background_buffer = &Pixel_t((voidptr(0)))
)

[weak]
__global (
	dccount int
)

[c: 'R_DrawColumn']
fn r_drawcolumn() {
	count := 0
	dest := &Pixel_t(0)
	frac := 0
	fracstep := 0
	count = dc_yh - dc_yl
	if count < 0 {
		return
	}
	if u32(dc_x) >= 320 || dc_yl < 0 || dc_yh >= 200 {
		i_error(c'R_DrawColumn: %i to %i at %i', dc_yl, dc_yh, dc_x)
	}
	dest = ylookup[dc_yl] + columnofs[dc_x]
	fracstep = dc_iscale
	frac = dc_texturemid + (dc_yl - centery) * fracstep
	for {
		*dest = dc_colormap[dc_source[(frac >> 16) & 127]]
		dest += 320
		frac += fracstep
		// while()
		if !(count--) {
			break
		}
	}
}

[c: 'R_DrawColumnLow']
fn r_drawcolumnlow() {
	count := 0
	dest := &Pixel_t(0)
	dest2 := &Pixel_t(0)
	frac := 0
	fracstep := 0
	x := 0
	count = dc_yh - dc_yl
	if count < 0 {
		return
	}
	if u32(dc_x) >= 320 || dc_yl < 0 || dc_yh >= 200 {
		i_error(c'R_DrawColumn: %i to %i at %i', dc_yl, dc_yh, dc_x)
	}
	x = dc_x << 1
	dest = ylookup[dc_yl] + columnofs[x]
	dest2 = ylookup[dc_yl] + columnofs[x + 1]
	fracstep = dc_iscale
	frac = dc_texturemid + (dc_yl - centery) * fracstep
	for {
		*dest2 = dc_colormap[dc_source[(frac >> 16) & 127]]
		*dest = dc_colormap[dc_source[(frac >> 16) & 127]]
		dest += 320
		dest2 += 320
		frac += fracstep
		// while()
		if !(count--) {
			break
		}
	}
}

[export: 'fuzzoffset']
const (
	fuzzoffset = [(320), -(320), (320), -(320), (320), (320), -(320), (320), (320), -(320), (320),
		(320), (320), -(320), (320), (320), (320), -(320), -(320), -(320), -(320), (320), -(320),
		-(320), (320), (320), (320), (320), -(320), (320), -(320), (320), (320), -(320), -(320),
		(320), (320), -(320), -(320), -(320), -(320), (320), (320), (320), (320), -(320), (320),
		(320), -(320), (320)]!
)

//!
[weak]
__global (
	fuzzpos = int(0)
)

[c: 'R_DrawFuzzColumn']
fn r_drawfuzzcolumn() {
	count := 0
	dest := &Pixel_t(0)
	frac := 0
	fracstep := 0
	if !dc_yl {
		dc_yl = 1
	}
	if dc_yh == viewheight - 1 {
		dc_yh = viewheight - 2
	}
	count = dc_yh - dc_yl
	if count < 0 {
		return
	}
	if u32(dc_x) >= 320 || dc_yl < 0 || dc_yh >= 200 {
		i_error(c'R_DrawFuzzColumn: %i to %i at %i', dc_yl, dc_yh, dc_x)
	}
	dest = ylookup[dc_yl] + columnofs[dc_x]
	fracstep = dc_iscale
	frac = dc_texturemid + (dc_yl - centery) * fracstep
	for {
		*dest = colormaps[6 * 256 + dest[fuzzoffset[fuzzpos]]]
		if fuzzpos++ == 50 {
			fuzzpos = 0
		}
		dest += 320
		frac += fracstep
		// while()
		if !(count--) {
			break
		}
	}
}

[c: 'R_DrawFuzzColumnLow']
fn r_drawfuzzcolumnlow() {
	count := 0
	dest := &Pixel_t(0)
	dest2 := &Pixel_t(0)
	frac := 0
	fracstep := 0
	x := 0
	if !dc_yl {
		dc_yl = 1
	}
	if dc_yh == viewheight - 1 {
		dc_yh = viewheight - 2
	}
	count = dc_yh - dc_yl
	if count < 0 {
		return
	}
	x = dc_x << 1
	if u32(x) >= 320 || dc_yl < 0 || dc_yh >= 200 {
		i_error(c'R_DrawFuzzColumn: %i to %i at %i', dc_yl, dc_yh, dc_x)
	}
	dest = ylookup[dc_yl] + columnofs[x]
	dest2 = ylookup[dc_yl] + columnofs[x + 1]
	fracstep = dc_iscale
	frac = dc_texturemid + (dc_yl - centery) * fracstep
	for {
		*dest = colormaps[6 * 256 + dest[fuzzoffset[fuzzpos]]]
		*dest2 = colormaps[6 * 256 + dest2[fuzzoffset[fuzzpos]]]
		if fuzzpos++ == 50 {
			fuzzpos = 0
		}
		dest += 320
		dest2 += 320
		frac += fracstep
		// while()
		if !(count--) {
			break
		}
	}
}

[c: 'R_DrawTranslatedColumn']
fn r_drawtranslatedcolumn() {
	count := 0
	dest := &Pixel_t(0)
	frac := 0
	fracstep := 0
	count = dc_yh - dc_yl
	if count < 0 {
		return
	}
	if u32(dc_x) >= 320 || dc_yl < 0 || dc_yh >= 200 {
		i_error(c'R_DrawColumn: %i to %i at %i', dc_yl, dc_yh, dc_x)
	}
	dest = ylookup[dc_yl] + columnofs[dc_x]
	fracstep = dc_iscale
	frac = dc_texturemid + (dc_yl - centery) * fracstep
	for {
		*dest = dc_colormap[dc_translation[dc_source[frac >> 16]]]
		dest += 320
		frac += fracstep
		// while()
		if !(count--) {
			break
		}
	}
}

[c: 'R_DrawTranslatedColumnLow']
fn r_drawtranslatedcolumnlow() {
	count := 0
	dest := &Pixel_t(0)
	dest2 := &Pixel_t(0)
	frac := 0
	fracstep := 0
	x := 0
	count = dc_yh - dc_yl
	if count < 0 {
		return
	}
	x = dc_x << 1
	if u32(x) >= 320 || dc_yl < 0 || dc_yh >= 200 {
		i_error(c'R_DrawColumn: %i to %i at %i', dc_yl, dc_yh, x)
	}
	dest = ylookup[dc_yl] + columnofs[x]
	dest2 = ylookup[dc_yl] + columnofs[x + 1]
	fracstep = dc_iscale
	frac = dc_texturemid + (dc_yl - centery) * fracstep
	for {
		*dest = dc_colormap[dc_translation[dc_source[frac >> 16]]]
		*dest2 = dc_colormap[dc_translation[dc_source[frac >> 16]]]
		dest += 320
		dest2 += 320
		frac += fracstep
		// while()
		if !(count--) {
			break
		}
	}
}

[c: 'R_InitTranslationTables']
fn r_inittranslationtables() {
	i := 0
	translationtables = z_malloc(256 * 3, 1, 0)
	for i = 0; i < 256; i++ {
		if i >= 112 && i <= 127 {
			translationtables[i] = 96 + (i & 15)
			translationtables[i + 256] = 64 + (i & 15)
			translationtables[i + 512] = 32 + (i & 15)
		} else {
			translationtables[i] = i
			translationtables[i + 256] = i
			translationtables[i + 512] = i
		}
	}
}

[weak]
__global (
	dscount int
)

[c: 'R_DrawSpan']
fn r_drawspan() {
	position := u32(0)
	step := u32(0)

	dest := &Pixel_t(0)
	count := 0
	spot := 0
	xtemp := u32(0)
	ytemp := u32(0)

	if ds_x2 < ds_x1 || ds_x1 < 0 || ds_x2 >= 320 || u32(ds_y) > 200 {
		i_error(c'R_DrawSpan: %i to %i at %i', ds_x1, ds_x2, ds_y)
	}
	position = ((ds_xfrac << 10) & 4294901760) | ((ds_yfrac >> 6) & 65535)
	step = ((ds_xstep << 10) & 4294901760) | ((ds_ystep >> 6) & 65535)
	dest = ylookup[ds_y] + columnofs[ds_x1]
	count = ds_x2 - ds_x1
	for {
		ytemp = (position >> 4) & 4032
		xtemp = (position >> 26)
		spot = xtemp | ytemp
		*dest = ds_colormap[ds_source[spot]]
		dest++
		position += step
		// while()
		if !(count--) {
			break
		}
	}
}

[c: 'R_DrawSpanLow']
fn r_drawspanlow() {
	position := u32(0)
	step := u32(0)

	xtemp := u32(0)
	ytemp := u32(0)

	dest := &Pixel_t(0)
	count := 0
	spot := 0
	if ds_x2 < ds_x1 || ds_x1 < 0 || ds_x2 >= 320 || u32(ds_y) > 200 {
		i_error(c'R_DrawSpan: %i to %i at %i', ds_x1, ds_x2, ds_y)
	}
	position = ((ds_xfrac << 10) & 4294901760) | ((ds_yfrac >> 6) & 65535)
	step = ((ds_xstep << 10) & 4294901760) | ((ds_ystep >> 6) & 65535)
	count = (ds_x2 - ds_x1)
	ds_x1 <<= 1
	ds_x2 <<= 1
	dest = ylookup[ds_y] + columnofs[ds_x1]
	for {
		ytemp = (position >> 4) & 4032
		xtemp = (position >> 26)
		spot = xtemp | ytemp
		*dest = ds_colormap[ds_source[spot]]
		dest++
		*dest = ds_colormap[ds_source[spot]]
		dest++
		dest++
		position += step
		// while()
		if !(count--) {
			break
		}
	}
}

[c: 'R_InitBuffer']
fn r_initbuffer(width int, height int) {
	i := 0
	viewwindowx = (320 - width) >> 1
	for i = 0; i < width; i++ {
		columnofs[i] = viewwindowx + i
	}
	if width == 320 {
		viewwindowy = 0
	} else { // 3
		viewwindowy = (200 - 32 - height) >> 1
	}
	for i = 0; i < height; i++ {
		ylookup[i] = I_VideoBuffer + (i + viewwindowy) * 320
	}
}

[c: 'R_FillBackScreen']
fn r_fillbackscreen() {
	src := &u8(0)
	dest := &Pixel_t(0)
	x := 0
	y := 0
	patch := &Patch_t(0)
	name1 := deh_string(c'FLOOR7_2')
	name2 := deh_string(c'GRNROCK')
	name := &i8(0)
	if scaledviewwidth == 320 {
		if background_buffer != (voidptr(0)) {
			z_free(background_buffer)
			background_buffer = (voidptr(0))
		}
		return
	}
	if background_buffer == (voidptr(0)) {
		background_buffer = z_malloc(320 * (200 - 32) * sizeof(*background_buffer), 1,
			(voidptr(0)))
	}
	if gamemode == GameMode_t.commercial {
		name = name2
	} else { // 3
		name = name1
	}
	src = w_cachelumpname(name, 8)
	dest = background_buffer
	for y = 0; y < 200 - 32; y++ {
		for x = 0; x < 320 / 64; x++ {
			C.memcpy(dest, src + ((y & 63) << 6), 64)
			dest += 64
		}
		if 320 & 63 {
			C.memcpy(dest, src + ((y & 63) << 6), 320 & 63)
			dest += (320 & 63)
		}
	}
	v_usebuffer(background_buffer)
	patch = w_cachelumpname(deh_string(c'brdr_t'), 8)
	for x = 0; x < scaledviewwidth; x += 8 {
		v_drawpatch(viewwindowx + x, viewwindowy - 8, patch)
	}
	patch = w_cachelumpname(deh_string(c'brdr_b'), 8)
	for x = 0; x < scaledviewwidth; x += 8 {
		v_drawpatch(viewwindowx + x, viewwindowy + viewheight, patch)
	}
	patch = w_cachelumpname(deh_string(c'brdr_l'), 8)
	for y = 0; y < viewheight; y += 8 {
		v_drawpatch(viewwindowx - 8, viewwindowy + y, patch)
	}
	patch = w_cachelumpname(deh_string(c'brdr_r'), 8)
	for y = 0; y < viewheight; y += 8 {
		v_drawpatch(viewwindowx + scaledviewwidth, viewwindowy + y, patch)
	}
	v_drawpatch(viewwindowx - 8, viewwindowy - 8, w_cachelumpname(deh_string(c'brdr_tl'),
		8))
	v_drawpatch(viewwindowx + scaledviewwidth, viewwindowy - 8, w_cachelumpname(deh_string(c'brdr_tr'),
		8))
	v_drawpatch(viewwindowx - 8, viewwindowy + viewheight, w_cachelumpname(deh_string(c'brdr_bl'),
		8))
	v_drawpatch(viewwindowx + scaledviewwidth, viewwindowy + viewheight, w_cachelumpname(deh_string(c'brdr_br'),
		8))
	v_restorebuffer()
}

[c: 'R_VideoErase']
fn r_videoerase(ofs u32, count int) {
	if background_buffer != (voidptr(0)) {
		C.memcpy(I_VideoBuffer + ofs, background_buffer + ofs, count * sizeof(*I_VideoBuffer))
	}
}

[c: 'R_DrawViewBorder']
fn r_drawviewborder() {
	top := 0
	side := 0
	ofs := 0
	i := 0
	if scaledviewwidth == 320 {
		return
	}
	top = ((200 - 32) - viewheight) / 2
	side = (320 - scaledviewwidth) / 2
	r_videoerase(0, top * 320 + side)
	ofs = (viewheight + top) * 320 - side
	r_videoerase(ofs, top * 320 + side)
	ofs = top * 320 + 320 - side
	side <<= 1
	for i = 1; i < viewheight; i++ {
		r_videoerase(ofs, side)
		ofs += 320
	}
	v_markrect(0, 0, 320, 200 - 32)
}
