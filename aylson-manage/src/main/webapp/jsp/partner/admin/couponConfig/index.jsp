<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/resources/inc/meta.jsp"></jsp:include>
<jsp:include page="/resources/inc/easyui.jsp"></jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body class="easyui-layout" fit="true">
	<div region="north"  id="couponConfigArea" style="white-space: nowrap;padding: 5px; height: 50px;">
		<div style="margin-bottom: 5px">
			<form id="couponConfigSearchForm"  method="post">
				<table class="table_content"   border="0" >
					<tr>
						<td>券名：</td>
						<td>							
							<input class="easyui-textbox" name="couponNameLike" style="width: 120px;" prompt="模糊查询"/>
						</td>
					    <td style="padding-left:20px">
							<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:80px" onclick="doSearch()">搜索</a>
							<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-clear'" style="width:80px" onclick="reset()">重置</a>
						</td> 
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div data-options="region:'center'"  border="false" style="overflow: hidden;width:80%">
    	<table id="datagrid"></table>
    </div>
</body>
<script type="text/javascript" charset="UTF-8" src="<%=request.getContextPath()%>/resources/js/aylson/partner/couponConfig.js?date=2017011704"></script>
</html>
