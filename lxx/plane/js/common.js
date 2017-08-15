/**
工具类
  对于这个游戏里的一些常用功能进行封装，跟某个对象没多大关系

  (静态的)
 */
/*
碰撞检测
 */
function isCrash(obj1, obj2){
	if(obj1 && obj2){
		var leftSide = obj2.offsetLeft-obj1.offsetWidth/2;
		var rightSide = obj2.offsetLeft+obj2.offsetWidth+obj1.offsetWidth/2;
		var upSide = obj2.offsetTop - obj1.offsetHeight/2;
		var downSide = obj2.offsetTop + obj2.offsetHeight + obj1.offsetHeight/2;
		var x = obj1.offsetLeft+obj1.offsetWidth/2;
		var y = obj1.offsetTop + obj1.offsetHeight/2;
		if(x > leftSide && x < rightSide && y > upSide && y < downSide){
			return true;
		} 
	}
	return false;
}
/*
获取实际 属性的值
 */
function getStyle(obj,attr) {
    if(obj.currentStyle){
        return obj.currentStyle[attr];
    }else{
        return getComputedStyle(obj,false)[attr];
    }
}




















