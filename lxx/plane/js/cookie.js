function setCookie(name,value,day){
		if(day){
			var  oDate=new Date();
			oDate.setDate(oDate.getDate()+day);
			document.cookie=name+'='+value+';path=/;expires='+oDate;
		}else{
			document.cookie=name+'='+value+';path=/';
		}	
}	
function getCookie(name){
	var arr=document.cookie.split('; ');
	for(var i=0; i<arr.length;i++){
		var arr2=arr[i].split('=');
		if(arr2[0] == name){
			return arr2[1];
		}
	}
}
function removeCookie(name){
	setCookie(name,'',-1);
}
