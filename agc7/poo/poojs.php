<script>
	$(document).ready(function () {

		// Animations init
		new WOW().init();

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

		var file = "<?php echo ($_POST['choix'][0]); ?>";
		console.log('file ($_POST): ' + file);
		//console.log(sujets);

		var result = $.grep(sujets, function (e) {
			return e.fichier == file;
		});

		var s = {};
		$.each(result[0], function (k, v) {
			window[k] = v;
		});
		console.log('sujet: ', sujet);
		console.log('fichier: ', fichier);
		console.log('description: ', description);

		//var s = {};
		//$.each(result[0], function (k, v) {
		//	s[k] = v;
		//});
		//console.log('s: ', s);

		var html = '';
		var disabled = '';

//		var html = '<option disabled id="sujet">Sujet</option>';
		$.each(sujets, function (k, v) {

			if (!k) {
				i = nbreSujets;
			} else {
				i = k;
			}

			//html += ('<option ' + ' ' + disabled + ' value="' + k + '" id="choix' + k + '" class="unChoix">' + i + ' ' + v.sujet + '</option>' + "\n");
			html += ('<option ' + ' ' + ' value="' + k + '">' + i + ' ' + v.sujet + '</option>' + "\n");
		});
		console.log('html: ' + html);


		// Plus utile mais peut resservir + tard
		//$('.mdb-select').material_select('destroy');

		$('.mdb-select').material_select();
		var sdChoix = $('.select-dropdown');
		sdChoix.append(html);
		$('.select-dropdown li:first').addClass('disabled');

		//var sdChoix = $('.mb-select');

		//$(sdChoix).click();
		//$(sdChoix).click();
		sdChoix.click();

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


		$(sdChoix).mouseout(function (e) {
			//console.log('out');
			//$('.filtrable:nth(0)').html('Sujet');
			//$('.filtrable').html('Sujet');
			//e.preventDefault();
			//$('.mdb-select').material_select('destroy');
			//$('.mdb-select').material_select();
			//$("ul").css('display', 'none');
			//if (e.target)
			//	console.log('target' + e.target);
			//console.log(e.target);
			$('input[type=text]').val('Choisir un autre sujet');
		});


//		$('.dropdown-content').mouseout(function(){
//console.log('sortie');
//		});

		$(sdChoix).click(function () {
			console.log('click');
		})
			.mouseover(function (e) {
				var target = e.target;

				console.log(target.innerText);
				//console.log(target);


				//$('.filtrable:nth(0)').html(target);
				$('input[type=text]').val('Sujet2');
				//e.preventDefault();
			});


	});

</script>
