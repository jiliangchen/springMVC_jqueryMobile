<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>spring mvc with bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/resources/css/bootstrap.css' /> " rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value='/resources/css/justified-nav.css' /> " rel="stylesheet">
 
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      <div class="masthead">
        <h3 class="text-muted">spring mvc with bootstrap</h3>
        <ul class="nav nav-justified">
          <li class="active"><a href="<c:url value='/' />">首页</a></li>
          <li><a href="#">计算</a></li>
          <li><a href="#">检索</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">联系我们</a></li>
        </ul>
      </div>
      
      <!-- Jumbotron -->
      <div class="jumbotron">
        <h1>Spring mvc + bootstrap + jqueryMobile</h1>
        <p class="lead">持久话采用jpa的hibernate实现，前端控制用spring mvc,前端开发用bootstrap工具包，mobile解决方案用jquery mobile</p>
        <p><a class="btn btn-lg btn-success" href="#" role="button">Get started today</a></p>
      </div>

      <!-- Site footer -->
      <div class="footer">
        <p>© Company 2013</p>
      </div>

    </div> <!-- /container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

</body></html>