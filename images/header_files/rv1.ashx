   if (typeof(__hasjxfmtr) == 'undefined' && navigator.cookieEnabled) {
   	(function () {
   		var a = {};
   		var u = navigator.userAgent;
   		a.FloatDiv = null;
   		a.Timer = null;
   		a.TimerDiv = null;
   		a.TimerClose = null;
   		a.isfixed = false;
   		a.islog = true;
   		a.width = '320';
   		a.height = '270';
   		a.zIndex = 2147483647;
   		a.minDisTime = 5000;
   		a.closeMode = 1;
   		a.popUrl = '';
   		a.isclosed = false;
   		a.TimerLogoS = null;
   		a.TimerLogoH = null;
   		a.interval = null;
   		a.ver = {
   			ie : /MSIE/.test(u),
   			ie6 : !/MSIE 7\.0/.test(u) && (/MSIE 6\.0/.test(u) || /MSIE 5\.0/.test(u)) && !/MSIE 8\.0/.test(u) && !/MSIE 9\.0/.test(u),
   			isie789 : /MSIE 7\.0/.test(u) || /MSIE 8\.0/.test(u) || /MSIE 9\.0/.test(u),
   			isfixed : /WebKit/.test(u) || /Firefox/.test(u) || /Opera/.test(u)
   		};
   		a.init = function (openUrl) {
   		    this.setTop();
   			if (typeof(jx_logo) != 'undefined' && jx_logo == 'false')
   				this.islog = false;
   			if (this.ver.isfixed)
   				this.isfixed = true;
   			else if (this.ver.isie789 && document.compatMode != "BackCompat")
   				this.isfixed = true;
   			if (this.islog) {
   				if (this.ver.ie6)
   					img = '<img style="width:77px;height:15px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src=http://s2.0594003.com/cpv/images/logo.png,sizingMethod=image);" src="http://s2.0594003.com/cpv/images/logo.png" border=0/>';
   				else
   					img = '<img src="http://s2.0594003.com/cpv/images/logo.png" style="float:left;width:77px;height:15px;max-width:none;" border=0/>';
   			} else
   				img = "";

   			if (this.interval)
   				this.zIndex = 2147483645;

   			var strHtml = "";

   			if (this.isfixed)
   				strHtml = '<div id="__jx_fm_Div" style="position:fixed; z-index:'+this.zIndex+';width:' + this.width + 'px;height:' + this.height + 'px;bottom:0;right:0;">';
   			else
   				strHtml = '<div id="__jx_fm_Div" style="position:absolute; z-index:'+this.zIndex+';width:' + this.width + 'px;height:' + this.height + 'px;">';
              strHtml += '<div id="__jx_fm_Close" style="z-index:199999; left:3px;bottom:3px; width:16px; height:16px; position:absolute; display:none;"><a href="javascript:void(0);" target="_self" onClick="_jx_richmedia_r.close();"><img style="width:14px; height:14px;" src="http://s2.0594003.com/cpv/images/close.png" border="0"></a></div>';
   			strHtml += '<div id="__jx_fm_Logo" style="z-index:199998; bottom:0px;right:0px; width:23px; height:15px; overflow:hidden; position:absolute; display:;" onmouseover="_jx_richmedia_r.showLogo()" onmouseout="_jx_richmedia_r.hideLogo()"><a href="http://www.ads360.cn" target=_blank>' + img + '</a></div>';
   			strHtml += '<iframe id="__jx_fm_Frame" name="__jx_fm_Frame" src=' + openUrl + ' marginwidth=0 marginheight=0  hspace=0 vspace=0 frameborder=0 scrolling=no style="width:' + this.width + 'px;height:' + this.height + 'px;" allowTransparency="true"></iframe>';
   			strHtml += '</div>';

   			var div = document.createElement('div');
   			div.id = "__jx_div";
   			div.innerHTML = strHtml;
   			if (document.getElementById('xsu'))
   				document.getElementById('xsu').appendChild(div);
   			else
   				document.body && document.body.insertBefore(div, document.body.firstChild);

   			if (this.ver.ie)
   				window.onbeforeunload = function () {
   					document.getElementById("__jx_fm_Frame") && (document.getElementById("__jx_div").innerHTML = "");
   				}

   			setTimeout(function () {
   				document.getElementById('__jx_fm_Close') && (document.getElementById('__jx_fm_Close').style.display = "");
   			}, this.minDisTime);
   		}
   		a.open = function (openUrl) {
   			if (this.isInFrame()) {
   				return;
   			}
   			this.init(openUrl);
   			this.TimerDiv = setInterval("_jx_RichMedia_CheckDivIsTop('__jx_fm_Div')", 10);
   			if (!this.isfixed)
   				try {
   					window.onscroll = _jx_RichMedia_ScrollFollow;
   				} catch (e) {
   					this.close();
   				}
   			if (!this.isfixed)
   				this.Timer = setInterval("_jx_RichMedia_ScrollFollow()", 50);
   			if (!this.isfixed)
   				_jx_RichMedia_ScrollFollow();
   		}
   		a.normalClose = function () {
   			this.isclosed = true;
   			clearTimeout(this.TimerClose);
   			document.getElementById('__jx_fm_Div').style.display = 'none';
   			document.getElementById('__jx_fm_Frame').src = "about:blank";
   		}
   		a.reOpen = function (reOpenUrl) {
   			document.getElementById('__jx_fm_Div').style.display = '';
   			document.getElementById('__jx_fm_Close').style.display = "none";
   			clearTimeout(this.TimerClose);
   			this.TimerClose = setTimeout(function () {
   					document.getElementById('__jx_fm_Close').style.display = "";
   				}, this.minDisTime);
   			document.getElementById('__jx_fm_Frame').src = reOpenUrl;
   			if (!this.isclosed) {
   				this.doShake();
   			}
   		}
   		a.scrollfllow = function (ev) {
   			if (document.getElementById('__jx_fm_Div')) {
   				this.FloatDiv = document.getElementById('__jx_fm_Div').style;
   				var obj = (document.compatMode.toLowerCase() == "css1compat") ? document.documentElement : document.body
   				if (this.FloatDiv) {
   					this.FloatDiv.top = obj.scrollTop + obj.clientHeight - this.height - 3 + 'px';
   					this.FloatDiv.left = obj.scrollLeft + obj.clientWidth - this.width - 3 + 'px';
   				}
   			}
   		}
   		a.istop = function (ev) {
   			var divs = document.getElementsByTagName("div");
   			var len = divs.length;
   			for (var i = 0; i < len; i++) {
   				if (divs[i].id == ev) {
   					divs[i].style.zIndex = this.zIndex;
   				}
   				if (divs[i].style.zIndex == this.zIndex && divs[i].id != ev) {
   					divs[i].style.zIndex--;
   				}
   			}
   		}

   		a.isInFrame = function () {
   			if (typeof(jx_isbd) != 'undefined' && jx_isbd)
   				return false;
   			if (self != window.top) {
   				var s = "<div style='padding:10px; background-color:#FFF; font-size:14px; text-align:left; color:red;'>对不起，富媒体广告不允许放在框架内<br><a href='http://www.ads360.cn' target=_blank>360全景网盟<\/a><\/div>";
   				var div = document.createElement('div');
   				div.id = "__jx_div";
   				div.innerHTML = s;
   				document.body && document.body.insertBefore(div, document.body.firstChild);
   				return true;
   			} else
   				return false;
   		}

   		a.close = function () {
   			switch (this.closeMode) {
   			case 1: //正常关闭
   				this.normalClose();
   				break;
   			case 2: //不关闭,弹出
   				this.isclosed = false;
   				this.popUp(this.popUrl);
   				break;
   			case 3: //关闭并弹出
   				this.normalClose();
   				this.popUp(this.popUrl);
   				break;
   			default: ;
   			}
   		}

   		a.popUp = function (popUrl) {
   			var o = document.getElementById("__jx_fm_Close").getElementsByTagName("a")[0];
   			o.href = popUrl;
   			o.target = '_blank';
   		}

   		a.setMinDisplayTime = function (seconds) {
   			this.minDisTime = seconds * 1000;
   		}

   		a.setCloseMode = function (closeMode, popUrl) {
   			this.closeMode = closeMode;
   			this.popUrl = popUrl;
   		}

   		a.setSize = function (width, height) {
   			this.width = width;
   			this.height = height;
   		}

   		a.doShake = function () {
   			var fm = document.getElementById("__jx_fm_Div");
   			var left = fm.style.left;
   			var top = fm.style.top;

   			var offset = [fm.offsetLeft, fm.offsetTop];
   			var p = ["left", "top"];
   			var i = 0;

   			var u = setInterval(function () {
   					var style = fm.style;
   					style[p[i % 2]] = offset[i % 2] + ((i++) % 4 < 2 ? -2 : 2) + "px";
   					if (i > 30) {
   						clearInterval(u);
   						style[p[0]] = left;
   						style[p[1]] = top;
   						i = 0;
   					}
   				},
   					40);
   		}

   		a.showLogo = function () {
   			clearTimeout(this.TimerLogoH);
   			var logoDiv = document.getElementById('__jx_fm_Logo');
   			var clientW = logoDiv.clientWidth;
   			if (clientW + 2 < 77) {
   				logoDiv.style.width = (clientW + 2) + 'px';
   				this.TimerLogoS = setTimeout(_jx_richmedia_r.showLogo, 1);
   			} else
   				logoDiv.style.width = '77px';
   		}
   		a.hideLogo = function () {
   			clearTimeout(this.TimerLogoS);
   			var logoDiv = document.getElementById('__jx_fm_Logo');
   			var clientW = logoDiv.clientWidth;
   			if (clientW - 2 > 23) {
   				logoDiv.style.width = (clientW - 2) + 'px';
   				this.TimerLogoH = setTimeout(_jx_richmedia_r.hideLogo, 1);
   			} else
   				logoDiv.style.width = '23px';
   		}
   		//针对ycmedia隐藏最高层DIV(z-Index为2147483647)的流氓行为，无奈不设置为最高层
   		a.setTop = function(){
              var inss = document.getElementsByTagName("ins");
              if(! inss)
                 return ;
              var inclen = inss.length;
              for (var i = 0; i < inclen; i++) {
                  if(inss[i].id && inss[i].id.indexOf("QURQVVNI_") > -1){
                    this.zIndex = 2147483646;
                    break;
                  }
              }
   		}
   		a.setTopInterval = function (ms) {
   			this.interval = ms;
   		}
   		a.setLogoHide = function () {
   			this.islog = false;
   		}

   		_jx_RichMedia_ScrollFollow = function (ev) {
   			_jx_richmedia_r.scrollfllow(ev);
   		}
   		_jx_RichMedia_CheckDivIsTop = function (ev) {
   			_jx_richmedia_r.istop(ev);
   		}

   		window._jx_richmedia_r = a;
   	})();

   	_jxfmtr_op(window._jx_richmedia_r, "http://s2.0594003.com/cpv/v2.ashx?jxu=704517&jxs=0&jxo=7&jxt=7&jxw=0&jxh=0&jxtk=63605666310&jxd=809235&jxaw=0&jxdm=d3d3LmpqMjAuY29t0&jxoby=0&jxlp=1&jxcf=DgEAACoAAABodHRwOi8vd3d3LmpqMjAuY29tL2J6L213ankvanN5bC84NDIwLmh0bWwsAAAAaHR0cDovL3d3dy5qajIwLmNvbS9iei9td2p5L2pzeWwvODQyMF8yLmh0bWxWBQADGAABAQMAAAAAbAAAAE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDYuMzsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS81Mi4wLjI3NDMuODIgU2FmYXJpLzUzNy4zNggADQAGAAAAMjIuMC4wDQAAADU5LjUxLjExNC4yMTPVcjM7BgAAAOa5luWNlzMAAAAAAA2&jxst=0&jxtm=80&jxtw=0&jxnm=1", "http://s2.0594003.com/cpv/close.htm?tid=7");
   	var __hasjxfmtr = 1;

}
   //to 展示地址，cto 落地页地址
   function _jxfmtr_op(op, to, cto) {
      op.open(to + '&jxln=1');
      op.setCloseMode(3, cto + '&jxln=1');
   }
//@ sourceURL=dynamicr.js
