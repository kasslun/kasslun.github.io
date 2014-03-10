<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="/top/component/common/Taglibs.jsp" %>
<%@ page contentType="text/html; charset=GBK" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>列表组件</title>
<link  rel="stylesheet" href="../../cui/themes/default/css/comtop.ui.listbox.css" type="text/css" />
<script language="JavaScript" src="../../cui/js/comtop.ui.base.js" type="text/javascript"></script>
<script language="JavaScript" src="../../cui/js/comtop.ui.listbox.js" type="text/javascript"></script>
</head>

<body>

<div id="testListBox1" ></div>

<input type="button" value="右全移"  style="position: absolute;top:5px;left:200px;" onclick="rightAllMove();" />
<input type="button" value="选中右移"  style="position: absolute;top:35px;left:200px;" onclick="rightChooseMove();" />
<input type="button" value="选中左移"  style="position: absolute;top:65px;left:200px;" onclick="leftChooseMove();" />
<input type="button" value="左全移"  style="position: absolute;top:95px;left:200px;" onclick="leftAllMove();" />

<div id="testListBox2" style="left:350px;top:10px;position: absolute;"></div>

<input type='button' value="上移" onclick='moveUp();' style="top:250px;left:750px;position: absolute;" />

<input type='button' value="下移" onclick='moveDown();' style="top:250px;left:850px;position: absolute;" />

<script type="text/javascript">
<!--
	var dd = [];
	for(var i=0;i<=9; i++){
	    dd.push({ code: i + '', name: i + ' 雇员',filterName:'Boss ' + i});
	}
	//Employee
	var appendData = [];
	for(var i=0;i<=12; i++){
		appendData.push({ code: i + '', name: i + '  雇员',filterName:'Boss ' + i});
	}
    var test,test2;
	window.onload=function(){
		test = cui('#testListBox1').listBox({
		    keyField: 'code',
		    displayField: 'name',
		    multiple:false,
		    cutLength:0,
		    dataSource:dd
		});
		
		test2 = cui('#testListBox2').listBox({
		    keyField: 'code',
		    displayField: 'name',
		    multiple:false,
		    cutLength:0       
		});
	}   


	function rightAllMove(){
		var resultRecord ;
		resultRecord = test.removeAllRows();
		test2.addRows(resultRecord);
	}

	function rightChooseMove(){
		var resultRecord ;
		resultRecord = test.removeSelectedRows();
		test2.addRows(resultRecord);
	}

	function leftChooseMove(){
		var resultRecord  = test2.removeSelectedRows();
		test.addRows(resultRecord);
	}

	function leftAllMove(){
		var resultRecord  = test2.removeAllRows();
		test.addRows(resultRecord);
	}   
	
	function moveUp(){
    	test.moveUp();
    }
    
    function moveDown(){
    	test.moveDown();
    }
-->
</script>

</body>
</html>
