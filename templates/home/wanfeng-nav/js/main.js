$(function() {
    $(".header").after('<div id="m-nav" class="m-nav"><div class="m-wrap"></div><div id="m-btn" class="m-btn"><i class="fa fa-remove"></i></div>');
    $(".sub-menu").before('<em class="dot"><i class="fa fa-angle-down"></i></em>');
    $(".container .nav").clone(false).appendTo(".m-wrap");
    $(".m-btn").click(function() {
        $("#m-nav").toggleClass("m-open").siblings("#m-nav").removeClass("m-open");
        $("#mask").slideToggle(0).siblings("#mask").slideToggle(0);
        $("body").toggleClass("open").siblings("body").removeClass("open");
    });
    $(".dot").click(function(c) {
        e($(this), ".ul-subcates");
        c.stopPropagation();
    });
    function e(e, c) {
        e.next().slideToggle();
        e.parent().siblings().find(".fa").removeClass("open");
        e.parent().siblings().find(c).slideUp();
        var d = e.find(".fa");
        if (d.hasClass("open")) {
            d.removeClass("open");
        } else {
            d.addClass("open");
        }
    }
    $(".nav-bar li").hover(function() {
        $(this).addClass("on");
    }, function() {
        $(this).removeClass("on");
    });
    $(".s-btn").on("click", function() {
        var e = $(this);
        if (e.hasClass("off")) {
            e.removeClass("fa-search off").addClass("fa-remove no");
            $(".s-form").slideToggle(200);
        } else {
            e.removeClass("fa-remove no").addClass("fa-search off");
            $(".s-form").slideToggle(100);
        }
    });
    $("#mask").click(function() {
        $(this).hide();
        $(".search-bg").hide();
        $("#m-nav").removeClass("m-open");
        $("body").removeClass("open");
    });
    //分类定位
    $(".sub2 li").click(function() {
        var id = $(this).data("id");
        if ($("#"+id).length) {
            $('body,html').animate({
                scrollTop: $("#"+id).offset().top - 80
            }, 300);
        }

    });
});

//动态调整顶部分类导航
var sub2 = $('.sub2');
var lastLiTop =  $('.sub2 li').length * 42;
function resize_sub2() {
  if ($(window).width() < 768) {
    sub2.css('height', '');
    return;
  }
  if (lastLiTop > $(window).height() - 80) {
    sub2.height('calc(100vh - 90px)');
  } else {
    sub2.height(lastLiTop + 5);
  }
}
$(window).on('resize', resize_sub2);
resize_sub2();

//书签搜索
if ($('#search_key').length) {
    var holmes = new holmes({
        input: '#search_key',
        find: '.col-xs-6',
        placeholder: '请输入关键词',
        class: {
            visible: 'visible',
            hidden: 'hidden'
        },
        onInput(el) {
            if(el == ''){
                $('.part').removeClass('hidden');
                return;
            }
            $('.part').each(function() {
                if ($(this).find('.visible').length > 0) {
                    $(this).removeClass('hidden');
                } else {
                    $(this).addClass('hidden');
                }
            });
        }
    });
    
    $('#search_key').on('submit', function(e) {
        e.preventDefault();
    });
}


(function(e) {
    if (typeof Object.create !== "function") {
        Object.create = function(e, c) {
            if (typeof e !== "object" && typeof e !== "function") {
                throw new TypeError("Object prototype may only be an Object: " + e)
            } else if (e === null) {
                throw new Error("This browser's implementation of Object.create is a shim and doesn't support 'null' as the first argument.");
            }
            if (typeof c != "undefined")
                throw new Error("This browser's implementation of Object.create is a shim and doesn't support a second argument.");
            function d() {}
            d.prototype = e;
            return new d
        }
    }
    var c = function(e, d) {
        if (d.length >= e.length) {
            return e.apply(e, d)
        }
        return function() {
            if (arguments.length == 0)
                arguments = [null];
            return c(e, d.concat([].slice.apply(arguments)))
        }
    };
    var d = function(e) {
        if (typeof e != "function")
            return null;
        return function() {
            if (arguments.length == 0)
                arguments = [null];
            return c(e, [].slice.apply(arguments))
        }
    };
    var V = function() {
        var e = arguments;
        return function(c) {
            for (var d = 0; d < e.length; d++) {
                if (typeof e[d] == "function") {
                    c = e[d].call(null, c)
                }
            }
            return c
        }
    };
    var a = d(function(e, c) {
        return String.prototype.match.call(c, e) || []
    });
    var ad = d(function(e, c, d) {
        return String.prototype.replace.call(d, e, c)
    });
    var b = ad(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, "");
    var f = d(function(e, c, d, V) {
        if (!bR(e))
            e = false;
        if (!bR(c))
            c = "0";
        V = parseInt(V);
        if (!dC(V))
            V = V + "";
        var a = d - V.length;
        var ad = "";
        while (ad.length < a) {
            ad += c
        }
        ad = ad.substring(0, a);
        return e ? V + ad : ad + V
    });
    var F = d(function(e, c) {
        switch (e) {
        case "array":
            return Object.prototype.toString.call(c) === "[object Array]";
            break;
        case "object":
            return Object.prototype.toString.call(c) === "[object Object]";
            break;
        case "regexp":
            return Object.prototype.toString.call(c) === "[object RegExp]";
            break;
        default:
            return typeof c == e
        }
    });
    var bh = F("object");
    var fN = F("function");
    var dC = F("string");
    var dA = F("number");
    var dF = F("boolean");
    var aP = F("array");
    var dG = F("regexp");
    var bR = function(e) {
        return e != null
    };
    var cQ = function(e) {
        if (!bR(e))
            return true;
        if (aP(e))
            e = e.toString();
        if (dC(e))
            return b(e).length === 0;
        if (bh(e)) {
            for (var c in e) {
                if (e.hasOwnProperty(c)) {
                    return false
                }
            }
            return true
        }
        if (Math.abs(e - 0) === 0)
            return true;
        return false
    };
    var g = function(e) {
        return !cQ(e)
    };
    var G = d(function(e, c) {
        return document.documentElement[e] || document.body[e] || 0
    });
    var cc = d(function(e, c) {
        return G("clientWidth", "") >= e
    });
    var eF = V(a(/(iPhone|iPod|ios|iPad)/i), g);
    var aJ = V(a(/Android/i), g);
    var ai = V(a(/(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i), g);
    var dH = function() {
        var e = navigator.userAgent;
        if (eF(e))
            return "ios";
        if (aJ(e))
            return "android";
        if (ai(e))
            return "mobile";
        return false
    };
    var eV = function(e) {
        var c;
        if (bh(e)) {
            c = {};
            for (var d in e) {
                if (e.hasOwnProperty(d)) {
                    c[d] = this.deepCopy(e[d])
                }
            }
        } else {
            c = e
        }
        return c
    };
    var cG = function(e) {
        var c = [];
        if (bh(e)) {
            for (var d in e) {
                if (e.hasOwnProperty(d)) {
                    if (bh(e[d])) {
                        c.push(this.toArray(e[d]))
                    } else {
                        c.push(e[d])
                    }
                }
            }
        } else {
            c.push(e)
        }
        return c
    };
    var gc = function(e) {
        return JSON.stringify(e)
    };
    var dc = function(e) {
        var c;
        try {
            c = JSON.parse(e)
        } catch (e) {
            c = null;
            console.dir(e)
        }
        return c
    };
    var eW = a(/^\d{4}[-\/][01]\d[-\/][0-3]\d(\s+[0-2]\d(:[0-5]\d(:[0-5]\d)?)?)?/gi);
    var dS = function(e, c, d) {
        if (!dC(c) || !dC(d) || !eW(c) || !eW(d)) {
            console.dir("date format is wrong");
            return null
        }
        c = new Date(ad(/\-/g, "/", c)).getTime();
        d = new Date(ad(/\-/g, "/", d)).getTime();
        if (isNaN(c) || isNaN(d)) {
            console.dir("date format is wrong");
            return null
        }
        var V = d - c;
        var a = 1;
        switch (e) {
        case "week":
            a = 7 * 24 * 3600 * 1e3;
            break;
        case "day":
            a = 24 * 3600 * 1e3;
            break;
        case "hour":
            a = 3600 * 1e3;
            break;
        case "minute":
            a = 60 * 1e3;
            break;
        case "second":
            a = 1e3;
            break;
        default:
            a = 1
        }
        return Math.floor(V / a)
    };
    var gQ = function(e) {
        var c, d = new RegExp("(^| )" + e + "=([^;]*)(;|$)");
        if (c = document.cookie.match(d)) {
            return decodeURIComponent(c[2])
        }
        return ""
    };
    var eWb = function(e, c, d, V) {
        if (!bR(d))
            d = 1;
        d = d - 0;
        if (isNaN(d))
            d = 1;
        if (!bR(V)) {
            path = ";path=/"
        } else {
            path = ""
        }
        var a = new Date;
        a.setTime(a.getTime() + d * 24 * 60 * 60 * 1e3);
        var ad = "expires=" + a.toUTCString();
        document.cookie = e + "=" + encodeURIComponent(c) + "; " + ad + path
    };
    var Fc = function(e) {
        eWb(e, "", -1)
    };
    var C = function() {
        return true
    };
    var h = function() {
        return false
    };
    var i = function(e) {
        return function() {
            return e
        }
    };
    var j = function(e) {
        var c;
        return function() {
            return c || (c = e.apply(c, arguments))
        }
    };
    var k = {
        curry: d,
        flow: V,
        of: i,
        getSingle: j,
        returnFalse: h,
        returnTrue: C,
        match: a,
        replace: ad,
        deepCopy: eV,
        toArray: cG,
        jsonEncode: gc,
        jsonDecode: dc,
        lpad: f(),
        rpad: f(true),
        getCookie: gQ,
        setCookie: eWb,
        delCookie: Fc,
        isObject: bh,
        isString: dC,
        isBoolean: dF,
        isNumber: dA,
        isArray: aP,
        isFunction: fN,
        isRegExp: dG,
        isExist: bR,
        isEmpty: cQ,
        isNotEmpty: g,
        dateDiff: dS,
        clientWidthBigThen: cc,
        getDocument: G
    };
    var k = Object.create(k);
    k.trim = b;
    k.isMobile = dH;
    k.sm = cc(768);
    k.md = cc(992);
    k.lg = cc(1200);
    k.st = G("scrollTop");
    k.ct = G("clientHeight");
    k.cl = G("clientWidth");
    e.orz = k
}
)(window);
(function(e) {
    orz.isjQuery = function(e) {
        return e instanceof jQuery
    }
    ;
    orz.isScrolling = function() {
        if (e("body").hasClass("scrolling"))
            return true;
        return false
    }
    ;
    orz.startScroll = function(c) {
        e("body").addClass("scrolling");
        if (orz.isjQuery(c)) {
            c.trigger("startScroll")
        }
    }
    ;
    orz.endScroll = function(c) {
        e("body").removeClass("scrolling");
        if (orz.isjQuery(c)) {
            c.trigger("endScroll")
        }
    }
}
)(jQuery);
(function(e) {
    orz.scrollTo = function(c, d, V) {
        if (orz.isMobile())
            return;
        if (orz.isScrolling())
            return;
        if (!orz.isjQuery(c))
            return;
        var a = c;
        if (a.length < 1)
            return;
        var ad = e(this);
        var b = d - 0;
        var f = 1e3;
        var F = orz.st();
        var d = a.offset();
        var bh = d.top;
        if (!isNaN(b))
            bh = bh + b;
        var fN = Math.abs(F - bh);
        if (isNaN(V) || V <= 0)
            V = f * fN / 4e3;
        orz.startScroll(ad);
        e("html,body").animate({
            scrollTop: bh
        }, V, function() {
            orz.endScroll(ad)
        });
        return false
    }
}
)(jQuery);
jQuery(function(e) {
    function c(e) {
        var c = e.attr("data-href");
        if (!c) {
            c = e.attr("href")
        }
        var d = c.split("#");
        var V = location.href;
        var a = V.split("#");
        if (d[0] && d[0] != a[0]) {
            return ""
        }
        return d.pop()
    }
    e("body").on("click", ".auto-scroll", function() {
        if (orz.isMobile())
            return;
        if (orz.isScrolling())
            return;
        var d = c(e(this));
        if (!d)
            return;
        var V = e("#" + d);
        if (V.length < 1)
            return;
        var a = e(this);
        var ad = e(this).attr("data-offset") - 0;
        var b = e(this).attr("data-speed") - 0;
        orz.scrollTo(V, ad, b);
        return false
    })
});
(function(e) {
    var c = e(".part");
    if (c.length < 1)
        return;
    var d = [];
    function V() {
        c.each(function() {
            var c = e(this).offset();
            d.push(Math.floor(c.top))
        })
    }
    function a(c) {
        var d = e("#goto dd");
        var V = e("#goto dt");
        if (d.length < 1)
            return;
        var a = d.outerHeight();
        if (!d.eq(c).hasClass("current")) {
            d.removeClass("current");
            d.eq(c).addClass("current");
            V.animate({
                top: a * c + (d.outerHeight() - V.outerHeight()) / 2 + 1
            }, 50)
        }
    }
    function ad() {
        var e = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
        var V = Math.ceil(e + 78);
        var ad = 0;
        for (var b = 0; b < d.length; b++) {
            if (V >= d[b]) {
                ad = b
            } else {
                break
            }
        }
        if (ad < 0)
            ad = 0;
        if (!c.eq(ad).hasClass("current")) {
            c.removeClass("current");
            c.eq(ad).addClass("current");
            a(ad)
        }
    }
    V();
    setTimeout(ad, 0);
    e(window).on("scroll", ad)
}
)(jQuery);
(function(e) {
    var c = e(".quick-nav");
    if (c.length < 1)
        return;
    var d = c.children(".content-sidebar");
    if (d.length < 1)
        return;
    var V = c.parent();
    if (V.length < 1)
        return;
    var a = 0
      , ad = 0
      , b = 0;
    function f() {
        var e = c.offset();
        a = e.top;
        ad = a + V.height();
        F()
    }
    function F() {
        b = d.height()
    }
    function bh() {
        d.removeClass("fixed");
        d.removeClass("absolute")
    }
    function fN() {
        var e = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
        if (e <= a) {
            bh()
        }
        if (e >= ad - b) {
            d.removeClass("fixed");
            d.addClass("absolute");
            return
        }
        if (e < ad - b && e > a) {
            d.removeClass("absolute");
            d.addClass("fixed")
        }
    }
    var dC = e(".content-sidebar dl");
    if (dC.length < 1)
        return;
    var dA = e(".part");
    if (dA.length < 1)
        return;
    var dF = [];
    dA.each(function() {
        var c = e(this).attr("data-title");
        var d = e(this).attr("id");
        if (c && d) {
            dF.push({
                title: c,
                id: d
            })
        }
    });
    var aP = "";
    aP += '<dt><span class="show-list"></span></dt>';
    for (var dG = 0; dG < dF.length; dG++) {
        aP += '<dd><a href="#' + dF[dG].id + '" class="auto-scroll" rel="nofollow" data-offset="-78" data-speed=500>' + dF[dG].title + "</a></dd>"
    }
    dC.html(aP);
    f();
    fN();
    e(window).on("resize", f);
    e(window).on("scroll", fN);
    window.onload = function() {
        f()
    }
}
)(jQuery);
(function(e) {
    var c = e(".focus");
    if (c.length < 1)
        return;
    var d = c.children("a");
    if (d.length < 1)
        return;
    d.each(function(c) {
        var d = c % 4;
        e(this).css("animation-delay", d * .1 + "s")
    });
    function V() {
        d.toggleClass("hide");
        setTimeout(V, 5e3)
    }
    setTimeout(V, 5e3)
}
)(jQuery);
(function(e) {
    var c = e(".primary-menus");
    if (c.length < 1)
        return;
    var d = c.find(".selects");
    if (d.length < 1)
        return;
    var V = d.children("li");
    if (V.length < 1)
        return;
    var a = c.find(".search");
    var ad = a.find(".s").val();
    V.on("click", function() {
        var c = e(this).attr("data-target");
        if (c) {
            var url = e(this).attr("data-url");
            e("#search_btn").text(e(this).text() + '搜索');
            e("#search_form").attr("action",url) 
            e("#search_key").attr("name",url.match(/(?<=\?)[^=]+/)[0]);
            V.removeClass("current");
            e(this).addClass("current");
        }
    });
    a.find(".s").on("focusin", function() {
        if (e(this).val() == ad) {
            e(this).val("")
        }
    });
    a.find(".s").on("focusout", function() {
        var c = e(this).val();
        if (orz.isEmpty(c)) {
            c = ad
        }
        a.find(".s").val(c)
    })
}
)(jQuery);
(function(e) {
    e("input.s").on("focusin", function() {
        e(this).select()
    })
}
)(jQuery);
$(function() {
    var e = $("#flink a");
    e.addClass("")
});
$(function() {
    $(window).scroll(function() {
        var e = $(window).scrollTop();
        if (e > 1) {
            $("#backtop").fadeIn().css({
                bottom: "40px"
            });
            $("#quick_submit").fadeIn().css({
                bottom: "220px"
            })
        } else {
            $("#backtop").fadeOut();
            $("#quick_submit").fadeOut()
        }
    });
    $("#backtop").click(function() {
        $("html, body").animate({
            scrollTop: 0
        }, 300);
        $(this).animate({
            bottom: "1500px"
        }, 500)
    })
});
$(document).ready(function() {
    var e = document.location;
    $("#divNavBar a").each(function() {
        if (this.href == e.toString().split("#")[0]) {
            $(this).addClass("on");
            return false
        }
    })
});
$(document).ready(function() {
    if (document.cookie.replace(/(?:(?:^|.*;\s*)night\s*\=\s*([^;]*).*$)|^.*$/, "$1") === "") {
        if ((new Date).getHours() > 22 || (new Date).getHours() < 6) {
            document.body.classList.add("night");
            document.cookie = "night=1;path=/"
        } else {
            document.body.classList.remove("night");
            document.cookie = "night=0;path=/"
        }
    } else {
        var e = document.cookie.replace(/(?:(?:^|.*;\s*)night\s*\=\s*([^;]*).*$)|^.*$/, "$1") || "0";
        if (e == "0") {
            document.body.classList.remove("night")
        } else if (e == "1") {
            document.body.classList.add("night")
        }
    }
});
function switchNightMode() {
    var e = document.cookie.replace(/(?:(?:^|.*;\s*)night\s*\=\s*([^;]*).*$)|^.*$/, "$1") || "0";
    if (e == "0") {
        document.body.classList.add("night");
        document.cookie = "night=1;path=/"
    } else {
        document.body.classList.remove("night");
        document.cookie = "night=0;path=/"
    }
}
/*!* jquery.tooltip.js 0.0.1 - https://github.com/yckart/jquery.tooltip.js*/
(function(e, c, d) {
    var V = "tooltip"
      , a = {
        fade: false,
        fallback: "",
        align: "autoTop",
        html: false,
        attr: "title",
        trigger: {
            show: "ontouchend"in d ? "touchstart" : "mouseenter",
            hide: "ontouchend"in d ? "touchend" : "mouseleave"
        },
        delay: {
            show: 0,
            hide: 0
        }
    };
    function ad(V, ad) {
        ad = e.extend({}, a, ad);
        var b = e(V), f;
        b.on("tooltip:show " + ad.trigger.show, function() {
            e.data(this, "cancel.tooltip", true);
            var V = e.data(this, "active.tooltip");
            if (!V) {
                V = e('<div class="tooltip"><div class="tooltip-inner"/></div>').css({
                    position: "absolute",
                    zIndex: 1e5
                });
                e.data(this, "active.tooltip", V)
            }
            if (b.attr("title") || typeof b.attr("original-title") !== "string") {
                b.attr("original-title", b.attr("title") || "").removeAttr("title")
            }
            var a;
            if (typeof ad.attr === "string") {
                a = b.attr(ad.attr === "title" ? "original-title" : ad.attr)
            } else {
                if (typeof ad.attr == "function") {
                    a = ad.attr.call(this)
                }
            }
            V.find(".tooltip-inner")[ad.html ? "html" : "text"](a || ad.fallback);
            var F = e.extend({}, b.offset(), {
                width: this.offsetWidth,
                height: this.offsetHeight
            });
            V[0].className = "tooltip";
            V.remove().css({
                top: 0,
                left: 0,
                opacity: 0
            }).appendTo(d.body);
            var bh = V[0].offsetWidth
              , fN = V[0].offsetHeight
              , dC = ad.align === "autoTop" ? F.top > e(d).scrollTop() + e(c).height() / 2 ? "t" : "b" : F.left > e(d).scrollLeft() + e(c).width() / 2 ? "l" : "r";
            switch (ad.align.charAt(0) === "a" ? dC : ad.align.charAt(0)) {
            case "b":
                V.css({
                    top: F.top + F.height,
                    left: F.left + F.width / 2 - bh / 2
                }).addClass("tooltip-bottom");
                break;
            case "t":
                V.css({
                    top: F.top - fN,
                    left: F.left + F.width / 2 - bh / 2
                }).addClass("tooltip-top");
                break;
            case "l":
                V.css({
                    top: F.top + F.height / 2 - fN / 2,
                    left: F.left - bh
                }).addClass("tooltip-left");
                break;
            case "r":
                V.css({
                    top: F.top + F.height / 2 - fN / 2,
                    left: F.left + F.width
                }).addClass("tooltip-right");
                break
            }
            clearTimeout(f);
            V.stop().delay(ad.delay.show).fadeTo(ad.fade ? ad.fade.duration : 0, ad.fade.opacity || .8, ad.fade.complete)
        });
        b.on("tooltip:hide " + ad.trigger.hide, function() {
            e.data(this, "cancel.tooltip", false);
            var c = this;
            f = setTimeout(function() {
                if (e.data(c, "cancel.tooltip")) {
                    return
                }
                var d = e.data(c, "active.tooltip");
                if (ad.fade) {
                    d.stop().fadeTo(ad.fade.duration, 0, function() {
                        d.remove();
                        if (ad.fade.complete) {
                            ad.fade.complete(true)
                        }
                    })
                } else {
                    d.remove()
                }
            }, ad.delay.hide)
        })
    }
    e.fn[V] = function(c) {
        return this.each(function() {
            if (!e.data(this, "plugin_" + V)) {
                e.data(this, "plugin_" + V, new ad(this,c))
            }
        })
    }
}
)(jQuery, window, document);
!function(e, c) {
    !function() {
        for (var e = 0, d = ["ms", "moz", "webkit", "o"], V = 0; V < d.length && !c.requestAnimationFrame; ++V)
            c.requestAnimationFrame = c[d[V] + "RequestAnimationFrame"],
            c.cancelAnimationFrame = c[d[V] + "CancelAnimationFrame"] || c[d[V] + "CancelRequestAnimationFrame"];
        c.requestAnimationFrame || (c.requestAnimationFrame = function(d) {
            var V = (new Date).getTime()
              , a = Math.max(0, 16 - (V - e))
              , ad = c.setTimeout(function() {
                d(V + a)
            }, a);
            return e = V + a,
            ad
        }
        ),
        c.cancelAnimationFrame || (c.cancelAnimationFrame = function(e) {
            clearTimeout(e)
        }
        )
    }();
    var d = {
        POS_SCHEME_STATIC: 100,
        POS_SCHEME_FIXED: 200,
        POS_SCHEME_ABSOLUTE: 300,
        create: function(e, c) {
            return "undefined" == typeof c && (c = {}),
            Object.create(d).init(e, c)
        },
        init: function(e, V) {
            return this.constructor = d,
            this.window = c,
            this.element = e,
            this.container = e.parentNode,
            this.posScheme = d.POS_SCHEME_STATIC,
            this.isTicking = !1,
            this.threshold = null,
            this.options = V,
            this.boundingBoxHeight = null,
            this.latestKnownScrollY = this.window.pageYOffset,
            this.validateContainerPosScheme(),
            this.setOffsetTop(),
            this.setOffsetBottom(),
            this.calcThreshold(),
            this.setElementWidth(),
            this.setBoundingBoxHeight(),
            this.createPlaceholder(),
            this.subscribeToWindowScroll(),
            this
        },
        validateContainerPosScheme: function() {
            var e = this.container.style.position;
            "relative" != e && "absolute" != e && (this.container.style.position = "relative")
        },
        setOffsetTop: function() {
            if ("number" == typeof this.options.offsetTop && this.options.offsetTop >= 0)
                this.offsetTop = this.options.offsetTop;
            else {
                var e = parseInt(this.window.getComputedStyle(this.container).borderTopWidth, 10)
                  , c = parseInt(this.window.getComputedStyle(this.container).paddingTop, 10);
                this.offsetTop = e + c
            }
        },
        setOffsetBottom: function() {
            var e = parseInt(this.window.getComputedStyle(this.container).borderBottomWidth, 10)
              , c = parseInt(this.window.getComputedStyle(this.container).paddingBottom, 10);
            this.offsetBottom = e + c
        },
        calcThreshold: function() {
            this.threshold = this.getElementDistanceFromDocumentTop() - this.offsetTop
        },
        setElementWidth: function() {
            var e = this.window.getComputedStyle(this.element).width;
            this.element.style.width = e
        },
        setBoundingBoxHeight: function(e) {
            this.boundingBoxHeight = this.element.getBoundingClientRect().height,
            e === !0 && (this.placeholder.style.height = this.boundingBoxHeight + "px")
        },
        createPlaceholder: function() {
            var e = document.createElement("DIV")
              , c = this.element.getBoundingClientRect().width + "px"
              , d = this.boundingBoxHeight + "px"
              , V = this.window.getComputedStyle(this.element).margin
              , a = this.window.getComputedStyle(this.element).float;
            e.style.display = "none",
            e.style.width = c,
            e.style.height = d,
            e.style.margin = V,
            e.style.float = a,
            this.container.insertBefore(e, this.element),
            this.placeholder = e
        },
        subscribeToWindowScroll: function() {
            this.window.addEventListener("scroll", this.onScroll.bind(this))
        },
        onScroll: function() {
            this.isTicking || (this.latestKnownScrollY = this.window.pageYOffset,
            this.window.requestAnimationFrame(this.update.bind(this)),
            this.isTicking = !0)
        },
        isStatic: function() {
            return this.posScheme === d.POS_SCHEME_STATIC
        },
        makeStatic: function() {
            this.element.style.position = "static",
            this.placeholder.style.display = "none",
            this.posScheme = d.POS_SCHEME_STATIC
        },
        isFixed: function() {
            return this.posScheme === d.POS_SCHEME_FIXED
        },
        makeFixed: function() {
            this.element.style.bottom = null,
            this.element.style.position = "fixed",
            this.element.style.top = this.offsetTop + "px",
            this.placeholder.style.display = "block",
            this.posScheme = d.POS_SCHEME_FIXED
        },
        isAbsolute: function() {
            return this.posScheme === d.POS_SCHEME_ABSOLUTE
        },
        makeAbsolute: function() {
            this.element.style.top = null,
            this.element.style.position = "absolute",
            this.element.style.bottom = this.offsetBottom + "px",
            this.placeholder.style.display = "block",
            this.posScheme = d.POS_SCHEME_ABSOLUTE
        },
        update: function() {
            this.isTicking = !1,
            this.isBelowThreshold() ? this.isStatic() || this.makeStatic() : this.canStickyFitInContainer() ? this.isFixed() || this.makeFixed() : this.isAbsolute() || this.makeAbsolute()
        },
        isBelowThreshold: function() {
            return this.latestKnownScrollY < this.threshold ? !0 : !1
        },
        canStickyFitInContainer: function() {
            return this.getAvailableSpaceInContainer() >= this.boundingBoxHeight
        },
        getAvailableSpaceInContainer: function() {
            return this.container.getBoundingClientRect().bottom - this.offsetBottom - this.offsetTop
        },
        getElementDistanceFromDocumentTop: function() {
            var e = this.isStatic() ? this.element : this.placeholder
              , c = this.latestKnownScrollY + e.getBoundingClientRect().top;
            return c
        },
        refresh: function() {
            this.calcThreshold(),
            this.setBoundingBoxHeight(!0)
        }
    };
    e.fn.positionSticky = function(c) {
        return this.each(function() {
            var V = e(this)
              , a = V.data("positionSticky");
            a || V.data("positionSticky", a = d.create(this, c)),
            "string" == typeof c && a[c]()
        })
    }
}(jQuery, window);

// tooltip.js初始化
$('.autoleft').tooltip({
    align: 'autoLeft',
    fade: {
        duration: 200,
        opacity: 0.8
    }
});
// 粘性分类初始化
jQuery('.sticky').positionSticky({offsetTop: 78});