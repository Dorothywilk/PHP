<script>
	$(document).ready(function () {

		/*ToDoLi Ajouter légère transparence aux options */

		/* ToDoLi Clarification du code: Faire tableau de Vérité pour les différents K:
		 Il existe (ou pas) 1 choix
		 Il existe (ou pas) 1 cible
		 (La souris survole 1 ligne des options)
		 */


		// Animations init
		new WOW().init();

		function nGauche(s, n=1) {
			return s.substr(0, Math.min(s.length, n));
		}

		function gt(v) {
			return jQuery.type(v);
		}

		// console.log(sujets);

		var sujets = <?=json_encode($sujets->sujets)?>;
		console.log('sujets', sujets);

		var nbreSujets = sujets.length - 1;

		var choix = parseInt("<?=$choix?>");

		var s = sujets[choix];

		/**
		 * Return sdChoix
		 * */
		var html = function () {
			var h = '';
			var i;
			// var html = '<option disabled id="sujet">Sujet</option>';
			$.each(sujets, function (k, v) {
				i = (!k) ? nbreSujets : k;
				h += '<option>' + i + ' ' + v.sujet + '</option>' + "\n";
			});
			//console.log('html: ' + h);
			$('#choix').html(h);

			// Plus utile mais peut resservir + tard
			//$('.mdb-select').material_select('destroy');
			$('.mdb-select').material_select();
			var sdChoix = $('.select-dropdown');
			$('.select-dropdown li:first').addClass('disabled');

			return sdChoix;
		};

		var sdChoix = html();

		//console.log('choix début ($_POST)', choix, ' => s', s);

		if (choix > 0) {


			//console.log(gt(s.description));

			//console.log(s.fichier, $("#description"));

			$("#description").html(s.description);
			$("#description h3").prepend('<h2>' + choix + '. ' + s.sujet + '</h2>');

			// Todoli
			// Ici insertion code source du fichier de base
			// Plus tard, aussi des fichiers compl (Par ex., des classes)">


			//$("#content").load('./poo/' + s.fichier + '.php',
			//	{
			//		$_POST: [choix, 'personne'] // Envoie params à s.fichier
			//	}
			//);
			var content = "<?=$content?>";
			console.log(gt(content));

			$("#content").load('./' + content + '.php');


		}

		else {

			console.log('Pas de choix');
			sdChoix.click(); /////////////////// ACTIVER

		}

		/* switch */
		/**
		 switch (choix) {

		 case '0':
		 console.log('Pas de choix');
		 sdChoix.click();
		 //return false; // exit();
		 break;

		 default:
		 console.log('choix3 n°', choix);

		 console.log('s', s);

		 $("#content").load('./' + s.fichier + '.php', {
		 $_POST: [choix]
		 });
		 $("#description").text(s.description);

		 //$('.mdb-select').material_select();
		 //var sdChoix = $('.select-dropdown');
		 //$('.select-dropdown li:first').addClass('disabled');

		 //
		 }
		 */

		//return false; // = exit()

		//var fichier = sujets[choix].fichier;
		//console.log('Choix ($_POST): ' + file);
		//console.log(sujets);

		//var result = $.grep(sujets, function (e) {
		//	return e.fichier == choix;
		//});

		//var s = {};
		//$.each(sujets[choix], function (k, v) {
		//	window[k] = v;
		//});
		//console.log('sujet: ', sujet);
		//console.log('fichier: ', fichier);
		//console.log('description: ', description);

		//var s = {};
		//$.each(result[0], function (k, v) {
		//	s[k] = v;
		//});
		//console.log('s: ', s);


		//var sdChoix = $('.mb-select');

		//$(sdChoix).click();
		//$(sdChoix).click();


		//if ($('#dejaChoix').text() == 'Choix : Pas encore') console.log('pas encore');
		//console.log($.trim($('#dejaChoix').text()));
		//var item = $.trim($('#dejaChoix').text());
		//console.log(item);


		//$("ul").css('display', 'block')
		//	.css('opacity', 1);


		//var test = $('#test'),
		//	content = $('#dejaChoix').text();
		//test.addClass('cr');
		//test.html(content);


		//test.html(sujets.join('<hr>'));

		//test.html(sujet[0].fichier);

		//$('#sujet').append(content);
		//$('#sujet').removeClass('cr').html(requestURL);


		/**
		 * Select-dropdown du choix
		 *

		 * @type {*|jQuery|HTMLElement}
		 */
			//$(sdChoix).css('border', '1px solid #000'); // Cadre noir

			//$(sdChoix).click();
			//$('#test').text('Choisir un autre sujet');

			//sdChoix.click();

			//$('input[type=text]').val('Sujet');


			//		$('.dropdown-content').mouseout(function(){
			//console.log('sortie');
			//		});

		$(sdChoix).click(function () {
			//$('.mdb-select').material_select('destroy');
			//$('.mdb-select').init();

		})
			.mouseover(function (e) {
				//console.log('choix ds over', choix);
				var target = e.target;


				var cible = parseInt(nGauche(target.innerText.trim(), 2));
				console.log(choix, 'targetOver: ', target.innerText, 'CIBLE: ', cible);

				if (cible && target.innerText != cible + ' Sujets') {
					var s = sujets[cible];
					//console.log('sujet oCible', s);
					//console.log('cible fichier', oCible.fichier);
					//var over = $.grep(sujets, function (e) {
					//	console.log('fichier', over[0]);
					//	return e.sujet == target.innerText;
					//});
					//$("#content").load('./' + s.fichier + '.php', {
					//	$_POST: [cible]
					//});
					$("#description").html(s.description);
					$("#description h3").prepend('<h2>' + cible + '. ' + s.sujet + '</h2>');

					$('#content').html('');
					$('#scripts').text('');

					//if (over[0].fichier !== 'noChoix') {
					//}
				}
				else if (choix) {
					console.log('Choix + Cible ', s);
				}
				else {
					$('#description').text('');
				}


				//$('.filtrable:nth(0)').html(target);
				//e.preventDefault();
				// console.log(quoi);
			});

		$('.select-dropdown').on('mouseover', function () {
			$(this).click();
		})


		$(sdChoix).mouseout(function (e) {
			//console.log('out');
			//$('.filtrable:nth(0)').html('Sujet');
			//$('.filtrable').html('Sujet');
			//$('.mdb-select').material_select('destroy');
			//$('.mdb-select').material_select();
			//if (e.target)
			//	console.log('target' + e.target);
			//console.log(e.target);
			if (choix != 0) {
				//$("ul").css('display', 'none');
				//$("#content").load('./' + s[0].fichier + '.php', {
				//	$_POST: [choix]});
				$("#description").html('');
			} else {
				$('#description').text('');
				$('#content').text('');
				$('#scripts').text('');
			}
			//e.preventDefault();

			console.log('Choix OUT', choix);

			$('input[type=text]')
				.val('Choisir un autre sujet')
				.addClass('teteListe pl10');

			if (choix > 0) {
				console.log('sortir');
				//$('.mdb-select').material_select('destroy');
				//$('.mdb-select').material_select();
			}
			console.log(e.target, 'RRRRRRRRRRRRRRRRRRR', choix);
			$("#description").text('');
			//$("#content").load('./' + s.fichier + '.php', {
			//	$_POST: [choix]
			//});

		});

		$('#choixForm').on('mouseout', function () {

			console.log('Sortie des choixxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', s);
			$("#description").html('En attente de choix...');
			//console.log(s.fichier);
			//$("#content").load('' + s.fichier + '.php', {
			//	$_POST: [choix]
			//});
		});
		/**
		 * Nous reprenons notre exemple de formulaire de connexion
		 *
		 */
		//$("#container").load("connexion-avec-ajax.php", { // N'oubliez pas l'ouverture des accolades !
		//	login : $("login").val(),
		//	password : $("password").val()
		//});

		//var tit = 'Simple classe';
		//
		//var over2 = $.grep(sujets, function (e) {
		//	return e.sujet == tit;
		//});
		//console.log('sujets2', sujets);
		//console.log('fichier2', over2[0]);
		//
		//$('ul').css("border","2px solid green")
		//	.on("mouseout", function(){
		//		$(this).css("border","20px solid green");
		//		//$(this).css('opacity', '0');
		//		//$('.select-dropdown').click();
		//		console.log(456);
		//		//e.preventDefault();
		//	});

		//$('ul > li:not(:first)').css('display','none');

		// Using plain Javascript
		//var block = document.getElementById('monCode')
		//Prism.highlightElement(block);

		var flip = 0;
		var textButton = '';
		$('button').click(function () {
			//$(this).text("Cacher");
			flip++;
			console.log('ppp', flip % 2);
			textButton = (flip % 2) ? 'Cacher' : 'Remontrer';
			$('#etat').text(textButton);
			$('#files').toggle("slow");
			//$(this).toggle('css', 'display:block');
		})

	})

</script>
