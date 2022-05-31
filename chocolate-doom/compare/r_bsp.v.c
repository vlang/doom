main__Seg_t* VWEAK  curline; // global4
main__Side_t* VWEAK  sidedef; // global4
main__Line_t* VWEAK  linedef; // global4
main__Sector_t* VWEAK  frontsector; // global4
main__Sector_t* VWEAK  backsector; // global4
Array_fixed_main__Drawseg_t_256 VWEAK  drawsegs; // global4
main__Drawseg_t* VWEAK  ds_p; // global4

// TypeDecl
// Attr: [c]
void R_StoreWallRange(int start, int stop);

// Attr: [c]
void R_ClearDrawSegs(void) {
	ds_p = drawsegs;
}

// Attr: [c]
void R_ClipSolidWallSegment(int first, int last) {
	main__Cliprange_t* next = ((main__Cliprange_t*)(0));
	main__Cliprange_t* start = ((main__Cliprange_t*)(0));
	start = solidsegs;
	for (;;) {
		if (!(start->last < first - 1)) break;
		start++;
	}
	if (first < start->first) {
		if (last < start->first - 1) {
			R_StoreWallRange(first, last);
			next = newend;
			newend++;
			for (;;) {
				if (!(next != start)) break;
				*next = *(next - 1);
				next--;
			}
			next->first = first;
			next->last = last;
			return;
		}
		R_StoreWallRange(first, start->first - 1);
		start->first = first;
	}
	if (last <= start->last) {
		return;
	}
	next = start;
	for (;;) {
		if (!(last >= (next + 1)->first - 1)) break;
		R_StoreWallRange(next->last + 1, (next + 1)->first - 1);
		next++;
		if (last <= next->last) {
			start->last = next->last;
			goto crunch;
		}
	}
	R_StoreWallRange(next->last + 1, last);
	start->last = last;
	crunch: {}
	if (next == start) {
		return;
	}
	for (;;) {
		if (!(next++ != newend)) break;
		start++;
		*start = *next;
	}
	newend = start + 1;
}

// Attr: [c]
void R_ClipPassWallSegment(int first, int last) {
	main__Cliprange_t* start = ((main__Cliprange_t*)(0));
	start = solidsegs;
	for (;;) {
		if (!(start->last < first - 1)) break;
		start++;
	}
	if (first < start->first) {
		if (last < start->first - 1) {
			R_StoreWallRange(first, last);
			return;
		}
		R_StoreWallRange(first, start->first - 1);
	}
	if (last <= start->last) {
		return;
	}
	for (;;) {
		if (!(last >= (start + 1)->first - 1)) break;
		R_StoreWallRange(start->last + 1, (start + 1)->first - 1);
		start++;
		if (last <= start->last) {
			return;
		}
	}
	R_StoreWallRange(start->last + 1, last);
}

// Attr: [c]
void R_ClearClipSegs(void) {
	solidsegs[0].first = -2147483647;
	solidsegs[0].last = -1;
	solidsegs[1].first = viewwidth;
	solidsegs[1].last = 2147483647;
	newend = solidsegs + 2;
}

// Attr: [c]
void R_AddLine(main__Seg_t* line) {
	int x1 = 0;
	int x2 = 0;
	int angle1 = 0;
	int angle2 = 0;
	int span = 0;
	int tspan = 0;
	curline = line;
	angle1 = R_PointToAngle(line->v1->x, line->v1->y);
	angle2 = R_PointToAngle(line->v2->x, line->v2->y);
	span = angle1 - angle2;
	if (span >= 2147483648) {
		return;
	}
	rw_angle1 = angle1;
	angle1 -= viewangle;
	angle2 -= viewangle;
	tspan = angle1 + clipangle;
	if (tspan > 2 * clipangle) {
		tspan -= 2 * clipangle;
		if (tspan >= span) {
			return;
		}
		angle1 = clipangle;
	}
	tspan = clipangle - angle2;
	if (tspan > 2 * clipangle) {
		tspan -= 2 * clipangle;
		if (tspan >= span) {
			return;
		}
		angle2 = -clipangle;
	}
	angle1 = (angle1 + 1073741824) >> 19;
	angle2 = (angle2 + 1073741824) >> 19;
	x1 = viewangletox[angle1];
	x2 = viewangletox[angle2];
	if (x1 == x2) {
		return;
	}
	backsector = line->backsector;
	if (!backsector) {
		goto clipsolid;
	}
	if (backsector->ceilingheight <= frontsector->floorheight || backsector->floorheight >= frontsector->ceilingheight) {
		goto clipsolid;
	}
	if (backsector->ceilingheight != frontsector->ceilingheight || backsector->floorheight != frontsector->floorheight) {
		goto clippass;
	}
	if (backsector->ceilingpic == frontsector->ceilingpic && backsector->floorpic == frontsector->floorpic && backsector->lightlevel == frontsector->lightlevel && curline->sidedef->midtexture == 0) {
		return;
	}
	clippass: {}
	R_ClipPassWallSegment(x1, x2 - 1);
	return;
	clipsolid: {}
	R_ClipSolidWallSegment(x1, x2 - 1);
}

// Attr: [c]
bool R_CheckBBox(int* bspcoord) {
	int boxx = 0;
	int boxy = 0;
	int boxpos = 0;
	int x1 = 0;
	int y1 = 0;
	int x2 = 0;
	int y2 = 0;
	int angle1 = 0;
	int angle2 = 0;
	int span = 0;
	int tspan = 0;
	main__Cliprange_t* start = ((main__Cliprange_t*)(0));
	int sx1 = 0;
	int sx2 = 0;
	if (viewx <= bspcoord[((int)(boxleft))]) {
		boxx = 0;
	} else if (viewx < bspcoord[((int)(boxright))]) {
		boxx = 1;
	} else {
		boxx = 2;
	}
	if (viewy >= bspcoord[((int)(boxtop))]) {
		boxy = 0;
	} else if (viewy > bspcoord[((int)(boxbottom))]) {
		boxy = 1;
	} else {
		boxy = 2;
	}
	boxpos = (boxy << 2) + boxx;
	if (boxpos == 5) {
		bool _t1 = true;
		return _t1;
	}
	x1 = bspcoord[checkcoord[boxpos][0]];
	y1 = bspcoord[checkcoord[boxpos][1]];
	x2 = bspcoord[checkcoord[boxpos][2]];
	y2 = bspcoord[checkcoord[boxpos][3]];
	angle1 = R_PointToAngle(x1, y1) - viewangle;
	angle2 = R_PointToAngle(x2, y2) - viewangle;
	span = angle1 - angle2;
	if (span >= 2147483648) {
		bool _t2 = true;
		return _t2;
	}
	tspan = angle1 + clipangle;
	if (tspan > 2 * clipangle) {
		tspan -= 2 * clipangle;
		if (tspan >= span) {
			bool _t3 = false;
			return _t3;
		}
		angle1 = clipangle;
	}
	tspan = clipangle - angle2;
	if (tspan > 2 * clipangle) {
		tspan -= 2 * clipangle;
		if (tspan >= span) {
			bool _t4 = false;
			return _t4;
		}
		angle2 = -clipangle;
	}
	angle1 = (angle1 + 1073741824) >> 19;
	angle2 = (angle2 + 1073741824) >> 19;
	sx1 = viewangletox[angle1];
	sx2 = viewangletox[angle2];
	if (sx1 == sx2) {
		bool _t5 = false;
		return _t5;
	}
	sx2--;
	start = solidsegs;
	for (;;) {
		if (!(start->last < sx2)) break;
		start++;
	}
	if (sx1 >= start->first && sx2 <= start->last) {
		bool _t6 = false;
		return _t6;
	}
	bool _t7 = true;
	return _t7;
}

// Attr: [c]
void R_Subsector(int num) {
	int count = 0;
	main__Seg_t* line = ((main__Seg_t*)(0));
	main__Subsector_t* sub = ((main__Subsector_t*)(0));
	if (num >= numsubsectors) {
		I_Error("R_Subsector: ss %i with numss = %i", num, numsubsectors);
	}
	sscount++;
	sub = &subsectors[num];
	frontsector = sub->sector;
	count = sub->numlines;
	line = &segs[sub->firstline];
	if (frontsector->floorheight < viewz) {
		floorplane = R_FindPlane(frontsector->floorheight, frontsector->floorpic, frontsector->lightlevel);
	} else {
		floorplane = (((voidptr)(0)));
	}
	if (frontsector->ceilingheight > viewz || frontsector->ceilingpic == skyflatnum) {
		ceilingplane = R_FindPlane(frontsector->ceilingheight, frontsector->ceilingpic, frontsector->lightlevel);
	} else {
		ceilingplane = (((voidptr)(0)));
	}
	R_AddSprites(frontsector);
	for (;;) {
		if (!(count--)) break;
		R_AddLine(line);
		line++;
	}
}

// Attr: [c]
void R_RenderBSPNode(int bspnum) {
	main__Node_t* bsp = ((main__Node_t*)(0));
	int side = 0;
	if ((bspnum & 32768)) {
		if (bspnum == -1) {
			R_Subsector(0);
		} else {
			R_Subsector((bspnum & (~32768)));
		}
		return;
	}
	bsp = &nodes[bspnum];
	side = R_PointOnSide(viewx, viewy, bsp);
	R_RenderBSPNode(bsp->children[side]);
	if (R_CheckBBox((voidptr)&/*qq*/bsp->bbox[(side ^ 1)])) {
		R_RenderBSPNode(bsp->children[(side ^ 1)]);
	}
}
