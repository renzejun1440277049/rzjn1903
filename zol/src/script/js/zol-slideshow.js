;class zol {
    constructor() {
        //1.获取元素
        this.taoBao = document.querySelector('.zol');
        this.picUl = document.querySelector('.zol ul');
        this.picLi = document.querySelectorAll('.zol ul li'); //5
        this.btnLi = document.querySelectorAll('.zol ol li');
        this.btnLeft = document.querySelector('#left');
        this.btnRight = document.querySelector('#right');
        this.num = 0;
        this.bstop = true;
        this.timer = null;
    }

    init() {
        //2.改变布局。
        //对布局里面首尾图片进行克隆，然后追加
        var _this = this;
        var firstPic = this.picLi[0].cloneNode(true);
        var lastPic = this.picLi[this.picLi.length - 1].cloneNode(true);
        this.picUl.appendChild(firstPic);
        this.picUl.insertBefore(lastPic, this.picLi[0]);

        //3.ul赋值宽度，让所有的li排成一行。
        this.picLi = document.querySelectorAll('.zol ul li'); //7
        this.liWidth = this.picLi[0].offsetWidth; //1个li的宽度
        this.picUl.style.width = this.liWidth * this.picLi.length + 'px';
        this.picUl.style.left = -this.liWidth + 'px';

        //4.给小圆圈添加点击事件。
        for (var i = 0; i < this.btnLi.length; i++) {
            this.btnLi[i].index = i; //自定义的索引
            this.btnLi[i].onclick = function () {
                _this.num = this.index; //当前按钮的索引
                _this.tabswitch();
                _this.btnLi[_this.num].className = 'active';
            }
        }

        this.taoBao.onmouseover = function () {
            _this.over();
        };
        this.taoBao.onmouseout = function () {
            _this.out();
        };

        this.btnRight.onclick = function () {
            _this.rightclick();
        };

        this.btnLeft.onclick = function () {
            _this.leftclick()
        };

        this.timer = setInterval(function () {
            _this.rightclick();
        }, 2000);
    }

    tabswitch() {
        var _this = this;
        for (var i = 0; i < this.btnLi.length; i++) {
            this.btnLi[i].className = '';
        }
        bufferMove(this.picUl, {
            left: -(this.num + 1) * this.liWidth
        }, function () {
            //判断是否到最后一张
            if (_this.picUl.offsetLeft <= -_this.liWidth * (_this.btnLi.length + 1)) {
                _this.picUl.style.left = -_this.liWidth + 'px';
                _this.num = 0;
            }

            //判断是否第一张
            if (_this.picUl.offsetLeft >= 0) {
                _this.picUl.style.left = -_this.liWidth * _this.btnLi.length + 'px';
                _this.num = _this.btnLi.length - 1;
            }
            _this.bstop = true;
        });
    }

    over() {
        this.btnLeft.style.display = 'block';
        this.btnRight.style.display = 'block';
        clearInterval(this.timer);
    }

    out() {
        var _this = this;
        this.btnLeft.style.display = 'none';
        this.btnRight.style.display = 'none';
        this.timer = setInterval(function () {
            _this.btnRight.onclick();
        }, 2000);
    }

    rightclick() {
        if (this.bstop) {
            this.bstop = false;
            this.num++;
            this.tabswitch();
            if (this.num == this.btnLi.length) {
                this.btnLi[0].className = 'active';
            } else {
                this.btnLi[this.num].className = 'active';
            }
        }
    }

    leftclick() {
        if (this.bstop) {
            this.bstop = false;
            this.num--;
            this.tabswitch();
            if (this.num < 0) {
                this.btnLi[this.btnLi.length - 1].className = 'active';
            } else {
                this.btnLi[this.num].className = 'active';
            }
        }

    }

}

new zol().init();