		<form id="loginnav" action="https://login.coinflipper.org/links/create" method="post">
			<input name="sendLoginLink" type="hidden" value="true" />
			<input name="redirectTo" type="hidden" value="https://www.coinflipper.org<?= $_SERVER['REQUEST_URI'] ?>" />
			<?php if (isset($week)) { ?><input id="week" name="week" type="hidden" value="<?= $week ?>" /><?php } ?>
			<table id="header">
				<tr>
<?php if (isset($_SESSION['username']) && $_SESSION['username'] != "") { ?>
					<td id="welcome">
						Welcome, <b><?= $_SESSION['nickname'] ?></b>!<br /><span class="log-out">Log Out: <a href="https://login.coinflipper.org/sessions/delete">This Device</a> | <a href="https://login.coinflipper.org/sessions/deleteAll">All Devices</a></span>
					</td>

					<td id="loginBox" style="display: none; visibility: hidden;">
<?php } else if (isset($_GET['success']) && $_GET['success'] == 'email-sent') { ?>
					<td id="check-email" class="check-email">
						Check your email for your login link!
					</td>

					<td id="loginBox" style="display: none; visibility: hidden;">
<?php } else { ?>
					<td id="loginBox">
<?php } ?>
						<table>
							<tr>
								<td id="left">
									<?php
										$placeholder = 'Email Address';

										if (isset($_GET['error'])) {
											if ($_GET['error'] == 'invalid-email') {
												$placeholder = 'Invalid Email Address';
											}
											else if ($_GET['error'] == 'not-found') {
												$placeholder = 'Unknown Email Address';
											}
											else {
												$placeholder = 'Unknown Error';
											}
										}
									?>
									<input id="email" name="email" type="text" placeholder="<?= $placeholder; ?>" <?php if (isset($_GET['error'])) echo "style=\"background-color: rgb(265, 183, 183);\""; ?> />
									<!--
									<input id="username" name="username" type="text" size="15" value="<?= isset($_COOKIE['lastlogin']) ? htmlspecialchars($_COOKIE['lastlogin']) : '' ?>"<?php if (isset($_SESSION['invalidLogin']) && $_SESSION['invalidLogin'] != "") echo " style=\"background-color: rgb(265, 183, 183);\""; ?> /><br />
									<input id="password" name="password" type="password" size="15"<?php if (isset($_SESSION['invalidLogin']) && $_SESSION['invalidLogin'] != "") echo " style=\"background-color: rgb(265, 183, 183);\""; ?> />
									-->
								</td>
								<td id="center">
									<input id="login" type="submit" value="Send Login Link" />
								</td>
							</tr>
						</table>
					</td>

					<td id="right">
						<div id="currentTime"><?php echo date("l, F j, Y - g:i:sa"); ?></div>
						<div id="links">
<?php $currentPage = $_SERVER['PHP_SELF'] ?>
							<a<?php if (strpos($currentPage, "bigboard.php") || strpos($currentPage, "index.php")) { ?> class="currentPage"<?php } ?> href="bigboard.php">Big Board</a> |
<!--
							<?php if (strpos($currentPage, "standings.php")) { ?><b>Standings</b><?php } else { ?><a href="standings.php">Standings</a><?php } ?> |
-->
							<a href="http://www.vegasinsider.com/nfl/odds/las-vegas/">Live Odds</a> | 
							<a<?php if (strpos($currentPage, "messageboard.php")) { ?> class="currentPage"<?php } ?> href="messageboard.php">Message Board</a> | 
							<!--<a href="blog.txt">Blog</a> |
							<a href="faq.txt">FAQ</a> |-->
							<a<?php if (strpos($currentPage, "preferences.php")) { ?> class="currentPage"<?php } ?> href="preferences.php">Preferences</a>
						</div>
					</td>
				</tr>
			</table>
		</form>
