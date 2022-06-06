[translated]
module main

[typedef]
struct C.FILE {}

// vstart

[c: 'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

[c: 'Z_Free']
fn z_free(ptr voidptr)

const ( // empty enum
)

[c: 'P_InitThinkers']
fn p_initthinkers()

[c: 'P_AddThinker']
fn p_addthinker(thinker &Thinker_t)

[c: 'P_RemoveThinker']
fn p_removethinker(thinker &Thinker_t)

[c: 'P_PlayerThink']
fn p_playerthink(player &Player_t)

[c: 'P_RespawnSpecials']
fn p_respawnspecials()

[c: 'P_UpdateSpecials']
fn p_updatespecials()

[weak]
__global (
	menuactive bool
)

[c: 'P_InitThinkers']
fn p_initthinkers() {
	thinkercap.prev = &thinkercap
	thinkercap.next = &thinkercap
}

[c: 'P_AddThinker']
fn p_addthinker(thinker &Thinker_t) {
	thinkercap.prev.next = thinker
	thinker.next = &thinkercap
	thinker.prev = thinkercap.prev
	thinkercap.prev = thinker
}

[c: 'P_RemoveThinker']
fn p_removethinker(thinker &Thinker_t) {
	thinker.function.acv = Actionf_v((-1))
}

[c: 'P_AllocateThinker']
fn p_allocatethinker(thinker &Thinker_t) {
}

[c: 'P_RunThinkers']
fn p_runthinkers() {
	currentthinker := &Thinker_t(0)
	nextthinker := &Thinker_t(0)

	currentthinker = thinkercap.next
	for currentthinker != &thinkercap {
		if currentthinker.function.acv == Actionf_v((-1)) {
			nextthinker = currentthinker.next
			currentthinker.next.prev = currentthinker.prev
			currentthinker.prev.next = currentthinker.next
			z_free(currentthinker)
		} else {
			if currentthinker.function.acp1 {
				currentthinker.function.acp1(currentthinker)
			}
			nextthinker = currentthinker.next
		}
		currentthinker = nextthinker
	}
}

[c: 'P_Ticker']
fn p_ticker() {
	i := 0
	if paused {
		return
	}
	if !netgame && menuactive && !demoplayback && players[consoleplayer].viewz != 1 {
		return
	}
	for i = 0; i < 4; i++ {
		if playeringame[i] {
			p_playerthink(&players[i])
		}
	}
	p_runthinkers()
	p_updatespecials()
	p_respawnspecials()
	leveltime++
}
