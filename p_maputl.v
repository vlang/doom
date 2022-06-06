[translated]
module main


[typedef]
struct C.FILE {}


// vstart

[c:'FixedMul']
fn fixedmul(a int, b int) int

[c:'FixedDiv']
fn fixeddiv(a int, b int) int


const ( // empty enum
)


const ( // empty enum
)

[c:'R_PointInSubsector']
fn r_pointinsubsector(x int, y int) &Subsector_t

[c:'P_AproxDistance']
fn p_aproxdistance(dx int, dy int) int

[c:'P_PointOnLineSide']
fn p_pointonlineside(x int, y int, line &Line_t) int

[c:'P_PointOnDivlineSide']
fn p_pointondivlineside(x int, y int, line &Divline_t) int

[c:'P_MakeDivline']
fn p_makedivline(li &Line_t, dl &Divline_t) 

[c:'P_InterceptVector']
fn p_interceptvector(v2 &Divline_t, v1 &Divline_t) int

[c:'P_BoxOnLineSide']
fn p_boxonlineside(tmbox &int, ld &Line_t) int

[c:'P_LineOpening']
fn p_lineopening(linedef &Line_t) 

[c:'P_BlockLinesIterator']
fn p_blocklinesiterator(x int, y int, func fn (&Line_t) bool) bool

[c:'P_BlockThingsIterator']
fn p_blockthingsiterator(x int, y int, func fn (&Mobj_t) bool) bool

[c:'P_PathTraverse']
fn p_pathtraverse(x1 int, y1 int, x2 int, y2 int, flags int, trav fn (&Intercept_t) bool) bool

[c:'P_UnsetThingPosition']
fn p_unsetthingposition(thing &Mobj_t) 

[c:'P_SetThingPosition']
fn p_setthingposition(thing &Mobj_t) 

[c:'P_AproxDistance']
fn p_aproxdistance(dx int, dy int) int {
	dx = C.abs(dx)
	dy = C.abs(dy)
	if dx < dy {
	return dx + dy - (dx >> 1)
	}
	return dx + dy - (dy >> 1)
}

[c:'P_PointOnLineSide']
fn p_pointonlineside(x int, y int, line &Line_t) int {
	dx := 0
	dy := 0
	left := 0
	right := 0
	if !line.dx {
		if x <= line.v1.x {
		return line.dy > 0
		}
		return line.dy < 0
	}
	if !line.dy {
		if y <= line.v1.y {
		return line.dx < 0
		}
		return line.dx > 0
	}
	dx = (x - line.v1.x)
	dy = (y - line.v1.y)
	left = fixedmul(line.dy >> 16, dx)
	right = fixedmul(dy, line.dx >> 16)
	if right < left {
	return 0
	}
	return 1
}

[c:'P_BoxOnLineSide']
fn p_boxonlineside(tmbox &int, ld &Line_t) int {
	p1 := 0
	p2 := 0
	match ld.slopetype {
	 .st_horizontal// case comp body kind=BinaryOperator is_enum=true 
	{
	p1 = tmbox [int(boxtop)]  > ld.v1.y
	p2 = tmbox [int(boxbottom)]  > ld.v1.y
	if ld.dx < 0 {
		p1 ^= 1
		p2 ^= 1
	}
	 }
	.st_vertical// case comp body kind=BinaryOperator is_enum=true 
	{
	p1 = tmbox [int(boxright)]  < ld.v1.x
	p2 = tmbox [int(boxleft)]  < ld.v1.x
	if ld.dy < 0 {
		p1 ^= 1
		p2 ^= 1
	}
	 }
	.st_positive// case comp body kind=BinaryOperator is_enum=true 
	{
	p1 = p_pointonlineside(tmbox [int(boxleft)] , tmbox [int(boxtop)] , ld)
	p2 = p_pointonlineside(tmbox [int(boxright)] , tmbox [int(boxbottom)] , ld)
	 }
	.st_negative// case comp body kind=BinaryOperator is_enum=true 
	{
	p1 = p_pointonlineside(tmbox [int(boxright)] , tmbox [int(boxtop)] , ld)
	p2 = p_pointonlineside(tmbox [int(boxleft)] , tmbox [int(boxbottom)] , ld)
	}else{}
	}
	if p1 == p2 {
	return p1
	}
	return -1
}

[c:'P_PointOnDivlineSide']
fn p_pointondivlineside(x int, y int, line &Divline_t) int {
	dx := 0
	dy := 0
	left := 0
	right := 0
	if !line.dx {
		if x <= line.x {
		return line.dy > 0
		}
		return line.dy < 0
	}
	if !line.dy {
		if y <= line.y {
		return line.dx < 0
		}
		return line.dx > 0
	}
	dx = (x - line.x)
	dy = (y - line.y)
	if (line.dy ^ line.dx ^ dx ^ dy) & 2147483648 {
		if (line.dy ^ dx) & 2147483648 {
		return 1
		}
		return 0
	}
	left = fixedmul(line.dy >> 8, dx >> 8)
	right = fixedmul(dy >> 8, line.dx >> 8)
	if right < left {
	return 0
	}
	return 1
}

[c:'P_MakeDivline']
fn p_makedivline(li &Line_t, dl &Divline_t)  {
	dl.x = li.v1.x
	dl.y = li.v1.y
	dl.dx = li.dx
	dl.dy = li.dy
}

[c:'P_InterceptVector']
fn p_interceptvector(v2 &Divline_t, v1 &Divline_t) int {
	frac := 0
	num := 0
	den := 0
	den = fixedmul(v1.dy >> 8, v2.dx) - fixedmul(v1.dx >> 8, v2.dy)
	if den == 0 {
	return 0
	}
	num = fixedmul((v1.x - v2.x) >> 8, v1.dy) + fixedmul((v2.y - v1.y) >> 8, v1.dx)
	frac = fixeddiv(num, den)
	return frac
}

[c:'P_LineOpening']
fn p_lineopening(linedef &Line_t)  {
	front := &Sector_t(0)
	back := &Sector_t(0)
	if linedef.sidenum [1]  == -1 {
		openrange = 0
		return 
	}
	front = linedef.frontsector
	back = linedef.backsector
	if front.ceilingheight < back.ceilingheight {
	opentop = front.ceilingheight
	}
	else { // 3
	opentop = back.ceilingheight
}
	if front.floorheight > back.floorheight {
		openbottom = front.floorheight
		lowfloor = back.floorheight
	}
	else {
		openbottom = back.floorheight
		lowfloor = front.floorheight
	}
	openrange = opentop - openbottom
}

[c:'P_UnsetThingPosition']
fn p_unsetthingposition(thing &Mobj_t)  {
	blockx := 0
	blocky := 0
	if !(thing.flags & Mobjflag_t.mf_nosector) {
		if thing.snext {
		thing.snext.sprev = thing.sprev
		}
		if thing.sprev {
		thing.sprev.snext = thing.snext
		}
		else { // 3
		thing.subsector.sector.thinglist = thing.snext
}
	}
	if !(thing.flags & Mobjflag_t.mf_noblockmap) {
		if thing.bnext {
		thing.bnext.bprev = thing.bprev
		}
		if thing.bprev {
		thing.bprev.bnext = thing.bnext
		}
		else {
			blockx = (thing.x - bmaporgx) >> (16 + 7)
			blocky = (thing.y - bmaporgy) >> (16 + 7)
			if blockx >= 0 && blockx < bmapwidth && blocky >= 0 && blocky < bmapheight {
				blocklinks [blocky * bmapwidth + blockx]  = thing.bnext
			}
		}
	}
}

[c:'P_SetThingPosition']
fn p_setthingposition(thing &Mobj_t)  {
	ss := &Subsector_t(0)
	sec := &Sector_t(0)
	blockx := 0
	blocky := 0
	link := &&Mobj_t(0)
	ss = r_pointinsubsector(thing.x, thing.y)
	thing.subsector = ss
	if !(thing.flags & Mobjflag_t.mf_nosector) {
		sec = ss.sector
		thing.sprev = (voidptr(0))
		thing.snext = sec.thinglist
		if sec.thinglist {
		sec.thinglist.sprev = thing
		}
		sec.thinglist = thing
	}
	if !(thing.flags & Mobjflag_t.mf_noblockmap) {
		blockx = (thing.x - bmaporgx) >> (16 + 7)
		blocky = (thing.y - bmaporgy) >> (16 + 7)
		if blockx >= 0 && blockx < bmapwidth && blocky >= 0 && blocky < bmapheight {
			link = &blocklinks [blocky * bmapwidth + blockx] 
			thing.bprev = (voidptr(0))
			thing.bnext = *link
			if *link {
			(*link).bprev = thing
			}
			*link = thing
		}
		else {
			thing.bnext = (voidptr(0))
			thing.bprev = (voidptr(0))
		}
	}
}

[c:'P_BlockLinesIterator']
fn p_blocklinesiterator(x int, y int, func fn (&Line_t) bool) bool {
	offset := 0
	list := &i16(0)
	ld := &Line_t(0)
	if x < 0 || y < 0 || x >= bmapwidth || y >= bmapheight {
		return true
	}
	offset = y * bmapwidth + x
	offset = *(blockmap + offset)
	for list = blockmaplump + offset ; *list != -1 ; list ++ {
		ld = &lines [*list] 
		if ld.validcount == validcount {
		continue
		
		}
		ld.validcount = validcount
		if !func(ld) {
		return false
		}
	}
	return true
}

[c:'P_BlockThingsIterator']
fn p_blockthingsiterator(x int, y int, func fn (&Mobj_t) bool) bool {
	mobj := &Mobj_t(0)
	if x < 0 || y < 0 || x >= bmapwidth || y >= bmapheight {
		return true
	}
	for mobj = blocklinks [y * bmapwidth + x]  ; mobj ; mobj = mobj.bnext {
		if !func(mobj) {
		return false
		}
	}
	return true
}

[weak]__global ( earlyout bool 

)

[weak]__global ( ptflags int 

)

[c:'InterceptsOverrun']
fn interceptsoverrun(num_intercepts int, intercept &Intercept_t) 

[c:'PIT_AddLineIntercepts']
fn pit_addlineintercepts(ld &Line_t) bool {
	s1 := 0
	s2 := 0
	frac := 0
	dl := Divline_t{}
	if trace.dx > (1 << 16) * 16 || trace.dy > (1 << 16) * 16 || trace.dx < -(1 << 16) * 16 || trace.dy < -(1 << 16) * 16 {
		s1 = p_pointondivlineside(ld.v1.x, ld.v1.y, &trace)
		s2 = p_pointondivlineside(ld.v2.x, ld.v2.y, &trace)
	}
	else {
		s1 = p_pointonlineside(trace.x, trace.y, ld)
		s2 = p_pointonlineside(trace.x + trace.dx, trace.y + trace.dy, ld)
	}
	if s1 == s2 {
	return true
	}
	p_makedivline(ld, &dl)
	frac = p_interceptvector(&trace, &dl)
	if frac < 0 {
	return true
	}
	if earlyout && frac < (1 << 16) && !ld.backsector {
		return false
	}
	intercept_p.frac = frac
	intercept_p.isaline = true
	intercept_p.d.line = ld
	interceptsoverrun(intercept_p - intercepts, intercept_p)
	intercept_p ++
	return true
}

[c:'PIT_AddThingIntercepts']
fn pit_addthingintercepts(thing &Mobj_t) bool {
	x1 := 0
	y1 := 0
	x2 := 0
	y2 := 0
	s1 := 0
	s2 := 0
	tracepositive := false
	dl := Divline_t{}
	frac := 0
	tracepositive = (trace.dx ^ trace.dy) > 0
	if tracepositive {
		x1 = thing.x - thing.radius
		y1 = thing.y + thing.radius
		x2 = thing.x + thing.radius
		y2 = thing.y - thing.radius
	}
	else {
		x1 = thing.x - thing.radius
		y1 = thing.y - thing.radius
		x2 = thing.x + thing.radius
		y2 = thing.y + thing.radius
	}
	s1 = p_pointondivlineside(x1, y1, &trace)
	s2 = p_pointondivlineside(x2, y2, &trace)
	if s1 == s2 {
	return true
	}
	dl.x = x1
	dl.y = y1
	dl.dx = x2 - x1
	dl.dy = y2 - y1
	frac = p_interceptvector(&trace, &dl)
	if frac < 0 {
	return true
	}
	intercept_p.frac = frac
	intercept_p.isaline = false
	intercept_p.d.thing = thing
	interceptsoverrun(intercept_p - intercepts, intercept_p)
	intercept_p ++
	return true
}

[c:'P_TraverseIntercepts']
fn p_traverseintercepts(func Traverser_t, maxfrac int) bool {
	count := 0
	dist := 0
	scan := &Intercept_t(0)
	in_ := &Intercept_t(0)
	count = intercept_p - intercepts
	in_ = 0
	for count -- {
		dist = 2147483647
		for scan = intercepts ; scan < intercept_p ; scan ++ {
			if scan.frac < dist {
				dist = scan.frac
				in_ = scan
			}
		}
		if dist > maxfrac {
		return true
		}
		if !func(in_) {
		return false
		}
		in_.frac = 2147483647
	}
	return true
}

[weak]__global ( bulletslope int 

)

struct Intercepts_overrun_t { 
	len int
	addr voidptr
	int16_array bool
}
[export:'intercepts_overrun']
const (
intercepts_overrun   = [Intercepts_overrun_t {
4, (voidptr(0)), false}
, Intercepts_overrun_t {
4, (voidptr(0)), false}
, Intercepts_overrun_t {
4, (voidptr(0)), false}
, Intercepts_overrun_t {
4, &lowfloor, false}
, Intercepts_overrun_t {
4, &openbottom, false}
, Intercepts_overrun_t {
4, &opentop, false}
, Intercepts_overrun_t {
4, &openrange, false}
, Intercepts_overrun_t {
4, (voidptr(0)), false}
, Intercepts_overrun_t {
120, (voidptr(0)), false}
, Intercepts_overrun_t {
8, (voidptr(0)), false}
, Intercepts_overrun_t {
4, &bulletslope, false}
, Intercepts_overrun_t {
4, (voidptr(0)), false}
, Intercepts_overrun_t {
4, (voidptr(0)), false}
, Intercepts_overrun_t {
4, (voidptr(0)), false}
, Intercepts_overrun_t {
40, &playerstarts, true}
, Intercepts_overrun_t {
4, (voidptr(0)), false}
, Intercepts_overrun_t {
4, &bmapwidth, false}
, Intercepts_overrun_t {
4, (voidptr(0)), false}
, Intercepts_overrun_t {
4, &bmaporgx, false}
, Intercepts_overrun_t {
4, &bmaporgy, false}
, Intercepts_overrun_t {
4, (voidptr(0)), false}
, Intercepts_overrun_t {
4, &bmapheight, false}
, Intercepts_overrun_t {
0, (voidptr(0)), false}
]!

)

[c:'InterceptsMemoryOverrun']
fn interceptsmemoryoverrun(location int, value int)  {
	i := 0
	offset := 0
	
	index := 0
	addr := &voidptr(0)
	i = 0
	offset = 0
	for intercepts_overrun [i] .len != 0 {
		if offset + intercepts_overrun [i] .len > location {
			addr = intercepts_overrun [i] .addr
			if addr != (voidptr(0)) {
				if intercepts_overrun [i] .int16_array {
					index = (location - offset) / 2
					(&i16(addr)) [index]  = value & 65535
					(&i16(addr)) [index + 1]  = (value >> 16) & 65535
				}
				else {
					index = (location - offset) / 4
					(&int(addr)) [index]  = value
				}
			}
			break
			
		}
		offset += intercepts_overrun [i] .len
		i ++
	}
}

[c:'InterceptsOverrun']
fn interceptsoverrun(num_intercepts int, intercept &Intercept_t)  {
	location := 0
	if num_intercepts <= 128 {
		return 
	}
	location = (num_intercepts - 128 - 1) * 12
	interceptsmemoryoverrun(location, intercept.frac)
	interceptsmemoryoverrun(location + 4, intercept.isaline)
	interceptsmemoryoverrun(location + 8, int((C.intptr_t(intercept.d.thing))))
}

[c:'P_PathTraverse']
fn p_pathtraverse(x1 int, y1 int, x2 int, y2 int, flags int, trav fn (&Intercept_t) bool) bool {
	xt1 := 0
	yt1 := 0
	xt2 := 0
	yt2 := 0
	xstep := 0
	ystep := 0
	partial := 0
	xintercept := 0
	yintercept := 0
	mapx := 0
	mapy := 0
	mapxstep := 0
	mapystep := 0
	count := 0
	earlyout = (flags & 4) != 0
	validcount ++
	intercept_p = intercepts
	if ((x1 - bmaporgx) & ((128 * (1 << 16)) - 1)) == 0 {
	x1 += (1 << 16)
	}
	if ((y1 - bmaporgy) & ((128 * (1 << 16)) - 1)) == 0 {
	y1 += (1 << 16)
	}
	trace.x = x1
	trace.y = y1
	trace.dx = x2 - x1
	trace.dy = y2 - y1
	x1 -= bmaporgx
	y1 -= bmaporgy
	xt1 = x1 >> (16 + 7)
	yt1 = y1 >> (16 + 7)
	x2 -= bmaporgx
	y2 -= bmaporgy
	xt2 = x2 >> (16 + 7)
	yt2 = y2 >> (16 + 7)
	if xt2 > xt1 {
		mapxstep = 1
		partial = (1 << 16) - ((x1 >> ((16 + 7) - 16)) & ((1 << 16) - 1))
		ystep = fixeddiv(y2 - y1, C.abs(x2 - x1))
	}
	else if xt2 < xt1 {
		mapxstep = -1
		partial = (x1 >> ((16 + 7) - 16)) & ((1 << 16) - 1)
		ystep = fixeddiv(y2 - y1, C.abs(x2 - x1))
	}
	else {
		mapxstep = 0
		partial = (1 << 16)
		ystep = 256 * (1 << 16)
	}
	yintercept = (y1 >> ((16 + 7) - 16)) + fixedmul(partial, ystep)
	if yt2 > yt1 {
		mapystep = 1
		partial = (1 << 16) - ((y1 >> ((16 + 7) - 16)) & ((1 << 16) - 1))
		xstep = fixeddiv(x2 - x1, C.abs(y2 - y1))
	}
	else if yt2 < yt1 {
		mapystep = -1
		partial = (y1 >> ((16 + 7) - 16)) & ((1 << 16) - 1)
		xstep = fixeddiv(x2 - x1, C.abs(y2 - y1))
	}
	else {
		mapystep = 0
		partial = (1 << 16)
		xstep = 256 * (1 << 16)
	}
	xintercept = (x1 >> ((16 + 7) - 16)) + fixedmul(partial, xstep)
	mapx = xt1
	mapy = yt1
	for count = 0 ; count < 64 ; count ++ {
		if flags & 1 {
			if !p_blocklinesiterator(mapx, mapy, pit_addlineintercepts) {
			return false
			}
		}
		if flags & 2 {
			if !p_blockthingsiterator(mapx, mapy, pit_addthingintercepts) {
			return false
			}
		}
		if mapx == xt2 && mapy == yt2 {
			break
			
		}
		if (yintercept >> 16) == mapy {
			yintercept += ystep
			mapx += mapxstep
		}
		else if (xintercept >> 16) == mapx {
			xintercept += xstep
			mapy += mapystep
		}
	}
	return p_traverseintercepts(trav, (1 << 16))
}

