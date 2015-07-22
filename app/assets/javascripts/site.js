var ready = function() {
	var $grid = $('.grid').imagesLoaded( function() {
    $('.grid').masonry({
		  itemSelector: '.grid-item',
		  columnWidth: '.grid-sizer',
		  percentPosition: true,
		  gutter: '.gutter-sizer'
		});
	});
};

$(document).ready(ready);
$(document).on('ready page:load', function() {
	ready();
	$('.rating').raty({ 
		path: '/assets',
		scoreName: 'comment[rating]'
	});
	$('.rated').raty({
		path: '/assets',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	})
});