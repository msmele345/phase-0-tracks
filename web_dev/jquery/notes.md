#Jquery Plan of Attack (2 hours)

1. Check out Codeacademy
2. Look for cheetsheets
3. Practice small problems with test files as needed
  1. Create html/css/js file in this directory?
4. Gather resources for future learning

##Downloading and using locally:

  <!--   <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script> -->
  OR
  <script src=jquery.js   (make sure the file diretory is correct)
##Test function:
  <script>$(function() { alert('hello') });</script>

###General Notes from 30 minutes slideshare:
*Everything starts with a call to the JQuery function
*$ a short cut for calling
  *jQuery("#nav") == $('#nav')
  *jQuery('div#intro h2')
  *jQuery('#nav li.current a')
*Jquery.noConflict() if im using multiple libraries

*$('div.section') returns a jQuery collection
* $('div.section')[0] - the first div DOM element
* $('div.section').length returns the number of matched elements

###You can also call methods on it
  *$('div.section').each(function(i) {
    console.log("Item" _ i +"is", this)

  });

### CSS/HTML Futzing
$('p').css('font-size', '20px');
$('p').css({'font-size', '20px', color: 'red'});

###Grabing Values
  *Some methods return results from the first matched element
    *var height = $('div#intro').height();
    *var src = $('img.photo').attr('src');
    *var lastP = $('imput#email').val();

###Navigating the DOM:
*$('div.section').parent()
*$('div.section').next();
*$('div.section').prev();
*$('div.section').parents();

###Handaling Events (Ex, click event):
*$('a:first').click(function(ev){
    $(this).css({backgroundColor: 'orange'});
});   $('a:first').click();



###Chaining methods is permitted
$('div.section').hide().addClass('gone');

###Animation built in effects
*$('h1').hide('slow');
*$('h1').slideDown('fast');
*$('hi').fadeOut(2000);
  *You can also chain them:
    $('h1').fadeOut(1000).slideDown()

##jQuery Intro to Codeacademy
*CA work on jqueries.txt
* <script>$(function() { alert('hello') });</script>  ##inline function call in a html element.


