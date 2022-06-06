[translated]
module main

[typedef]
struct C.FILE {}

// vstart

const ( // empty enum
)

[weak]
__global (
	myargv &&u8
)

[c: 'M_CheckParm']
fn m_checkparm(check &i8) int

[c: 'M_CheckParmWithArgs']
fn m_checkparmwithargs(check &i8, num_args int) int

[c: 'M_ParmExists']
fn m_parmexists(check &i8) bool

[c: 'StatCopy']
fn statcopy(stats &Wbstartstruct_t)

[c: 'StatDump']
fn statdump()

[export: 'doom1_par_times']
const (
	doom1_par_times = [30, 75, 120, 90, 165, 180, 180, 30, 165]!
)

[export: 'doom2_par_times']
const (
	doom2_par_times = [30, 90, 120, 120, 90, 150, 120, 120, 270]!
)

[export: 'player_colors']
const (
	player_colors = [c'Green', c'Indigo', c'Brown', c'Red']!
)

[weak]
__global (
	captured_stats [32]Wbstartstruct_t
)

//!
[weak]
__global (
	num_captured_stats = int(0)
)

//!
[weak]
__global (
	discovered_gamemission = GameMission_t(GameMission_t.none_)
)

[c: 'DiscoverGamemode']
fn discovergamemode(stats &Wbstartstruct_t, num_stats int) {
	partime := 0
	level := 0
	i := 0
	if discovered_gamemission != GameMission_t.none_ {
		return
	}
	for i = 0; i < num_stats; i++ {
		level = stats[i].last
		if stats[i].epsd > 0 {
			discovered_gamemission = GameMission_t.doom
			return
		}
		if level >= 9 {
			discovered_gamemission = GameMission_t.doom2
			return
		}
		partime = stats[i].partime
		if partime == doom1_par_times[level] * 35 && partime != doom2_par_times[level] * 35 {
			discovered_gamemission = GameMission_t.doom
			return
		}
		if partime != doom1_par_times[level] * 35 && partime == doom2_par_times[level] * 35 {
			discovered_gamemission = GameMission_t.doom2
			return
		}
	}
}

[c: 'GetNumPlayers']
fn getnumplayers(stats &Wbstartstruct_t) int {
	i := 0
	num_players := 0
	for i = 0; i < 4; i++ {
		if stats.plyr[i].in_ {
			num_players++
		}
	}
	return num_players
}

[c: 'PrintBanner']
fn printbanner(stream &C.FILE) {
	C.fprintf(stream, c'===========================================\n')
}

[c: 'PrintPercentage']
fn printpercentage(stream &C.FILE, amount int, total int) {
	if total == 0 {
		C.fprintf(stream, c'0')
	} else {
		C.fprintf(stream, c'%i / %i', amount, total)
		C.fprintf(stream, c' (%i%%)', i16((amount * 100)) / total)
	}
}

[c: 'PrintPlayerStats']
fn printplayerstats(stream &C.FILE, stats &Wbstartstruct_t, player_num int) {
	player := &stats.plyr[player_num]
	C.fprintf(stream, c'Player %i (%s):\n', player_num + 1, player_colors[player_num])
	C.fprintf(stream, c'\tKills: ')
	printpercentage(stream, player.skills, stats.maxkills)
	C.fprintf(stream, c'\n')
	C.fprintf(stream, c'\tItems: ')
	printpercentage(stream, player.sitems, stats.maxitems)
	C.fprintf(stream, c'\n')
	C.fprintf(stream, c'\tSecrets: ')
	printpercentage(stream, player.ssecret, stats.maxsecret)
	C.fprintf(stream, c'\n')
}

[c: 'PrintFragsTable']
fn printfragstable(stream &C.FILE, stats &Wbstartstruct_t) {
	x := 0
	y := 0

	C.fprintf(stream, c'Frags:\n')
	C.fprintf(stream, c'\t\t')
	for x = 0; x < 4; x++ {
		if !stats.plyr[x].in_ {
			continue
		}
		C.fprintf(stream, c'%s\t', player_colors[x])
	}
	C.fprintf(stream, c'\n')
	C.fprintf(stream, c'\t\t-------------------------------- VICTIMS\n')
	for y = 0; y < 4; y++ {
		if !stats.plyr[y].in_ {
			continue
		}
		C.fprintf(stream, c'\t%s\t|', player_colors[y])
		for x = 0; x < 4; x++ {
			if !stats.plyr[x].in_ {
				continue
			}
			C.fprintf(stream, c'%i\t', stats.plyr[y].frags[x])
		}
		C.fprintf(stream, c'\n')
	}
	C.fprintf(stream, c'\t\t|\n')
	C.fprintf(stream, c'\t     KILLERS\n')
}

[c: 'PrintLevelName']
fn printlevelname(stream &C.FILE, episode int, level int) {
	printbanner(stream)
	match discovered_gamemission {
		.doom /* case comp body kind=CallExpr is_enum=true */ {
			C.fprintf(stream, c'E%iM%i\n', episode + 1, level + 1)
		}
		.doom2 /* case comp body kind=CallExpr is_enum=true */ {
			C.fprintf(stream, c'MAP%02i\n', level + 1)
		}
		.none_ /* case comp body kind=CallExpr is_enum=true */ {
			C.fprintf(stream, c'E%iM%i / MAP%02i\n', episode + 1, level + 1, level + 1)
		}
		else {
			C.fprintf(stream, c'E%iM%i / MAP%02i\n', episode + 1, level + 1, level + 1)
		}
	}
	printbanner(stream)
}

[c: 'PrintStats']
fn printstats(stream &C.FILE, stats &Wbstartstruct_t) {
	leveltime := 0
	partime := 0

	i := 0
	printlevelname(stream, stats.epsd, stats.last)
	C.fprintf(stream, c'\n')
	leveltime = stats.plyr[0].stime / 35
	partime = stats.partime / 35
	C.fprintf(stream, c'Time: %i:%02i', leveltime / 60, leveltime % 60)
	C.fprintf(stream, c' (par: %i:%02i)\n', partime / 60, partime % 60)
	C.fprintf(stream, c'\n')
	for i = 0; i < 4; i++ {
		if stats.plyr[i].in_ {
			printplayerstats(stream, stats, i)
		}
	}
	if getnumplayers(stats) >= 2 {
		printfragstable(stream, stats)
	}
	C.fprintf(stream, c'\n')
}

[c: 'StatCopy']
fn statcopy(stats &Wbstartstruct_t) {
	if m_parmexists(c'-statdump') && num_captured_stats < 32 {
		C.memcpy(&captured_stats[num_captured_stats], stats, sizeof(Wbstartstruct_t))
		num_captured_stats++
	}
}

[c: 'StatDump']
fn statdump() {
	dumpfile := &C.FILE(0)
	i := 0
	i = m_checkparmwithargs(c'-statdump', 1)
	if i > 0 {
		C.printf(c'Statistics captured for %i level(s)\n', num_captured_stats)
		discovergamemode(captured_stats, num_captured_stats)
		if C.strcmp(myargv[i + 1], c'-') != 0 {
			dumpfile = C.fopen(myargv[i + 1], c'w')
		} else {
			dumpfile = (voidptr(0))
		}
		for i = 0; i < num_captured_stats; i++ {
			printstats(dumpfile, &captured_stats[i])
		}
		if dumpfile != (voidptr(0)) {
			C.fclose(dumpfile)
		}
	}
}
