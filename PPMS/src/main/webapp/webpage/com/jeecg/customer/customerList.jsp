<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="customerList" checkbox="true" pagination="true" fitColumns="false" title="客户" actionUrl="customerController.do?datagrid" idField="id" fit="true" queryMode="group">
    <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="创建人登录名称"  field="createBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="更新人名称"  field="updateName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="更新人登录名称"  field="updateBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="名字"  field="name"   query="true" queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="电话"  field="telephone"   query="true" queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="创建日期"  field="createDate" formatter="yyyy-MM-dd"   queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="更新日期"  field="updateDate" formatter="yyyy-MM-dd" hidden="true"  queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="地址"  field="address"   query="true" queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="地址id"  field="addressid"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="租金"  field="rental"    queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="物业费"  field="propertyManageFee"    queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="水费"  field="water"    queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="电费"  field="electricity"    queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="状态"  field="status"    queryMode="single" dictionary="cusrStatus" width="0"></t:dgCol>
    <t:dgCol title="余额"  field="balance"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="customerController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="customerController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="customerController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="customerController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="customerController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/com/jeecg/customer/customerList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 });
 
   
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'customerController.do?upload', "customerList");
}

//导出
function ExportXls() {
	JeecgExcelExport("customerController.do?exportXls","customerList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("customerController.do?exportXlsByT","customerList");
}

 </script>