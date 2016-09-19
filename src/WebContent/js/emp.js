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
			$(this).attr('src','../images/h-'+(m+1)+'-over-comp.png');
		});
		$img.eq(i).mouseout(function(){
			var m=parseInt($(this).attr("index"));
			$(this).attr('src','../images/h-'+(m+1)+'-comp.png');
		});
	}
      
	   var $btn01=$(".btn01");
       var $news=$(".news"); 
		//alert($btn01.length);

		for(var i=0;i<$btn01.length;i++)
		{
			$btn01.eq(i).attr('index',i);
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
        
       //  var $m1=$(".students01");
       //  var $img01=$(".students01 .student");
       // // $m1.animate({left:-245},30);
       //  // $m1.attr("width",($m1.attr('width')*3));
       //  for(var i=0;i<$img01.length;i++)
       //  {
       //  	$m1.animate({left:i*(-245)},1000);
       //  }
		// function stu(){
	 //     if($('.students01 .student').eq(0).css('opacity')==1)
	 //     {
		//   $('.students01 .student').eq(0).delay(1000).animate({opacity:0},5000);
		//  }
		//  if($('.students01 .student').eq(0).css('opacity')==1)
		//  {
		//   $('.students01 .student').eq(0).delay(5000).animate({opacity:1},5000);
		//  }

		//    if($('.students01 .student').eq(1).css('opacity')==1)
	 //     {
		//   $('.students01 .student').eq(1).delay(2000).animate({opacity:0},5000);
		//  }
		//  if($('.students01 .student').eq(1).css('opacity')==1)
		//  {
		//   $('.students01 .student').eq(1).delay(5000).animate({opacity:1},4000);
		//  }

		//   if($('.students01 .student').eq(2).css('opacity')==1)
	 //     {
		//   $('.students01 .student').eq(2).delay(3000).animate({opacity:0},5000);
		//  }
		//  if($('.students01 .student').eq(2).css('opacity')==1)
		//  {
		//   $('.students01 .student').eq(2).delay(5000).animate({opacity:1},3000);
		//  }
		//   if($('.students01 .student').eq(3).css('opacity')==1)
	 //     {
		//   $('.students01 .student').eq(3).delay(4000).animate({opacity:0},5000);
		//  }
		//  if($('.students01 .student').eq(3).css('opacity')==1)
		//  {
		//   $('.students01 .student').eq(3).delay(5000).animate({opacity:1},2000);
		//  }
		//   if($('.students01 .student').eq(4).css('opacity')==1)
	 //     {
		//   $('.students01 .student').eq(4).delay(5000).animate({opacity:0},5000);
		//  }
		 
		// }
		// //stu();

		// setInterval(stu,1000);



  
});