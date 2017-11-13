window.onload=function(){
	var oHot = document.getElementById('hot-id');
	var aHotLi = oHot.getElementsByTagName('li');
	var oMiss = document.getElementById('miss2');
	var aMIssUl = oMiss.getElementsByTagName('ul');
	
	function itemLi(index){
    	 aHotLi[index].onclick = function() {
    		for (var j = 0; j < aMIssUl.length; j++) {
                aMIssUl[j].style.display = 'none';
                aHotLi[j].className = '';
            }
            aHotLi[index].className = 'on active';
            aMIssUl[index].style.display = 'block';
        };
    }
     // 循环所有
	for (var i = 0; i < aHotLi.length; i++) {
		itemLi(i);
    }
}