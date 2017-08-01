<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>收费项目</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="feeController.do?doAdd" >
		<input id="id" name="id" type="hidden" value="${feePage.id }"/>
		<input id="createName" name="createName" type="hidden" value="${feePage.createName }"/>
		<input id="createBy" name="createBy" type="hidden" value="${feePage.createBy }"/>
		<input id="createDate" name="createDate" type="hidden" value="${feePage.createDate }"/>
		<input id="updateName" name="updateName" type="hidden" value="${feePage.updateName }"/>
		<input id="updateBy" name="updateBy" type="hidden" value="${feePage.updateBy }"/>
		<input id="updateDate" name="updateDate" type="hidden" value="${feePage.updateDate }"/>
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							编码:
						</label>
					</td>
					<td class="value">
					     	 <input id="code" name="code" type="text" style="width: 150px" class="inputxt" 
					     	  
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">编码</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							名称:
						</label>
					</td>
					<td class="value">
					     	 <input id="name" name="name" type="text" style="width: 150px" class="inputxt" 
					     	  
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">名称</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							优先级:
						</label>
					</td>
					<td class="value">
					     	 <input id="priority" name="priority" type="text" style="width: 150px" class="inputxt" 
					     	  
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">优先级</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							费率:
						</label>
					</td>
					<td class="value">
					     	 <input id="rate" name="rate" type="text" style="width: 150px" class="inputxt" 
					     	  
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">费率</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/charge.fee/fee.js"></script>		
