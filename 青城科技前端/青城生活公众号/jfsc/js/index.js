//选项卡
function Tab(){
	var oName = document.getElementById('name');
	var aA = oName.getElementsByTagName('li');
	var oName1 = document.getElementById('name1'); 
	var aUl = oName1.getElementsByTagName('ul');
	function itemLi(index){
    	 aA[index].onclick = function() {
    		for (var j = 0; j < aUl.length; j++) {
                aUl[j].style.display = 'none';
                aA[j].className = '';
            }
            aA[index].className = 'on active';
            aUl[index].style.display = 'block';
            ajax({
				url :'http://localhost:8088/smvch/security/ajax/getajax',
				type:'get',
				success:function(str){
					alert(str);
					/* aUl[1].innerHTML = '';*/
				}
			})
        };
    }
     // 循环所有
	for (var i = 0; i < aA.length; i++) {
		itemLi(i);
    }
   

}
window.onload=function(){
	new Tab();
	/*var oEnd = document.querySelector('#end');
	var oEndLi = oEnd.getElementsByTagName('li');
	var oEndImg = oEnd.getElementsByTagName('img'); 
	var oEndA = oEnd.getElementsByTagName('a');
	var n = 0; 
	for(var i = 0; i<oEndLi.length;i++){
		oEndLi[i].onclick=function(){
			n+=1;
			for(var i = 0;i<oEndLi.length;i++){
				oEndLi[i].style.backgroundImage = 'url(img/shou'+n+'.png)';
				oEndA[i].style.color = '#096';
			}
		}		
	}*/
	/*oEndLi[0].addEventListener("click", function(){
     	oEndImg[0].src = 'img/shouh1.png';
		oEndA[0].style.color = '#096';
		// 写法丑
		oEndImg[1].src = 'img/shou.png';
		oEndA[1].style.color = '#aaa';
		oEndImg[2].src = 'img/gou3.png';
		oEndA[2].style.color = '#aaa';
		oEndImg[3].src = 'img/me.png';
		oEndA[3].style.color = '#aaa';
	},false); 
	oEndLi[1].addEventListener("click", function(){  
     	oEndImg[1].src = 'img/shouh.png';
		oEndA[1].style.color = '#096';
		// 
		oEndImg[0].src = 'img/shouye.png';
		oEndA[0].style.color = '#aaa';
		oEndImg[2].src = 'img/gou3.png';
		oEndA[2].style.color = '#aaa';
		oEndImg[3].src = 'img/me.png';
		oEndA[3].style.color = '#aaa';
	},false);
	oEndLi[2].addEventListener("click", function(){  
     	oEndImg[2].src = 'img/gouh.png';
		oEndA[2].style.color = '#096';
		//
		oEndImg[1].src = 'img/shou.png';
		oEndA[1].style.color = '#aaa';
		oEndImg[0].src = 'img/shouye.png';
		oEndA[0].style.color = '#aaa';
		oEndImg[3].src = 'img/me.png';
		oEndA[3].style.color = '#aaa';
	},false);
	oEndLi[3].addEventListener("click", function(){  
     	oEndImg[3].src = 'img/meh.png';
		oEndA[3].style.color = '#096';
		//
		oEndImg[2].src = 'img/gou3.png';
		oEndA[2].style.color = '#aaa';
		oEndImg[1].src = 'img/shou.png';
		oEndA[1].style.color = '#aaa';
		oEndImg[0].src = 'img/shouye.png';
		oEndA[0].style.color = '#aaa';
	},false);	*/
}

