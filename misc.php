<?php
	$season = 2020;
	$cookieExpirationTime = strtotime("January 31, 2021");

	$teamsarray = Array(
		'Arizona'	=> 'ARI',	'ARI'	=> 'Arizona',
		'Atlanta'	=> 'ATL',	'ATL'	=> 'Atlanta',
		'Baltimore'	=> 'BAL',	'BAL'	=> 'Baltimore',
		'Buffalo'	=> 'BUF',	'BUF'	=> 'Buffalo',
		'Carolina'	=> 'CAR',	'CAR'	=> 'Carolina',
		'Chicago'	=> 'CHI',	'CHI'	=> 'Chicago',
		'Cincinnati'	=> 'CIN',	'CIN'	=> 'Cincinnati',
		'Cleveland'	=> 'CLE',	'CLE'	=> 'Cleveland',
		'Dallas'	=> 'DAL',	'DAL'	=> 'Dallas',
		'Denver'	=> 'DEN',	'DEN'	=> 'Denver',
		'Detroit'	=> 'DET',	'DET'	=> 'Detroit',
		'Green Bay'	=> 'GB',	'GB'	=> 'Green Bay' ,
		'Houston'	=> 'HOU',	'HOU'	=> 'Houston',
		'Indianapolis'	=> 'IND',	'IND'	=> 'Indianapolis',
		'Jacksonville'	=> 'JAX',	'JAX'	=> 'Jacksonville',
		'Kansas City'	=> 'KC',	'KC'	=> 'Kansas City' ,
		'Los Angeles'	=> 'LA',	'LA'	=> 'Los Angeles' ,
		'L.A. Chargers'	=> 'LAC',
		'LA Chargers'	=> 'LAC',	'LAC'	=> 'LA Chargers',
		'L.A. Rams'	=> 'LAR',
		'LA Rams'	=> 'LAR',	'LAR'	=> 'LA Rams',
		'Las Vegas'	=> 'LV',	'LV'	=> 'Las Vegas',
		'Miami'		=> 'MIA',	'MIA'	=> 'Miami',
		'Minnesota'	=> 'MIN',	'MIN'	=> 'Minnesota',
		'New England'	=> 'NE',	'NE'	=> 'New England',
		'New Orleans'	=> 'NO',	'NO'	=> 'New Orleans',
		'N.Y. Giants'	=> 'NYG',
		'NY Giants'	=> 'NYG',	'NYG'	=> 'NY Giants',
		'N.Y. Jets'	=> 'NYJ',
		'NY Jets'	=> 'NYJ',	'NYJ'	=> 'NY Jets',
		'Oakland'	=> 'OAK',	'OAK'	=> 'Oakland',
		'Philadelphia'	=> 'PHI',	'PHI'	=> 'Philadelphia',
		'Pittsburgh'	=> 'PIT',	'PIT'	=> 'Pittsburgh',
		'San Diego'	=> 'SD',	'SD'	=> 'San Diego',
		'San Francisco'	=> 'SF',	'SF'	=> 'San Francisco',
		'Seattle'	=> 'SEA',	'SEA'	=> 'Seattle',
		'St. Louis'	=> 'STL',	'STL'	=> 'St. Louis',
		'Tampa Bay'	=> 'TB',	'TB'	=> 'Tampa Bay' ,
		'Tennessee'	=> 'TEN',	'TEN'	=> 'Tennessee',
		'Washington'	=> 'WAS',	'WAS'	=> 'Washington',	'WSH' => 'Washington'
	);

	$teamsarray2 = Array(
		'h1836'			=> 'Houston 1836',
		'aggies'		=> 'Cal-Davis Aggies',
		'ajax'			=> 'Ajax Football Club',
		'arsenal'		=> 'Arsenal Football Club',
		'astros'		=> 'Houston Astros',
		'austinfc'		=> 'Austin FC',
		'avfc'			=> 'Aston Villa Football Club',
		'blues'			=> 'St. Louis Blues',
		'buccaneers1976'=> 'Tampa Bay Buccaneers (1976)',
		'buckeyes'		=> 'Ohio State Buckeyes',
		'buffaloes'		=> 'Colorado Buffaloes',
		'cardiffcity'	=> 'Cardiff City Football Club',
		'cardinal'		=> 'Stanford Cardinal',
		'chargers2002'	=> 'San Diego Chargers (2002)',
		'chelsea'		=> 'Chelsea Football Club',
		'cibaenas'		=> '�guilas Cibae�as Baseball Club',
		'colt45s'		=> 'Houston Colt .45s',
		'crusaders'		=> 'Crusaders',
		'ct'			=> 'Chinese Taipei Baseball',
		'cubs'			=> 'Chicago Cubs',
		'diamondjaxx'	=> 'Pierce County Diamond Jaxx',
		'dodgers'		=> 'Los Angeles Dodgers',
		'dolphins1997'	=> 'Miami Dolphins (1997)',
		'ecb'			=> 'England Cricket',
		'everton'		=> 'Everton Football Club',
		'flyingtigers'	=> 'Lakeland Flying Tigers',
		'gryffindor'	=> 'Gryffindor Quidditch',
		'hokies'		=> 'Virginia Tech Hokies',
		'jaguars1995'	=> 'Jacksonville Jaguars (1995)',
		'lakers'		=> 'Los Angeles Lakers',
		'lions2003'		=> 'Detroit Lions (2003)',
		'longhorns'		=> 'Texas Longhorns',
		'mavericks'		=> 'Dallas Mavericks',
		'nittanylions'	=> 'Penn State Nittany Lions',
		'nycfc'			=> 'New York City FC',
		'oilers'		=> 'Houston Oilers',
		'pacquiao'		=> 'Manny Pacquiao',
		'panthers'		=> 'Carolina Panthers (1995)',
		'penguins'		=> 'Pittsburgh Penguins',
		'pirates'		=> 'Pittsburgh Pirates',
		'purplecobras'	=> 'Globo Gym Purple Cobras',
		'rage'			=> 'Orlando Rage',
		'rangers'		=> 'Texas Rangers',
		'realmadrid'	=> 'Real Madrid Club de F�tbol',
		'redsox'		=> 'Boston Red Sox',
		'redstockings'	=> 'Cincinnati Red Stockings',
		'revolution'	=> 'New England Revolution',
		'sabres'		=> 'Buffalo Sabres',
		'seahawks2002'	=> 'Seattle Seahawks (2002)',
		'stars'			=> 'Dallas Stars',
		'stallions'		=> 'Buffalo Stallions',
		'terrapins'		=> 'Maryland Terrapins',
		'tigers'		=> 'LSU Tigers',
		'timbers'		=> 'Portland Timbers',
		'tottenham'		=> 'Tottenham Hotspur Football Club',
		'usmnt'			=> 'U.S. Soccer',
		'vikings1966'	=> 'Minnesota Vikings (1966)',
		'wolverines'	=> 'Michigan Wolverines',
		'wranglers'		=> 'Austin Wranglers',
		'yankees'		=> 'New York Yankees',

		'niners'		=> 'San Francisco 49ers',
		'bears'			=> 'Chicago Bears',
		'bengals'		=> 'Cincinnati Bengals',
		'bills'			=> 'Buffalo Bills',
		'broncos'		=> 'Denver Broncos',
		'browns'		=> 'Cleveland Browns',
		'buccaneers'	=> 'Tampa Bay Buccaneers',
		'cardinals'		=> 'Arizona Cardinals',
		'chargers'		=> 'San Diego Chargers',
		'chiefs'		=> 'Kansas City Chiefs',
		'colts'			=> 'Indianapolis Colts',
		'cowboys'		=> 'Dallas Cowboys',
		'dolphins'		=> 'Miami Dolphins',
		'eagles'		=> 'Philadelphia Eagles',
		'falcons'		=> 'Atlanta Falcons',
		'footballteam'	=> 'Washington Football Team',	
		'giants'		=> 'New York Giants',
		'jaguars'		=> 'Jacksonville Jaguars',
		'jets'			=> 'New York Jets',
		'lions'			=> 'Detroit Lions',
		'packers'		=> 'Green Bay Packers',
		'panthers'		=> 'Carolina Panthers',
		'patriots'		=> 'New England Patriots',
		'raiders'		=> 'Oakland Raiders',
		'rams'			=> 'Los Angeles Rams',
		'ravens'		=> 'Baltimore Ravens',
		'saints'		=> 'New Orleans Saints',
		'seahawks'		=> 'Seattle Seahawks',
		'steelers'		=> 'Pittsburgh Steelers',
		'texans'		=> 'Houston Texans',
		'titans'		=> 'Tennessee Titans',
		'vikings'		=> 'Minnesota Vikings',
	);
  
	function normalizeAbbreviation($abbreviation) {
		switch ($abbreviation) {
			case 'GNB': return 'GB'; break;
			case 'JAC': return 'JAX'; break;
			case 'KAN': return 'KC'; break;
			case 'LA': return 'LAR'; break;
			case 'NOR': return 'NO'; break;
			case 'NWE': return 'NE'; break;
			case 'SFO': return 'SF'; break;
			case 'TAM': return 'TB'; break;
			case 'WSH': return 'WAS'; break;
			default: return $abbreviation;
		}
	}

	function spaceify($name) {
		$str = "";
		for ($i = 0; $i < strlen($name) - 1; $i++) {
			$str .= $name[$i] . "<br>";
		}
	$str .= $name[strlen($name) - 1];

		return $str;
	}

	function cleanText($text) {
		$text = str_replace("<", "&lt;", $text);
		$text = str_replace(">", "&gt;", $text);
		$text = preg_replace("/\r\n(\r\n)+/", "<p />", $text);
		$text = str_replace("\r\n", "<br />", $text);
		$text = preg_replace("/(\[b\])(.*?)(\[\/b\])/i", "<b>\\2</b>", $text);
		$text = preg_replace("/(\[u\])(.*?)(\[\/u\])/i", "<u>\\2</u>", $text);
		$text = preg_replace("/(\[i\])(.*?)(\[\/i\])/i", "<i>\\2</i>", $text);
		$text = preg_replace("/(\[strike\])(.*?)(\[\/strike\])/i", "<strike>\\2</strike>", $text);
		$text = preg_replace("/(\[url\])(.*?)(\[\/url\])/i", "<a href=\"\\2\">\\2</a>", $text);
		$text = preg_replace("/(\[url )(.*?)(\])(.*?)(\[\/url\])/i", "<a href=\"\\2\">\\4</a>", $text);
		$text = preg_replace("/(\[url=)(.*?)(\])(.*?)(\[\/url\])/i", "<a href=\"\\2\">\\4</a>", $text);
		return $text;
	}

	function restoreText($text) {
		$text = str_replace("<p />","\r\n\r\n",$text);
		$text = str_replace("<br />","\r\n",$text);
		$text = preg_replace("/(\<b\>)(.*)(\<\/b\>)/", "[b]\\2[/b]", $text);
		$text = preg_replace("/(\<u\>)(.*)(\<\/u\>)/", "[u]\\2[/u]", $text);
		$text = preg_replace("/(\<i\>)(.*)(\<\/i\>)/", "[i]\\2[/i]", $text);
		$text = preg_replace("/(\<strike\>)(.*)(\<\/strike\>)/", "[strike]\\2[/strike]", $text);
		$text = preg_replace("/(\<a href=\")(.*)(\"\>)(.*)(\<\/a\>)/", "[url \\2]\\4[/url]", $text);
		return $text;
	}
?>
