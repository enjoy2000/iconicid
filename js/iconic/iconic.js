(function($){
	$(document).ready(function(){
		//homepage tab function for newest jobs block
		$('#tab-control .tab').click(function(){
			$('#tab-control .tab').removeClass('active');
			$(this).addClass('active');
			$('#tab-content .tab-content').fadeOut(200);
			$('#tab-content-' + $(this).data('tab')).fadeIn(200);
		});
		
		//toogle content on parent category click
		$('div.parent.has-child > a').click(function(e){
			e.preventDefault();
			$(this).parent().find('ul').toggle();
			if($(this).parent().hasClass('active')){
				$(this).parent().removeClass('active');
			}else{
				$(this).parent().addClass('active');
			}
		});
		
		//if there is no current menu set current menu to homepage
		if($('#menu ul li.current-menu-item').length < 1){
			$('#menu ul li:first-child').addClass('current-menu-item');
		}
		
		//set position for breadcrumbs
		$('#breadcrumbs .breadcrumbs').css('left', 0);
		
		//contact form email footer
		$('#contact-us').on('submit', function(e){
			e.preventDefault();
			$.ajax({
				url: '/job/index/contact',
				type: 'POST',
				data: $(this).serialize(),
				success: function(msg){
					$('#response').show().text(msg);
					$('#contact-us input').val('');
					$('#contact-us textarea').val('');
				}
			});
		});
	});
})(jQuery);

