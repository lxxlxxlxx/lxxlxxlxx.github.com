window.onload=function(){
	var oBtn = document.querySelectorAll('.btn1');
    var oT = document.querySelectorAll('.t1');
    var oBtn2 = document.querySelectorAll('.btn2');

    // 加法
    for(var i = 0;i<oBtn2.length;i++){
        oBtn2[i].onclick = function() {
            for(var i = 0;i<oT.length;i++){
                var num = Number(oT[i].value);
                if (isNaN(num)) {
                    alert('错了');
                } else {
                    num++;
                    oT[i].value = num;
                }
            }          
        };
    }
    	
 
    // 减法
    oBtn.onclick = function() {
        var num = Number(oT.value);
        if (isNaN(num)) {
            alert('错了');
        } else {
            if(num > 1) {
                num--;
            }
            oT.value = num;
        }

    };

}