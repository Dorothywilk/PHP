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


(function ($) {

    $('.menu .etape').tab();

    $('#procedure .menu .item')
        .tab({
            context: $('#procedure')
        });


    $('#tab31').click();

    $('#context1 .menu .item')
        .tab({
            context: $('#context1')
        });

    $('.examplemenu .menu .browse')
        .popup({
            inline: true,
            hoverable: true,
            position: 'bottom left',
            delay: {
                show: 300,
                hide: 800
            }
        });

    $('#git').on('click', function () {
        $('.ui.basic.modal').modal('show');
    });

 // $('.ui.basic.modal').modal('show');

// $('#MoviesFilter').on('change','input, select', function(){
// 	var $form = $(this).closest('form');
// 	$form.request();
// })

    setTimeout(function () {
        console.log(new Date() + ': OK, prêt !')
    }, 3000);


})
(jQuery);

