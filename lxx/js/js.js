/*随机数*/
function toDou(n,m){
	return parseInt(Math.random()*(m-n)+n);
}
window.onload=function(){
	var oOpen = document.getElementById('open');
	var oBuild = document.getElementById('build');
	var oBuild1 = document.getElementById('build1');
	var oBuild2 = document.getElementById('build2');
	var oBuild3 = document.getElementById('build3');
	var oHome = document.getElementById('home');
	var oHot = document.getElementById('hot2');
	var oBox = document.getElementById('box');
	var oH = document.querySelector('.hour');
	var oM = document.querySelector('.min');
	var oS = document.querySelector('.sec');
	var oBg1 = document.getElementById('background1');
	var oBg2 = document.getElementById('background2');
	var oBg3 = document.getElementById('background3');
	var oShop = document.getElementById('shop');
	var oBack = document.getElementById('back');
	var oGame = document.getElementById('game');
	
	var oGameR = document.getElementById('gameR');
	var oCar = document.getElementById('car');
	var oBack1 = document.getElementById('back1');

	var oCH = document.documentElement.clientHeight;
	oOpen.style.height = oCH+'px';
	oHome.style.height = oCH+'px';
	oGame.style.height = oCH+'px';
	oShop.style.height = oCH+'px';
	oBack.onclick=function(){
		oOpen.style.display = 'block';
		oShop.style.display = 'none';
		oHome.style.display = 'none';
		oGame.style.display = 'none';
	}
	oBack.onclick=function(){
		oGame.style.display = 'none';
		oOpen.style.display = 'block';
	}
	oBg1.onclick=function(){
		oOpen.style.backgroundImage = 'url(img/bei0.png)';
		oBg1.style.backgroundColor= '#ffe51f';
		oBg1.classList.add('chick');
		oBg2.classList.remove('chick');
		oBg3.classList.remove('chick');
	}
	oBg2.onclick=function(){
		oOpen.style.backgroundImage = 'url(img/bei22.png)';
		oBg2.classList.add('chick');
		oBg1.classList.remove('chick');
		oBg3.classList.remove('chick');
	}
	oBg3.onclick=function(){
		oOpen.style.backgroundImage = 'url(img/bei11.png)';
		oBg3.classList.add('chick');
		oBg1.classList.remove('chick');
		oBg2.classList.remove('chick');
	}
	oBuild.onclick=function(){
		/*oOpen.style.opacity = 0.3;*/
		/*oBallon.style.left = 10+'px';
		oBallon.style.top = 10+'px';*/
		setTimeout(function(){
			oOpen.style.display = 'none';			
			oHome.style.display = 'block';
			/*oCss.style.display ='block';*/
		},500);			
	}                                                                  
	oBuild1.onclick=function(){
		oOpen.style.display = 'none';
		oShop.style.display = 'block';
		oHome.style.display = 'none';
	}
	oHot.onclick=function(){
		oHot.style.marginLeft = 30+'px';
		oHome.style.display = 'none';
		oOpen.style.display = 'block';
	}
	oBuild2.onclick=function(){
		oOpen.style.display = 'none';
		oShop.style.display = 'none';
		oHome.style.display = 'none';
		oGame.style.display = 'block';
	}
	oBuild3.onclick=function(){
		oOpen.style.display = 'none';
		oCar.style.display = 'block';
	}
	/*轮播图*/
	var n = 0;
	var timer =null;
	timer = setInterval(function(){
		n-=3;
		oBox.style.left = n +'px';
		if(n <-278.5){
			n = 0;
		}
	},30);
	/*燃放烟花*/
	function rnd(n,m){
	return parseInt(Math.random()*(m-n)+n);
	}	
	document.onclick=function(ev){
		var oEvent = ev || event;
		var oDiv = document.createElement('div');
		var x = oEvent.clientX;
		var y = oEvent.clientY;
		var aDiv = [];
		oDiv.style.position='absolute';
		oDiv.style.width='5px';
		oDiv.style.height='30px';				
		oDiv.style.background='rgb('+rnd(0,256)+','+rnd(0,256)+','+rnd(0,256)+')';
		oDiv.style.left = x+'px';
		oDiv.style.top = document.documentElement.clientHeight+'px';
		document.body.appendChild(oDiv);
		//创建烟花
		var timer = setInterval(function(){
			if(oDiv.offsetTop <= y){
				clearInterval(timer);
				show();
				document.body.removeChild(oDiv);
			}
			oDiv.style.top =oDiv.offsetTop-30+'px';
		},30);
		//展示
		function show(){

			for(var i=0; i<100;i++){
				var oDiv1 = document.createElement('div');
				var x = oEvent.clientX;
				var y = oEvent.clientY;
				var a = Math.random()*360;
				oDiv1.style.position='absolute';
				oDiv1.style.width='5px';
				oDiv1.style.height='5px';				
				oDiv1.style.background='rgb('+rnd(0,256)+','+rnd(0,256)+','+rnd(0,256)+')';
				oDiv1.style.left = x+'px';
				oDiv1.style.top = y+'px';
				oDiv1.speedX = Math.sin(a/Math.PI)*Math.random()*5;
				oDiv1.speedY = Math.cos(a/Math.PI)*Math.random()*5;
				document.body.appendChild(oDiv1);
				aDiv.push(oDiv1);
			}
		}
		
		setInterval(startShow,30);
		function startShow(){
			for(var i=0; i<aDiv.length;i++){
				aDiv[i].style.left = aDiv[i].offsetLeft+aDiv[i].speedX+'px';
				aDiv[i].style.top = aDiv[i].offsetTop+aDiv[i].speedY+'px';
				aDiv[i].speedY+=0.8;
				if(aDiv[i].offsetTop < aDiv[i].width || aDiv[i].offsetTop > document.documentElement.clientHeight || aDiv[i].offsetLeft<aDiv[i].width || aDiv[i].offsetLeft > document.documentElement.clientWidth){
					document.body.removeChild(aDiv[i]);
					aDiv.splice(i,1);
				}
			}
		}
	}
	/*钟表*/
	function time(){
		var oDate = new Date();
		var oHl =oDate.getHours();
		var oMl = oDate.getMinutes();
		var oSl = oDate.getSeconds();
		var oMs = oDate.getMilliseconds();

		var oHd = oHl%12*30+oMl/60*30;
		var oMd = oMl*6+oSl/60*6;
		var oSd = oSl*6+oMs/1000*6;

		oH.style.transform = 'rotate('+oHd+'deg)';
		oM.style.transform = 'rotate('+oMd+'deg)';
		oS.style.transform = 'rotate('+oSd+'deg)';		
	}
	time();
	setInterval(function(){
		time();
	},1000);

	var a = getCookie('wish');
    console.log(getCookie('wish'));
    if(a == 1){
        oOpen.style.display = 'block';
        oShop.style.display = 'none';
        oHome.style.display = 'none';  
        setCookie('wish','1',20);     
    }else if(a == 2){   	
    	oOpen.style.display = 'none';
        oShop.style.display = 'block';
        oHome.style.display = 'none';   
        setCookie('wish','2',20);    
    }

   var a = getCookie('plane');
    console.log(getCookie('plane'));
    if(a == 2){
    	oOpen.style.display = 'none';
        oGame.style.display = 'block';
        oHome.style.display = 'none';   	
    }else if(a == 1){
        oOpen.style.display = 'block';
        oShop.style.display = 'none';
        oHome.style.display = 'none';
        oGame.style.display = 'none';
    }

    var planeX=rnd();
	var planeY=rnd();
	var fishX=rnd();
	var fishY=rnd();
    setInterval(function(){  	
		var oGameL = document.getElementById('gameL');
		if(oGameL.offsetLeft+oGameL.style.width<document.documentElement.clientWidth){
			planeX *=-1;
		}
		if(oGameL.offsetTop+oGameL.style.height>document.documentElement.clientHeight){
			planeY *=-1;
		}
		oGameL.style.left = parseInt(oGameL.offsetLeft)+planeX+"px";
		oGameL.style.top = parseInt(oGameL.offsetTop)+planeY+"px";
    },30);

   /* 画布*/
    var oC = document.querySelector('canvas');
	var oIn = document.querySelectorAll('input');
	var oDraw = document.getElementById('draw');
	var gd = oC.getContext('2d');
	oC.onmousedown=function(ev){
		var disX = ev.clientX-oDraw.offsetLeft;
		var disY = ev.clientY-oDraw.offsetTop-30;
		/*var x=ev.clientX-oDraw.offsetLeft;
		var y=ev.clientY-oDraw.offsetTop;*/
		gd.beginPath();
		gd.strokeStyle=oIn[0].value;
		gd.lineWidth = oIn[2].value;
		gd.moveTo(disX,disY);
		oC.onmousemove=function(ev){
			var x = ev.clientX-oDraw.offsetLeft;
			var y = ev.clientY-oDraw.offsetTop-30;
			gd.lineTo(x,y);
			gd.stroke();
			console.log(x+' '+y);
		}
		oC.onmouseup=function(){
			oC.onmouseup = null;
			oC.onmousemove = null;
		}
		return false;
	}
	oIn[1].onclick=function(){
		gd.clearRect(0,0,oC.width,oC.height);
	}
	oC.onclick=function(){
		oC.style.background = oIn[3].value;
	}
	/*翻页效果*/
	var oBook=document.querySelector('.book');
	var oPage=oBook.querySelector('.page');
	var oFront=oPage.querySelector('.front');
	var oBack=oPage.querySelector('.back');
	var oRight=oBook.querySelector('.right');
	var iNow=0;
	var bReady=true;
	
	oBook.style.marginLeft = (document.documentElement.clientHeight)*0.6+'px';
	oBook.style.marginTop = (document.documentElement.clientHeight)*0.6+'px';
	oBook.onclick=function(){
		if(!bReady)return;
		bReady=false;
		iNow++;
		oPage.style.transition='1s';
		oPage.style.transform='perspective(800px) rotateY(-180deg)';	
	};
	
	oPage.addEventListener('transitionend',function(){
		oPage.style.transition='none';
		oPage.style.transform='perspective(800px) rotateY(0deg)';	
		
		//切换图片
		oBook.style.backgroundImage='url(img/'+iNow%3+'.jpg)';
		oFront.style.backgroundImage='url(img/'+iNow%3+'.jpg)';
		
		oBack.style.backgroundImage='url(img/'+(iNow+1)%3+'.jpg)';
		
		oRight.style.backgroundImage='url(img/'+(iNow+1)%3+'.jpg)';
		
		bReady=true;
		
	},false);
	 	 


}