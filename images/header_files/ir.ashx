(function() {
var gf = {
 u: "1",
 cr: function(a) {
 for (var c = a.length, b = null, d = 0; d < c; d++)
 if (a[d])
 b = "cnxad_image_" + Math.floor(2147483648 * Math.random()), g[b] = new Image, g[b].cnxadname = b, g[b].onload = g[b].onerror = g[b].onabort = function() {
 try {
 this.onload = this.onerror = this.onabort = null, g[this.cnxadname] = null;
 } catch (a) {}
 }, g[b].src = a[d] + "&rnd=" + Math.floor(2147483648 * Math.random());
 },
 cs: function(a, ndly) {
 try {
 var b = a[1] || "utf-8";
 if (!ndly) {
 var c = f.createElement("script");
 c.type = "text/javascript";
 c.async = !0;
 c.charset = b;
 c.src = a[0];
 var e = f.getElementsByTagName("script")[0];
 e.parentNode && e.parentNode.insertBefore(c, e)
 } else {
 document.write(unescape("%3Cscript src='" + a[0] + "' charset='" + a[1] + "' type='text/javascript'%3E%3C/script%3E"));
 }
 } catch (ex) { }
 }
 };
function gn(svr, ud,ps) {
	this.svr = svr;
	this.ud = ud || "0";
 this.outps = ps || "";
	this.scn = "JXS" + this.ud;
	this.mcn = "JXM" + this.ud;
	this.dcn = "JXD" + this.ud;
	this.ps = {
	jsrf: "",
	jslt: "",
	sw: -1,
	sh: -1,
	scd: 1,
	je: 1,
	cke: 1,
	hist: -1,
	iif: 0,
	os: 0,
	br: 0,
	sv: "0",
	isnuv: 0,
	isuv: 0,
	ispv: 0,
	nuv: this.rck(this.mcn),
	uv: this.rck(this.dcn),
	pv: this.rck(this.scn)
	};
	this.init();
	}
	var f = document,
	g = window,
	n = navigator,
	u = n.userAgent,
	pf = n.platform,
	ec = encodeURIComponent,
	dc = decodeURIComponent;
	gn.prototype = {
	init: function() {
	try {
	this._ips_()
	} catch (ex) {}
	},
	_ips_: function() {
	try {
	var w = g || window;
	var ws = w.screen;
	var wn = w.navigator;
	this.ps.jslt = ec(ec(w.location.href || ""));
	this.ps.jsrf = ec(ec(w.document.referrer || ""));
	if (ws) {
	this.ps.sw = ws.width;
	this.ps.sh = ws.height;
	this.ps.scd = ws.colorDepth
	}
	if (wn && typeof wn.javaEnabled == "boolean") {
	this.ps.je = wn.javaEnabled ? 1 : 0
	}
	if (wn && typeof wn.cookieEnabled == "boolean") {
	this.ps.cke = wn.cookieEnabled ? 1 : 0
	}
	if (w.history) {
	this.ps.hist = w.history.length
	}
	if (w.top != w) {
	this.ps.iif = 1
	}
	if (this.ps.nuv == null || this.ps.nuv == "") {
	this.ps.nuv = 1;
	this.stck(this.mcn, this.ps.nuv, 30 * 24 * 60 * 60);
	this.ps.isnuv = 1
	}
	if (this.ps.uv == null || this.ps.uv == "") {
	this.ps.uv = 1;
	this.stck(this.dcn, this.ps.uv, 1);
	this.ps.isuv = 1
	}
	if (this.ps.pv == null || this.ps.pv == "") {
	this.ps.pv = 1;
	this.stck(this.scn, this.ps.pv, 5);
	this.ps.ispv = 1
	}
	this.ps.os = this.gos();
	this.ps.br = this.gbr();
	this.ps.sv = this.swfver();
	} catch (ex) {}
	},
	rck: function(n) {
	var a, r = new RegExp("(^| )" + n + "=([^;]*)(;|$)");
	if ((a = f.cookie.match(r))) {
	return unescape(a[2])
	} else {
	return null
	}
	},
	stck: function(n, v, d) {
	var t, e = new Date();
	if (d === 0) {
	t = ""
	}
	if (d === 1) {
	e.setHours(23);
	e.setMinutes(59);
	e.setSeconds(59);
	t = e.toGMTString()
	}
	if (d > 1) {
	e.setTime(e.getTime() + d * 1000);
	t = e.toGMTString()
	}
	f.cookie = n + "=" + escape(v) + ";path=/;expires=" + t
	},
 gos: function() {
	var os = {
	ios: /( U;|U;)?( )?CPU.+Mac OS X/.test(u),
	ad: /Android/.test(u),
	wm: /Windows CE/.test(u),
	wp: /Windows Phone/.test(u) || /WP7/.test(u),
	sb: /Symbian/.test(u),
	bb: /BlackBerry/.test(u) || /RIM Tablet OS/.test(u),
	bada: /Bada/.test(u),
	webos: (/WebOS/.test(u)) || (/hpwOS/.test(u)),
	win: (pf == "Win32") || (pf == "Win64") || (pf == "Windows"),
	mac: (pf == "Mac68K") || (pf == "MacPPC") || (pf == "Macintosh") || (pf == "MacIntel"),
	unix: (pf == "X11"),
	linux: /Linux/.test(String(pf)),
	winxp: (/Windows NT 5.1/.test(u)) || (/Windows XP/.test(u)),
	win7: (/Windows NT 6.1/.test(u)) || (/Windows 7/.test(u)),
	win8: (/Windows NT 6.2/.test(u)) || (/Windows 8/.test(u)),
	winvista: (/Windows NT 6.0/.test(u)) || (/Windows Vista/.test(u)),
	win98: (/Win98/.test(u)) || (/Windows 98/.test(u)),
	win2k: (/Windows NT 5.0/.test(u)) || (/Windows 2000/.test(u)),
	win2003: (/Windows NT 5.2/.test(u)) || (/Windows 2003/.test(u)),
	win95: (/Win95/.test(u)) || (/Windows 95/.test(u)),
	winme: (/Win 9x 4.90/.test(u)) || (/Windows ME/.test(u)),
	winnt4: (/WinNT/.test(u)) || (/Windows NT/.test(u)) || (/WinNT4.0/.test(u)) || (/Windows NT 4.0/.test(u))
	};
	try {
	if (os.ios) {
	return 111
	}
	if (os.ad) {
	return 112
	}
	if (os.wm) {
	return 113
	}
	if (os.wp) {
	return 114
	}
	if (os.sb) {
	return 115
	}
	if (os.bb) {
	return 116
	}
	if (os.bada) {
	return 117
	}
	if (os.webos) {
	return 118
	}
	if (os.mac) {
	return 10
	}
	if (os.unix && !os.win && !os.mac) {
	return 11
	}
	if (os.linux) {
	return 12
	}
	if (os.winxp) {
	return 1
	}
	if (os.win7) {
	return 2
	}
	if (os.win8) {
	return 3
	}
	if (os.winvista) {
	return 4
	}
	if (os.win98) {
	return 5
	}
	if (os.win2k) {
	return 6
	}
	if (os.win2003) {
	return 7
	}
	if (os.win95 || os.winme || os.winnt4 && !os.winme && !os.win2k && !os.winxp) {
	return 8
	}
	} catch (ex) {}
	return 0
	},
	gbr: function() {
	var ver = {
	ie5: /MSIE 5\.0/.test(u),
	ie5_5: /MSIE 5\.5/.test(u),
	ie6: !/MSIE 7\.0/.test(u) && /MSIE 6\.0/.test(u) && !/MSIE 8\.0/.test(u) && !/MSIE 9\.0/.test(u),
	ie7: !/MSIE 6\.0/.test(u) && /MSIE 7\.0/.test(u) && !/MSIE 8\.0/.test(u) && !/MSIE 9\.0/.test(u),
	ie8: !/MSIE 6\.0/.test(u) && !/MSIE 7\.0/.test(u) && /MSIE 8\.0/.test(u) && !/MSIE 9\.0/.test(u),
	ie9: !/MSIE 6\.0/.test(u) && !/MSIE 7\.0/.test(u) && !/MSIE 8\.0/.test(u) && /MSIE 9\.0/.test(u),
	ie10: !/MSIE 6\.0/.test(u) && !/MSIE 7\.0/.test(u) && !/MSIE 8\.0/.test(u) && !/MSIE 9\.0/.test(u) && /MSIE 10\.0/.test(u),
  ie11: /Trident\/7.0;(.*) rv:11.0/.test(u),
	ee: e(),
	se: s("suffixes", "dll", "description", /fancy/),
	sg: / SE/.test(u),
	lb: /LBBROWSER/.test(u),
	qb: /QQBrowser/.test(u),
	cr: /Chrome/.test(u),
	sf: /Safari/.test(u),
	mt: /Maxthon/.test(u),
	uc: /UCWEB/.test(u) || /UCBrowser/.test(u),
	ff: /Firefox/.test(u),
	wd: /TheWorld/.test(u) || /theworld/.test(u),
	op: /Opera/.test(u) || /OPR/.test(u),
	tt: /TencentTraveler/.test(u),
	bd: /BIDUBrowser/.test(u),
	tb: /TaoBrowser/.test(u),
	cn: /CoolNovo/.test(u),
	av: /Avant/.test(u),
	ls: /LSIE/.test(u) || /GreenBrowser/.test(u),
	sy: /SaaYaa/.test(u),
	sgm: /SogouMSE/.test(u) || /SogouMobileBrowser/.test(u),
	opm: /Opera Mini/.test(u) || /Opera Tablet/.test(u),
	gg: window.google || window.chrome,
	isMobile: /AppleWebKit.*Mobile.*/.test(u)
	};

 function s(x, B, w, A) {
	var z = n.mimeTypes,
	y;
 try {
 for (y in z) {
 if (z[y][x] == B) {
	if (A.test(z[y][w])) {
	return true
	}
	}
	}
	} catch (e) {
	return false
	}
	return false
	}

	function e() {
	if (/chrome/.test(n.userAgent.toLowerCase())) {
	var desc = n.mimeTypes["application/x-shockwave-flash"].description.toLowerCase();
	if (/adobe/.test(desc)) {
	return true
	}
	}
	return false
	}
	try {
	if (ver.sg && !ver.isMobile) {
	return 10
	}
	if (ver.lb) {
	return 11
	}
	if (ver.qb) {
	return 12
	}
	if (ver.mt) {
	return 15
	}
	if (ver.wd) {
	return 17
	}
	if (ver.op && !ver.opm) {
	return 18
	}
	if (ver.bd) {
	return 19
	}
	if (ver.tb) {
	return 20
	}
	if (ver.cn) {
	return 21
	}
	if (ver.ls) {
	return 22
	}
	if (ver.sy) {
	return 23
	}
	if (ver.av) {
	return 24
	}
	if (ver.tt) {
	return 25
	}
	if (ver.ie5) {
	return 1
	}
	if (ver.ie5_5) {
	return 2
	}
	if (ver.ie6) {
	return 3
	}
	if (ver.ie7) {
	return 4
	}
	if (ver.ie8) {
	return 5
	}
	if (ver.ie9) {
	return 6
	}
	if (ver.ie10) {
	return 7
	}
	if (ver.se) {
	return 8
	}
	if (ver.ee) {
	return 9
	}
	if (ver.uc) {
	return 26
	}
	if (ver.opm) {
	return 27
	}
	if (ver.sgm && ver.isMobile) {
	return 28
	}
	if (ver.cr && !!ver.gg && ver.isMobile) {
	return 29
	}
	if (ver.ff) {
	return 16
	}
	if (ver.cr && !!ver.gg && !ver.isMobile) {
	return 13
  }
	if (ver.sf && !ver.gg) {
	return 14
	}
	if (ver.ie11) {
	return 30
	}
	} catch (ex) {}
	return 0
	},
 swfver: function() {
 if (navigator.plugins && navigator.mimeTypes.length) {
	var b = navigator.plugins["Shockwave Flash"];
	if (b && b.description)
	return b.description.replace(/([a-zA-Z]|\s)+/, "").replace(/(\s)+r/, ".")
	} else {
	var c = null;
	try {
	c = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7")
	} catch (e) {
	var a = 0;
	try {
	c = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6");
	a = 6;
	c.AllowScriptAccess = "always"
 } catch (e) {
 if (a == 6)
	return a.toString()
	};
	try {
	c = new ActiveXObject("ShockwaveFlash.ShockwaveFlash")
	} catch (e) {}
	};
	if (c != null) {
	var a = c.GetVariable("$version").split(" ")[1];
	return a.replace(/,/g, ".")
	}
	};
	return "0"
	},
 getps: function() {
	return   this.outps+ "&jxisuv=" + this.ps.isuv + "&jxnuv=" + this.ps.isnuv + "&jxispv=" + this.ps.ispv + "&jxjl=" + this.ps.jslt + "&jxjrf=" + this.ps.jsrf + "&jxcsw=" + this.ps.sw + "&jxcsh=" + this.ps.sh + "&jxcsc=" + this.ps.scd + "&jxje=" + this.ps.je + "&jxce=" + this.ps.cke + "&jxhl=" + this.ps.hist + "&jxbjif=" + this.ps.iif + "&jxnot=" + this.ps.os + "&jxnat=" + this.ps.br + "&jxfct=" + this.ps.sv
	}
};
	var o = new gn("http://s2.0594003.com", 704517, "jxu=704517&jxs=0&jxo=7&jxt=7&jxw=0&jxh=0&jxtk=63605666309&jxd=809235&jxaw=0&jxdm=d3d3LmpqMjAuY29t0&jxst=0&jxtm=80&jxtw=0");

	if ((o.ud != 0) && (o.ud != "0")) {
		gf.cs([o.svr + "/cpv/rv1.ashx?" + o.getps(), "utf-8"]);
	} else {
		alert("请将代码投放到站点内观察效果！");
	}
})();
