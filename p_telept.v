[translated]
module main


[typedef]
struct C.FILE {}


// vstart


const ( // empty enum
)

[c:'S_Start']
fn s_start() 

[c:'S_StartSound']
fn s_startsound(origin voidptr, sound_id int) 

[c:'P_SpawnMobj']
fn p_spawnmobj(x int, y int, z int, type_ Mobjtype_t) &Mobj_t

[c:'P_MobjThinker']
fn p_mobjthinker(mobj &Mobj_t) 

[c:'P_TeleportMove']
fn p_teleportmove(thing &Mobj_t, x int, y int) bool

[c:'EV_Teleport']
fn ev_teleport(line &Line_t, side int, thing &Mobj_t) int

[c:'EV_Teleport']
fn ev_teleport(line &Line_t, side int, thing &Mobj_t) int {
	i := 0
	tag := 0
	m := &Mobj_t(0)
	fog := &Mobj_t(0)
	an := u32(0)
	thinker := &Thinker_t(0)
	sector := &Sector_t(0)
	oldx := 0
	oldy := 0
	oldz := 0
	if thing.flags & Mobjflag_t.mf_missile {
	return 0
	}
	if side == 1 {
	return 0
	}
	tag = line.tag
	for i = 0 ; i < numsectors ; i ++ {
		if sectors [i] .tag == tag {
			thinker = thinkercap.next
			for thinker = thinkercap.next ; thinker != &thinkercap ; thinker = thinker.next {
				if thinker.function.acp1 != Actionf_p1(p_mobjthinker) {
				continue
				
				}
				m = &Mobj_t(thinker)
				if m.type_ != Mobjtype_t.mt_teleportman {
				continue
				
				}
				sector = m.subsector.sector
				if sector - sectors != i {
				continue
				
				}
				oldx = thing.x
				oldy = thing.y
				oldz = thing.z
				if !p_teleportmove(thing, m.x, m.y) {
				return 0
				}
				if gameversion != GameVersion_t.exe_final {
				thing.z = thing.floorz
				}
				if thing.player {
				thing.player.viewz = thing.z + thing.player.viewheight
				}
				fog = p_spawnmobj(oldx, oldy, oldz, Mobjtype_t.mt_tfog)
				s_startsound(fog, Sfxenum_t.sfx_telept)
				an = m.angle >> 19
				fog = p_spawnmobj(m.x + 20 * finecosine [an] , m.y + 20 * finesine [an] , thing.z, Mobjtype_t.mt_tfog)
				s_startsound(fog, Sfxenum_t.sfx_telept)
				if thing.player {
				thing.reactiontime = 18
				}
				thing.angle = m.angle
				thing.momx = 0
				thing.momy = 0
				thing.momz = 0
				return 1
			}
		}
	}
	return 0
}

