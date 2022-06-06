[translated]
module main

[typedef]
struct C.FILE {}

// vstart

const ( // empty enum
)

[c: 'FixedMul']
fn fixedmul(a int, b int) int

[c: 'FixedDiv']
fn fixeddiv(a int, b int) int

[c: 'I_Error']
[c2v_variadic]
fn i_error(error ...&i8)

[c: 'P_InterceptVector']
fn p_interceptvector(v2 &Divline_t, v1 &Divline_t) int

[c: 'P_LineOpening']
fn p_lineopening(linedef &Line_t)

[c: 'P_PathTraverse']
fn p_pathtraverse(x1 int, y1 int, x2 int, y2 int, flags int, trav fn (&Intercept_t) bool) bool

[c: 'P_CheckSight']
fn p_checksight(t1 &Mobj_t, t2 &Mobj_t) bool

[weak]
__global (
	sightzstart int
)

[weak]
__global (
	topslope int
)

[weak]
__global (
	bottomslope int
)

[weak]
__global (
	strace Divline_t
)

[weak]
__global (
	t2x int
)

[weak]
__global (
	t2y int
)

[weak]
__global (
	sightcounts [2]int
)

[c: 'PTR_SightTraverse']
fn ptr_sighttraverse(in_ &Intercept_t) bool {
	li := &Line_t(0)
	slope := 0
	li = in_.d.line
	p_lineopening(li)
	if openbottom >= opentop {
		return false
	}
	if li.frontsector.floorheight != li.backsector.floorheight {
		slope = fixeddiv(openbottom - sightzstart, in_.frac)
		if slope > bottomslope {
			bottomslope = slope
		}
	}
	if li.frontsector.ceilingheight != li.backsector.ceilingheight {
		slope = fixeddiv(opentop - sightzstart, in_.frac)
		if slope < topslope {
			topslope = slope
		}
	}
	if topslope <= bottomslope {
		return false
	}
	return true
}

[c: 'P_DivlineSide']
fn p_divlineside(x int, y int, node &Divline_t) int {
	dx := 0
	dy := 0
	left := 0
	right := 0
	if !node.dx {
		if x == node.x {
			return 2
		}
		if x <= node.x {
			return node.dy > 0
		}
		return node.dy < 0
	}
	if !node.dy {
		if x == node.y {
			return 2
		}
		if y <= node.y {
			return node.dx < 0
		}
		return node.dx > 0
	}
	dx = (x - node.x)
	dy = (y - node.y)
	left = (node.dy >> 16) * (dx >> 16)
	right = (dy >> 16) * (node.dx >> 16)
	if right < left {
		return 0
	}
	if left == right {
		return 2
	}
	return 1
}

[c: 'P_InterceptVector2']
fn p_interceptvector2(v2 &Divline_t, v1 &Divline_t) int {
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

[c: 'P_CrossSubsector']
fn p_crosssubsector(num int) bool {
	seg := &Seg_t(0)
	line := &Line_t(0)
	s1 := 0
	s2 := 0
	count := 0
	sub := &Subsector_t(0)
	front := &Sector_t(0)
	back := &Sector_t(0)
	opentop := 0
	openbottom := 0
	divl := Divline_t{}
	v1 := &Vertex_t(0)
	v2 := &Vertex_t(0)
	frac := 0
	slope := 0
	if num >= numsubsectors {
		i_error(c'P_CrossSubsector: ss %i with numss = %i', num, numsubsectors)
	}
	sub = &subsectors[num]
	count = sub.numlines
	seg = &segs[sub.firstline]
	for ; count; seg++ {
		line = seg.linedef
		if line.validcount == validcount {
			count--
			continue
		}
		line.validcount = validcount
		v1 = line.v1
		v2 = line.v2
		s1 = p_divlineside(v1.x, v1.y, &strace)
		s2 = p_divlineside(v2.x, v2.y, &strace)
		if s1 == s2 {
			count--
			continue
		}
		divl.x = v1.x
		divl.y = v1.y
		divl.dx = v2.x - v1.x
		divl.dy = v2.y - v1.y
		s1 = p_divlineside(strace.x, strace.y, &divl)
		s2 = p_divlineside(t2x, t2y, &divl)
		if s1 == s2 {
			count--
			continue
		}
		if line.backsector == (voidptr(0)) {
			return false
		}
		if !(line.flags & 4) {
			return false
		}
		front = seg.frontsector
		back = seg.backsector
		if front.floorheight == back.floorheight && front.ceilingheight == back.ceilingheight {
			count--
			continue
		}
		if front.ceilingheight < back.ceilingheight {
			opentop = front.ceilingheight
		} else { // 3
			opentop = back.ceilingheight
		}
		if front.floorheight > back.floorheight {
			openbottom = front.floorheight
		} else { // 3
			openbottom = back.floorheight
		}
		if openbottom >= opentop {
			return false
		}
		frac = p_interceptvector2(&strace, &divl)
		if front.floorheight != back.floorheight {
			slope = fixeddiv(openbottom - sightzstart, frac)
			if slope > bottomslope {
				bottomslope = slope
			}
		}
		if front.ceilingheight != back.ceilingheight {
			slope = fixeddiv(opentop - sightzstart, frac)
			if slope < topslope {
				topslope = slope
			}
		}
		if topslope <= bottomslope {
			return false
		}
		count--
	}
	return true
}

[c: 'P_CrossBSPNode']
fn p_crossbspnode(bspnum int) bool {
	bsp := &Node_t(0)
	side := 0
	if bspnum & 32768 {
		if bspnum == -1 {
			return p_crosssubsector(0)
		} else {
			return p_crosssubsector(bspnum & (~32768))
		}
	}
	bsp = &nodes[bspnum]
	side = p_divlineside(strace.x, strace.y, &Divline_t(bsp))
	if side == 2 {
		side = 0
	}
	if !p_crossbspnode(bsp.children[side]) {
		return false
	}
	if side == p_divlineside(t2x, t2y, &Divline_t(bsp)) {
		return true
	}
	return p_crossbspnode(bsp.children[side ^ 1])
}

[c: 'P_CheckSight']
fn p_checksight(t1 &Mobj_t, t2 &Mobj_t) bool {
	s1 := 0
	s2 := 0
	pnum := 0
	bytenum := 0
	bitnum := 0
	s1 = (t1.subsector.sector - sectors)
	s2 = (t2.subsector.sector - sectors)
	pnum = s1 * numsectors + s2
	bytenum = pnum >> 3
	bitnum = 1 << (pnum & 7)
	if rejectmatrix[bytenum] & bitnum {
		sightcounts[0]++
		return false
	}
	sightcounts[1]++
	validcount++
	sightzstart = t1.z + t1.height - (t1.height >> 2)
	topslope = (t2.z + t2.height) - sightzstart
	bottomslope = (t2.z) - sightzstart
	if gameversion <= GameVersion_t.exe_doom_1_2 {
		return p_pathtraverse(t1.x, t1.y, t2.x, t2.y, 4 | 1, ptr_sighttraverse)
	}
	strace.x = t1.x
	strace.y = t1.y
	t2x = t2.x
	t2y = t2.y
	strace.dx = t2.x - t1.x
	strace.dy = t2.y - t1.y
	return p_crossbspnode(numnodes - 1)
}
