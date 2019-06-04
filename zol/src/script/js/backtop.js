; !function () {
    var $backtopText = $('.backtoptext');
    var $backtopPic = $('.backtoppic');
    var $backTop = $('#backtop');
    $backTop.css({
        'cursor':' pointer'
    })
    $(window).on('scroll', function () {
        var $top = $(window).scrollTop();
        if ($top > 800) {
            $backTop.show();
            
            $backTop.hover(
                function () {
                    $backtopPic.hide();
                    ;
                }, function () {
                    $backtopPic.show()
                });
        } else {
            $backTop.hide()
        }
    })
    $backTop.on('click', function () {
        $('html,body').animate({//赋值注意内部的属性。
            scrollTop: 0
        });
    })
}();



/* ;!function(){
    //1.添加滚轮事件，显示隐藏楼梯导航
    var $loutinav=$('#loutinav');
    var $loutiLi=$('#loutinav li').not('.last');
    var $louceng=$('#main .louceng');

    $(window).on('scroll',function(){
        var $top=$(window).scrollTop();//滚动条的距离
        if($top>=800){
            $loutinav.show();
        }else{
            $loutinav.hide();
        }

        //4.拖动滚动条，对应的楼梯添加类名，楼梯到了那块区域。
        //思路：楼层的top值和滚动条距离进行比较
        $louceng.each(function(index,element){
            var $loucentTop=$(element).offset().top;//每个楼层的top值。
            if($loucentTop>$top){
                $loutiLi.removeClass('active');//每次触发滚轮事件，移除所有楼梯的类。
                $loutiLi.eq(index).addClass('active');
                return false;//遍历一次，终止循环。
            }
        });



    });

    //2.点击楼梯导航,楼层跳到对应的位置。

    $loutiLi.on('click',function(){
        //$(this).index():当前点击的楼梯的索引。
        $(this).addClass('active').siblings().removeClass('active');//当前的元素添加类，其他的兄弟元素移除类。
        var $top=$louceng.eq($(this).index()).offset().top;
        //document.documentElement.scrollTop
        //document.body.scrollTop
        $('html,body').animate({//赋值注意内部的属性。
            scrollTop:$top
        });
    });

    //3.回到顶部
    $('.last').on('click',function(){
        $('html,body').animate({//赋值注意内部的属性。
            scrollTop:0
        });
    });

}(); */