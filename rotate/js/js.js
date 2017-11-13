var arr=[
 
 		{
 			transform:"rotate(0deg)",
 			opacity:1
 		},
 		{
 			transform:"rotate(-50deg)",
 			opacity:0
 		},
 		{
 			transform:"rotate(-180deg)",
 			opacity:0
 		},
 		{
 			transform:"rotate(50deg)",
 			opacity:0
 		}
 ];
    setInterval(function(){
   		arr.push(arr.shift());	
   		setStyle1();
		setStyle2();
		setStyle3();
		setStyle4()
    },4000);
    function setStyle1(){
 	$("#child1").css(
 		{transform:arr[0].transform,
 		opacity:arr[0].opacity}
 	);
	}
	 function setStyle2(){
	 	$("#child2").css(
	 		{transform:arr[1].transform,
	 		opacity:arr[1].opacity}
	 	);
	}
	function setStyle3(){
	   	$("#child3").css(
	   		{transform:arr[2].transform,
	   		opacity:arr[2].opacity}
	   	);
	}
	function setStyle4(){
	   	$("#child4").css(
	   		{transform:arr[3].transform,
	   		opacity:arr[3].opacity}
	   	);
	}