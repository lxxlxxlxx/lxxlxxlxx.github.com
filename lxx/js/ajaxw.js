function json2str(json){
			 json.t=Math.random();
			var arr=[];
			for(var name in json){
				arr.push(name+'='+json[name]);
			}
			var str=arr.join('&');
			return str;
		}
		function ajax(url,data,fnSucc,fnError){
			if(window.XMLHttpRequest){
					var oAjax=new XMLHttpRequest();
				}else{
					var oAjax= new ActiveXObject('Microsoft.XMLHTTP');
				}
				console.log(json2str(data));
				oAjax.open('GET',url+'?'+json2str(data),true);
				oAjax.send();
				oAjax.onreadystatechange=function(){
					if(oAjax.readyState == 4){
						if(oAjax.status >= 200 && oAjax.status <300 || oAjax.status == 304){
							fnSucc && fnSucc(oAjax.responseText);
							//alert(1);
						}else{
							fnError && fnError(oAjax.status);
						}
					}
				}
		}