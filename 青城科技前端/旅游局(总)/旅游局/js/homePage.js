window.onload=function(){
	var oList=  document.getElementById('list');
	oList.style.height = (document.documentElement.clientHeight-80)+'px';
	$(".logoRa").click(function(event) {
		/* Act on the event */
		$(".userhome").slideToggle("slow");
	});
	$(".nav1-1").click(function(event) {
		/* Act on the event */
		$("#list1").toggle("slow");
		$("#list1-1").toggle("slow");
	});
	$(".list3").click(function(event) {
		/* Act on the event */
		$(".box1").slideToggle("");
	});
	$(".list1").click(function(event) {
		/* Act on the event */
		$(".box2").slideToggle("slow");
	});
	$(".list4").click(function(event) {
		/* Act on the event */
		$(".box3").slideToggle("slow");
	});
	$(".list2").click(function(event) {
		/* Act on the event */
		$(".box4").slideToggle("slow");
	});
	$(".list5").click(function(event) {
		/* Act on the event */
		$(".box5").slideToggle("slow");
	});
	$(".list6").click(function(event) {
		/* Act on the event */
		$(".box6").slideToggle("slow");
	});
}
