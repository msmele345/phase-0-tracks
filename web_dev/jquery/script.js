// jQuery/JS code for checklist website


//Make the list item disspear
// $(document).ready(function(){
//   var $target = $('#remove');
//   $target.fadeOut('fast')
// });




$(document).ready(function(){
  var $target = $('#sleep');
  var $button = $('#button1')
    $button.click(function(){
      $target.fadeOut('slow');
    });
});

$(function () {
    $('#button2').on('click', function () {
        var text = $('#text');
        text.val(text.val() + "SHIT");
    });
});


// $(document).ready(function(){
//   var $target = $('spouse');
//   var $button2 = $('button2');
//     $button2.click(function(){
//       $target.fadeOut('slow')
//     });
// });

// $(document).ready(function(){
//   var $target = $('#item3');
//   var $button = $('#button3');
//     $button.click(function(){
//       $target.fadeOut('slow')

//     });
// })

// $(document).ready(function(){
//   var $target = $('#item4');
//   var $button = $('#button4');
//     $button.click(function(){
//       $target.fadeOut('slow')

//     });
// })