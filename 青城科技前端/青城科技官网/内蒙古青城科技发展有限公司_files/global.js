/*javascript document*/
$(document).ready(function(){	
	function  setTdWidth(ele){
		if($(window).width()>1002){
			$(ele).find("td:first").css({
				width:($(ele).width()-1002)/2
			}).end().find("td:last").css({
				width:($(ele).width()-1002)/2
			});
		}else {
			return;
		}
	};
	setTdWidth(".table_top");
	$(window).bind("scroll resize",function(){
		setTdWidth(".table_top");
	});
	//main nav 点击事件
	$(".main_nav>li").click(function(){
			$(this).addClass("on").siblings().removeClass("on");
		}).hover(function(){
				$(this).children(".main_nav_sub_con").css("display","none");
				$(this).children(".main_nav_sub_con").stop(true,false).slideDown(300);					
			},function(){
				$(this).children(".main_nav_sub_con").css("display","none");
				$(this).children(".main_nav_sub_con").stop(true,false).slideUp(300);	
		});
	//设置全屏滚动的宽度
	$(".js_main_banner .con  li").width($(window).width());
	$(window).bind("scroll resize",function(){
		$(".js_main_banner .con  li").width($(window).width());
		$(".js_main_banner .d_btn").css({
			"left":($(window).width()-1002)/2
		});
	});
	//设置控制banner滚动的按钮区域
	$(".js_main_banner .d_btn").css({
			"left":($(window).width()-1002)/2
	});
		
	//左侧导航
	$(".dl_02 dt").click(function(){
		$(this).next("dd").is(":hidden")?
			$(this).nextUntil("dt").stop(true,true).slideDown(200):
			$(this).nextUntil("dt").stop(true,true).slideUp(200);
	});
	$(".dl_02 dd a").click(function(){
		$(".dl_02 dd a ").removeClass("on");	
		$(this).addClass("on");
	});
	
	//显示更多工作地方
	$(".d_wodrk_place  .a_more ").click(function(){
			$(this).parent().next(".more_wodrk_place").slideDown();
		});
		
		
	//底部位置定位
	function adjustFooter(ele){
		var  win=$(window).height()-$(".footer").innerHeight();
		var  doc=$(".header").innerHeight()+$(".content").innerHeight();
		doc<win?$(ele).css({
				position:"absolute",
				left:0,
				bottom:0
			}):$(ele).css({"position":"static"});
	}
	/*
	adjustFooter(".footer");
	$(window).bind("scroll resize",function(){
		adjustFooter(".footer");
	});
	*/
	$(".choose_selected_con  li ").hover(function(){
				$(this).addClass("hover");
		},function(){
				$(this).removeClass("hover");
	
		}).click(function(){
				var $text=$(this).text();
				$(this).parents(".choose_selected_in").find(".choose_selected_trigger").val($text);
				$(this).parent().hide();
		});
	$(document).click(function(event){
		 var $target = $(event.target);
		  if( $target.is(".choose_selected_trigger") ) {
				$target.parents(".choose_selected_in").find(".choose_selected_con").show();
		  }else {
				$(".choose_selected_con").hide();
		  }		
	});
});

function trySet(obj,txt){
		if(obj.value==""){
			obj.value = txt;
			obj.style.color='#666666';
		}
		else{
			obj.style.color='#666666';
			}
	}
	
	function tryClear(obj,txt){
		if(obj.value==txt){
			obj.value = '';
			obj.style.color='#666666';
		}
	}
;(function($) {		  
	jQuery.fn.Fixed = function(options) {  
		var defaults = {
			left:0,
			bottom:0
		};  
		var o = jQuery.extend(defaults, options);  
		var isIe6 = !window.XMLHttpRequest;
		var html= $('html');  
		if (isIe6 && html.css('backgroundAttachment') !== 'fixed') { //防止抖动 
			html.css('backgroundAttachment','fixed')
			.css('backgroundImage','url(about:blank)');
		};
		return this.each(function() {  
			var domThis=$(this)[0];  
			var objThis=$(this);  
			if(isIe6){
				objThis.css('position' , 'absolute');
				domThis.style.setExpression('left', 'eval((document.documentElement).scrollLeft + ' + o.x + ') + "px"');  
				domThis.style.setExpression('top', 'eval((document.documentElement).scrollTop + ' + o.y + ') + "px"'); 
			} else {
				if(options){
					objThis.css('position' , 'fixed').css(options);
				}else{
					objThis.css('position' , 'fixed').css(defaults);
				}
			}
		});  
	};        
})(jQuery);