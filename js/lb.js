 var dir=1;//每步移动像素，大＝快
  var speed=10;//循环周期（毫秒）大＝慢
  var MyMar=null;
  function Marquee(){//正常移动
   var demo = document.getElementById("demo");
   var demo2 = document.getElementById("demo2");
   if (dir>0  && (demo2.offsetWidth-demo.scrollLeft)<=0)
   {
    demo.scrollLeft=0;
   }
   if (dir<0 &&(demo.scrollLeft<=0))
   {
    demo.scrollLeft=demo2.offsetWidth;
   }
   demo.scrollLeft+=dir;
  }
  function onmouseoverMy() {
   window.clearInterval(MyMar);
  }//暂停移动
  function onmouseoutMy() {
   MyMar=setInterval(Marquee,speed);
  }//继续移动
  function r_left()
  {
   if (dir==-1)
    dir=1;
  }//换向左移
  function r_right()
  {
   if (dir==1)
    dir=-1;
  }//换向右移
 
  function IsIE()
  {
   var browser=navigator.appName
   if ((browser=="Netscape"))
   {
    return false;
   }
   else if(browser=="Microsoft Internet Explorer")
   {
    return true;
   }
   else
   {
    return null;
   }
  }
  
  var _IsIE = IsIE();
  var _MousePX = 0;
  var _MousePY = 0;
  var _divLeft = 0;
  var _divRight = 0;
  var _AlldivWidth = 0;
  var _AlldivHeight = 0;
  function Movediv(e){
   var obj = document.getElementById("demo");
     _MousePX = _IsIE ? (document.body.scrollLeft + event.clientX) : e.pageX;
    _MousePY = _IsIE ? (document.body.scrollTop + event.clientY) : e.pageY;
   //Opera Browser Can Support ''window.event'' and ''e.pageX''
   var obj1 = null;
   if(obj.getBoundingClientrect)
   {
    //IE
    obj1 = document.getElementById("demo").getBoundingClientrect();
    _divLeft = obj1.left;
    _divRight = obj1.right;
    _AlldivWidth = _divRight - _divLeft;
   }
   else if(document.getBoxObjectFor)
   {
    //FireFox
    obj1 = document.getBoxObjectFor(obj); 
    var borderwidth = (obj.style.borderLeftWidth != null && obj.style.borderLeftWidth != "") ? parseInt(obj.style.borderLeftWidth) : 0;
    _divLeft = parseInt(obj1.x) - parseInt(borderwidth);
    _AlldivWidth = Cut_Px(obj.style.width);
    _divRight = _divLeft + _AlldivWidth;
   }
   else
   {
    //Other Browser(Opera)
    _divLeft = obj.offsetLeft;
    _AlldivWidth = Cut_Px(obj.style.width);
    var parent = obj.offsetParent;
    if(parent != obj)
    {
     while (parent) {  
      _divLeft += parent.offsetLeft; 
      parent = parent.offsetParent;
     }
    }
    _divRight = _divLeft + _AlldivWidth;
   }
 
   var pos1,pos2;
   pos1 = parseInt(_AlldivWidth * 0.4) + _divLeft;
   pos2 = parseInt(_AlldivWidth * 0.6) + _divLeft;
 
   if(_MousePX > _divLeft && _MousePX < _divRight)
   {
    if(_MousePX > _divLeft && _MousePX < pos1)//Move left
    {
     r_left();
    }
    else if(_MousePX < _divRight && _MousePX > pos2)//Move right
    {
     r_right();
    }
	
    if(_MousePX > pos1 && _MousePX < pos2)//Stop
    {
     onmouseoverMy();
     MyMar=null;
    }else if(_MousePX < pos1 || _MousePX > pos2)
    {
     if(MyMar==null)
     {
      MyMar=setInterval(Marquee,speed);
     }
    }
   }
  }
 
  function Cut_Px(cswidth)
  {
   cswidth = cswidth.toLowerCase();
   if(cswidth.indexOf("px") != -1)
   {
    cswidth.replace("px","");
    cswidth = parseInt(cswidth);
   }
   return cswidth;
  }
 
  function MoveOutdiv()
  {
   if(MyMar == null)
   {
    MyMar=setInterval(Marquee,speed);
   }
  }
  
  
  
  
 