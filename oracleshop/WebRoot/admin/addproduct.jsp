<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>添加商品</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.css">
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.css">
	
	
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/my_js.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.zh-CN.js"></script>
	<script type="text/javascript">
     
</script>
	<script type="text/javascript">
	var username = "${sessionScope.username}";
	if (username == "") {
		alert("您还没有登录，请先登录！");
		window.location.href = "/oracleshop/index.jsp";
	}
</script>
  </head>
  
  
  <body>
  
		<div class="main" style="margin-bottom: 0px;">
			<div class="logo">
				<b>在线购物网后台管理</b>
				<a href="${pageContext.request.contextPath}/admin/main.jsp">商品展示</a>
				<a href="${pageContext.request.contextPath}/admin/search.jsp">搜索商品</a>
				<a href="#" class="select">添加商品</a>
				<a href="${pageContext.request.contextPath}/admin/productlist.jsp">商品列表</a>
				<a href="${pageContext.request.contextPath}/admin/userlist.jsp">用户列表</a>
				<div class="input_search" >
				<a href="#">用户：${sessionScope.username}</a>
				<a href="javascript:if(confirm('确定要退出登录吗?'))location='/oracleshop/UserLogout'">退出登录</a>
				<a href="#">修改密码</a></div>
			</div>
		</div>
		<div class="content_main">
			<div class="content">
				<div class="add_product">
					
					 <form class="form-horizontal" id="add_product_form"  role="form"  method="post">
						
						<div class="form-group">
							<label for="firstname" class="col-sm-2 control-label">商品名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="t_productname" placeholder="请输入商品名">
							</div>
						</div>
						
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">商品单价</label>
							<div class="col-sm-10">
								<input type="text" style="width: 30%;" class="form-control" name="t_price" placeholder="请输入商品价格">
							</div>
						</div>
						
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">商品库存</label>
							<div class="col-sm-10">
								<input type="text" style="width: 30%;" class="form-control" name="t_num" placeholder="请输入商品库存">
							</div>
						</div>
						
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">生产日期</label>
							<div class="col-sm-10">
								<input id="datetimepicker" readonly="readonly" type="text" style="width: 40%;" class="form-control" name="t_productdate" placeholder="请输入生产日期">
							</div>
						</div>
						
						
						
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">邮费</label>
							<div class="col-sm-10">
								<input type="text" style="width: 30%;" class="form-control" name="t_postage" placeholder="请输入商品邮费">
							</div>
						</div>
						
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">备注</label>
							<div class="col-sm-10">
								<input type="text"  class="form-control" name="t_comment" placeholder="请输入备注">
							</div>
						</div>
						
						<!-- ajax提交表单 -->
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="button" id="add_product_button" class="btn btn-primary">确认添加</button>
								<button  style="float: right;" class="btn btn-danger">取消</button>
							</div>
						</div>
						
					</form>


				</div>

			</div>
		</div>
	</body>
</html>
