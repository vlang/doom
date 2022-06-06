[translated]
module main

[typedef]
struct C.FILE {}

// vstart

[c: 'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

[c: 'P_Random']
fn p_random() int

const ( // empty enum
)

[c: 'P_AddThinker']
fn p_addthinker(thinker &Thinker_t)

[c: 'P_FindSectorFromLineTag']
fn p_findsectorfromlinetag(line &Line_t, start int) int

[c: 'P_FindMinSurroundingLight']
fn p_findminsurroundinglight(sector &Sector_t, max int) int

[c: 'getNextSector']
fn getnextsector(line &Line_t, sec &Sector_t) &Sector_t

[c: 'P_SpawnFireFlicker']
fn p_spawnfireflicker(sector &Sector_t)

[c: 'T_LightFlash']
fn t_lightflash(flash &Lightflash_t)

[c: 'P_SpawnLightFlash']
fn p_spawnlightflash(sector &Sector_t)

[c: 'T_StrobeFlash']
fn t_strobeflash(flash &Strobe_t)

[c: 'P_SpawnStrobeFlash']
fn p_spawnstrobeflash(sector &Sector_t, fastorslow int, insync int)

[c: 'EV_StartLightStrobing']
fn ev_startlightstrobing(line &Line_t)

[c: 'EV_TurnTagLightsOff']
fn ev_turntaglightsoff(line &Line_t)

[c: 'EV_LightTurnOn']
fn ev_lightturnon(line &Line_t, bright int)

[c: 'T_Glow']
fn t_glow(g &Glow_t)

[c: 'P_SpawnGlowingLight']
fn p_spawnglowinglight(sector &Sector_t)

[c: 'T_FireFlicker']
fn t_fireflicker(flick &Fireflicker_t) {
	amount := 0
	if flick.count-- {
		return
	}
	amount = (p_random() & 3) * 16
	if flick.sector.lightlevel - amount < flick.minlight {
		flick.sector.lightlevel = flick.minlight
	} else { // 3
		flick.sector.lightlevel = flick.maxlight - amount
	}
	flick.count = 4
}

[c: 'P_SpawnFireFlicker']
fn p_spawnfireflicker(sector &Sector_t) {
	flick := &Fireflicker_t(0)
	sector.special = 0
	flick = z_malloc(sizeof(*flick), 6, 0)
	p_addthinker(&flick.thinker)
	flick.thinker.function.acp1 = Actionf_p1(t_fireflicker)
	flick.sector = sector
	flick.maxlight = sector.lightlevel
	flick.minlight = p_findminsurroundinglight(sector, sector.lightlevel) + 16
	flick.count = 4
}

[c: 'T_LightFlash']
fn t_lightflash(flash &Lightflash_t) {
	if flash.count-- {
		return
	}
	if flash.sector.lightlevel == flash.maxlight {
		flash.sector.lightlevel = flash.minlight
		flash.count = (p_random() & flash.mintime) + 1
	} else {
		flash.sector.lightlevel = flash.maxlight
		flash.count = (p_random() & flash.maxtime) + 1
	}
}

[c: 'P_SpawnLightFlash']
fn p_spawnlightflash(sector &Sector_t) {
	flash := &Lightflash_t(0)
	sector.special = 0
	flash = z_malloc(sizeof(*flash), 6, 0)
	p_addthinker(&flash.thinker)
	flash.thinker.function.acp1 = Actionf_p1(t_lightflash)
	flash.sector = sector
	flash.maxlight = sector.lightlevel
	flash.minlight = p_findminsurroundinglight(sector, sector.lightlevel)
	flash.maxtime = 64
	flash.mintime = 7
	flash.count = (p_random() & flash.maxtime) + 1
}

[c: 'T_StrobeFlash']
fn t_strobeflash(flash &Strobe_t) {
	if flash.count-- {
		return
	}
	if flash.sector.lightlevel == flash.minlight {
		flash.sector.lightlevel = flash.maxlight
		flash.count = flash.brighttime
	} else {
		flash.sector.lightlevel = flash.minlight
		flash.count = flash.darktime
	}
}

[c: 'P_SpawnStrobeFlash']
fn p_spawnstrobeflash(sector &Sector_t, fastorslow int, insync int) {
	flash := &Strobe_t(0)
	flash = z_malloc(sizeof(*flash), 6, 0)
	p_addthinker(&flash.thinker)
	flash.sector = sector
	flash.darktime = fastorslow
	flash.brighttime = 5
	flash.thinker.function.acp1 = Actionf_p1(t_strobeflash)
	flash.maxlight = sector.lightlevel
	flash.minlight = p_findminsurroundinglight(sector, sector.lightlevel)
	if flash.minlight == flash.maxlight {
		flash.minlight = 0
	}
	sector.special = 0
	if !insync {
		flash.count = (p_random() & 7) + 1
	} else { // 3
		flash.count = 1
	}
}

[c: 'EV_StartLightStrobing']
fn ev_startlightstrobing(line &Line_t) {
	secnum := 0
	sec := &Sector_t(0)
	secnum = p_findsectorfromlinetag(line, secnum)
	for secnum >= 0 {
		secnum = p_findsectorfromlinetag(line, secnum)
		sec = &sectors[secnum]
		if sec.specialdata {
			continue
		}
		p_spawnstrobeflash(sec, 35, 0)
	}
}

[c: 'EV_TurnTagLightsOff']
fn ev_turntaglightsoff(line &Line_t) {
	i := 0
	j := 0
	min := 0
	sector := &Sector_t(0)
	tsec := &Sector_t(0)
	templine := &Line_t(0)
	sector = sectors
	for j = 0; j < numsectors; j++ {
		if sector.tag == line.tag {
			min = sector.lightlevel
			for i = 0; i < sector.linecount; i++ {
				templine = sector.lines[i]
				tsec = getnextsector(templine, sector)
				if !tsec {
					continue
				}
				if tsec.lightlevel < min {
					min = tsec.lightlevel
				}
			}
			sector.lightlevel = min
		}
		sector++
	}
}

[c: 'EV_LightTurnOn']
fn ev_lightturnon(line &Line_t, bright int) {
	i := 0
	j := 0
	sector := &Sector_t(0)
	temp := &Sector_t(0)
	templine := &Line_t(0)
	sector = sectors
	for i = 0; i < numsectors; i++ {
		if sector.tag == line.tag {
			if !bright {
				for j = 0; j < sector.linecount; j++ {
					templine = sector.lines[j]
					temp = getnextsector(templine, sector)
					if !temp {
						continue
					}
					if temp.lightlevel > bright {
						bright = temp.lightlevel
					}
				}
			}
			sector.lightlevel = bright
		}
		sector++
	}
}

[c: 'T_Glow']
fn t_glow(g &Glow_t) {
	match g.direction {
		-1 /* case comp body kind=CompoundAssignOperator is_enum=false */ {
			g.sector.lightlevel -= 8
			if g.sector.lightlevel <= g.minlight {
				g.sector.lightlevel += 8
				g.direction = 1
			}
		}
		1 /* case comp body kind=CompoundAssignOperator is_enum=false */ {
			g.sector.lightlevel += 8
			if g.sector.lightlevel >= g.maxlight {
				g.sector.lightlevel -= 8
				g.direction = -1
			}
		}
		else {}
	}
}

[c: 'P_SpawnGlowingLight']
fn p_spawnglowinglight(sector &Sector_t) {
	g := &Glow_t(0)
	g = z_malloc(sizeof(*g), 6, 0)
	p_addthinker(&g.thinker)
	g.sector = sector
	g.minlight = p_findminsurroundinglight(sector, sector.lightlevel)
	g.maxlight = sector.lightlevel
	g.thinker.function.acp1 = Actionf_p1(t_glow)
	g.direction = -1
	sector.special = 0
}
