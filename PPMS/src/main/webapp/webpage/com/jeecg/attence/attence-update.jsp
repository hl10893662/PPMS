<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>考勤统计</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
		<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="attenceController.do?doUpdate" >
					<input id="id" name="id" type="hidden" value="${attencePage.id }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								人员:
							</label>
						</td>
						<td class="value">
						     	 <input id="fname" name="fname" type="text" style="width: 150px" class="inputxt"  
						     	 ignore="ignore" 
						     	 value='${attencePage.fname}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">人员</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								部门:
							</label>
						</td>
						<td class="value">
						     	 <input id="fdept" name="fdept" type="text" style="width: 150px" class="inputxt"  
						     	 ignore="ignore" 
						     	 value='${attencePage.fdept}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">部门</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								 上班时间:
							</label>
						</td>
						<td class="value">
						     	 <input id="fchkintime" name="fchkintime" type="text" style="width: 150px" class="inputxt"  
						     	 ignore="ignore" 
						     	 value='${attencePage.fchkintime}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;"> 上班时间</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								下班时间:
							</label>
						</td>
						<td class="value">
						     	 <input id="fchkouttime" name="fchkouttime" type="text" style="width: 150px" class="inputxt"  
						     	 ignore="ignore" 
						     	 value='${attencePage.fchkouttime}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">下班时间</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								考勤日期:
							</label>
						</td>
						<td class="value">
									  <input id="fchkdate" name="fchkdate" type="text" style="width: 150px"  class="Wdate" onClick="WdatePicker()"  
									  ignore="ignore"
									    value='<fmt:formatDate value='${attencePage.fchkdate}' type="date" pattern="yyyy-MM-dd"/>'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">考勤日期</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								是否迟到:
							</label>
						</td>
						<td class="value">
						     	 <input id="fislate" name="fislate" type="text" style="width: 150px" class="inputxt"  
						     	 ignore="ignore" 
						     	 value='${attencePage.fislate}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">是否迟到</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								加班时间:
							</label>
						</td>
						<td class="value">
						     	 <input id="fovertime" name="fovertime" type="text" style="width: 150px" class="inputxt"  
						     	 ignore="ignore" 
						     	 value='${attencePage.fovertime}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">加班时间</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/attence/attence.js"></script>		
