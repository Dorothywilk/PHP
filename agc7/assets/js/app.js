//import {sayHi, sayBye} from './sayhi';

//sayHi('Toi 123 !');

// class HelloWorld {
//     constructor(name) {
//         $('#maCase')
//         	.html('<b>Salut, le Monde !</b>... Et <strong>' + name + '</strong> !');
//     }
// }

// new HelloWorld('Lionel');
// new HelloWorld('Doro');


(function($){

	$('.menu .etape').tab();

	$('#procedure .menu .item')
  .tab({
    context: $('#procedure')
  });

	// $('#btn1').click();
	$('#tab1').click();

	$('#context1 .menu .item')
	  .tab({
	    context: $('#context1')
	  })
	;
	$('#context2 .menu .item')
	  .tab({
	    // special keyword works same as above
	    context: 'parent'
	  })
	;

	$('.examplemenu .menu .browse')
	  .popup({
	    inline     : true,
	    hoverable  : true,
	    position   : 'bottom left',
	    delay: {
	      show: 300,
	      hide: 800
	    }
	  })
	;



	// $('#MoviesFilter').on('change','input, select', function(){
	// 	var $form = $(this).closest('form');
	// 	$form.request();
	// })

})(jQuery);

