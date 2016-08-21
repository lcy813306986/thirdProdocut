// JavaScript Document
yc.xssRequest("http://218.196.14.220:8080/res/resfood.action?op=findAllFoods",{
	'completeListener':function(){
		var fwq=yc.$('caipin');  
	   for(var i=0;i<this.responseJSON.obj.length;i++){
		   
		   /*fwq.innerHTML+="<li><img id='img"  +json.obj[i]+  "';" + "style='float:left;list-style-type:none;margin-right:33px;margin-bottom:33px;width:265px;height: 335px;' src=http://218.196.14.220:8080/res/images/"+json.obj[i].fphoto+"></li>";*/
		  
		  fwq.innerHTML+="<li><div class='tc' id='t_"+i+"'><a href='#page' class='cs'>Close</a><a href='' class='buy'>Buy</a><img style='width:330px;height: 330px;' src='http://218.196.14.220:8080/res/images/"+this.responseJSON.obj[i].fphoto+";'  ><div><h3>pointe<span>/point/</span></h3><p>Dance performed on the tips of the toes</p></div></div><a id='d_"+i+"'  href='#t_"+i+"'><img style='width:265px;height: 335px;' src='http://218.196.14.220:8080/res/images/"+this.responseJSON.obj[i].fphoto+";'  ><span>查看详情</span></a></li>";
		  (function (index){
			  yc.addEvent("d_"+index,"click",function(){
				  	yc.$("t_"+index).style.display="block";
				  })
			})(i)
/*		   yc.$("one").innerHTML="<img width='218px' height='200px' src=http://218.196.14.220:8080/res/images/"+json.obj[0].fphoto+">";
		   yc.$("two").innerHTML="<img width='218px' height='200px' src=http://218.196.14.220:8080/res/images/"+json.obj[1].fphoto+">";
		   yc.$("three").innerHTML="<img width='218px' height='200px' src=http://218.196.14.220:8080/res/images/"+json.obj[2].fphoto+">";
		   yc.$("four").innerHTML="<img  width='218px' height='200px' src=http://218.196.14.220:8080/res/images/"+json.obj[3].fphoto+">";
		   yc.$("five").innerHTML="<img width='218px' height='200px' src=http://218.196.14.220:8080/res/images/"+json.obj[6].fphoto+">";
		   
		   yc.$("six").innerHTML=json.obj[0].fname;
		   yc.$("seven").innerHTML=json.obj[1].fname;
		   yc.$("eight").innerHTML=json.obj[2].fname;
		   yc.$("nine").innerHTML=json.obj[3].fname;
		   yc.$("ten").innerHTML=json.obj[6].fname;
	}*/
	}
	}
	});
 var caipin=document.getElementById("caipin");

 


