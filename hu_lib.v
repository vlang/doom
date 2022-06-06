[translated]
module main

[typedef]
struct C.FILE {}

// vstart

[c: 'V_DrawPatch']
fn v_drawpatch(x int, y int, patch &Patch_t)

[c: 'V_DrawPatchDirect']
fn v_drawpatchdirect(x int, y int, patch &Patch_t)

const ( // empty enum
)

[c: 'HUlib_init']
fn hulib_init()

[c: 'HUlib_clearTextLine']
fn hulib_cleartextline(t &Hu_textline_t)

[c: 'HUlib_initTextLine']
fn hulib_inittextline(t &Hu_textline_t, x int, y int, f &&Patch_t, sc int)

[c: 'HUlib_addCharToTextLine']
fn hulib_addchartotextline(t &Hu_textline_t, ch i8) bool

[c: 'HUlib_delCharFromTextLine']
fn hulib_delcharfromtextline(t &Hu_textline_t) bool

[c: 'HUlib_drawTextLine']
fn hulib_drawtextline(l &Hu_textline_t, drawcursor bool)

[c: 'HUlib_eraseTextLine']
fn hulib_erasetextline(l &Hu_textline_t)

[c: 'HUlib_initSText']
fn hulib_initstext(s &Hu_stext_t, x int, y int, h int, font &&Patch_t, startchar int, on &bool)

[c: 'HUlib_addLineToSText']
fn hulib_addlinetostext(s &Hu_stext_t)

[c: 'HUlib_addMessageToSText']
fn hulib_addmessagetostext(s &Hu_stext_t, prefix &i8, msg &i8)

[c: 'HUlib_drawSText']
fn hulib_drawstext(s &Hu_stext_t)

[c: 'HUlib_eraseSText']
fn hulib_erasestext(s &Hu_stext_t)

[c: 'HUlib_initIText']
fn hulib_inititext(it &Hu_itext_t, x int, y int, font &&Patch_t, startchar int, on &bool)

[c: 'HUlib_delCharFromIText']
fn hulib_delcharfromitext(it &Hu_itext_t)

[c: 'HUlib_eraseLineFromIText']
fn hulib_eraselinefromitext(it &Hu_itext_t)

[c: 'HUlib_resetIText']
fn hulib_resetitext(it &Hu_itext_t)

[c: 'HUlib_addPrefixToIText']
fn hulib_addprefixtoitext(it &Hu_itext_t, str &i8)

[c: 'HUlib_keyInIText']
fn hulib_keyinitext(it &Hu_itext_t, ch u8) bool

[c: 'HUlib_drawIText']
fn hulib_drawitext(it &Hu_itext_t)

[c: 'HUlib_eraseIText']
fn hulib_eraseitext(it &Hu_itext_t)

[c: 'R_VideoErase']
fn r_videoerase(ofs u32, count int)

[c: 'HUlib_init']
fn hulib_init() {
}

[c: 'HUlib_clearTextLine']
fn hulib_cleartextline(t &Hu_textline_t) {
	t.len = 0
	t.l[0] = 0
	t.needsupdate = true
}

[c: 'HUlib_initTextLine']
fn hulib_inittextline(t &Hu_textline_t, x int, y int, f &&Patch_t, sc int) {
	t.x = x
	t.y = y
	t.f = f
	t.sc = sc
	hulib_cleartextline(t)
}

[c: 'HUlib_addCharToTextLine']
fn hulib_addchartotextline(t &Hu_textline_t, ch i8) bool {
	if t.len == 80 {
		return false
	} else {
		t.l[t.len++] = ch
		t.l[t.len] = 0
		t.needsupdate = 4
		return true
	}
}

[c: 'HUlib_delCharFromTextLine']
fn hulib_delcharfromtextline(t &Hu_textline_t) bool {
	if !t.len {
		return false
	} else {
		t.l[t.len--] = 0
		t.needsupdate = 4
		return true
	}
}

[c: 'HUlib_drawTextLine']
fn hulib_drawtextline(l &Hu_textline_t, drawcursor bool) {
	i := 0
	w := 0
	x := 0
	c := u8(0)
	x = l.x
	for i = 0; i < l.len; i++ {
		c = C.toupper(l.l[i])
		if c != ` ` && c >= l.sc && c <= `_` {
			w = (i16((l.f[c - l.sc].width)))
			if x + w > 320 {
				break
			}
			v_drawpatchdirect(x, l.y, l.f[c - l.sc])
			x += w
		} else {
			x += 4
			if x >= 320 {
				break
			}
		}
	}
	if drawcursor && x + (i16((l.f[`_` - l.sc].width))) <= 320 {
		v_drawpatchdirect(x, l.y, l.f[`_` - l.sc])
	}
}

[c: 'HUlib_eraseTextLine']
fn hulib_erasetextline(l &Hu_textline_t) {
	lh := 0
	y := 0
	yoffset := 0
	if !automapactive && viewwindowx && l.needsupdate {
		lh = (i16((l.f[0].height))) + 1
		y = l.y
		yoffset = y * 320
		for ; y < l.y + lh; y++ {
			if y < viewwindowy || y >= viewwindowy + viewheight {
				r_videoerase(yoffset, 320)
			} else {
				r_videoerase(yoffset, viewwindowx)
				r_videoerase(yoffset + viewwindowx + viewwidth, viewwindowx)
			}
			yoffset += 320
		}
	}
	if l.needsupdate {
		l.needsupdate--
	}
}

[c: 'HUlib_initSText']
fn hulib_initstext(s &Hu_stext_t, x int, y int, h int, font &&Patch_t, startchar int, on &bool) {
	i := 0
	s.h = h
	s.on = on
	s.laston = true
	s.cl = 0
	for i = 0; i < h; i++ {
		hulib_inittextline(&s.l[i], x, y - i * ((i16((font[0].height))) + 1), font, startchar)
	}
}

[c: 'HUlib_addLineToSText']
fn hulib_addlinetostext(s &Hu_stext_t) {
	i := 0
	if s.cl++ == s.h {
		s.cl = 0
	}
	hulib_cleartextline(&s.l[s.cl])
	for i = 0; i < s.h; i++ {
		s.l[i].needsupdate = 4
	}
}

[c: 'HUlib_addMessageToSText']
fn hulib_addmessagetostext(s &Hu_stext_t, prefix &i8, msg &i8) {
	hulib_addlinetostext(s)
	if prefix {
		for *prefix {
			hulib_addchartotextline(&s.l[s.cl], *(prefix++))
		}
	}
	for *msg {
		hulib_addchartotextline(&s.l[s.cl], *(msg++))
	}
}

[c: 'HUlib_drawSText']
fn hulib_drawstext(s &Hu_stext_t) {
	i := 0
	idx := 0

	l := &Hu_textline_t(0)
	if !*s.on {
		return
	}
	for i = 0; i < s.h; i++ {
		idx = s.cl - i
		if idx < 0 {
			idx += s.h
		}
		l = &s.l[idx]
		hulib_drawtextline(l, false)
	}
}

[c: 'HUlib_eraseSText']
fn hulib_erasestext(s &Hu_stext_t) {
	i := 0
	for i = 0; i < s.h; i++ {
		if s.laston && !*s.on {
			s.l[i].needsupdate = 4
		}
		hulib_erasetextline(&s.l[i])
	}
	s.laston = *s.on
}

[c: 'HUlib_initIText']
fn hulib_inititext(it &Hu_itext_t, x int, y int, font &&Patch_t, startchar int, on &bool) {
	it.lm = 0
	it.on = on
	it.laston = true
	hulib_inittextline(&it.l, x, y, font, startchar)
}

[c: 'HUlib_delCharFromIText']
fn hulib_delcharfromitext(it &Hu_itext_t) {
	if it.l.len != it.lm {
		hulib_delcharfromtextline(&it.l)
	}
}

[c: 'HUlib_eraseLineFromIText']
fn hulib_eraselinefromitext(it &Hu_itext_t) {
	for it.lm != it.l.len {
		hulib_delcharfromtextline(&it.l)
	}
}

[c: 'HUlib_resetIText']
fn hulib_resetitext(it &Hu_itext_t) {
	it.lm = 0
	hulib_cleartextline(&it.l)
}

[c: 'HUlib_addPrefixToIText']
fn hulib_addprefixtoitext(it &Hu_itext_t, str &i8) {
	for *str {
		hulib_addchartotextline(&it.l, *(str++))
	}
	it.lm = it.l.len
}

[c: 'HUlib_keyInIText']
fn hulib_keyinitext(it &Hu_itext_t, ch u8) bool {
	ch = C.toupper(ch)
	if ch >= ` ` && ch <= `_` {
		hulib_addchartotextline(&it.l, i8(ch))
	} else if ch == 127 {
		hulib_delcharfromitext(it)
	} else if ch != 13 {
		return false
	}
	return true
}

[c: 'HUlib_drawIText']
fn hulib_drawitext(it &Hu_itext_t) {
	l := &it.l
	if !*it.on {
		return
	}
	hulib_drawtextline(l, true)
}

[c: 'HUlib_eraseIText']
fn hulib_eraseitext(it &Hu_itext_t) {
	if it.laston && !*it.on {
		it.l.needsupdate = 4
	}
	hulib_erasetextline(&it.l)
	it.laston = *it.on
}
