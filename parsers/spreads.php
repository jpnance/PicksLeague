<?php
	include(realpath(__DIR__ . '/../') . '/config.php');
	include(realpath(__DIR__ . '/../') . '/connect.php');
	include(realpath(__DIR__ . '/../') . '/misc.php');
	include(realpath(__DIR__ . '/../') . '/getweek.php');

	date_default_timezone_set("US/Eastern");

	// prevent caching
	header('Cache-Control: no-cache');

	$headers = [
		'http' => [
			'header' => implode("\r\n", [
				"Host: io.oddsshark.com",
				"User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:56.0) Gecko/20100101 Firefox/56.0",
				"Accept: */*",
				"Accept-Language: en-US,en;q=0.5",
				"Accept-Encoding: gzip, deflate, br",
				"Referer: http://www.oddsshark.com/nfl/odds",
				"origin: http://www.oddsshark.com",
				"Cache-Control: max-age=0",
				"Connection: keep-alive",
				"TE: Trailers"
			])
		]
	];

	$context = stream_context_create($headers);

	$page = file_get_contents("http://io.oddsshark.com/ticker/nfl", false, $context);

	if ($page === false) {
		exit(-1);
	}

	$oddsJson = json_decode($page);

	if ($oddsJson && $oddsJson->matchups && count($oddsJson->matchups) != 0) {
		foreach ($oddsJson->matchups as $game) {
			if ($game->type != 'matchup') {
				continue;
			}

			$query = "NULL";
			
			$date = $game->event_date;
			$awayTeam = normalizeAbbreviation($game->away_short_name);
			$homeTeam = normalizeAbbreviation($game->home_short_name);
			$spread = $game->home_odds;

			if ($spread === null) {
				$spread = 'NULL';
			}
			else if ($spread === 0) {
				$spread = 0.5;
			}
			else if ($spread - floor($spread) > 0) {
				$spread = floatval($spread);
			}
			else {
				$spread = floatval($spread) + 0.5;
			}

			$startTime = date('Y-m-d H:i:s', strtotime($date));
			$startTimeUtc = gmdate('Y-m-d H:i:s', strtotime($date));

			if (($argc > 1) && ($argv[1] == "preview")) {
			}
			else if (strtotime($startTime) - time() > 48 * 60 * 60) {
				continue;
			}

			$week = getweek(strtotime($date . " " . ($season + (preg_match('/-01-/', $date) ? 1 : 0))));

			if ($week < 1 || $week > 17) {
				continue;
			}

			$query = "CALL update_game('{$homeTeam}', '{$awayTeam}', {$season}, {$week}, '{$startTimeUtc}', NULL, NULL, {$spread});";

			if ($query != "NULL") {
				echo $query . "\n";

				if (($argc > 1) && ($argv[1] == "update")) {
					mysqli_query($link, $query);
				}
			}
		}
	}
?>
