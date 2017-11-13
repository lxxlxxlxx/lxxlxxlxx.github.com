window.onload=function(){
	var oBox = document.getElementById('img-box');
	var oLeft = document.getElementById('left');
	var oRight = document.getElementById('right');
	var oNew1 = document.getElementById('new1');
	var aSpan = oNew1.getElementsByTagName('span');
	var aUl = oNew1.getElementsByTagName('ul');
	var oInt = document.getElementById('contentBL');
	var aInt = oInt.getElementsByTagName('ul')[0];
	var aIntLi = aInt.getElementsByTagName('li');
	var aIntDiv = oInt.getElementsByTagName('div');
	var oLog = document.getElementById('log');
	var aLogP = oLog.getElementsByTagName('p')[0];
	var aLogA = aLogP.getElementsByTagName('a');
	var aLogDiv = oLog.getElementsByTagName('div');
	var oNew = document.getElementById('new');
	var oNN = oNew.getElementsByTagName('div')[0];
	var aNewA = oNN.getElementsByTagName('a');
	var aNewUl = oNew.getElementsByTagName('li');
	var oDownR = document.getElementById('downR');
	var aDownRLi = oDownR.getElementsByTagName('li');


	var n = 0;
	for(var i=0;i<aNewUl.length;i++){
        aNewUl[i].index=i;
        aNewUl[i].onmouseover=function(){
            for(var i =0;i<aNewUl.length;i++){
                aNewUl[i].className='';
                aNewA[i].style.display='none';
            }
            this.className='on';
           aNewA[this.index].style.display='block';
        };
    }
	/*左右*/
	/*oLeft.onclick=function(){
		n+=1180;
		oBox.style.marginLeft = -n+'px';
		if(n == 3540){
			n = 0;
		}
	}
	oRight.onclick=function(){
		n-=1180;
		oBox.style.marginLeft = n+'px';
		if(n == -3540){
			n = 0;
		}
	}
	/*点击*/
	/*for(var i = 0; i<aLi.length;i++){
		aLi[i].index = i;
		aLi[i].onclick = function(){
			for(var  i = 0;i<aLi.length;i++){
				aLi[i].className = '';
			}
			this.className= 'active';
			n+=1180;
			oBox.style.marginLeft = -n+'px';
			if(n == 3540){
				n = 0;
			}
		}
	}*/
	/*园区公告区的选项卡*/
	for(var i=0;i<aSpan.length;i++){
        aSpan[i].index=i;
        aSpan[i].onmouseover=function(){
            for(var i =0;i<aSpan.length;i++){
                aSpan[i].className='';
                aUl[i].style.display='none';
            }
            this.className='on';
           aUl[this.index].style.display='block';
        };
    }
	/*政务公开*/
	for(var i=0;i<aIntLi.length;i++){
        aIntLi[i].index=i;
        aIntLi[i].onmouseover=function(){
            for(var i =0;i<aIntLi.length;i++){
                aIntLi[i].className='';
                aIntDiv[i].style.display='none';
            }
            this.className='on';
           aIntDiv[this.index].style.display='block';
        };
    }
    /*登录注册*/
    for(var i=0;i<aLogA.length;i++){
        aLogA[i].index=i;
        aLogA[i].onclick=function(){
            for(var i =0;i<aLogA.length;i++){
                aLogA[i].className='';
                aLogDiv[i].style.display='none';
            }
            this.className='on';
           aLogDiv[this.index].style.display='block';
        };
    }
}