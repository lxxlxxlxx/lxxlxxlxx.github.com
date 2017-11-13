window.onload=function(){
	 var oDai = document.getElementById('dai');
	var aLi = oDai.getElementsByTagName('li');
	for(var i = 0; i < aLi.length; i++){
		aLi[i].onclick = function() {
    		for (var i = 0; i < aLi.length; i++) {
                aLi[i].className = '';
            }
            aLi[i].className = 'on';
        };
	}
}