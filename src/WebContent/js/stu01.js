$(function(){

	var $img=$(".fangxiang img");
	for(var i=0;i<$img.length;i++)
	{
		$img.eq(i).attr('index',i);
	}
	//alert($img.length);

	for(var i=0;i<$img.length;i++)
	{
		$img.eq(i).mouseover(function(){
			var m=parseInt($(this).attr("index"));
			$(this).attr('src','../images/h-'+(m+1)+'-over.png');
		});
		$img.eq(i).mouseout(function(){
			var m=parseInt($(this).attr("index"));
			$(this).attr('src','../images/h-'+(m+1)+'.png');
		});
	}
      
	   var $btn01=$(".btn01");
	   var $btn02=$(".btn02");
       var $news=$(".news");
       var $jiaoyu=$(".jiaoyu"); 
		//alert($btn01.length);

		for(var i=0;i<$btn01.length;i++)
		{
			$btn01.eq(i).attr('index',i);
		}
		for(var i=0;i<$btn02.length;i++)
		{
			$btn02.eq(i).attr('index',i);
		}
		
		for(var i=0;i<$btn01.length;i++)
		{
			$btn01.eq(i).click(function(){
				//alert($(this).attr("index"));
				for(var j=0;j<$btn01.length;j++)
				{
				 $btn01.eq(j).removeClass("active01");
				 $news.eq(j).removeClass("active03");
				}
				$(this).addClass("active01");
				$news.eq($(this).attr("index")).addClass("active03");
			});
		}

		for(var i=0;i<$btn02.length;i++)
		{
			$btn02.eq(i).click(function(){
				//alert($(this).attr("index"));
				for(var j=0;j<$btn02.length;j++)
				{
				 $btn02.eq(j).removeClass("active01");
				 $jiaoyu.eq(j).removeClass("active03");
				}
				$(this).addClass("active01");
				$jiaoyu.eq($(this).attr("index")).addClass("active03");
			});
		}
   
		function stu(){
	    /* if($('.student').eq(0).css('opacity')==1)
	     {*/
		  $('.student').eq(0).delay(1000).animate({opacity:0},5000);
		 //}
		 //if($('.student').eq(0).css('opacity')==1)
		 //{
		  $('.student').eq(0).delay(5000).animate({opacity:1},5000);
		 //}

		   if($('.student').eq(1).css('opacity')==1)
	     {
		  $('.student').eq(1).delay(2000).animate({opacity:0},5000);
		 }
		 if($('.student').eq(1).css('opacity')==1)
		 {
		  $('.student').eq(1).delay(5000).animate({opacity:1},4000);
		 }

		  if($('.student').eq(2).css('opacity')==1)
	     {
		  $('.student').eq(2).delay(3000).animate({opacity:0},5000);
		 }
		 if($('.student').eq(2).css('opacity')==1)
		 {
		  $('.student').eq(2).delay(5000).animate({opacity:1},3000);
		 }
		  if($('.student').eq(3).css('opacity')==1)
	     {
		  $('.student').eq(3).delay(4000).animate({opacity:0},5000);
		 }
		 //if($('.student').eq(3).css('opacity')==1)
		 {
		  $('.student').eq(3).delay(5000).animate({opacity:1},2000);
		 }
		  if($('.student').eq(4).css('opacity')==1)
	     {
		  $('.student').eq(4).delay(5000).animate({opacity:0},5000);
		 }
		 if($('.student').eq(4).css('opacity')==1)
		 {
		  $('.student').eq(4).delay(5000).animate({opacity:1},1000);
		 }
		}
		//stu();

		setInterval(stu,1000);



  
});