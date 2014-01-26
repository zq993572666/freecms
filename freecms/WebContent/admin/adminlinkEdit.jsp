<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@page import="java.util.UUID"%>
<%@include file="../util/checkParentFrame.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<input type="hidden" id="id" value="${adminlink.id }">
			<DIV class=column>
				<TABLE cellSpacing=4 cellPadding=4 width="95%" align=center>
					<TBODY>
						<TR>
							<TD width="30%" align="left">
								<LABEL id=ctl01_ctl00_label><IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl01_ctl00_imgHelp tabIndex=-1 alt=请输入链接名称
											src="../img/help.gif">
									<NOBR>
										<SPAN id=ctl01_ctl00_lblLabel>链接名称：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD width="70%" align="left">
								<INPUT onblur="this.className='colorblur';" id=name_edit
									class=colorblur onfocus="this.className='colorfocus';" 
									maxLength=50 type=text name=adminlink.name value="${adminlink.name }">
								<SPAN  id=ctl03>*</SPAN>
							</TD>
						</TR>
						
						<TR >
							<TD width="30%">
								<LABEL id=ctl02_ctl00_label>
									<IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl02_ctl00_imgHelp tabIndex=-1 alt=请上传图片
											src="../img/help.gif">
									<NOBR>
										<SPAN id=ctl02_ctl00_lblLabel>图片：
										</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD>
							<input type="hidden" name="adminlink.img" id="img" value="${adminlink.img }"/>
							<span id="imgSpan">
							<s:if test='%{adminlink.img!=null && adminlink.img != "" && adminlink.img != "null"}'>
							<a href="${adminlink.img }?date=<%=UUID.randomUUID() %>" target="_blank">
							<img src="${adminlink.img }?date=<%=UUID.randomUUID() %>" width="60" height="40" title="点击查看大图"/>
							</a>
							</s:if>
							</span>
							<a style="display:none" id="imgDelBtn" href="javascript:delImg()">删除</a>
							<br/>
									<input type="button"  class="button" value="选择图片" onclick="selectImg()"/>
							</TD>
						</TR>
						<TR>
							<TD width="30%" align="left">
								<LABEL id=ctl01_ctl00_label><IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl01_ctl00_imgHelp tabIndex=-1 alt=请输入链接地址
											src="../img/help.gif">
									<NOBR>
										<SPAN id=ctl01_ctl00_lblLabel>链接地址：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD width="70%" align="left">
								<INPUT onblur="this.className='colorblur';" id=url
									class=colorblur onfocus="this.className='colorfocus';" 
									maxLength=500 size="40" type=text name=adminlink.url value="${adminlink.url }">
								<SPAN  id=ctl03>*</SPAN>
							</TD>
						</TR>
						<TR>
							<TD width="30%" align="left">
								<LABEL id=ctl02_ctl00_label>
									<IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl02_ctl00_imgHelp tabIndex=-1 alt=请选择有效性
											src="../img/help.gif">
									<NOBR>
										<SPAN id=ctl02_ctl00_lblLabel>有效：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD align="left">
								<input type="radio" name="adminlink.isok" value="1" <s:if test="adminlink==null || adminlink.isok!=0">checked="checked"</s:if>>是
								<input type="radio" id="isok0" name="adminlink.isok" value="0" <s:if test="adminlink.isok==0">checked="checked"</s:if> >否
							</TD>
						</TR>
						<TR>
							<TD  align="left">
								<LABEL id=ctl02_ctl00_label>
									<IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl02_ctl00_imgHelp tabIndex=-1 alt=请输入排序号
											src="../img/help.gif">
									<NOBR>
										<SPAN id=ctl02_ctl00_lblLabel>排序号：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD align="left">
          		<input type="text" id="ordernum" value="${adminlink.ordernum }" name="adminlink.ordernum" onkeyup=if(!isInt(value))execCommand('undo') onafterpaste=if(!isInt(value))execCommand('undo') class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';">
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</DIV>
