<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>客户</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="customerController.do?doAdd" >
		<input id="id" name="id" type="hidden" value="${customerPage.id }"/>
		<input id="createName" name="createName" type="hidden" value="${customerPage.createName }"/>
		<input id="createBy" name="createBy" type="hidden" value="${customerPage.createBy }"/>
		<input id="updateName" name="updateName" type="hidden" value="${customerPage.updateName }"/>
		<input id="updateBy" name="updateBy" type="hidden" value="${customerPage.updateBy }"/>
		<input id="updateDate" name="updateDate" type="hidden" value="${customerPage.updateDate }"/>
		<input id="addressid" name="addressid" type="hidden" value="${customerPage.addressid }"/>
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							名字:
						</label>
					</td>
					<td class="value">
					     	 <input id="name" name="name" type="text" style="width: 150px" class="inputxt" 
					     	  
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">名字</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							电话:
						</label>
					</td>
					<td class="value">
					     	 <input id="telephone" name="telephone" type="text" style="width: 150px" class="inputxt" 
					     	  
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">电话</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							创建日期:
						</label>
					</td>
					<td class="value">
							   <input id="createDate" name="createDate" type="text" style="width: 150px" class="Wdate" onClick="WdatePicker()" 
					      						 
					      						ignore="ignore"
					      						/>    
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">创建日期</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							地址:
						</label>
					</td>
					<td class="value">
					     	 <input id="address" name="address" type="text" style="width: 150px" class="inputxt" 
					     	  
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">地址</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							租金:
						</label>
					</td>
					<td class="value">
					     	 <input id="rental" name="rental" type="text" style="width: 150px" class="inputxt" 
					     	  datatype="n" 
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">租金</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							物业费:
						</label>
					</td>
					<td class="value">
					     	 <input id="propertyManageFee" name="propertyManageFee" type="text" style="width: 150px" class="inputxt" 
					     	  datatype="n" 
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">物业费</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							水费:
						</label>
					</td>
					<td class="value">
					     	 <input id="water" name="water" type="text" style="width: 150px" class="inputxt" 
					     	  datatype="n" 
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">水费</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							电费:
						</label>
					</td>
					<td class="value">
					     	 <input id="electricity" name="electricity" type="text" style="width: 150px" class="inputxt" 
					     	  datatype="n" 
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">电费</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							状态:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="status" type="list"
									typeGroupCode="cusrStatus" defaultVal="${customerPage.status}" hasLabel="false"  title="状态"  
									></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">状态</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							余额:
						</label>
					</td>
					<td class="value">
					     	 <input id="balance" name="balance" type="text" style="width: 150px" class="inputxt" 
					     	  
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">余额</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/customer/customer.js"></script>		
