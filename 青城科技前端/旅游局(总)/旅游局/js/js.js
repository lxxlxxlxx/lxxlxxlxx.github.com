				
	var now= new Date();
	var year=now.getFullYear();
	var month=now.getMonth();
	var date=now.getDate();
	var show_day=new Array('星期日','星期一','星期二','星期三','星期四','星期五','星期六'); 
	var day=now.getDay(); 
	document.getElementById("logoR").innerHTML="今天是："+year+"年"+(month+1)+"月"+date+"日 "+show_day[day];
