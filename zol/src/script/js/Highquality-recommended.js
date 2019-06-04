; !function () {
    $.ajax({
        url: "http://localhost/zol/php/Highquality-recommended.php",
        dataType: 'json',
        data: {

        },
        success: function (data) {
            $HighqR = '';
            $.each(data, function (index, value) {
                console.log(value.sid, value.imgsrc, value.dt, value.dd);

                $HighqR += `                        
                <div class="item-list  clearfix">
                    <div class="pic-box fl">
                        <a href="#">
                        <i class="icon-jiao f12">好价</i>
                        <img class="lazy" src=${value.imgsrc}
                            width="154" height="154" >
                        </a>
                    </div>
                    <div class="info-box fl">
                        <dl>
                            <dt>
                                <a href="#">${value.dt}</a>
                            </dt>
                            <dd>
                            ${value.dd}
                            </dd>
                        </dl>
                    </div>
                </div>
            `
                $('#Highquality-recommended .refresh-list').html($HighqR)
            });
        }
    })
    $(function () {
        $(".lazy").lazyload({
            effect: "fadeIn"
        });
    });
}()
