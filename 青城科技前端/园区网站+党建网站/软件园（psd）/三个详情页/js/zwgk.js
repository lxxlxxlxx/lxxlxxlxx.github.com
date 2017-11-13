$(function(){
	$('.nothing >li').click(function(event) {
		$('this').siblings().slideToggle();
	});
});