window.onload=function(){
	// var oBtn = document.querySelector('.btn1');
 //    var oT = document.querySelector('.t1');
 //    var oBtn2 = document.querySelector('.btn2');

    var oBtn1 = document.getElementsByClassName('btn1');
    var oT1 = document.getElementsByClassName('t1');
    var oBtn21 = document.getElementsByClassName('btn2');
    console.log(oT1.length);
    // 加法
    for(var i=0;i<oT1.length;i++){
        // 加法
        aaa(i)
        // 减法
        bbb(i);
    }
    // 加法
	function aaa(i){
        oBtn21[i].onclick = function() {
            var num = oT1[i].value;
                if (isNaN(num)) {
                    alert('错了');
                } else {
                    num++;
                    oT1[i].value = num;
            }
        };
    }
    // 减法
    function bbb(i){
        oBtn1[i].onclick = function() {
            var num = oT1[i].value;
                if (isNaN(num)) {
                    alert('错了');
                } else {
                    num--;
                    if(num <= 1){
                        oT1[i].value = 1;
                    }
                    else{
                        oT1[i].value = num;
                    }
                   
            }
        }
    }
    // 减法
}