<?php

	include(realpath(__DIR__ . '/../') . '/config.php');
	include(realpath(__DIR__ . '/../') . '/connect.php');
	include(realpath(__DIR__ . '/../') . '/misc.php');
	include(realpath(__DIR__ . '/../') . '/getweek.php');

	date_default_timezone_set("US/Eastern");

	// prevent caching
	header('Cache-Control: no-cache');

	$scoreboardData = json_decode(file_get_contents('https://site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard'));

	$season = $scoreboardData->season->year;
	$week = $scoreboardData->week->number;

	foreach ($scoreboardData->events as $footballGame) {
		$competition = $footballGame->competitions[0];

		$team0 = $competition->competitors[0]->team;
		$team1 = $competition->competitors[1]->team;

		$awayTeam = ($competition->competitors[0]->homeAway == 'away') ? $team0 : $team1;
		$homeTeam = ($competition->competitors[0]->homeAway == 'home') ? $team0 : $team1;

		$awayTeam->abbreviation = normalizeAbbreviation($awayTeam->abbreviation);
		$homeTeam->abbreviation = normalizeAbbreviation($homeTeam->abbreviation);

		if ($competition->status->type->name != 'STATUS_FINAL') {
			continue;
		}

		$score0 = intval($competition->competitors[0]->score);
		$score1 = intval($competition->competitors[1]->score);

		$awayScore = ($awayTeam->id == $team0->id) ? $score0 : $score1;
		$homeScore = ($homeTeam->id == $team0->id) ? $score0 : $score1;

		$query = "CALL update_game('" . $homeTeam->abbreviation . "', '" . $awayTeam->abbreviation . "', " . $season . ", " . $week . ", NULL, " . $homeScore . ", " . $awayScore . ", NULL);";

		if ($argc > 1 && $argv[1] == 'update') {
			mysqli_query($link, $query);
		}
		else {
			echo $query . "\n"; 
		}
	}
?>
