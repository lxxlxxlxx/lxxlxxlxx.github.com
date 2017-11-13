function time() {
				//获得显示时间的div
		function initArray() {
		for(i = 0; i < initArray.arguments.length; i++)
			this[i] = initArray.arguments[i];
		}
		var isnDays = new initArray("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日");
		t_div = document.getElementById('showtime');
		var now = new Date();
		t_div.innerHTML = now.getFullYear() +
		"年" + (now.getMonth() + 1) + "月" + now.getDate() +
		"日" + "&nbsp;&nbsp;" + "|" + "&nbsp;&nbsp;" + isnDays[now.getDay()];				setTimeout(time, 1000);
	}
	

