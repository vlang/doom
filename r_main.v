[translated]
module main

[typedef]
struct C.FILE {}

// vstart

fn system(&i8) int

fn atan(f64) f64

fn atan(f64) f64

fn cos(f64) f64

fn cos(f64) f64

fn sin(f64) f64

fn sin(f64) f64

fn tan(f64) f64

fn tan(f64) f64

fn rintf(f32) f32

fn rintf(f32) f32

fn rint(f64) f64

fn rint(f64) f64

fn y1(f64) f64

[c: 'NetUpdate']
fn netupdate()

[c: 'FixedMul']
fn fixedmul(a int, b int) int

[c: 'FixedDiv']
fn fixeddiv(a int, b int) int

const ( // empty enum
)

[c: 'SlopeDiv']
fn slopediv(num u32, den u32) int

const ( // empty enum
)

[c: 'R_InitData']
fn r_initdata()

[c: 'R_PointOnSide']
fn r_pointonside(x int, y int, node &Node_t) int

[c: 'R_PointOnSegSide']
fn r_pointonsegside(x int, y int, line &Seg_t) int

[c: 'R_PointToAngle']
fn r_pointtoangle(x int, y int) Angle_t

[c: 'R_PointToAngle2']
fn r_pointtoangle2(x1 int, y1 int, x2 int, y2 int) Angle_t

[c: 'R_PointToDist']
fn r_pointtodist(x int, y int) int

[c: 'R_ScaleFromGlobalAngle']
fn r_scalefromglobalangle(visangle Angle_t) int

[c: 'R_PointInSubsector']
fn r_pointinsubsector(x int, y int) &Subsector_t

[c: 'R_AddPointToBox']
fn r_addpointtobox(x int, y int, box &int)

[c: 'R_RenderPlayerView']
fn r_renderplayerview(player &Player_t)

[c: 'R_Init']
fn r_init()

[c: 'R_SetViewSize']
fn r_setviewsize(blocks int, detail int)

[c: 'R_ClearClipSegs']
fn r_clearclipsegs()

[c: 'R_ClearDrawSegs']
fn r_cleardrawsegs()

[c: 'R_RenderBSPNode']
fn r_renderbspnode(bspnum int)

[c: 'R_InitPlanes']
fn r_initplanes()

[c: 'R_ClearPlanes']
fn r_clearplanes()

[c: 'R_DrawPlanes']
fn r_drawplanes()

[c: 'R_ClearSprites']
fn r_clearsprites()

[c: 'R_DrawMasked']
fn r_drawmasked()

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

[c: 'R_DrawSpan']
fn r_drawspan()

[c: 'R_DrawSpanLow']
fn r_drawspanlow()

[c: 'R_InitBuffer']
fn r_initbuffer(width int, height int)

[c: 'R_InitTranslationTables']
fn r_inittranslationtables()

[c: 'R_InitSkyMap']
fn r_initskymap()

[weak]
__global (
	walllights &&Lighttable_t
)

[weak]
__global (
	framecount int
)

[c: 'R_AddPointToBox']
fn r_addpointtobox(x int, y int, box &int) {
	if x < box[int(boxleft)] {
		box[int(boxleft)] = x
	}
	if x > box[int(boxright)] {
		box[int(boxright)] = x
	}
	if y < box[int(boxbottom)] {
		box[int(boxbottom)] = y
	}
	if y > box[int(boxtop)] {
		box[int(boxtop)] = y
	}
}

[c: 'R_PointOnSide']
fn r_pointonside(x int, y int, node &Node_t) int {
	dx := 0
	dy := 0
	left := 0
	right := 0
	if !node.dx {
		if x <= node.x {
			return node.dy > 0
		}
		return node.dy < 0
	}
	if !node.dy {
		if y <= node.y {
			return node.dx < 0
		}
		return node.dx > 0
	}
	dx = (x - node.x)
	dy = (y - node.y)
	if (node.dy ^ node.dx ^ dx ^ dy) & 2147483648 {
		if (node.dy ^ dx) & 2147483648 {
			return 1
		}
		return 0
	}
	left = fixedmul(node.dy >> 16, dx)
	right = fixedmul(dy, node.dx >> 16)
	if right < left {
		return 0
	}
	return 1
}

[c: 'R_PointOnSegSide']
fn r_pointonsegside(x int, y int, line &Seg_t) int {
	lx := 0
	ly := 0
	ldx := 0
	ldy := 0
	dx := 0
	dy := 0
	left := 0
	right := 0
	lx = line.v1.x
	ly = line.v1.y
	ldx = line.v2.x - lx
	ldy = line.v2.y - ly
	if !ldx {
		if x <= lx {
			return ldy > 0
		}
		return ldy < 0
	}
	if !ldy {
		if y <= ly {
			return ldx < 0
		}
		return ldx > 0
	}
	dx = (x - lx)
	dy = (y - ly)
	if (ldy ^ ldx ^ dx ^ dy) & 2147483648 {
		if (ldy ^ dx) & 2147483648 {
			return 1
		}
		return 0
	}
	left = fixedmul(ldy >> 16, dx)
	right = fixedmul(dy, ldx >> 16)
	if right < left {
		return 0
	}
	return 1
}

[c: 'R_PointToAngle']
fn r_pointtoangle(x int, y int) Angle_t {
	x -= viewx
	y -= viewy
	if (!x) && (!y) {
		return 0
	}
	if x >= 0 {
		if y >= 0 {
			if x > y {
				return tantoangle[slopediv(y, x)]
			} else {
				return 1073741824 - 1 - tantoangle[slopediv(x, y)]
			}
		} else {
			y = -y
			if x > y {
				return -tantoangle[slopediv(y, x)]
			} else {
				return 3221225472 + tantoangle[slopediv(x, y)]
			}
		}
	} else {
		x = -x
		if y >= 0 {
			if x > y {
				return 2147483648 - 1 - tantoangle[slopediv(y, x)]
			} else {
				return 1073741824 + tantoangle[slopediv(x, y)]
			}
		} else {
			y = -y
			if x > y {
				return 2147483648 + tantoangle[slopediv(y, x)]
			} else {
				return 3221225472 - 1 - tantoangle[slopediv(x, y)]
			}
		}
	}
	return 0
}

[c: 'R_PointToAngle2']
fn r_pointtoangle2(x1 int, y1 int, x2 int, y2 int) Angle_t {
	viewx = x1
	viewy = y1
	return r_pointtoangle(x2, y2)
}

[c: 'R_PointToDist']
fn r_pointtodist(x int, y int) int {
	angle := 0
	dx := 0
	dy := 0
	temp := 0
	dist := 0
	frac := 0
	dx = C.abs(x - viewx)
	dy = C.abs(y - viewy)
	if dy > dx {
		temp = dx
		dx = dy
		dy = temp
	}
	if dx != 0 {
		frac = fixeddiv(dy, dx)
	} else {
		frac = 0
	}
	angle = (tantoangle[frac >> (16 - 11)] + 1073741824) >> 19
	dist = fixeddiv(dx, finesine[angle])
	return dist
}

[c: 'R_InitPointToAngle']
fn r_initpointtoangle() {
}

[c: 'R_ScaleFromGlobalAngle']
fn r_scalefromglobalangle(visangle Angle_t) int {
	scale := 0
	anglea := u32(0)
	angleb := u32(0)
	sinea := 0
	sineb := 0
	num := 0
	den := 0
	anglea = 1073741824 + (visangle - viewangle)
	angleb = 1073741824 + (visangle - rw_normalangle)
	sinea = finesine[anglea >> 19]
	sineb = finesine[angleb >> 19]
	num = fixedmul(projection, sineb) << detailshift
	den = fixedmul(rw_distance, sinea)
	if den > num >> 16 {
		scale = fixeddiv(num, den)
		if scale > 64 * (1 << 16) {
			scale = 64 * (1 << 16)
		} else if scale < 256 {
			scale = 256
		}
	} else { // 3
		scale = 64 * (1 << 16)
	}
	return scale
}

[c: 'R_InitTables']
fn r_inittables() {
}

[c: 'R_InitTextureMapping']
fn r_inittexturemapping() {
	i := 0
	x := 0
	t := 0
	focallength := 0
	focallength = fixeddiv(centerxfrac, finetangent[8192 / 4 + 2048 / 2])
	for i = 0; i < 8192 / 2; i++ {
		if finetangent[i] > (1 << 16) * 2 {
			t = -1
		} else if finetangent[i] < -(1 << 16) * 2 {
			t = viewwidth + 1
		} else {
			t = fixedmul(finetangent[i], focallength)
			t = (centerxfrac - t + (1 << 16) - 1) >> 16
			if t < -1 {
				t = -1
			} else if t > viewwidth + 1 {
				t = viewwidth + 1
			}
		}
		viewangletox[i] = t
	}
	for x = 0; x <= viewwidth; x++ {
		i = 0
		for viewangletox[i] > x {
			i++
		}
		xtoviewangle[x] = (i << 19) - 1073741824
	}
	for i = 0; i < 8192 / 2; i++ {
		t = fixedmul(finetangent[i], focallength)
		t = centerx - t
		if viewangletox[i] == -1 {
			viewangletox[i] = 0
		} else if viewangletox[i] == viewwidth + 1 {
			viewangletox[i] = viewwidth
		}
	}
	clipangle = xtoviewangle[0]
}

[c: 'R_InitLightTables']
fn r_initlighttables() {
	i := 0
	j := 0
	level := 0
	startmap := 0
	scale := 0
	for i = 0; i < 16; i++ {
		startmap = ((16 - 1 - i) * 2) * 32 / 16
		for j = 0; j < 128; j++ {
			scale = fixeddiv((320 / 2 * (1 << 16)), (j + 1) << 20)
			scale >>= 12
			level = startmap - scale / 2
			if level < 0 {
				level = 0
			}
			if level >= 32 {
				level = 32 - 1
			}
			zlight[i][j] = colormaps + level * 256
		}
	}
}

[weak]
__global (
	setblocks int
)

[weak]
__global (
	setdetail int
)

[c: 'R_SetViewSize']
fn r_setviewsize(blocks int, detail int) {
	setsizeneeded = true
	setblocks = blocks
	setdetail = detail
}

[c: 'R_ExecuteSetViewSize']
fn r_executesetviewsize() {
	cosadj := 0
	dy := 0
	i := 0
	j := 0
	level := 0
	startmap := 0
	setsizeneeded = false
	if setblocks == 11 {
		scaledviewwidth = 320
		viewheight = 200
	} else {
		scaledviewwidth = setblocks * 32
		viewheight = (setblocks * 168 / 10) & ~7
	}
	detailshift = setdetail
	viewwidth = scaledviewwidth >> detailshift
	centery = viewheight / 2
	centerx = viewwidth / 2
	centerxfrac = centerx << 16
	centeryfrac = centery << 16
	projection = centerxfrac
	if !detailshift {
		colfunc = r_drawcolumn
		basecolfunc = r_drawcolumn
		fuzzcolfunc = r_drawfuzzcolumn
		transcolfunc = r_drawtranslatedcolumn
		spanfunc = r_drawspan
	} else {
		colfunc = r_drawcolumnlow
		basecolfunc = r_drawcolumnlow
		fuzzcolfunc = r_drawfuzzcolumnlow
		transcolfunc = r_drawtranslatedcolumnlow
		spanfunc = r_drawspanlow
	}
	r_initbuffer(scaledviewwidth, viewheight)
	r_inittexturemapping()
	pspritescale = (1 << 16) * viewwidth / 320
	pspriteiscale = (1 << 16) * 320 / viewwidth
	for i = 0; i < viewwidth; i++ {
		screenheightarray[i] = viewheight
	}
	for i = 0; i < viewheight; i++ {
		dy = ((i - viewheight / 2) << 16) + (1 << 16) / 2
		dy = C.abs(dy)
		yslope[i] = fixeddiv((viewwidth << detailshift) / 2 * (1 << 16), dy)
	}
	for i = 0; i < viewwidth; i++ {
		cosadj = C.abs(finecosine[xtoviewangle[i] >> 19])
		distscale[i] = fixeddiv((1 << 16), cosadj)
	}
	for i = 0; i < 16; i++ {
		startmap = ((16 - 1 - i) * 2) * 32 / 16
		for j = 0; j < 48; j++ {
			level = startmap - j * 320 / (viewwidth << detailshift) / 2
			if level < 0 {
				level = 0
			}
			if level >= 32 {
				level = 32 - 1
			}
			scalelight[i][j] = colormaps + level * 256
		}
	}
}

[c: 'R_Init']
fn r_init() {
	r_initdata()
	C.printf(c'.')
	r_initpointtoangle()
	C.printf(c'.')
	r_inittables()
	C.printf(c'.')
	r_setviewsize(screenblocks, detailLevel)
	r_initplanes()
	C.printf(c'.')
	r_initlighttables()
	C.printf(c'.')
	r_initskymap()
	r_inittranslationtables()
	C.printf(c'.')
	framecount = 0
}

[c: 'R_PointInSubsector']
fn r_pointinsubsector(x int, y int) &Subsector_t {
	node := &Node_t(0)
	side := 0
	nodenum := 0
	if !numnodes {
		return subsectors
	}
	nodenum = numnodes - 1
	for !(nodenum & 32768) {
		node = &nodes[nodenum]
		side = r_pointonside(x, y, node)
		nodenum = node.children[side]
	}
	return &subsectors[nodenum & ~32768]
}

[c: 'R_SetupFrame']
fn r_setupframe(player &Player_t) {
	i := 0
	viewplayer = player
	viewx = player.mo.x
	viewy = player.mo.y
	viewangle = player.mo.angle + viewangleoffset
	extralight = player.extralight
	viewz = player.viewz
	viewsin = finesine[viewangle >> 19]
	viewcos = finecosine[viewangle >> 19]
	sscount = 0
	if player.fixedcolormap {
		fixedcolormap = colormaps + player.fixedcolormap * 256
		walllights = scalelightfixed
		for i = 0; i < 48; i++ {
			scalelightfixed[i] = fixedcolormap
		}
	} else { // 3
		fixedcolormap = 0
	}
	framecount++
	validcount++
}

[c: 'R_RenderPlayerView']
fn r_renderplayerview(player &Player_t) {
	r_setupframe(player)
	r_clearclipsegs()
	r_cleardrawsegs()
	r_clearplanes()
	r_clearsprites()
	netupdate()
	r_renderbspnode(numnodes - 1)
	netupdate()
	r_drawplanes()
	netupdate()
	r_drawmasked()
	netupdate()
}
