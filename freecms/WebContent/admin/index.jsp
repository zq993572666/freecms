<%@ page language="java"  pageEncoding="UTF-8"%>
<HTML>
<HEAD>
<TITLE>FreeCMS-管理中心</TITLE>
<script> 
function changeDisplayMode(){
	if(document.getElementById("bottomframes").cols=="170,7,*"){
		document.getElementById("bottomframes").cols="0,7,*"; 
		document.getElementById("separator").contentWindow.document.getElementById('ImgArrow').src="../img/separator2.gif"
	}else{
		document.getElementById("bottomframes").cols="170,7,*"
		document.getElementById("separator").contentWindow.document.getElementById('ImgArrow').src="../img/separator1.gif"
	}
}
</script>

<META http-equiv=Content-Type content="text/html; charset=utf-8">
</HEAD>

<frameset id="mainframes" framespacing="0" border="false" rows="62,*" frameborder="0" scrolling="yes">
<frame name="top" scrolling="no" src="admin_top.do">
	
<frameset id="bottomframes" framespacing="0" border="false" cols="170,7,*" frameborder="0" scrolling="yes">
	<frame name="left" scrolling="auto" marginwidth="0" marginheight="0" src="admin_left.do" noresize />
	<frame id="separator" name="separator" src="separator.html" noresize scrolling="no" />
	<frame name="right" id="right" scrolling="auto" src="<%=(request.getParameter("url")!=null && request.getParameter("url").trim().length()>0)?request.getParameter("url"):"admin_right.do" %>">
</frameset>
</frameset>
 
<noframes>
<body >
<p>This page uses frames, but your browser doesn't support them.</p>
</body>
</noframes>

</HTML>
