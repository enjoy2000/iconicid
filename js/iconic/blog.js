(function($){
	$(document).ready(function(){
		function loadBlogs(){
			$.ajax({
				'url': '/blog/index/ajax',
				'type': 'json',
				'method': 'post',
				'data': $('#ajax-form').serialize()
			}).success(function(data){
				//console.log(data);
			});
		}
		loadBlogs();
	});
})(jQuery);
