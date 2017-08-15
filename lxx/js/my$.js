function getStyle(obj,attr) {
    if(obj.currentStyle) return obj.currentStyle[attr];
    else return getComputedStyle(obj)[attr];
}
function my$(str)
{
	if(str.substr(0,1)=="#")
	{
		return document.getElementById(str.substring(1));
	}
	else if(str.substr(0,1)==".")
	{
		return document.getElementsByClassName(str.substring(1));
	}
	else{
		return document.getElementsByTagName(str);
	}
}
function getAbsposition(obj){
	var left=0;
	var top=0;
	while(obj){
		left +=obj.offsetLeft;
		top +=obj.offsetTop;
		obj=obj.offsetParent();
	}
	return left+top;
}