<script>
	$(document).ready(function () {

		/*ToDoLi Finir liste des sujets // pages POO réelles */

		/*ToDoLi Ajouter légère transparence aux options */

		/* ToDoLi Faire tableau de Vérité pour les différents K:
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

		var sujets = [
			{
				fichier: 'noChoix',
				sujet: 'Sujets',
				description: 'Attente de choix...'
			},
			{
				fichier: 'personne',
				sujet: 'Simple classe',
				description: 'Détail du contenu de personne.php...'
			},
			{
				fichier: 'vehicule',
				sujet: 'Classe Mère & Fille (Héritage)',
				description: 'Détail du contenu de vehicule.php :...'
			}
		];
		var nbreSujets = sujets.length - 1;

		var choix = parseInt("<?= $choix ?>");

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
			console.log('html: ' + h);
			$('#choix').append(h);

			// Plus utile mais peut resservir + tard
			//$('.mdb-select').material_select('destroy');
			$('.mdb-select').material_select();
			var sdChoix = $('.select-dropdown');
			$('.select-dropdown li:first').addClass('disabled');

			return sdChoix;
		};

		var sdChoix = html();

		console.log('choix début ($_POST)', choix, ' => s', s);

		if (choix > 0) {

			$("#description").text(s.description);
			$("#content").load('./' + s.fichier + '.php', {
				$_POST: [choix]
			});
		}

		else {

			console.log('Pas de choix');
			sdChoix.click();

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


				var cible = parseInt(nGauche((target.innerText).trim()));
				console.log(choix, 'targetOver: ', target.innerText, 'CIBLE: ', cible);

				if (cible) {
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
					$("#description").text(s.description);
					$('#content').text('');

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
				$("#description").text(s.description);
			} else {
				$('#description').text('');
				$('#content').text('');
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
			$("#description").text(s.description);
			//$("#content").load('./' + s.fichier + '.php', {
			//	$_POST: [choix]
			//});

		});

		$('#choixForm').on('mouseout', function () {

			console.log('Sortie des choixxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', s);
			$("#description").text(s.description);
			$("#content").load('./' + s.fichier + '.php', {
				$_POST: [choix]
			});
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


		//$('ul > li:not(:first)').css('display','none');

	})
	;

</script>
