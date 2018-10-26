$(document).on('click', ".expand", function(){
	$(this).toggleClass("fa-chevron-circle-down fa-chevron-circle-up hide show");
	$(this).parent().find(".children").toggle( "slow", "swing");
});