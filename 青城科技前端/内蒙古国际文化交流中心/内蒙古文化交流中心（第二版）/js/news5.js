window.onload=function(){
    var oBox = document.getElementById('box');
    var oUl = oBox.getElementsByTagName('ul')[0];
    var aLi = oUl.getElementsByTagName('li');
    var oOl = oBox.getElementsByTagName('ol')[0];
    var aBtn = oOl.getElementsByTagName('li');

    // 循环添加事件
    for (var i = 0; i < aBtn.length; i++) {
        aBtn[i].index = i;
        aBtn[i].onmouseover = function() {
            for (var i = 0; i < aBtn.length; i++) {
                aBtn[i].className = '';
                aLi[i].style.display = 'none';
            }
            
            this.className = 'active';
            aLi[this.index].style.display = 'block';
        };
    }
}