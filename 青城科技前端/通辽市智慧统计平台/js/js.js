
window.onload=function(){
	var oBody = document.getElementById("body");
	var oContent = document.getElementById('content');
	oBody.style.height = document.documentElement.clientHeight+'px';
	oContent.style.height = (document.documentElement.clientHeight-90)+'px';		
}