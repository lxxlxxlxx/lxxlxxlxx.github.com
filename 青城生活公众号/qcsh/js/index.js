window.onload=function(){
	var oName = document.getElementById('name');
	var aA = oName.getElementsByTagName('li');
	var oName1 = document.getElementById('name1'); 
	var aUl = oName1.getElementsByTagName('ul');
	
	/*选项卡*/
	function itemLi(index){
    	aA[index].onclick = function() {
    		for (var j = 0; j < aUl.length; j++) {
                aUl[j].style.display = 'none';
                aA[j].className = '';
            }
            aA[index].className = 'on active';
            aUl[index].style.display = 'block';
            /*alert(1);*/
           /* $.ajax({
				url:'http://localhost:8088/smvch/security/ajax/getajax',
				type:'get',
				success:function(str){
					alert(str);
				}
			});*/
        };
    }
     // 循环所有
	for (var i = 0; i < aA.length; i++) {
		itemLi(i);
    }

   
    	
}
	