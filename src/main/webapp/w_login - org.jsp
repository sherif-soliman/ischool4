<%@ include file="../../include/main_include.jsp"%>

<!--  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>


<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="https://ajax4jsf.dev.java.net/ajax" prefix="a4j"%>

<link  href="css/main.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="scripts/main.js"></script>
  
  -->
 
<head>
<title>Home ... iSchool</title>
<f:loadBundle basename="stream.ischool.internationalization.home"	var="bundle"/>

<link  href="css/main.css" rel="stylesheet" type="text/css" media="all"/>

<script type="text/javascript" src="scripts/main.js"></script>

<!--  
<script type="text/javascript" >
							
								
				  var width = window.innerWidth ||
	                document.documentElement.clientWidth ||
	                document.body.clientWidth;
					    
					    if (width <= 600) 
						{
								 window.location = "http://www.ischool.ws/faces/m_login.jsp";
								 
						}
</script>
-->	
</head>
<body onresize="adjust_width();">


	<f:view locale="#{loginBean.locale}">

		<h:form >
			<!-- %@ include file="../include/top_section.jsp"% -->

			<!--  div align="center"-->
			<table cellpadding="0" cellspacing="0" width="90%" border="0" align="center" >
			<tr>
			<td>
			
				<table cellpadding="0" cellspacing="0" width="90%" border="0">
					<tr>
						<td width="40%"></td>
						<td width="60%" align="right"><h:panelGrid border="0"
								columns="5"
								style="border-bottom-style: none; border-top-style: none; border-left-style: none; border-right-style: none"
								cellpadding="2" cellspacing="4" frame="none">
								<h:outputText value="#{bundle.name}"
									style="color: #808080; font-size: 10px; text-decoration: blink; font-family: Verdana, Arial, Sans-Serif; border-bottom-style: none; border-top-style: none; border-left-style: none; border-right-style: none"></h:outputText>
								<h:inputText value="#{loginBean.name}" >
								</h:inputText>
								<h:outputText value="#{bundle.password}"
									style="color: #808080; font-size: 10px; text-decoration: blink; font-family: Verdana, Arial, Sans-Serif; border-bottom-style: none; border-top-style: none; border-left-style: none; border-right-style: none"></h:outputText>
								<h:inputSecret value="#{loginBean.password}">
								</h:inputSecret>
								<h:commandButton value="#{bundle.login}"
									action="#{loginBean.checkCredentials}"></h:commandButton>
							</h:panelGrid></td>
							
					</tr>
					<tr>
					<td >
					</td>
					<td >
					<table border="0">
						<tr>
							<td width="320"></td>
						<td>
							<a href="jsp/registration/registration.jsp" style="color: blue; text-decoration: none; 
								font-family: Verdana, Arial, Sans-Serif; font-size:12px;" >
								 New User..
							</a>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="#" style="color: blue; text-decoration: none; 
								font-family: Verdana, Arial, Sans-Serif; font-size:12px;" onclick="document.getElementById('forget_password').style.display=''">
								Forget Password..
							</a>
							
						</td>
						
						</tr>
					</table>
					<div id="forget_password" align="center" style=" display:none;">
				<br/>
				<h:panelGrid border="0" columns="3" style="font-family: Verdana, Arial, Sans-Serif; font-size:14px;">
					
								<h:outputText value="Enter your user name:"
									style="color: #808080; font-size: 10px; text-decoration: blink; font-family: Verdana, Arial, Sans-Serif; border-bottom-style: none; border-top-style: none; border-left-style: none; border-right-style: none"></h:outputText>
								<h:inputText value="#{loginBean.forgotUserName}" >
								</h:inputText>
								 
								<h:commandButton value="Get Password"
									action="#{loginBean.forgetPassword}"></h:commandButton>			
					
				</h:panelGrid>
			</div>
					<br/>
					</td>
					</tr>
					<tr>
						<td width="40%"></td>
						<td width="60%" align="left"><h:messages id="messages"
								errorClass="error_msg" infoClass="info_msg"
								warnClass="warning_msg" /></td>
		</tr>
		
							<tr>
			<td width="40%"></td>
			<td width="60%" align="left">
			
				
				<h:panelGrid rendered="#{loginBean.timeout}">
				<h:outputText value="#{bundle.timeout}" 
				 styleClass="info_msg"> 
				</h:outputText>
				<br/>
			</h:panelGrid>	
			</td>
			
		</tr>
					
					<tr>
						<td colspan="2">
							<table id="img_table">
							
								<tr>
									<td height="30" bgcolor="#3f3f3f">
									
									<p style="color: #FFFFFF; font-family: Verdana, Arial, Sans-Serif; font-size: 15px;">
										  &nbsp;Smart Education ....
									</p>
									</td>
								</tr>
								<tr>
									<td><img id="mainImg" src="../images/static/common/home_main3.jpeg"  />
									</td>
								</tr>
									<td height="30" bgcolor="#3f3f3f" align="right">
									<p style="color: #FFFFFF; font-family: Verdana, Arial, Sans-Serif; font-size: 15px;">
										  &nbsp;Smart Future ....  &nbsp;
									</p>
									</td>
								</tr>

							</table>

						</td>
					</tr>

				</table>
			</td>
			</tr>
			<tr>
			<td>
				<br />
				<table cellpadding="0" cellspacing="3" width="90%" border="0">
					<tr>
						<td style="vertical-align: top;" align="center">
							<div
								style="color: #FFFFFF; background-color: blue; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>Performance</span>

							</div>
							<p style="color: Blue">check your performance,
								strength and weakness points ...</p> 
						</td>

						<td style="vertical-align: top;" align="center">
							<div
								style="color: #FFFFFF; background-color: blue; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>Suggested Exercises</span>

							</div>
							<p style="color: Blue">look at most recommended exercise  ...</p>
						
						</td>
					
						<td style="vertical-align: top;" align="center">
							<div
								style="color: #FFFFFF; background-color: blue; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>Homework</span>

							</div>
							<p style="color: Blue">check your pending
								homework ...</p> 
	
						</td>
							<td style="vertical-align: top;" align="center">
							<div
								style="color: #FFFFFF; background-color: blue; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>Find Friends</span>

							</div>
							<p style="color: Blue">build your friends network  ...</p> 
							<br/>

						</td>
					</tr>
 
					<tr>
						<td style="vertical-align: top;" align="center">
							<img id="performance_img"	src="../images/static/common/performance.jpg" border="0" height="140"/>

						</td>

						<td style="vertical-align: top;" align="center">
							
							<img id="exercise_img" src="../images/static/common/exercise.jpeg" border="0" height="140"/>


						</td>
					
						<td style="vertical-align: top;" align="center">
							<img id="homework_img" src="../images/static/common/homework.jpeg" border="0" height="140"/>

						</td>
						<td style="vertical-align: top;" align="center">
								<img id="friends_img" src="../images/static/common/friends.jpeg" border="0" height="140"/>
						</td>
					</tr>

				</table>
				
			
							 
		
			<!--  /div-->
			</td>
			</tr>
			
			</table>
		</h:form>
	</f:view>
	<script type="text/javascript" >
							//alert(getImgWidth());
							//alert(document.documentElement.clientWidth);
							function adjust_width()
							{
								//document.getElementById("mainImg").width=window.innerWidth*90/100;
								
								  var width = window.innerWidth ||
					                document.documentElement.clientWidth ||
					                document.body.clientWidth;
					    var height = window.innerHeight ||
					                 document.documentElement.clientHeight ||
					                 document.body.clientHeight;
					    
					    
					    document.getElementById("mainImg").width=width*90/100;
					    //alert("hi")
					    //alert(document.getElementById("friends_img").width());
					  
					    
					    document.getElementById("performance_img").width=(width-8)*(90/100)/4;
					    document.getElementById("exercise_img").width=(width-8)*(90/100)/4;
					    document.getElementById("homework_img").width=(width-8)*(90/100)/4;
						document.getElementById("friends_img").width=(width-8)*(90/100)/4;
					    
					    /*
					    document.getElementById("performance_img").width=width*(90/100)/4;
					    document.getElementById("exercise_img").width=width*(90/100)/4;
					    document.getElementById("homework_img").width=width*(90/100)/4;
					    document.getElementById("friends_img").width=width*(90/100)/4;
							*/	
								
							};
							adjust_width();
							</script>


</body>
</html>