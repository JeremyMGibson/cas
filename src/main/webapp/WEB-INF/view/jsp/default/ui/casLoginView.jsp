<!DOCTYPE html>
<!--[if lt IE 7]>      <html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
    	<%@ page pageEncoding="UTF-8" %>
		<%@ page contentType="text/html; charset=UTF-8" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
		
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>Goji Trial Management</title>
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width" />
        <link type="text/css" href="<c:url value="/css/login.css"/>" rel="stylesheet" />
       	<script src="<c:url value="/js/jquery-1.10.2.min.js"/>" type="text/javascript"></script>
       	<script src="<c:url value="/js/retina.js"/>" type="text/javascript"></script>
		<link rel="shortcut icon" href="<c:url value="/images/favicon.ico"/>" type="image/x-icon">
		<link rel="icon" href="<c:url value="/images/favicon.ico"/>" type="image/x-icon">
		<link rel="apple-touch-icon" href="<c:url value="/images/apple/touch-icon-iphone.png"/>"/>
		<link rel="apple-touch-icon" sizes="76x76" href="<c:url value="/images/apple/touch-icon-ipad.png"/>"/>
		<link rel="apple-touch-icon" sizes="120x120" href="<c:url value="/images/apple/touch-icon-iphone@2x.png"/>"/>
		<link rel="apple-touch-icon" sizes="152x152" href="<c:url value="/images/apple/touch-icon-ipad@2x.png"/>"/>
		<!-- iPhone -->
		<link href="<c:url value="/images/apple/apple-touch-startup-image-320x460.png"/>
		      media="(device-width: 320px) and (device-height: 480px)
		         and (-webkit-device-pixel-ratio: 1)"
		      rel="apple-touch-startup-image">
		
		<!-- iPhone (Retina) -->
		<link href="<c:url value="/images/apple/apple-touch-startup-image-640x920.png"/>
		      media="(device-width: 320px) and (device-height: 480px)
		         and (-webkit-device-pixel-ratio: 2)"
		      rel="apple-touch-startup-image">
		
		<!-- iPhone 5 -->
		<link href="<c:url value="/images/apple/apple-touch-startup-image-640x1096.png"/>
		      media="(device-width: 320px) and (device-height: 568px)
		         and (-webkit-device-pixel-ratio: 2)"
		      rel="apple-touch-startup-image">
		
		<!-- iPad -->
		<link href="<c:url value="/images/apple/apple-touch-startup-image-768x1004.png"/>
		      media="(device-width: 768px) and (device-height: 1024px)
		         and (orientation: portrait)
		         and (-webkit-device-pixel-ratio: 1)"
		      rel="apple-touch-startup-image">
		<link href="<c:url value="/images/apple/apple-touch-startup-image-768x1024.png"/>
		      media="(device-width: 768px) and (device-height: 1024px)
		         and (orientation: landscape)
		         and (-webkit-device-pixel-ratio: 1)"
		      rel="apple-touch-startup-image">
		
		<!-- iPad (Retina) -->
		<link href="<c:url value="/images/apple/apple-touch-startup-image-1536x2008.png"/>
		      media="(device-width: 768px) and (device-height: 1024px)
		         and (orientation: portrait)
		         and (-webkit-device-pixel-ratio: 2)"
		      rel="apple-touch-startup-image">
		<link href="<c:url value="/images/apple/apple-touch-startup-image-2048x1496.png"/>
			      media="(device-width: 768px) and (device-height: 1024px)
			         and (orientation: landscape)
			         and (-webkit-device-pixel-ratio: 2)"
			      rel="apple-touch-startup-image">
        
    </head>
	<body class="login">
		<div id="login-bg-noise"></div>
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
					<div class="login-box">
						<img src="<c:url value="/images/logo-login.png"/>" alt="Goji Trial Management" width="266" height="189" />
						<div class="login-header"></div>
						<div class="login-body">
						<h2>Login</h2>
						<form:form method="post" id="fm1" commandName="${commandName}" htmlEscape="true" class="form-vertical" role="form">
							<div class="form-group ">
								<label for="username" class="sr-only">Email:</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="icon-user"></i></span>
									<form:input type="email" cssClass="form-control input-lg" cssErrorClass="error" id="username" size="25" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="off" htmlEscape="true" placeholder="Email Address"  />
								</div>
								
							</div>
							<div class="form-group ">
								<label for="password" class="sr-only">Password:</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="icon-key"></i></span>
									<form:password cssClass="form-control input-lg" cssErrorClass="error" id="password" size="25" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" placeholder="Password"/>
								</div>
							</div>
							
							<div class="row">
								<div class="col-md-12">
									<input type="hidden" name="lt" value="${loginTicket}" />
						            <input type="hidden" name="execution" value="${flowExecutionKey}" />
						            <input type="hidden" name="_eventId" value="submit" />
						            
									<button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 alternate-link">								
									<a href="<c:url value="forgot-password"/>" class="text-muted">Forgot your password?</a>
								</div>
							</div>
							
						</form:form>
					</div>
					</div>
				
					<script type="text/javascript">
							$(function() {
								$("#username").focus();
								
								$(".form-control").on("keyup", function() {
									if($(this).val() != "") {
										$(this).closest(".form-group").removeClass("has-errors").addClass("filled");
									} else {
										$(this).closest(".form-group").removeClass("has-errors").removeClass("filled");
									}
								});
								
							})
					</script>
				</div>
			</div>
		</div>
	</body>
</html>

