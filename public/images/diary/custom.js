$(document).ready(function(){
						   
$('#butContact').mouseover(function(){
		$(this).hide();
		$(this).css('background-position','50% -29px');
		$(this).fadeIn('normal');
	});

$('#butContact').mouseout(function(){
		$(this).hide();
		$(this).css('background-position','50% 0');
		$(this).fadeIn('normal');
	});
						   
// PRETTY PHOTO INIT
$("a[rel^='prettyPhoto']").prettyPhoto();						 

});