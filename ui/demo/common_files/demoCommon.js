var $=comtop.cQuery;
window.onload=function(){
    var html=$(".demoContainer").html().toLowerCase(),
        code=$("#sourceCode").html();
    code=!code?"":code;
    var jscode='<script type="text/javascript">'+code+'\ncomtop.UI.scan();'+'</script>';
     
var fullHtml=processHTMLCode(html,jscode); 
 
 setJsCode(fullHtml);
 comtop.UI.scan(); 
  
}


function setTitle(title){
if(window.parent===window){return;}	
 window.parent.cui("#centerPanel").set("header_title",title);	

}

function setJsCode(code){	
if(window.parent===window){return;}	
   window.parent.cui("#jsCode").set("html","<textarea id='textareaCode'>"+code+"</textarea>"); 
   window.parent.generateCode();
	
}
function processHTMLCode(htmlCode,jsCode){
    var editorScript="",
        html='<!DOCTYPE html>\n';
    if(htmlCode.indexOf('uitype="editor"')!=-1){
        editorScript='<script type="text/javascript" src="../../ui/js/comtop.ui.editor.min.js"></script>\n';
    }
    html+='<html>\n<head>\n';
    html+='<meta charset="GBK">\n';
    html+='<title>Baisc Tree</title>\n';
    html+='<link rel="stylesheet" href="../..ui/themes/default/css/comtop.ui.min.css">\n';
    html+='<script type="text/javascript" src="../..ui/js/comtop.ui.min.js"></script>\n';
    html+= editorScript;
    html+='</head>\n<body>\n'+htmlCode+'\n'+jsCode+'\n</body>\n</html>';
    return html;
}

function setDemoPanelSize(width,height){
 if(window.parent===window){return;}
	window.parent.setDemoPanelSize(width,height);	   
	
}

/*
function bindEvent(){
   $("#viewSource").on("click",function(){   
	cui('#sourceCodeDialog').dialog({
	modal: true,
	width:$(window).width()*0.6,
	height:$(window).height()*0.5,
	title: '�鿴Դ����'
	}).show();
   
   });
	$(".syntaxhighlighter").hover(function(){
											$(".toolbar",this).show();
											},function(){
											$(".toolbar",this).hide();	
											});  
}*/