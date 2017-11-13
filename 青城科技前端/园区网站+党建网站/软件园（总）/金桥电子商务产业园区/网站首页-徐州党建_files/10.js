
window.onload=function() {
	var oBox = document.getElementById('box');
    var aBtn = oBox.getElementsByTagName('input');
    var aDiv = oBox.getElementsByTagName('div');
    /*var oPrev = document.getElementById('prev');
    var oNext = document.getElementById('next');*/
    var iNow = 0; // 表示当前第几个选项卡显示
    var timer = null;

    for (var i = 0; i < aBtn.length; i++) {
        aBtn[i].index = i;
        aBtn[i].onclick = function(){
            // 先清空所有
            iNow = this.index;
            tab();
        };
    }

    function tab() {
        // 清空所有
        for (var i = 0; i < aBtn.length; i++) {
            aBtn[i].className = '';
            aDiv[i].style.display = 'none';
        }
        // 设置当前
        aBtn[iNow].className = 'active';
        aDiv[iNow].style.display = 'block';
    }

    // 下一个
    function next(){
        iNow++;
        if (iNow == aBtn.length) {
            iNow = 0;
        }
        tab();
    }
    /*oNext.onclick = next;*/

    timer = setInterval(function(){
        next();
    },1000);

    oBox.onmouseover = function() {
        clearInterval(timer);
    };

    oBox.onmouseout = function() {
        timer = setInterval(function(){
            next();
        },1000);
    };

}