// JavaScript Document

function $(id){return document.getElementById(id)}

window.onload = function(){
	
  var g1=document.getElementsByClassName("gui1")[0].style;
  var g2=document.getElementsByClassName("gui2")[0].style;
  var g3=document.getElementsByClassName("gui3")[0].style;
 $("cfd1").onclick = function(e){
  
  var src = e?e.target:event.srcElement;
  	if(g1.display==''||g1.display=='none'){
						  g1.display="block";
						  g2.display="none";
						  g3.display="none";
 						 }
    }
$("cfd2").onclick = function(e){
  var src = e?e.target:event.srcElement;
  	if(g2.display==''||g2.display=='none'){
						  g2.display="block";
						  g1.display="none";
						  g3.display="none";
 						 }
}
	$("cfd3").onclick = function(e){

				if( g3.display==''||g3.display=='none'){
							  g3.display='block';
							  g1.display="none";
							  g2.display="none";
				 }
	}
}
