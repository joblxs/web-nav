(function() {
    var e = {
            7103: function(e, t, i) {
                "use strict";
                var o = i(9242),
                    n = i(3396),
                    s = i(7139);
                const l = {
                        id: "root"
                    },
                    a = {
                        class: "main-page",
                        ctype: "[6]"
                    },
                    r = {
                        class: "inp"
                    },
                    d = ["src"],
                    c = {
                        class: "sou-main"
                    },
                    u = ["alt", "src", "onClick"],
                    h = {
                        key: 0,
                        class: "search-preview"
                    },
                    m = {
                        class: "AppList"
                    },
                    p = ["onClick"],
                    f = {
                        class: "img"
                    },
                    g = ["src"],
                    w = ["innerHTML"],
                    y = {
                        class: "UrlList"
                    },
                    v = ["onClick"],
                    k = ["innerHTML"],
                    b = {
                        key: 0,
                        class: "history"
                    },
                    _ = ["cdata", "title", "onClick"],
                    x = {
                        class: "img"
                    },
                    V = ["src"],
                    I = {
                        class: "span"
                    },
                    C = {
                        class: "drawer-main"
                    },
                    D = ["cdata"],
                    U = {
                        class: "y-list"
                    },
                    L = ["cdata", "title", "onClick"],
                    T = {
                        class: "img"
                    },
                    W = ["alt", "src"],
                    q = {
                        class: "name"
                    },
                    $ = ["src"],
                    S = (0, n.Uk)("© 2023 Powered by "),
                    O = (0, n._)("a", {
                        href: "https://gitee.com/tznb/TwoNav"
                    }, "TwoNav", -1),
                    BA = (0, n._)("a", {
                        href: "https://beian.miit.gov.cn"
                    }, ' ' + ICP, -1),
                    P = (0, n.Uk)(" ---\x3e ");

                function R(e, t, i, R, j, E) {
                    const H = (0, n.up)("Mouse"),
                        Y = (0, n.up)("MenuCom"),
                        M = (0, n.up)("Links"),
                        Z = (0, n.up)("Settings");
                    return (0, n.wg)(), (0, n.iD)("div", l, [(0, n._)("div", a, [(0, n._)("div", {
                        class: (0, s.C_)([{
                            moveUp: j.drawer
                        }, "search"])
                    }, [(0, n._)("div", r, [(0, n._)("div", {
                        class: "search-type",
                        onClick: t[0] || (t[0] = e => j.souStatus = !j.souStatus)
                    }, [(0, n._)("img", {
                        src: j.default_sou.icon
                    }, null, 8, d)]), (0, n.wy)((0, n._)("input", {
                        "onUpdate:modelValue": t[1] || (t[1] = e => j.search = e),
                        placeholder: "搜一搜？",
                        onFocus: t[2] || (t[2] = (...e) => E.searchPreviewRender && E.searchPreviewRender(...e)),
                        onFocusout: t[3] || (t[3] = (...e) => E.closePreview && E.closePreview(...e)),
                        onChange: t[4] || (t[4] = (...e) => E.search_go && E.search_go(...e))
                    }, null, 544), [
                        [o.nr, j.search]
                    ])]), (0, n._)("div", {
                        class: (0, s.C_)([{
                            souShow: j.souStatus
                        }, "sou"])
                    }, [(0, n._)("div", c, [((0, n.wg)(!0), (0, n.iD)(n.HY, null, (0, n.Ko)(j.sou, ((e, t) => ((0, n.wg)(), (0, n.iD)("img", {
                        key: t,
                        alt: e.name,
                        src: e.icon,
                        onClick: t => E.set_sou(e)
                    }, null, 8, u)))), 128))])], 2), (0, n.Wm)(o.uT, {
                        name: "slide-fade"
                    }, {
                        default: (0, n.w5)((() => [j.searchPreview ? ((0, n.wg)(), (0, n.iD)("div", h, [(0, n._)("ul", m, [((0, n.wg)(!0), (0, n.iD)(n.HY, null, (0, n.Ko)(j.searchApp, ((e, t) => ((0, n.wg)(), (0, n.iD)("li", {
                            key: t,
                            onClick: t => E.to(e)
                        }, [(0, n._)("div", f, [(0, n._)("img", {
                            src: E.getIcon(e)
                        }, null, 8, g)]), (0, n._)("div", {
                            class: "text",
                            innerHTML: e.title
                        }, null, 8, w)], 8, p)))), 128))]), (0, n._)("ul", y, [((0, n.wg)(!0), (0, n.iD)(n.HY, null, (0, n.Ko)(j.searchList, ((e, t) => ((0, n.wg)(), (0, n.iD)("li", {
                            key: t,
                            onClick: t => E.selectedText(e)
                        }, [(0, n._)("span", {
                            innerHTML: e.title
                        }, null, 8, k)], 8, v)))), 128))])])) : (0, n.kq)("", !0)])),
                        _: 1
                    }), (0, n.Wm)(o.uT, {
                        name: "showings"
                    }, {
                        default: (0, n.w5)((() => [j.drawer || j.searchPreview || 0 == j.history.length ? (0, n.kq)("", !0) : ((0, n.wg)(), (0, n.iD)("div", b, [((0, n.wg)(!0), (0, n.iD)(n.HY, null, (0, n.Ko)(j.history, ((e, t) => ((0, n.wg)(), (0, n.j4)(o.uT, {
                            key: t
                        }, {
                            default: (0, n.w5)((() => [(0, n._)("div", {
                                cdata: e.url,
                                title: e.description,
                                class: "item",
                                ctype: "[5]",
                                onClick: t => E.to(e)
                            }, [(0, n._)("div", x, [(0, n._)("img", {
                                src: E.getIcon(e)
                            }, null, 8, V)]), (0, n._)("div", I, (0, s.zw)(e.title), 1)], 8, _)])),
                            _: 2
                        }, 1024)))), 128))]))])),
                        _: 1
                    })], 2)]), (0, n._)("div", {
                        class: (0, s.C_)([{
                            show: j.drawer
                        }, "drawer"])
                    }, [(0, n._)("div", C, [((0, n.wg)(!0), (0, n.iD)(n.HY, null, (0, n.Ko)(j.list, ((e, t) => ((0, n.wg)(), (0, n.iD)("div", {
                        key: t,
                        class: "x-list"
                    }, [(0, n._)("div", {
                        cdata: e.id,
                        class: "title",
                        ctype: "[1,2]"
                    }, [(0, n._)("i", {
                        class: (0, s.C_)('fa '+ e?.font_icon)
                    }, null, 2), (0, n._)("span", null, (0, s.zw)(e.name), 1)], 8, D), (0, n._)("div", U, [((0, n.wg)(!0), (0, n.iD)(n.HY, null, (0, n.Ko)(e.children, ((e, t) => ((0, n.wg)(), (0, n.iD)("div", {
                        key: t,
                        cdata: e.id,
                        title: e.description,
                        class: "dreaer-list",
                        ctype: "[3,4,7]",
                        onClick: t => E.to(e)
                    }, [(0, n._)("div", T, [(0, n._)("img", {
                        alt: e.title,
                        src: E.getIcon(e)
                    }, null, 8, W)]), (0, n._)("div", q, (0, s.zw)(e.title), 1)], 8, L)))), 128))])])))), 128))])], 2), 0 != j.tabBar.length ? ((0, n.wg)(), (0, n.iD)("div", {
                        key: 0,
                        class: (0, s.C_)([{
                            shows: j.drawer
                        }, "bottomtab"])
                    }, [(0, n._)("div", {
                        style: (0, s.j5)({
                            width: 65 * j.tabBar.length + "px"
                        }),
                        class: "al"
                    }, [((0, n.wg)(!0), (0, n.iD)(n.HY, null, (0, n.Ko)(j.tabBar, ((e, t) => ((0, n.wg)(), (0, n.iD)("div", {
                        key: t
                    }, [(0, n._)("img", {
                        src: e.icon
                    }, null, 8, $)])))), 128))], 4)], 2)) : (0, n.kq)("", !0), (0, n.Wm)(H), (0, n.Wm)(Y), (0, n.Wm)(M), (0, n.Wm)(Z, {
                        nomouse: ""
                    }), (0, n.wy)((0, n._)("footer", null, [(0, n._)("span", null, [S, O,BA, P, (0, n._)("span", {
                        style: {
                            cursor: "pointer"
                        },
                        onClick: t[5] || (t[5] = (...e) => E.login && E.login(...e))
                    }, "login in")])], 512), [
                        [o.F8, !j.drawer]
                    ])])
                }
                i(2801);
                var j = i(1373);
                const E = (0, j.Z)();
                var H = E,
                    Y = i(8492),
                    M = i(7171),
                    Z = i(6265),
                    K = i.n(Z),
                    N = {};
                async function B(e = "def", t = 2e3) {
                    const i = (new Date).getTime();
                    return e in N && N[e] > i ? Promise.reject(!1) : (N[e] = i + t, Promise.resolve(!0))
                }
                var F = B,
                    J = i(6666);
                let z = !1,
                    A = "";
                "localhost" === location.hostname && (A = "https://web.png.ink", z = "fa29abe4e492c530942afb7f451e0e60");
                const G = K().create({
                    baseURL: A,
                    timeout: 3e4
                });
                G.interceptors.request.use((e => (e.headers["Content-Type"] = "application/x-www-form-urlencoded; charset=UTF-8", z && ("object" == typeof e.data ? e.data["token"] = z : e.data = {
                    token: z
                }), e.transformRequest = [function(e) {
                    let t = "";
                    for (let i in e) "" === e[i] && 0 !== e[i] || (t += encodeURIComponent(i) + "=" + encodeURIComponent(e[i]) + "&");
                    return t
                }], e))), G.interceptors.response.use((e => e.data), (e => (F("netWork", 1e4).then((e => {
                    (0, J.bM)({
                        title: "网络错误",
                        message: "请求服务器超时、请重试发起请求",
                        type: "error",
                        duration: 5e3
                    })
                })).catch((e => console.log("网络错误"))), Promise.reject({
                    code: 404,
                    msg: "网络错误"
                }))));
                const X = A;
                var Q = G;
                const ee = (e = {}) => Q({
                        url: category_list_api,
                        params: e
                    }),
                    te = (e = {}) => Q({
                        url: link_list_api,
                        params: e
                    }),
                    ie = (e = {}) => Q({
                        url: "./index.php?c=api&method=add_category&u="+user,
                        method: "post",
                        data: e
                    }),
                    oe = (e = {}) => Q({
                        url: "./index.php?c=api&method=edit_category&u="+user,
                        method: "post",
                        data: e
                    }),
                    ne = (e = {}) => Q({
                        url: "./index.php?c=api&method=add_link&u="+user,
                        method: "post",
                        data: e
                    }),
                    se = (e = {}) => Q({
                        url: "./index.php?c=api&method=edit_link&u="+user,
                        method: "post",
                        data: e
                    }),
                    le = (e = {}) => Q({
                        url: "./index.php?c=api&method=del_category&u="+user,
                        method: "post",
                        data: e
                    }),
                    ae = (e = {}) => Q({
                        url: "./index.php?c=api&method=del_link&u="+user,
                        method: "post",
                        data: e
                    }),
                    re = (e = {}) => Q({
                        url: "./index.php?c=api&method=check_login&u="+user,
                        method: "get",
                        data: e
                    });
                var de = {
                    mounted() {
                        window.addEventListener("wheel", (e => {
                            if (window.scrolllock) return;
                            let t = Boolean(e.deltaY > 0);
                            const i = document.querySelector(".drawer-main");
                            if (t) this.drawer || setTimeout((e => {
                                i.style.overflowY = "scroll"
                            }), 200), this.drawer = !0;
                            else {
                                if (0 !== i.scrollTop) return;
                                this.drawer = !1, i.style.overflowY = "hidden"
                            }
                        })), document.querySelector(".drawer-main").addEventListener("touchmove", (e => {
                            e.stopPropagation()
                        }), {
                            passive: !1
                        }), document.querySelector("#root").addEventListener("touchstart", (e => {
                            if (window.scrolllock) return;
                            let t = e.touches[0].clientY;
                            this.touch = {
                                y: t,
                                time: (new Date).getTime()
                            }
                        })), document.querySelector("#root").addEventListener("touchend", (e => {
                            if (window.scrolllock) return;
                            let t = e.changedTouches[0].clientY,
                                i = (new Date).getTime();
                            if (t === this.touch.y) return !1;
                            if (i - 300 < this.touch.time)
                                if (t + 100 < this.touch.y) this.drawer = !0;
                                else if (t - 100 > this.touch.y) {
                                if (0 !== document.querySelector(".drawer-main").scrollTop) return;
                                this.drawer = !1
                            }
                        })), document.querySelector("#root").addEventListener("touchmove", (e => {
                            e.stopPropagation(), e.preventDefault()
                        }), {
                            passive: !1
                        })
                    }
                };

                function ce(e, t, i, l, a, r) {
                    return (0, n.wy)(((0, n.wg)(), (0, n.iD)("div", {
                        style: (0, s.j5)({
                            left: a.mouseRight.x,
                            top: a.mouseRight.y
                        }),
                        class: "tabar"
                    }, [a.islogin ? ((0, n.wg)(), (0, n.iD)("div", {
                        key: 0,
                        onClick: t[0] || (t[0] = (...e) => r.addmenu && r.addmenu(...e))
                    }, "新增目录")) : (0, n.kq)("", !0), r.canshow(1) && a.islogin ? ((0, n.wg)(), (0, n.iD)("div", {
                        key: 1,
                        onClick: t[1] || (t[1] = (...e) => r.updatemenu && r.updatemenu(...e))
                    }, "修改目录")) : (0, n.kq)("", !0), r.canshow(2) && a.islogin ? ((0, n.wg)(), (0, n.iD)("div", {
                        key: 2,
                        onClick: t[2] || (t[2] = (...e) => r.delmenu && r.delmenu(...e))
                    }, "删除目录")) : (0, n.kq)("", !0), a.islogin ? ((0, n.wg)(), (0, n.iD)("div", {
                        key: 3,
                        onClick: t[3] || (t[3] = (...e) => r.addlink && r.addlink(...e))
                    }, "新增链接")) : (0, n.kq)("", !0), r.canshow(3) && a.islogin ? ((0, n.wg)(), (0, n.iD)("div", {
                        key: 4,
                        onClick: t[4] || (t[4] = (...e) => r.dellink && r.dellink(...e))
                    }, "删除链接")) : (0, n.kq)("", !0), r.canshow(4) && a.islogin ? ((0, n.wg)(), (0, n.iD)("div", {
                        key: 5,
                        onClick: t[5] || (t[5] = (...e) => r.updatelink && r.updatelink(...e))
                    }, "修改链接")) : (0, n.kq)("", !0), r.canshow(5) && a.islogin ? ((0, n.wg)(), (0, n.iD)("div", {
                        key: 6,
                        onClick: t[6] || (t[6] = (...e) => r.delhistory && r.delhistory(...e))
                    }, "删除记录")) : (0, n.kq)("", !0), r.canshow(6) ? ((0, n.wg)(), (0, n.iD)("div", {
                        key: 7,
                        onClick: t[7] || (t[7] = (...e) => r.downbg && r.downbg(...e))
                    }, "下载壁纸")) : (0, n.kq)("", !0), (0, n._)("div", {
                        onClick: t[8] || (t[8] = (...e) => r.setting && r.setting(...e))
                    }, "个性设置")], 4)), [
                        [o.F8, a.show]
                    ])
                }
                var ue = i(680),
                    he = i(2642),
                    me = i.n(he),
                    pe = {
                        name: "mouse",
                        data() {
                            return {
                                mouseRight: {
                                    x: 0,
                                    y: 0
                                },
                                show: !1,
                                info: {},
                                ctype: [],
                                element: null,
                                islogin: !1
                            }
                        },
                        props: ["xy", "type"],
                        methods: {
                            addmenu() {
                                H.emit("menushow", !0)
                            },
                            downbg() {
                                const e = new(me())("background");
                                e.get(user + "_bg", (function(e, t) {
                                    if (e) throw e;
                                    if (t) {
                                        const e = URL.createObjectURL(t);
                                        let i = document.createElement("a");
                                        i.href = e, i.download = "壁纸.jpg", i.click()
                                    }
                                }))
                            },
                            updatemenu() {
                                const e = Y.memory.get(user + "_list") || [],
                                    t = e.findIndex((e => e.id == this.info));
                                if (-1 === t) return !1;
                                const i = e[t];
                                H.emit("menushow", i), this.show = !1
                            },
                            addlink() {
                                H.emit("show", !0)
                            },
                            delhistory() {
                                H.emit("delhistory", this.info), this.show = !1
                            },
                            async delmenu() {
                                try {
                                    await this.$confirm("是否删除？")
                                } catch (t) {
                                    return !1
                                }
                                const {
                                    code: e
                                } = await le({
                                    id: this.info
                                });
                                0 === e ? (this.element.parentNode.remove(), this.$message.success("删除成功")) : this.$message.error("删除失败"), this.show = !1
                            },
                            async dellink() {
                                try {
                                    await this.$confirm("是否删除？")
                                } catch (n) {
                                    return !1
                                }
                                const e = Y.memory.get(user + "_lists") || [],
                                    t = e.findIndex((e => e.id == this.info));
                                if (-1 === t) return !1;
                                const i = e[t],
                                    {
                                        code: o
                                    } = await ae({
                                        id: i.id
                                    });
                                0 === o ? (this.element.remove(), this.$message.success("删除成功")) : this.$message.error("删除失败"), this.show = !1
                            },
                            setting() {
                                H.emit("settings"), this.show = !1
                            },
                            updatelink() {
                                const e = Y.memory.get(user + "_lists") || [],
                                    t = e.findIndex((e => e.id == this.info));
                                if (-1 === t) return !1;
                                const i = e[t];
                                H.emit("showandupdate", i), this.show = !1
                            },
                            canshow(e) {
                                return Boolean(this.ctype.indexOf(e) > -1)
                            }
                        },
                        mounted() {
                            re().then((e => {
                                "true" == e.data && (this.islogin = !0)
                            })), ue.Z.get(""), document.addEventListener("click", (e => {
                                this.show = !1
                            }));
                            const e = {
                                isdown: !1,
                                time: null
                            };
                            window.addEventListener("touchstart", (t => {
                                e.isdown = !0, e.time = (new Date).getTime(), e.time = setTimeout((e => {
                                    this.mouseRight = {
                                        x: t.changedTouches[0].clientX + "px",
                                        y: t.changedTouches[0].clientY + "px"
                                    };
                                    try {
                                        let e = JSON.parse(t.target.attributes.ctype.value);
                                        e.length > 0 && (this.ctype = e)
                                    } catch (t) {
                                        this.ctype = []
                                    }
                                    try {
                                        let e = t.target.attributes.cdata.value;
                                        this.info = e, this.element = t.target
                                    } catch (t) {}
                                    this.show = !0
                                }), 500)
                            })), window.addEventListener("touchend", (function() {
                                e.isdown = !1, clearTimeout(e.time), e.time = null
                            })), window.addEventListener("touchmove", (function() {
                                console.log(1), e.isdown = !1, clearTimeout(e.time), e.time = null
                            })), document.querySelector("#root").addEventListener("mousedown", (e => {
                                if (2 === e.button) {
                                    let t = !1;
                                    if (e.path.map((i => {
                                            const o = i.attributes;
                                            try {
                                                o["nomouse"] && (t = !0)
                                            } catch (e) {}
                                        })), t) return e;
                                    this.mouseRight = {
                                        x: e.clientX + "px",
                                        y: e.clientY + "px"
                                    };
                                    try {
                                        let t = JSON.parse(e.toElement.attributes.ctype.value);
                                        t.length > 0 && (this.ctype = t)
                                    } catch (e) {
                                        this.ctype = []
                                    }
                                    try {
                                        let t = e.toElement.attributes.cdata.value;
                                        this.info = t, this.element = e.target
                                    } catch (e) {}
                                    this.show = !0, e.preventDefault(), e.stopPropagation()
                                }
                            }), {
                                passive: !1
                            })
                        }
                    },
                    fe = i(89);
                const ge = (0, fe.Z)(pe, [
                    ["render", ce]
                ]);
                var we = ge;
                const ye = {
                        class: "menu_add"
                    },
                    ve = {
                        class: "other"
                    },
                    ke = (0, n._)("div", {
                        style: {
                            margin: "15px 0px"
                        }
                    }, [(0, n.Uk)("图标查看地址 "), (0, n._)("a", {
                        href: "https://fontawesome.dashgame.com",
                        target: "_blank"
                    }, "https://fontawesome.dashgame.com")], -1),
                    be = {
                        slot: "footer",
                        class: "dialog-footer"
                    },
                    _e = (0, n.Uk)("取 消"),
                    xe = (0, n.Uk)("确 定");

                function Ve(e, t, i, o, s, l) {
                    const a = (0, n.up)("el-input"),
                        r = (0, n.up)("el-option"),
                        d = (0, n.up)("el-select"),
                        c = (0, n.up)("el-switch"),
                        u = (0, n.up)("el-button"),
                        h = (0, n.up)("el-dialog");
                    return (0, n.wg)(), (0, n.iD)("div", null, [(0, n.Wm)(h, {
                        modelValue: s.dialogVisible,
                        "onUpdate:modelValue": t[7] || (t[7] = e => s.dialogVisible = e),
                        "close-on-click-modal": !1,
                        title: s.isedit ? "修改目录" : "添加目录",
                        width: l.sumwidth(s.dialogVisible),
                        "append-to-body": "",
                        draggable: ""
                    }, {
                        default: (0, n.w5)((() => [(0, n._)("div", ye, [(0, n.Wm)(a, {
                            modelValue: s.addInfo.name,
                            "onUpdate:modelValue": t[0] || (t[0] = e => s.addInfo.name = e),
                            placeholder: "请输入分类名称"
                        }, null, 8, ["modelValue"]), (0, n.Wm)(a, {
                            modelValue: s.addInfo.font_icon,
                            "onUpdate:modelValue": t[1] || (t[1] = e => s.addInfo.font_icon = e),
                            placeholder: "请输入图标类名"
                        }, null, 8, ["modelValue"]), (0, n.Wm)(a, {
                            modelValue: s.addInfo.description,
                            "onUpdate:modelValue": t[2] || (t[2] = e => s.addInfo.description = e),
                            maxlength: "300",
                            placeholder: "请输入站点描述",
                            "show-word-limit": "",
                            type: "textarea"
                        }, null, 8, ["modelValue"]), (0, n._)("div", ve, [(0, n.Wm)(d, {
                            modelValue: s.addInfo.fid,
                            "onUpdate:modelValue": t[3] || (t[3] = e => s.addInfo.fid = e),
                            placeholder: "父级菜单，非必选"
                        }, {
                            default: (0, n.w5)((() => [((0, n.wg)(!0), (0, n.iD)(n.HY, null, (0, n.Ko)(s.option, ((e, t) => ((0, n.wg)(), (0, n.j4)(r, {
                                key: t,
                                label: e.name,
                                value: e.id
                            }, null, 8, ["label", "value"])))), 128))])),
                            _: 1
                        }, 8, ["modelValue"]), (0, n.Wm)(a, {
                            modelValue: s.addInfo.weight,
                            "onUpdate:modelValue": t[4] || (t[4] = e => s.addInfo.weight = e),
                            placeholder: "权重（0-99）",
                            type: "number",id:"_weight"
                        }, null, 8, ["modelValue"]), (0, n.Wm)(c, {
                            modelValue: s.addInfo.property,
                            "onUpdate:modelValue": t[5] || (t[5] = e => s.addInfo.property = e),
                            "active-color": "#13ce66",
                            "inactive-color": "#ff4949",
                            "inactive-text": "是否公开"
                        }, null, 8, ["modelValue"])]), ke]), (0, n._)("div", be, [(0, n.Wm)(u, {
                            onClick: t[6] || (t[6] = e => s.dialogVisible = !1)
                        }, {
                            default: (0, n.w5)((() => [_e])),
                            _: 1
                        }), (0, n.Wm)(u, {
                            type: "primary",
                            onClick: l.submit
                        }, {
                            default: (0, n.w5)((() => [xe])),
                            _: 1
                        }, 8, ["onClick"])])])),
                        _: 1
                    }, 8, ["modelValue", "title", "width"])])
                }
                var Ie = {
                    name: "menuComponent",
                    methods: {
                        async submit() {
                            if ("" === this.addInfo.name) return this.$message.error("缺少目录名称");
                            const e = {
                                ...this.addInfo
                            };
                            e.property = this.addInfo.property ? 0 : 1;
                            const {
                                code: t
                            } = this.isedit ? await oe(e) : await ie(e);
                            0 === t ? (this.$message.success("添加成功"), setTimeout((e => location.reload()), 1e3), this.dialogVisible = !1) : this.$message.error("添加失败")
                        },
                        sumwidth() {
                            return outerWidth > 500 ? "500px" : "375px"
                        }
                    },
                    data() {
                        return {
                            dialogVisible: !1,
                            option: [],
                            addInfo: {
                                name: "",
                                weight: "",
                                property: !0,
                                description: "",
                                font_icon: "",
                                fid: ""
                            },
                            tmp: {
                                name: "",
                                weight: "",
                                property: !0,
                                description: "",
                                font_icon: "",
                                fid: ""
                            },
                            isedit: !1
                        }
                    },
                    watch: {
                        dialogVisible(e) {
                            !1 === e ? window.scrolllock = !1 : !0 === e && (this.addInfo = JSON.parse(JSON.stringify(this.tmp)), window.scrolllock = !0)
                        }
                    },
                    mounted() {
                        H.on("menushow", (e => {
                            this.dialogVisible = !0, this.$nextTick((t => {
                                let i = [];
                                if (Y.memory.get(user + "_list").forEach((e => {
                                        "0" == e.fid && i.push(e)
                                    })), this.option = i, !0 !== e) {
                                    for (const t in this.addInfo) this.addInfo[t] = e[t];
                                    this.addInfo.property = Boolean(1 !== e["property"]), this.addInfo.id = e.id, this.addInfo.fid = e.fid, this.isedit = !0
                                }
                            }))
                        }))
                    }
                };
                const Ce = (0, fe.Z)(Ie, [
                    ["render", Ve]
                ]);
                var De = Ce;
                const Ue = {
                        class: "menu_add"
                    },
                    Le = {
                        class: "other"
                    },
                    Te = {
                        slot: "footer",
                        class: "dialog-footer"
                    },
                    We = (0, n.Uk)("取 消"),
                    qe = (0, n.Uk)("确 定");

                function $e(e, t, i, o, s, l) {
                    const a = (0, n.up)("el-input"),
                        r = (0, n.up)("el-option"),
                        d = (0, n.up)("el-select"),
                        c = (0, n.up)("el-switch"),
                        u = (0, n.up)("el-button"),
                        h = (0, n.up)("el-dialog");
                    return (0, n.wg)(), (0, n.iD)("div", null, [(0, n.Wm)(h, {
                        modelValue: s.dialogVisible,
                        "onUpdate:modelValue": t[8] || (t[8] = e => s.dialogVisible = e),
                        "close-on-click-modal": !1,
                        title: s.isedit ? "修改链接" : "添加链接",
                        width: l.sumwidth(s.dialogVisible),
                        "append-to-body": "",
                        draggable: ""
                    }, {
                        default: (0, n.w5)((() => [(0, n._)("div", Ue, [(0, n.Wm)(a, {
                            modelValue: s.addInfo.url,
                            "onUpdate:modelValue": t[0] || (t[0] = e => s.addInfo.url = e),
                            placeholder: "请输入完整的网址链接"
                        },  null, 8, ["modelValue"]), (0, n.Wm)(a, {
                            modelValue: s.addInfo.title,
                            "onUpdate:modelValue": t[2] || (t[2] = e => s.addInfo.title = e),
                            placeholder: "请输入标题"
                        }, null, 8, ["modelValue"]), (0, n.Wm)(a, {
                            modelValue: s.addInfo.description,
                            "onUpdate:modelValue": t[3] || (t[3] = e => s.addInfo.description = e),
                            maxlength: "300",
                            placeholder: "请输入站点描述",
                            "show-word-limit": "",
                            type: "textarea"
                        }, null, 8, ["modelValue"]), (0, n._)("div", Le, [(0, n.Wm)(d, {
                            modelValue: s.addInfo.fid,
                            "onUpdate:modelValue": t[4] || (t[4] = e => s.addInfo.fid = e),
                            placeholder: "请选择目录"
                        }, {
                            default: (0, n.w5)((() => [((0, n.wg)(!0), (0, n.iD)(n.HY, null, (0, n.Ko)(s.option, ((e, t) => ((0, n.wg)(), (0, n.j4)(r, {
                                key: t,
                                label: e.name,
                                value: e.id
                            }, null, 8, ["label", "value"])))), 128))])),
                            _: 1
                        }, 8, ["modelValue"]), (0, n.Wm)(a, {
                            modelValue: s.addInfo.weight,
                            "onUpdate:modelValue": t[5] || (t[5] = e => s.addInfo.weight = e),
                            placeholder: "权重（0-99）",
                            type: "number",id:"_weight"
                        }, null, 8, ["modelValue"]), (0, n.Wm)(c, {
                            modelValue: s.addInfo.property,
                            "onUpdate:modelValue": t[6] || (t[6] = e => s.addInfo.property = e),
                            "active-color": "#13ce66",
                            "inactive-color": "#ff4949",
                            "inactive-text": "是否公开"
                        }, null, 8, ["modelValue"])])]), (0, n._)("div", Te, [(0, n.Wm)(u, {
                            onClick: t[7] || (t[7] = e => s.dialogVisible = !1)
                        }, {
                            default: (0, n.w5)((() => [We])),
                            _: 1
                        }), (0, n.Wm)(u, {
                            type: "primary",
                            onClick: l.submit
                        }, {
                            default: (0, n.w5)((() => [qe])),
                            _: 1
                        }, 8, ["onClick"])])])),
                        _: 1
                    }, 8, ["modelValue", "title", "width"])])
                }
                var Se = {
                    name: "links",
                    methods: {
                        async submit(e) {
                            if ("" === this.addInfo.url) return this.$message.error("缺少url地址");
                            if ("" === this.addInfo.title) return this.$message.error("缺少标题");
                            const t = {
                                ...this.addInfo
                            };
                            t.property = this.addInfo.property ? 0 : 1;
                            const {
                                code: i
                            } = this.isedit ? await se(t) : await ne(t);
                            0 === i ? (this.$message.success("添加成功"), setTimeout((e => location.reload()), 1e3), this.dialogVisible = !1) : this.$message.error("添加失败")
                        },
                        sumwidth() {
                            return outerWidth > 500 ? "500px" : "375px"
                        }
                    },
                    data() {
                        return {
                            dialogVisible: !1,
                            option: [],
                            addInfo: {},
                            tmp: {
                                url: "",
                                weight: "",
                                title: "",
                                property: !0,
                                fid: "",
                                description: ""
                            },
                            isedit: !1
                        }
                    },
                    watch: {
                        dialogVisible(e) {
                            !1 === e ? window.scrolllock = !1 : !0 === e && (this.addInfo = JSON.parse(JSON.stringify(this.tmp)), window.scrolllock = !0)
                        }
                    },
                    mounted() {
                        H.on("show", (() => {
                            this.option = Y.memory.get(user + "_list") || [], this.dialogVisible = !0
                        })), H.on("showandupdate", (e => {
                            this.dialogVisible = !0, this.isedit = !0, this.$nextTick((t => {
                                this.option = Y.memory.get(user + "_list") || [], this.addInfo = e, this.addInfo.property = 0 == e.property
                            }))
                        }))
                    }
                };
                const Oe = (0, fe.Z)(Se, [
                    ["render", $e],
                    ["__scopeId", "data-v-0775dc69"]
                ]);
                var Pe = Oe,
                    Re = i(4870),
                    je = i.p + "img/upfile.90afd9e2.svg";
                const Ee = e => ((0, n.dD)("data-v-5eb7bf3c"), e = e(), (0, n.Cn)(), e),
                    He = {
                        class: "background"
                    },
                    Ye = {
                        class: "upbutton"
                    },
                    Me = Ee((() => (0, n._)("img", {
                        src: je
                    }, null, -1))),
                    Ze = Ee((() => (0, n._)("span", {
                        class: "upbuttontext",
                        hover: ""
                    }, "点击上传JPEG/PNG/GIF图片", -1))),
                    Ke = {
                        class: "now-background"
                    },
                    Ne = Ee((() => (0, n._)("h4", {
                        style: {
                            "margin-bottom": "10px"
                        }
                    }, "当前桌面", -1))),
                    Be = ["src"];
                var Fe = {
                    setup(e) {
                        const t = new(me())("background"),
                            i = (0, Re.iH)("");
                        t.get(user + "_bg", ((e, t) => {
                            t && (i.value = URL.createObjectURL(t))
                        }));
                        const o = e => {
                            const o = e.target.files;
                            if (o.length > 0) {
                                let e = o[0];
                                t.set(user + "_bg", e, (function(e) {
                                    if (e) throw e;
                                    Y.memory.del(user + "_bg")
                                })), i.value = URL.createObjectURL(e), H.emit("set_background")
                            }
                        };
                        return (e, t) => ((0, n.wg)(), (0, n.iD)("div", He, [(0, n._)("div", Ye, [Me, Ze, (0, n._)("input", {
                            accept: "image/*",
                            cli: "",
                            multiple: "multiple",
                            type: "file",
                            onChange: o
                        }, null, 32)]), (0, n._)("div", Ke, [Ne, (0, n._)("img", {
                            src: i.value
                        }, null, 8, Be)])]))
                    }
                };
                const Je = (0, fe.Z)(Fe, [
                    ["__scopeId", "data-v-5eb7bf3c"]
                ]);
                var ze = Je;
                const Ae = {
                        class: "settings"
                    },
                    Ge = {
                        class: "left"
                    },
                    Xe = {
                        class: "right"
                    };
                var Qe = {
                    setup(e) {
                        const t = (0, Re.iH)(1),
                            i = (0, Re.iH)(!1),
                            o = (0, Re.iH)("rtl"),
                            l = e => {
                                window.scrolllock = !1, e()
                            },
                            a = e => {
                                t.value = e
                            };
                        return H.on("settings", (() => {
                            window.scrolllock = !0, i.value = !0
                        })), (e, r) => {
                            const d = (0, n.up)("el-drawer");
                            return (0, n.wg)(), (0, n.iD)("div", null, [(0, n.Wm)(d, {
                                modelValue: i.value,
                                "onUpdate:modelValue": r[1] || (r[1] = e => i.value = e),
                                "before-close": l,
                                "destroy-on-close": !0,
                                direction: o.value,
                                size: "500px",
                                title: "个性设置"
                            }, {
                                default: (0, n.w5)((() => [(0, n._)("div", Ae, [(0, n._)("div", Ge, [(0, n._)("ul", null, [(0, n._)("li", {
                                    class: (0, s.C_)({
                                        selectedLi: 1 === t.value
                                    }),
                                    onClick: r[0] || (r[0] = e => a(1))
                                }, "壁纸设置", 2)])]), (0, n._)("div", Xe, [(0, n.Wm)((0, Re.SU)(ze))])])])),
                                _: 1
                            }, 8, ["modelValue", "direction"])])
                        }
                    }
                };
                const et = (0, fe.Z)(Qe, [
                    ["__scopeId", "data-v-6278052e"]
                ]);
                var tt = et,
                    it = i(7387),
                    ot = i.n(it),
                    nt = {
                        el: "#root",
                        data() {
                            return {
                                searchPreview: !1,
                                searchList: [],
                                searchApp: [],
                                history: Y.memory.get(user + "_history") || [],
                                search: "",
                                drawer: !1,
                                souStatus: !1,
                                sou: M.HL,
                                default_sou: M.Yn,
                                touch: {
                                    y: 0,
                                    time: 0
                                },
                                list: Y.memory.get(user + "_list") || [],
                                lists: [],
                                mouseRight: {
                                    x: 0,
                                    y: 0
                                },
                                tabBar: [],
                                flag: !0
                            }
                        },
                        components: {
                            Settings: tt,
                            Links: Pe,
                            MenuCom: De,
                            Mouse: we
                        },
                        mixins: [de],
                        methods: {
                            search_go() {
                                /^http/.test(this.search) ? location.href = this.search : location.href = "//" + this.search, (0, M.by)(this.search)
                            },
                            selectedText(e) {
                                this.search = e.title, this.search_go()
                            },
                            to({
                                url: e
                            }) {
                                const t = this.lists.findIndex((t => t.url === e)),
                                    i = this.lists[t],
                                    o = this.history.findIndex((t => t.url === e));
                                o > -1 && this.history.splice(o, 1), t > -1 && (8 === this.history.length && this.history.pop(), this.history.unshift({
                                    url: e,
                                    ico:i.ico,
                                    title: i.title,
                                    description: i.description
                                }), Y.memory.set(user + "_history", this.history.slice(0, 8)));
                                const n = window.open();
                                n.location = i.url
                            },
                            getIcon(e) {
                                if (e.url) {
                                    let i = "";
                                    try {
                                        i = e.ico
                                    } catch (t) {
                                        console.log(t), console.log(e), console.log(e.url)
                                    }
                                    return i
                                }
                            },
                            login() {
                                location.href = "./index.php?c=admin&u="+user
                            },
                            mouseMenu(e) {
                                const {
                                    clientX: t,
                                    clientY: i
                                } = e;
                                e.preventDefault()
                            },
                            set_sou(e) {
                                (0, M.L$)(e), this.default_sou = e, this.souStatus = !1
                            },
                            async fetchData() {
                                let e = await ee(),
                                    t = await te();
                                this.lists = t.data, Y.memory.set(user + "_lists", t.data);
                                let i = e.data;
                                t.data.forEach((e => {
                                    const {
                                        category_name: t
                                    } = e, o = i.findIndex((e => e.name === t));
                                    i[o].children || (i[o].children = []), i[o].children.push(e)
                                })), this.list = i, Y.memory.set(user + "_list", i), await this.$nextTick((e => {
                                    this.sum_icon()
                                }))
                            },
                            searchPreviewRender() {
                                this.search;
                                const e = Y.memory.get(user + "_lists") || [];
                                let t = [];
                                e.forEach((e => {
                                    -1 !== e.title.toLowerCase().indexOf(this.search.toLowerCase()) && t.push({
                                        title: e.title.replace(RegExp(this.search, "ig"), `<b>${this.search}</b>`),
                                        url: e.url,
                                        ico: e.ico,
                                        description: e.description
                                    })
                                })), this.searchPreview = !0, this.flag && (this.flag = !1, setTimeout((() => {
                                    ot().ajax({
                                        url: "https://www.baidu.com/sugrec?pre=1&p=3&ie=utf-8&json=1&prod=pc",
                                        dataType: "jsonp",
                                        jsonp: "cb",
                                        data: {
                                            wd: this.search
                                        },
                                        success: ({
                                            g: e = []
                                        }) => {
                                            this.searchList = [], e.forEach((e => {
                                                this.searchList.push({
                                                    title: e.q,
                                                    url: ""
                                                })
                                            }))
                                        }
                                    }), this.flag = !0
                                }), 500)), this.searchApp = t.slice(0, 10), this.drawer && (this.drawer = !1)
                            },
                            closePreview() {
                                setTimeout((e => {
                                    this.searchPreview = !1
                                }), 100)
                            },
                            sum_icon() {
                                let e = outerWidth - 60,
                                    t = Math.floor(e / 100),
                                    i = e / t;
                                outerWidth > 501 ? document.querySelectorAll(".dreaer-list").forEach((e => {
                                    e.style.width = i + "px"
                                })) : document.querySelectorAll(".dreaer-list").forEach((e => {
                                    e.style.width = ""
                                }))
                            }
                        },
                        async mounted() {
                            await this.fetchData(), H.on("delhistory", (e => {
                                const t = this.history.findIndex((t => t.url === e));
                                this.history.splice(t, 1), Y.memory.set(user + "_history", this.history)
                            })), window.scrolllock = !1, window.addEventListener("resize", (0, Y.throttle)(this.sum_icon, 200))
                        },
                        watch: {
                            search(e) {
                                this.searchPreviewRender()
                            },
                            drawer(e) {
                                e && (this.searchPreview = !1)
                            }
                        }
                    };
                const st = (0, fe.Z)(nt, [
                    ["render", R]
                ]);
                var lt = st;
                const at = {
                    class: "body"
                };
                var rt = {
                    setup(e) {
                        const t = i(7362),
                            s = () => {
                                const e = new(me())("background");
                                e.get(user + "_bg", (function(e, i) {
                                    if (e) throw e;
                                    if (i) {
                                        const e = URL.createObjectURL(i);
                                        document.querySelector(".body").style.background = `url(${e}) no-repeat center/cover`
                                    } else document.querySelector(".body").style.background = `url(${t}) no-repeat center/cover`
                                }))
                            };
                        return s(), H.on("set_background", s), (e, t) => ((0, n.wg)(), (0, n.iD)("div", at, [(0, n.Wm)(lt, {
                            onContextmenuCapture: t[0] || (t[0] = (0, o.iM)((() => {}), ["prevent"]))
                        })]))
                    }
                };
                const dt = rt;
                var ct = dt,
                    ut = i(2609),
                    ht = (i(4415), i(812));
                (0, o.ri)(ct).use(ut.Z, {
                    locale: ht.Z
                }).mount("#app")
            },
            7171: function(e, t, i) {
                const {
                    memory: o
                } = i(8492), n = i(910), s = i(5075), l = i(1849), a = i(3333), r = i(1658), d = [{
                    name: "百度",
                    href: "https://www.baidu.com/s?&ie=utf-8&word=$key",
                    icon: n
                }, {
                    name: "谷歌",
                    href: "https://www.google.com/search?q=$key",
                    icon: s
                }, {
                    name: "搜狗",
                    href: "https://www.sogou.com/web?query=$key",
                    icon: l
                }, {
                    name: "360",
                    href: "https://www.so.com/s?ie=utf-8&q=$key",
                    icon: a
                }, {
                    name: "必应",
                    href: "https://cn.bing.com/search?q=$key",
                    icon: r
                }];
                let c = o.get(user + "_sou") || d[0];

                function u(e) {
                    location.href = c.href.replace(/\$key/, e)
                }

                function h(e) {
                    c = e, o.set(user + "_sou", e)
                }
                h(c), t.by = u, t.L$ = h, t.Yn = c, t.HL = d
            },
            3333: function(e, t, i) {
                "use strict";
                e.exports = i.p + "img/360.75ed16c8.svg"
            },
            910: function(e, t, i) {
                "use strict";
                e.exports = i.p + "img/baidu.ae9fbe3b.svg"
            },
            1658: function(e, t, i) {
                "use strict";
                e.exports = i.p + "img/bing.a1639e64.svg"
            },
            5075: function(e, t, i) {
                "use strict";
                e.exports = i.p + "img/google.14f0d496.svg"
            },
            1849: function(e, t, i) {
                "use strict";
                e.exports = i.p + "img/sougou.1d8dd0ed.svg"
            },
            7362: function(e, t, i) {
                "use strict";
                e.exports = i.p + "img/bg.c39cc818.png"
            }
        },
        t = {};

    function i(o) {
        var n = t[o];
        if (void 0 !== n) return n.exports;
        var s = t[o] = {
            exports: {}
        };
        return e[o].call(s.exports, s, s.exports, i), s.exports
    }
    i.m = e,
        function() {
            var e = [];
            i.O = function(t, o, n, s) {
                if (!o) {
                    var l = 1 / 0;
                    for (c = 0; c < e.length; c++) {
                        o = e[c][0], n = e[c][1], s = e[c][2];
                        for (var a = !0, r = 0; r < o.length; r++)(!1 & s || l >= s) && Object.keys(i.O).every((function(e) {
                            return i.O[e](o[r])
                        })) ? o.splice(r--, 1) : (a = !1, s < l && (l = s));
                        if (a) {
                            e.splice(c--, 1);
                            var d = n();
                            void 0 !== d && (t = d)
                        }
                    }
                    return t
                }
                s = s || 0;
                for (var c = e.length; c > 0 && e[c - 1][2] > s; c--) e[c] = e[c - 1];
                e[c] = [o, n, s]
            }
        }(),
        function() {
            i.n = function(e) {
                var t = e && e.__esModule ? function() {
                    return e["default"]
                } : function() {
                    return e
                };
                return i.d(t, {
                    a: t
                }), t
            }
        }(),
        function() {
            i.d = function(e, t) {
                for (var o in t) i.o(t, o) && !i.o(e, o) && Object.defineProperty(e, o, {
                    enumerable: !0,
                    get: t[o]
                })
            }
        }(),
        function() {
            i.g = function() {
                if ("object" === typeof globalThis) return globalThis;
                try {
                    return this || new Function("return this")()
                } catch (e) {
                    if ("object" === typeof window) return window
                }
            }()
        }(),
        function() {
            i.o = function(e, t) {
                return Object.prototype.hasOwnProperty.call(e, t)
            }
        }(),
        function() {
            i.p = templates + "/"
        }(),
        function() {
            var e = {
                143: 0
            };
            i.O.j = function(t) {
                return 0 === e[t]
            };
            var t = function(t, o) {
                    var n, s, l = o[0],
                        a = o[1],
                        r = o[2],
                        d = 0;
                    if (l.some((function(t) {
                            return 0 !== e[t]
                        }))) {
                        for (n in a) i.o(a, n) && (i.m[n] = a[n]);
                        if (r) var c = r(i)
                    }
                    for (t && t(o); d < l.length; d++) s = l[d], i.o(e, s) && e[s] && e[s][0](), e[s] = 0;
                    return i.O(c)
                },
                o = self["webpackChunkone_nav"] = self["webpackChunkone_nav"] || [];
            o.forEach(t.bind(null, 0)), o.push = t.bind(null, o.push.bind(o))
        }();
    var o = i.O(void 0, [998], (function() {
        return i(7103)
    }));
    o = i.O(o)
})();
//# sourceMappingURL=app.a4ca89e2.js.map