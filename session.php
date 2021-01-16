<?php

$sessionKey = $_COOKIE['sessionKey'];

if ($sessionKey) {
	$ch = curl_init('https://login.coinflipper.org/sessions/retrieve');

	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
	curl_setopt($ch, CURLOPT_POSTFIELDS, 'key=' . $sessionKey);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

	$jsonString = curl_exec($ch);

	curl_close($ch);

	//echo $jsonString;
	$json = json_decode($jsonString);

	$_SESSION['username'] = $json->user->username;
	$_SESSION['nickname'] = $json->user->name->nick;
}

?>
