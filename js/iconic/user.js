(function($){
	$(document).ready(function(){
		//set css for center content div
		var left = $(window).width()/2 - $('#account-page').outerWidth()/2;
		var height= $('#account-page').height() + 100 + 40;
		$('#account-page').css('left',left);
		$('#header-landing').css('height',height);
		
		//style for select placeholder
		$('select').each(function(){
			var go = false;//switch off
			$(this).on('fosus active click',function() {//on focus/active
				$(this).css('color','black');
			    doit($(this));//do it
			}).on('change', function() {
			    go=true;//go
			    doit($(this));//and doit
			}).on('blur', function() {doit($(this)); go = false; });//switch off on blur
			
			function doit(el) {
			    if (go) {//if go
			        //do stuff here with el.val()
			        if(el.val()==''){
			        	el.css('color','#A6A6A6');
			        }else{
			        	el.css('color','black');
			        }
			        go = false;//switch off
			    } else {go=true;}//else go
			}
		});
		
		//toogle content on parent category click
		$('div.parent.has-child > a').click(function(){
			e.preventDefault();
			$(this).parent().find('ul').toggle();
			if($(this).parent().hasClass('active')){
				$(this).parent().removeClass('active');
			}else{
				$(this).parent().addClass('active');
			}
			return;
		});
	});
})(jQuery);
