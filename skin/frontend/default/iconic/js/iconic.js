$(document).ready(function(){
	$('#search-block div.parent select').on('focus',function(){
		$(this).parent().css('border-color','#808285');
	});
});
