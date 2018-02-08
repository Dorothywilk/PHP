<!DOCTYPE html>
<html lang="fr">

<head>
	<meta charset="UTF-8">
	<title>MDB</title>
	<link rel="shortcut icon" href="/agc7/assets/images/favicon.ico"/>
	<!--<link rel="stylesheet" href="../agc7/assets/css/semantic.min.css">-->
	<link rel="stylesheet"
	      href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
	 <!--<link rel="stylesheet" href="../agc7/assets/css/bootstrap.min.css">-->
	<link rel="stylesheet" href="../agc7/assets/css/mdb.min.css">
	<!-- <link rel="stylesheet" href="../css/style.css"> -->
	<link rel="stylesheet" href="../agc7/assets/css/combined.css">
</head>

<body>
<div class="container">

	<nav class="navbar fixed-top navbar-expand-lg navbar-dark blue darken-3">

		<!-- Logo -->
      <span class="nav-item active logo-sn waves-light">
        <a class="pl-0 navbar-brand" href="/">
	        <img id="GC7-logo" src="assets/img/logo_c7_150x93_tr.png" width="70px" alt="GC7 Logo"> Do</a>
      </span>
		<!--/. Logo -->

			<span class="nav-item waves-light">
        <a class="nav-item waves-light navbar-brand" href="/agc7/">GC7</a>
      </span>

      <span class="nav-item waves-light">
        <a class="navbar-brand" href="/agc7/exemples">Semantic UI</a>
      </span>


		<button class="navbar-toggler" type="button" data-toggle="collapse"
		        data-target="#navbarSupportedContent"
		        aria-controls="navbarSupportedContent" aria-expanded="false"
		        aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="#" style="margin-left: 30px;">Home <span
							class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="https://mdbootstrap.com/components/" target="_blank">Doc MDB</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="http://fontawesome.io/icons" target="_blank">FontAwesome
						(Icônes)</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown"
					   aria-haspopup="true"
					   aria-expanded="false">Dropdown
					</a>

					<div class="dropdown-menu dropdown-purple" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Action</a>
						<a class="dropdown-item" href="#">Another action</a>
						<a class="dropdown-item" href="#">Something else here</a>
					</div>
				</li>
			</ul>
			<form class="form-inline">
				<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
			</form>
		</div>
	</nav>

	<header class="ui header" style="margin: 75px auto 0;">
		<p href="/" class="font-weight-bold" id="opop">Exemples d'utilisation de MDBootstrap</p>
	</header>

	<div class="bg-primary clearfix" style="margin: 15px; width: 100%; margin-left: 0; ">
		<button class="btn btn-secondary float-left">Exemple Bouton floated left</button>
		<button class="btn btn-yellow float-right">Exemple Bouton floated right</button>
	</div>

	<div class="embed-responsive embed-responsive-16by9">
		<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/fH03Do2m6Mg"
		        allowfullscreen></iframe>
	</div>

	<hr class="my-2">
	<div class="text-center">
		Pour <strong>formater text et horizontal bar</strong>:<br>
		See: <a href="https://mdbootstrap.com/utilities/bootstrap-spacing" target="_blank">https://mdbootstrap.com/utilities/bootstrap-spacing</a>
	</div>
	<hr class="my-3">

	<article>

		<form class="form-inline" style="margin-top: 20px;">

			<div class="md-form">
				<i class="fa fa-user prefix"></i>
				<input type="text" id="form1" class="form-control">
				<label for="form1">Saisissez votre nom</label>
			</div>

			<div class="md-form">
				<i class="fa fa-envelope prefix"></i>
				<input type="text" id="form2" class="form-control">
				<label for="form2">Saisissez votre email</label>
			</div>

			<div class="md-form">
				<i class="fa fa-lock prefix"></i>
				<input type="password" id="form10" class="form-control validate">
				<label for="form10" data-error="wrong" data-success="right">Saisissez votre code</label>
			</div>

			<!--Basic textarea-->
			<div class="md-form">
				<textarea type="text" id="form7" class="md-textarea"></textarea>
				<label for="form7">Zône de texte basique</label>
			</div>

			<!--Textarea with icon prefix-->
			<div class="md-form">
				<i class="fa fa-pencil prefix"></i>
				<textarea type="text" id="form8" class="md-textarea"></textarea>
				<label for="form8">Préfix Icône</label>
			</div>

			<div class="md-form form-group">
				<a class="btn btn-primary btn-lg">Enregistrer</a>
			</div>

			<div class="form-group">
				<input type="checkbox" id="checkbox1">
				<label for="checkbox1">Classic checkbox</label>
			</div>

			<div class="form-group">
				<input type="checkbox" class="filled-in" id="checkbox2">
				<label for="checkbox2">Filled-in checkbox</label>
			</div>

		</form>

		<section>
			<br>

			<!-- <div class="md-form" style="width: 22rem;"> -->
			<div class="md-form" style="width: 10rem;">
				<input id="input-char-counter" type="text" length="10">
				<label for="input-char-counter">Champ texte</label>
			</div>
		</section>

		<div class="md-form">
			<textarea id="textarea-char-counter" class="md-textarea" length="30"></textarea>
			<label for="textarea-char-counter">Saississez votre texte ci-dessous</label>
		</div>


		<?php

		$prenom = 'Jade';
		$nom    = 'D.';
		$bio    = 'Étudiante';
		$sonSlogan = 'Caca<br><br>Poumpoum !'

		?>

		<!--Card-->
		<div class="card m-5" style="width: 22rem;">

			<!--Card image-->
			<div class="view overlay hm-zoom rounded-top">
				<img src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20%287%29.jpg"
				     class="img-fluid"
				     alt="Tof">
				<a href="#">
					<div class="mask flex-center">
						<h2 class="font-weight-bold	rose-text text-center"><?= $sonSlogan ?></h2>
					</div>
					<div class="mask"></div>
				</a>
			</div>

			<!--Card content-->
			<div class="card-body">
				<!--Title-->
				<h4 class="card-title"><?php echo $prenom . ' ' . $nom; ?></h4>
				<!--Text-->
				<p class="card-text"><?= $bio ?></p>
				<a href="#" class="btn btn-primary">Contacter</a>
			</div>

		</div>
		<!--/.Card-->


		<!--Section: Contact v.1-->
		<section class="section pb-5">

			<!--Section heading-->
			<h2 class="section-heading h1 pt-4">Contact us</h2>
			<!--Section description-->
			<p class="section-description pb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
				Fugit, error amet
				numquam iure provident voluptate esse quasi, veritatis totam voluptas nostrum quisquam eum
				porro a pariatur
				accusamus veniam.</p>

			<div class="row">

				<!--Grid column-->
				<div class="col-lg-5 mb-4">

					<!--Form with header-->
					<div class="card">

						<div class="card-body">
							<!--Header-->
							<div class="form-header blue accent-1">
								<h3><i class="fa fa-envelope"></i> Write to us:</h3>
							</div>

							<p>We'll write rarely, but only the best content.</p>
							<br>

							<!--Body-->
							<div class="md-form">
								<i class="fa fa-user prefix grey-text"></i>
								<input type="text" id="form-name" class="form-control">
								<label for="form-name">Your name</label>
							</div>

							<div class="md-form">
								<i class="fa fa-envelope prefix grey-text"></i>
								<input type="text" id="form-email" class="form-control">
								<label for="form-email">Your email</label>
							</div>

							<div class="md-form">
								<i class="fa fa-tag prefix grey-text"></i>
								<input type="text" id="form-Subject" class="form-control">
								<label for="form-Subject">Subject</label>
							</div>

							<div class="md-form">
								<i class="fa fa-pencil prefix grey-text"></i>
								<textarea type="text" id="form-text" class="md-textarea"></textarea>
								<label for="form-text">Icon Prefix</label>
							</div>

							<div class="text-center">
								<button class="btn btn-indigo">Send <i class="fa fa-paper-plane-o ml-1"></i>
								</button>
							</div>

						</div>

					</div>
					<!--Form with header-->

				</div>
				<!--Grid column-->

				<!--Grid column-->
				<div class="col-lg-7">

					<!--Google map-->
					<div id="map-container" class="z-depth-1-half map-container" style="height: 400px"></div>

					<br>
					<!--Buttons-->
					<div class="row text-center">
						<div class="col-md-4">
							<a class="btn-floating blue accent-1"><i class="fa fa-map-marker"></i></a>

							<p>San Francisco, CA 94126</p>

							<p>United States</p>
						</div>

						<div class="col-md-4">
							<a class="btn-floating blue accent-1"><i class="fa fa-phone"></i></a>

							<p>+ 01 234 567 89</p>

							<p>Mon - Fri, 8:00-22:00</p>
						</div>

						<div class="col-md-4">
							<a class="btn-floating blue accent-1"><i class="fa fa-envelope"></i></a>

							<p>info@gmail.com</p>

							<p>sale@gmail.com</p>
						</div>
					</div>

				</div>
				<!--Grid column-->

			</div>

		</section>

	</article>

	<!--Footer Links-->
	<div class="container">
		<div class="row my-4">

			<!--First column-->
			<div class="col-md-4 col-lg-4">
				<h5 class="title mb-4 font-bold">Footer Content</h5>

				<p>Here you can use rows and columns here to organize your footer content.</p>

				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, error amet numquam iure
					provident
					voluptate esse quasi, veritatis totam voluptas nostrum. </p>
			</div>
			<!--/.First column-->

			<hr class="clearfix w-100 d-md-none">

			<!--Second column-->
			<div class="col-md-2 col-lg-2 ml-auto">
				<h5 class="title mb-4 font-bold">About</h5>
				<ul>
					<p><a href="#">PROJECTS</a></p>

					<p><a href="#">ABOUT US</a></p>

					<p><a href="#">BLOG</a></p>

					<p><a href="#">AWARDS</a></p>
				</ul>
			</div>
			<!--/.Second column-->

			<hr class="clearfix w-100 d-md-none">

			<!--Third column-->
			<div class="col-md-4 col-lg-3">
				<h5 class="title mb-4 font-bold">Adress</h5>
				<!--Info-->
				<p><i class="fa fa-home mr-3"></i> New York, NY 10012, US</p>

				<p><i class="fa fa-envelope mr-3"></i> info@example.com</p>

				<p><i class="fa fa-phone mr-3"></i> + 01 234 567 88</p>

				<p><i class="fa fa-print mr-3"></i> + 01 234 567 89</p>
			</div>
			<!--/.Third column-->

			<hr class="clearfix w-100 d-md-none">

			<!--Fourth column-->
			<div class="col-md-2 col-lg-2 text-center">
				<h5 class="title mb-4 font-bold">Follow Us</h5>
				<!--Social buttons-->
				<div class="social-section mt-2 ">
					<!--Facebook-->
					<a type="button" class="btn-floating btn-small btn-fb"><i class="fa fa-facebook"></i></a>
					<!--Twitter-->
					<a type="button" class="btn-floating btn-small btn-tw"><i class="fa fa-twitter"></i></a>
					<!--Google +-->
					<a type="button" class="btn-floating btn-small btn-gplus"><i
							class="fa fa-google-plus"></i></a>
					<!--Dribbble-->
					<a type="button" class="btn-floating btn-small btn-dribbble"><i
							class="fa fa-dribbble"></i></a>
				</div>
			</div>
			<!--/.Fourth column-->

		</div>
	</div>
	<!--/.Footer Links-->

	</footer>

	<script src="assets/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="assets/js/semantic.min.js" type="text/javascript" charset="utf-8"></script>

	<!--/.Footer-->
	<!--
		<script src="assets/js/semantic.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="assets/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="assets/js/popper.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="assets/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script> -->
	<script src="assets/js/mdb.min.js" type="text/javascript" charset="utf-8"></script>
	<!--  <script src="assets/js/app.js" type="text/javascript" charset="utf-8"></script>-->
</div>
<!--Copyright-->
<div class="footer-copyright" style="margin-left: 10px;margin-top: 10px;">
	<!--  <div class="container-fluid">-->
	© 2017 Copyright: <a href="https://www.MDBootstrap.com"> MDBootstrap.com </a>
	<!--  </div>-->
</div>
<!--/.Copyright-->
</body>

</html>
