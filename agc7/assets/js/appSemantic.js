//import {sayHi, sayBye} from './sayhi';

//sayHi('Toi 123 !');

// class HelloWorld {
//  constructor(name) {
//   $('#maCase')
// 	 .html('<b>Salut, le Monde !</b>... Et <strong>' + name + '</strong> !'        );
//  }
// }

// new HelloWorld('Lionel');
// new HelloWorld('Doro');

(function ($) {


    //$('button').addClass('gc7');
    //console.log('Oki btn');

    $('.menu .etape').tab();

    $('#procedure .menu .item')
        .tab({
            context: $('#procedure')
        });


    $('#context1 .menu .item')
        .tab({
            context: $('#context1')
        });


    $('#tab32').click();

    $('.examplemenu .menu .browse').popup({
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


    //$('.ui.basic.modal').modal('show');

    //$('#MoviesFilter').on('change', 'input, select', function () {
    //    var $form = $(this).closest('form');
    //    $form.request();
    //})


    //$('input#input-char-counter, textarea#textarea-char-counter').characterCounter();
//    setTimeout(function () {
//        console.log(new Date() + ': OK, prêt !')
//    }, 3000);

})(jQuery);
