<!--header, navbar, burger-->

<header class="header">
	<div class="container">
		<div class="header__body">
			<div class="header__burger">
				<span></span>
			</div>
			<nav class="header__menu">
				<ul class="header__list">
					<li>
						<a href="index.php" class="header__link">Home</a>
					</li>
					<li>
						<a href="signin-form.php" class="header__link">Login</a>
					</li>
					<li>
						<a href="book-trip.php" class="header__link">Book Trip</a>
					</li>
					<li>
						<a href="all-clients-adventures.php" class="header__link">Our Clients Adventures</a>
					</li>
					<li>
						<a href="all-adventures.php" class="header__link">Our Next Adventures</a>
					</li>
				</ul>
			</nav>

			<div class="page__name">Halifax Canoe and Kayak</div>
			<div class="user-name-container">
				<?php
				if (isset($_SESSION['admin'])) {
					echo 'Welcome, ' . $_SESSION['admin']['name'] . ' | ';
					echo '<a href="logout.php">Sign Out</a>';
				} elseif (isset($_SESSION['user'])) {
					echo 'Welcome, ' . $_SESSION['user']['name'] . ' | ';
					echo '<a href="logout.php">Log Out</a>';
				}
				?>
			</div>
			<a href="index.php" class="header__logo">
				<img src="img/logo.png" alt="paddle logo">
			</a>

		</div>
	</div>
</header>