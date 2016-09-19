/**
 * Created by Administrator on 2016/7/25.
 */$(function(){
    var $img = $('.logHuan img');
    for(var i=0;i<$img.length;i++)
    {
        $img.eq(i).attr('index',i);
        $img.eq(i).mouseover(function(){
            var m=parseInt($(this).attr("index"));
            $(this).attr('src','images/h-'+(m+1)+'-over.png');
        });
        $img.eq(i).mouseout(function(){
            var m=parseInt($(this).attr("index"));
            $(this).attr('src','images/h-'+(m+1)+'.png');
        });
    }

    var $btn01=$(".btn01");
    var $box=$(".box");
    for(var i=0;i<$btn01.length;i++)
    {
        $btn01.eq(i).attr('index',i);
        $btn01.eq(i).click(function(){
            for(var j=0;j<$btn01.length;j++)
            {
                $btn01.eq(j).removeClass("active01");
                $box.eq(j).removeClass("active03");
            }
            $(this).addClass("active01");
            $box.eq($(this).attr("index")).addClass("active03");
        });
    }


    function stu(){
        /* if($('.stu').eq(0).css('opacity')==1)
         {*/
        $('.stud').eq(0).delay(1000).animate({opacity:0},5000);
        //}
        //if($('.stu').eq(0).css('opacity')==1)
        //{
        $('.stud').eq(0).delay(5000).animate({opacity:1},5000);
        //}

        if($('.stud').eq(1).css('opacity')==1)
        {
            $('.stud').eq(1).delay(2000).animate({opacity:0},5000);
        }
        if($('.stud').eq(1).css('opacity')==1)
        {
            $('.stud').eq(1).delay(5000).animate({opacity:1},5000);
        }

        if($('.stud').eq(2).css('opacity')==1)
        {
            $('.stud').eq(2).delay(3000).animate({opacity:0},5000);
        }
        if($('.stud').eq(2).css('opacity')==1)
        {
            $('.stud').eq(2).delay(5000).animate({opacity:1},5000);
        }
        if($('.stud').eq(3).css('opacity')==1)
        {
            $('.stud').eq(3).delay(4000).animate({opacity:0},5000);
        }
        if($('.stud').eq(3).css('opacity')==1)
        {
            $('.stud').eq(3).delay(5000).animate({opacity:1},5000);
        }
        if($('.stud').eq(4).css('opacity')==1)
        {
            $('.stud').eq(4).delay(5000).animate({opacity:0},5000);
        }
        if($('.stud').eq(4).css('opacity')==1)
        {
            $('.stud').eq(4).delay(5000).animate({opacity:1},5000);
        }
    }
    setInterval(stu,1000);
});


