[translated]
module main

[typedef]
struct C.FILE {}

// vstart

const ( // empty enum
	boxtop    = 0
	boxbottom = 1
	boxleft   = 2
	boxright  = 3
)

[c: 'I_Error']
[c2v_variadic]
fn i_error(error ...&i8)

const ( // empty enum
)

[weak]
__global (
	viewwidth int
)

[weak]
__global (
	segs &Seg_t
)

[weak]
__global (
	numsubsectors int
)

[weak]
__global (
	subsectors &Subsector_t
)

[weak]
__global (
	nodes &Node_t
)

[weak]
__global (
	numlines int
)

[weak]
__global (
	lines &Line_t
)

[weak]
__global (
	viewx int
)

[weak]
__global (
	viewy int
)

[weak]
__global (
	viewz int
)

[weak]
__global (
	viewangle Angle_t
)

[weak]
__global (
	clipangle Angle_t
)

[c_extern]
__global (
	viewangletox [4096]int
)

[weak]
__global (
	rw_angle1 int
)

[weak]
__global (
	sscount int
)

[weak]
__global (
	floorplane &Visplane_t
)

[weak]
__global (
	ceilingplane &Visplane_t
)

[c: 'R_PointOnSide']
fn r_pointonside(x int, y int, node &Node_t) int

[c: 'R_PointToAngle']
fn r_pointtoangle(x int, y int) Angle_t

[c: 'R_FindPlane']
fn r_findplane(height int, picnum int, lightlevel int) &Visplane_t

[c: 'R_AddSprites']
fn r_addsprites(sec &Sector_t)

[weak]
__global (
	skyflatnum int
)

[weak]
__global (
	curline &Seg_t
)

[weak]
__global (
	sidedef &Side_t
)

[weak]
__global (
	linedef &Line_t
)

[weak]
__global (
	frontsector &Sector_t
)

[weak]
__global (
	backsector &Sector_t
)

[weak]
__global (
	drawsegs [256]Drawseg_t
)

[weak]
__global (
	ds_p &Drawseg_t
)

[c: 'R_StoreWallRange']
fn r_storewallrange(start int, stop int)

[c: 'R_ClearDrawSegs']
fn r_cleardrawsegs() {
	ds_p = drawsegs
}

struct Cliprange_t {
	first int
	last  int
}

[weak]
__global (
	newend &Cliprange_t
)

[weak]
__global (
	solidsegs [161]Cliprange_t
)

[c: 'R_ClipSolidWallSegment']
fn r_clipsolidwallsegment(first int, last int) {
	next := &Cliprange_t(0)
	start := &Cliprange_t(0)
	start = solidsegs
	for start.last < first - 1 {
		start++
	}
	if first < start.first {
		if last < start.first - 1 {
			r_storewallrange(first, last)
			next = newend
			newend++
			for next != start {
				*next = *(next - 1)
				next--
			}
			next.first = first
			next.last = last
			return
		}
		r_storewallrange(first, start.first - 1)
		start.first = first
	}
	if last <= start.last {
		return
	}
	next = start
	for last >= (next + 1).first - 1 {
		r_storewallrange(next.last + 1, (next + 1).first - 1)
		next++
		if last <= next.last {
			start.last = next.last
			goto crunch
			// id: 0x13f893f88
		}
	}
	r_storewallrange(next.last + 1, last)
	start.last = last
	// RRRREG crunch id=0x13f893f88
	crunch:
	if next == start {
		return
	}
	for next++ != newend {
		start++
		*start = *next
	}
	newend = start + 1
}

[c: 'R_ClipPassWallSegment']
fn r_clippasswallsegment(first int, last int) {
	start := &Cliprange_t(0)
	start = solidsegs
	for start.last < first - 1 {
		start++
	}
	if first < start.first {
		if last < start.first - 1 {
			r_storewallrange(first, last)
			return
		}
		r_storewallrange(first, start.first - 1)
	}
	if last <= start.last {
		return
	}
	for last >= (start + 1).first - 1 {
		r_storewallrange(start.last + 1, (start + 1).first - 1)
		start++
		if last <= start.last {
			return
		}
	}
	r_storewallrange(start.last + 1, last)
}

[c: 'R_ClearClipSegs']
fn r_clearclipsegs() {
	solidsegs[0].first = -2147483647
	solidsegs[0].last = -1
	solidsegs[1].first = viewwidth
	solidsegs[1].last = 2147483647
	newend = solidsegs + 2
}

[c: 'R_AddLine']
fn r_addline(line &Seg_t) {
	x1 := 0
	x2 := 0
	angle1 := u32(0)
	angle2 := u32(0)
	span := u32(0)
	tspan := u32(0)
	curline = line
	angle1 = r_pointtoangle(line.v1.x, line.v1.y)
	angle2 = r_pointtoangle(line.v2.x, line.v2.y)
	span = angle1 - angle2
	if span >= 2147483648 {
		return
	}
	rw_angle1 = angle1
	angle1 -= viewangle
	angle2 -= viewangle
	tspan = angle1 + clipangle
	if tspan > 2 * clipangle {
		tspan -= 2 * clipangle
		if tspan >= span {
			return
		}
		angle1 = clipangle
	}
	tspan = clipangle - angle2
	if tspan > 2 * clipangle {
		tspan -= 2 * clipangle
		if tspan >= span {
			return
		}
		angle2 = -clipangle
	}
	angle1 = (angle1 + 1073741824) >> 19
	angle2 = (angle2 + 1073741824) >> 19
	x1 = viewangletox[angle1]
	x2 = viewangletox[angle2]
	if x1 == x2 {
		return
	}
	backsector = line.backsector
	if !backsector {
		goto clipsolid
		// id: 0x13f897968
	}
	if backsector.ceilingheight <= frontsector.floorheight
		|| backsector.floorheight >= frontsector.ceilingheight {
		goto clipsolid
		// id: 0x13f897968
	}
	if backsector.ceilingheight != frontsector.ceilingheight
		|| backsector.floorheight != frontsector.floorheight {
		goto clippass
		// id: 0x13f897ed8
	}
	if backsector.ceilingpic == frontsector.ceilingpic
		&& backsector.floorpic == frontsector.floorpic
		&& backsector.lightlevel == frontsector.lightlevel && curline.sidedef.midtexture == 0 {
		return
	}
	// RRRREG clippass id=0x13f897ed8
	clippass:
	r_clippasswallsegment(x1, x2 - 1)
	// RRRREG clipsolid id=0x13f897968
	return

	clipsolid:
	r_clipsolidwallsegment(x1, x2 - 1)
}

[export: 'checkcoord']
const (
	checkcoord = [[3, 0, 2, 1]!, [3, 0, 2, 0]!, [3, 1, 2, 0]!,
		[0, 0, 0, 0]!, [2, 0, 2, 1]!, [0, 0, 0, 0]!, [3, 1, 3, 0]!,
		[0, 0, 0, 0]!, [2, 0, 3, 1]!, [2, 1, 3, 1]!, [2, 1, 3, 0]!,
		[0, 0, 0, 0]!]!
)

[c: 'R_CheckBBox']
fn r_checkbbox(bspcoord &int) bool {
	boxx := 0
	boxy := 0
	boxpos := 0
	x1 := 0
	y1 := 0
	x2 := 0
	y2 := 0
	angle1 := u32(0)
	angle2 := u32(0)
	span := u32(0)
	tspan := u32(0)
	start := &Cliprange_t(0)
	sx1 := 0
	sx2 := 0
	if viewx <= bspcoord[int(boxleft)] {
		boxx = 0
	} else if viewx < bspcoord[int(boxright)] {
		boxx = 1
	} else { // 3
		boxx = 2
	}
	if viewy >= bspcoord[int(boxtop)] {
		boxy = 0
	} else if viewy > bspcoord[int(boxbottom)] {
		boxy = 1
	} else { // 3
		boxy = 2
	}
	boxpos = (boxy << 2) + boxx
	if boxpos == 5 {
		return true
	}
	x1 = bspcoord[checkcoord[boxpos][0]]
	y1 = bspcoord[checkcoord[boxpos][1]]
	x2 = bspcoord[checkcoord[boxpos][2]]
	y2 = bspcoord[checkcoord[boxpos][3]]
	angle1 = r_pointtoangle(x1, y1) - viewangle
	angle2 = r_pointtoangle(x2, y2) - viewangle
	span = angle1 - angle2
	if span >= 2147483648 {
		return true
	}
	tspan = angle1 + clipangle
	if tspan > 2 * clipangle {
		tspan -= 2 * clipangle
		if tspan >= span {
			return false
		}
		angle1 = clipangle
	}
	tspan = clipangle - angle2
	if tspan > 2 * clipangle {
		tspan -= 2 * clipangle
		if tspan >= span {
			return false
		}
		angle2 = -clipangle
	}
	angle1 = (angle1 + 1073741824) >> 19
	angle2 = (angle2 + 1073741824) >> 19
	sx1 = viewangletox[angle1]
	sx2 = viewangletox[angle2]
	if sx1 == sx2 {
		return false
	}
	sx2--
	start = solidsegs
	for start.last < sx2 {
		start++
	}
	if sx1 >= start.first && sx2 <= start.last {
		return false
	}
	return true
}

[c: 'R_Subsector']
fn r_subsector(num int) {
	count := 0
	line := &Seg_t(0)
	sub := &Subsector_t(0)
	if num >= numsubsectors {
		i_error(c'R_Subsector: ss %i with numss = %i', num, numsubsectors)
	}
	sscount++
	sub = &subsectors[num]
	frontsector = sub.sector
	count = sub.numlines
	line = &segs[sub.firstline]
	if frontsector.floorheight < viewz {
		floorplane = r_findplane(frontsector.floorheight, frontsector.floorpic, frontsector.lightlevel)
	} else { // 3
		floorplane = (voidptr(0))
	}
	if frontsector.ceilingheight > viewz || frontsector.ceilingpic == skyflatnum {
		ceilingplane = r_findplane(frontsector.ceilingheight, frontsector.ceilingpic,
			frontsector.lightlevel)
	} else { // 3
		ceilingplane = (voidptr(0))
	}
	r_addsprites(frontsector)
	for count-- {
		r_addline(line)
		line++
	}
}

[c: 'R_RenderBSPNode']
fn r_renderbspnode(bspnum int) {
	bsp := &Node_t(0)
	side := 0
	if bspnum & 32768 {
		if bspnum == -1 {
			r_subsector(0)
		} else { // 3
			r_subsector(bspnum & (~32768))
		}
		return
	}
	bsp = &nodes[bspnum]
	side = r_pointonside(viewx, viewy, bsp)
	r_renderbspnode(bsp.children[side])
	if r_checkbbox(bsp.bbox[side ^ 1]) {
		r_renderbspnode(bsp.children[side ^ 1])
	}
}
