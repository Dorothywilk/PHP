<script>
	$(document).ready(function () {

		// Animations init
		new WOW().init();

		var sujets = [
			{
				fichier: 'personne',
				sujet: 'Sujets',
				description: 'Détail du contenu de personne.php...'
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
		var html = '';
		//var disabled = '';

		//console.log(sujets[1]);

//		var html = '<option disabled id="sujet">Sujet</option>';

		$.each(sujets, function (k, v) {
			//disabled = (k) ? '' : 'doisabled';
			if (!k) i = nbreSujets; else i = k;
			html += ('<option ' + ' value="' + k + '" id="choix' + k + '" class="unChoix">' + i + ' ' + v.sujet + '</option>' + "\n");
		});
		console.log(html);

		$('#choix').append(html);


		if ($('#dejaChoix').text() == 'abc') console.log('pas encore');

		console.log($('text' + '#dejaChoix').text());
		console.log('val' + $('#dejaChoix').val());
		console.log($('#dejaChoix'));

		// $('.mdb-select').material_select('destroy');
		$('.mdb-select').material_select();

		var n = <?php echo ($_POST['choix']+11) ?>;
		console.log(n+100);


		//$("ul").css('display', 'block')
		//	.css('opacity', 1);


		var test = $('#test'),
			content = $('#dejaChoix').text();
		test.addClass('cr');
		test.html(content);


		//test.html(sujets.join('<hr>'));

		//test.html(sujet[0].fichier);

		//$('#sujet').append(content);
		//$('#sujet').removeClass('cr').html(requestURL);

		// Plus utile mais peut resservir + tard

		/**
		 * Select-dropdown du choix
		 *
		 * @type {*|jQuery|HTMLElement}
		 */
		var sdChoix = $('.select-dropdown');
		//$(sdChoix).css('border', '1px solid #000'); // Cadre noir

		$(sdChoix).click();
		$('.select-dropdown li:first').addClass('disabled');

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
				var target = e.target.innerText;

				//console.log(target);


				//$('.filtrable:nth(0)').html(target);
				$('input[type=text]').val('Sujet2');
				//e.preventDefault();
			});


	});

</script>
