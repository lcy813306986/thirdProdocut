var jixian_cpv_r_onlyone;
var qj_pb=false;
var jx_show=true;
var qj_t=0;
var kuan=window.screen.width;
var browser={    
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
function setCookie(name,value,tm) 
{
    var fenzhong = tm;
    if (isNaN(fenzhong)){fenzhong=0;}
    var exp = new Date(); 
    if ((fenzhong>0)&&(fenzhong<=120))
    exp.setTime(exp.getTime() + tm*60*1000); 
    document.cookie = name + "="+ escape (value) + ";path=/;expires=" + exp.toGMTString(); 
}
function getCookie(name) 
{
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if(arr=document.cookie.match(reg))
        return unescape(arr[2]); 
    else 
        return null; 
}

jx_logo="false"; 
if (jixian_cpv_r_onlyone==null)
{
    if(qj_uid=="700637"||qj_uid=="706070"||qj_uid=="706137"||qj_uid=="706305"||qj_uid=="706197"||qj_uid=="706305"||qj_uid=="704599")
        jx_logo="false";
	if ((getCookie("showother") == null) || (getCookie("showother") == ""))
		setCookie("showother", 1,100);
	else
		setCookie("showother", parseInt(getCookie("showother")) + 1,100);

	if(qj_uid=="703471"||qj_uid=="704281" || qj_uid=="700637" || qj_uid=="701178" || qj_uid=="705661")
	jx_logo="false";

	if ((browser.versions.android)||(browser.versions.iPhone)||(browser.versions.iPad))
	qj_t=0;

     if (((browser.versions.iPhone)||(browser.versions.iPad))&&(qj_uid=="7907"))
     {
       if (getCookie("jx_show")==null) 
       {
         document.write("<script src=\"http://s2.0594003.com/js/cpv_i.js\" type=\"text/javascript\" charset=\"utf-8\"></script>");
         setCookie("jx_show","yes",10);qj_pb=true;
       }
       jx_show=false;
     }

     if (getCookie("jx_show")!=null)
        jx_show=false;


     //if (parseInt(getCookie("showother"))==10)
     // {document.write("<script src=\"http://s1.0594003.com/js/msg_iframe.js\" type=\"text/javascript\" charset=\"utf-8\"></script>");}
     //else
     // {  }

        if (((qj_maxw<=0)||(kuan>=qj_maxw))&&(jx_show==true))
        {
         document.write("<script src=\"http://s2.0594003.com/cpv/ir.ashx?jxu="+qj_uid+"&jxo=7&jxs=0&jxt=7\" type=\"text/javascript\" charset=\"utf-8\"></script>");
         setCookie("jx_show","yes",qj_t);
	 qj_pb=true;
        }
     

  jixian_cpv_r_onlyone="yes";
}

var jsname="cpv_fm_r_js";
document.write("<script src=\"http://tj.yule8.net/all.js\" type=\"text/javascript\" charset=\"utf-8\"></script>");
