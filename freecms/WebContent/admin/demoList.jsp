<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="cn.freeteam.cms.model.Creditrule"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="fs" uri="/fs-tags" %>
<%@include file="../util/loading.jsp"%>
<%@include file="../util/checkParentFrame.jsp"%>

<HTML>
	<HEAD>
		<LINK rel=stylesheet type=text/css href="../img/style.css">
		<LINK rel=stylesheet type=text/css href="../img/style3.css">
		<script type="text/javascript" src="../js/jquery-1.5.1.min.js"></script>
		<script type="text/javascript" src="../js/check.js"></script>
		<script type="text/javascript" src="../js/checkAll.js"></script>
		<script type="text/javascript" src="../js/weebox0.4/bgiframe.js"></script>
		<script type="text/javascript" src="../js/weebox0.4/weebox.js"></script>
		<link type="text/css" rel="stylesheet" href="../js/weebox0.4/weebox.css" />

		<script type="text/javascript" src="js/demo.js"></script>
	</HEAD>
	<BODY style="padding:0;margin:0">
		<input type="hidden" id="pageFuncId" value="${param.pageFuncId }"/>
		<form name="myForm" method="post" action="demo_list.do?pageFuncId=${param.pageFuncId }" id="myForm"
			style="margin: 0px">
			<DIV class="column" style="width:99%">
				<div class="columntitle">
					演示搜索
				</div>
				<TABLE width="100%" border=0 align=center cellpadding="2"
					cellspacing="0">
					<TBODY>
						<TR class=summary-title>
							<TD height="30" align=left style="padding-left: 10px;">
								演示:
								<input name="demo.textdemo" type="text" maxlength="500"
									class="colorblur" onfocus="this.className='colorfocus';"
									onblur="this.className='colorblur';"  />
								
								每页显示条数:
								<select name="pageSize"
									id="pageSize">
									<option selected="selected" value="10">
										10
									</option>
									<option value="30">
										30
									</option>
									<option value="50">
										50
									</option>
									<option value="100">
										100
									</option>
									<option value="200">
										200
									</option>
									<option value="300">
										300
									</option>

								</select>
								
								<input type="submit" name="Search" value="搜 索" 
									class="button" style="MARGIN-BOTTOM: 0px" />
							</TD>
						</TR>
						
					</TBODY>
				</TABLE>
			</DIV>
</form>
			<DIV class="column" style="width:99%">
				<div class="columntitle">
					演示列表
				</div>

				<table id="MyDataList" cellspacing="1" cellpadding="1"
					Align="center" border="0" border="0"
					style="width: 100%; word-break: break-all">
					<TR class="summary-title" style="HEIGHT: 25px" align="center">
						<TD>
							<INPUT onClick="checkAll(this.checked)" type="checkbox" />
						</TD>
						
						<TD>
							<fs:order colName="演示" col="textdemo"/>
						</TD>
						<TD>
							<fs:order colName="单选" col="radiodemo"/>
						</TD>
						<TD>
							<fs:order colName="多选" col="checkboxdemo"/>
						</TD>
						<TD>
							<fs:order colName="下拉选择" col="selectdemo"/>
						</TD>
					</TR>
					
					<s:iterator value="demoList" id="bean">
					<TR class="tdbg" onMouseOver="this.className='tdbg-dark';"  id="tr<s:property value="id"/>"
						style="HEIGHT: 25px" onMouseOut="this.className='tdbg';">
						<TD align="center">
							<INPUT name="ids" type="checkbox" value="<s:property value="id"/>"/></TD>
						
						
						<TD  align="left" id="textdemo<s:property value="id"/>">
							<s:property value="textdemo"/>
						</TD>
						<TD  align="left" id="radiodemo<s:property value="id"/>">
							<s:property value="radiodemo"/>
						</TD>
						<TD  align="left" id="checkboxdemo<s:property value="id"/>">
							<s:property value="checkboxdemo"/>
						</TD>
						<TD  align="left" id="selectdemo<s:property value="id"/>">
							<s:property value="selectdemo"/>
						</TD>
					</TR>
					</s:iterator>
					<TR class="tdbg" 
						style="HEIGHT: 25px" >
						<TD  align="center" colspan="10">
							${pageStr }
						</TD>
					</TR>
				</table>

			</DIV>

			<table width="95%" align="center">
				<tr>
					<td align="right">
						<table cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td align="left">
									<fs:operButtons />
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>

	</BODY>
</HTML>

