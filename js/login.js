yc.addEvent('show','click',function(){
    dl=yc.$('dl');
	name=document.getElementById("uname").value;
	pwd=document.getElementById("pwd").value;
	var options={
		"completeListener":function(){
			if(this.responseJSON.code==0){
				alert(this.responseJSON.msg);
				yc.$('buttom').style.display[0]="block";
			}
			if(this.responseJSON.code==1){
				yc.$('buttom').innerHTML="欢迎您";
				yc.$('buttom').href="#";
				yc.$('dl').style.display="none";
				yc.$('tuichu').style.display='block';	
				
			};
		}
	};
	yc.xssRequest("http://218.196.14.220:8080/res/resuser.action?op=login&username="+name+"&pwd="+pwd,options);
});

//检查是否登录
function login_checked(){
	var options={
		"completeListener":function (){
			if(this.responseJSON.code==0){
				yc.$('buttom').style.display[0]="block";
			}else if(this.responseJSON.code==1){
				yc.$('buttom').innerHTML="欢迎您";
				yc.$('buttom').href="#";
				yc.$('dl').style.display="none";
				yc.$('tuichu').style.display='block';
			}
		}
	}
	yc.xssRequest("http://218.196.14.220:8080/res/resuser.action?op=checkLogin",options);
}
yc.addLoadEvent(login_checked());



yc.addEvent('tuichu','click',function(){
	var options={
		'completeListener':function(json){
			if(this.responseJSON.code==0){
				alert(this.responseJSON.msg);
			}else if(this.responseJSON.code==1){
				yc.$('tuichu').href='';
				dl.style.display='none';
				
			}
			
			}
		
	}
	yc.xssRequest("http://218.196.14.220:8080/res/resuser.action?op=logout",options);
});



