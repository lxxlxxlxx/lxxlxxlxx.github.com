window.onload = function() {
    var oDiv = document.getElementById("tab");
    var oLi = oDiv.getElementsByTagName("div")[0].getElementsByTagName("li");
    var aCon = oDiv.getElementsByTagName("div")[1].getElementsByTagName("div");
    var oPic = document.getElementById('pic');
    var timer = null;
    for (var i = 0; i < oLi.length; i++) {
        oLi[i].index = i;
        oLi[i].onclick = function() {
            show(this.index);
        }
    }
    function show(a) {
        index = a;
        var alpha = 0;
        for (var j = 0; j < oLi.length; j++) {
            oLi[j].className = "";
            aCon[j].className = "";
            aCon[j].style.opacity = 0;
            aCon[j].style.filter = "alpha(opacity=0)";
        }
        oLi[index].className = "cur";
        clearInterval(timer);
        timer = setInterval(function(){
            alpha += 2;
            alpha > 100 && (alpha = 100);
            aCon[index].style.opacity = alpha / 100;
            aCon[index].style.filter = "alpha(opacity=" + alpha + ")";
            alpha == 100 && clearInterval(timer);
        },
        5)
    }
            var oBox = document.getElementById('box');
            var oUl = oBox.getElementsByTagName('ul')[0];
            var aLi = oUl.getElementsByTagName('li');
            var oOl = oBox.getElementsByTagName('ol')[0];
            var aBtn = oOl.getElementsByTagName('li');

            // 循环添加事件
            for (var i = 0; i < aBtn.length; i++) {
                aBtn[i].index = i;
                aBtn[i].onclick = function() {
                    for (var i = 0; i < aBtn.length; i++) {
                        aBtn[i].className = '';
                        aLi[i].style.display = 'none';
                    }
                    
                    this.className = 'active';
                    aLi[this.index].style.display = 'block';
                };
            }
       alert(1);
}