<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="attenceList" checkbox="false" pagination="true" fitColumns="false" title="考勤统计" actionUrl="attenceController.do?datagrid" idField="id" fit="true" queryMode="group">
    <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="人员"  field="fname"   query="true" queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="部门"  field="fdept"   query="true" queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title=" 上班时间"  field="fchkintime"    queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="下班时间"  field="fchkouttime"    queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="考勤日期"  field="fchkdate" formatter="yyyy-MM-dd"  query="true" queryMode="group"  width="120"></t:dgCol>
    <t:dgCol title="是否迟到"  field="fislate"    queryMode="single"  width="120"></t:dgCol>
    <t:dgCol title="加班时间"  field="fovertime"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" operationCode="del" url="attenceController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" operationCode="add" icon="icon-add" url="attenceController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" operationCode="edit" icon="icon-edit" url="attenceController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除" operationCode="batch_del" icon="icon-remove" url="attenceController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="attenceController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" operationCode="import" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/com/jeecg/attence/attenceList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 });
 
   
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'attenceController.do?upload', "attenceList");
}

//导出
function ExportXls() {
	JeecgExcelExport("attenceController.do?exportXls","attenceList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("attenceController.do?exportXlsByT","attenceList");
}

 </script>