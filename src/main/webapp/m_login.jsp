<%@ include file="../../include/main_include.jsp"%>

<html >



<head>
<title>Home ... iSchool</title>





<f:loadBundle basename="stream.ischool.internationalization.home"
	var="bundle"/>
</head>
<body bgcolor="white" onresize="adjust_width();">


	<f:view locale="#{loginBean.locale}">

		<h:form >
			<!-- %@ include file="../include/top_section.jsp"% -->

			<!--  div align="center"-->
			<table cellpadding="0" cellspacing="0" width="100%" border="0" align="center" >
			<tr>
			<td>

			
				<table cellpadding="0" cellspacing="0" width="100%" border="0">

<tr>
<td>
<img  src="../images/static/common/ischool_logo.jpeg" class="logo_image" ></img>
</td>
</tr>
<tr>
<td height="20">

</td>
</tr>
					<tr>
						
						<td  align="left"><h:panelGrid border="0"
								columns="2"
								styleClass="login_panel"
								cellpadding="2" cellspacing ="4"
								>
								
								<h:outputText value="#{bundle.name}"
									styleClass="normal_lable"></h:outputText>
								<h:inputText value="#{loginBean.name}" >
								</h:inputText>
								<h:outputText value="#{bundle.password}"
									styleClass="normal_lable"></h:outputText>
								<h:inputSecret value="#{loginBean.password}">
								</h:inputSecret>
								<h:outputText value=""
									styleClass="normal_lable"></h:outputText>
								<h:commandButton value="#{bundle.login}"
									action="#{loginBean.checkCredentials}"></h:commandButton>
							</h:panelGrid></td>
							
					</tr>
<tr>
<td height="20">

<div id="android_div" style="margin-left: 4px; display: none;">		
<br/>			
					<a href="https://play.google.com/store/apps/details?id=mobile.ischool.ischool">
					<div style="color: #FFFFFF; background-color:#0066ff; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; width:99%; height: 50px; line-height: 50px; boarder: 1; " align="center">
						
								<span style="display: inline-block;height: 100%;vertical-align: middle;">Download iSchool App ...  &nbsp;&nbsp;</span><img id="google" src="../images/static/common/android-logo-transparent.png" border="0" height="30px" style="vertical-align: middle;"/>
							</div>
							</a>
							<br/>
							</div>
							
							
</td>
</tr>
					<tr>					
					<td >
					<table border="0">
						<tr>
							<td ></td>
						<td>
							<a href="/faces/jsp/registration/registration.jsp" style="color: blue; text-decoration: none; 
								font-family: Verdana, Arial, Sans-Serif; " >
								 New User..
							</a>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="#" style="color: blue; text-decoration: none; 
								font-family: Verdana, Arial, Sans-Serif; " onclick="document.getElementById('forget_password').style.display=''">
								Forget Password..
							</a>
							
						</td>
						
						</tr>
					</table>
					<div id="forget_password" align="center" style=" display:none;">
				<br/>
				<h:panelGrid border="0" columns="3" style="font-family: Verdana, Arial, Sans-Serif; font-size:14px;">
					
								<h:outputText value="Enter your user name:"
									styleClass="normal_lable"></h:outputText>
								
									
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
			
						<td align="left"><h:messages id="messages"
								errorClass="error_msg" infoClass="info_msg"
								warnClass="warning_msg" /></td>
		</tr>
		
							<tr>
			
			<td align="left">
			
				
				<h:panelGrid rendered="#{loginBean.timeout}">
				<h:outputText value="#{bundle.timeout}" 
				 styleClass="info_msg"> 
				</h:outputText>
				<br/>
			</h:panelGrid>	
			</td>
			
		</tr>
					
					<tr>
						<td >
							<table id="img_table">
							
								<tr>
									<td height="10" bgcolor="#3f3f3f">
									
									<p style="color: #FFFFFF; line-height:0" >
										  &nbsp;Smart Education ...
									</p>
									</td>
								</tr>
								<tr>
									<td><img id="mainImg" src="../images/static/common/home_main3.jpeg"  />
									</td>
								</tr>
									<td height="10" bgcolor="#3f3f3f" align="right">
									<p style="color: #FFFFFF; line-height:0" >
										  &nbsp;Smart Future ...  &nbsp;
									</p>
									</td>
								</tr>

							</table>

						</td>
					</tr>
<!--  
<tr>
<td height="30">

</td>
</tr>

<tr>
									<td height="10" align="center">
									<p style="color: black; font-family: Verdana, Arial, Sans-Serif; font-size: 10px;">
										  &nbsp;powered by Digital Insight&nbsp;
									</p>
									</td>
								</tr>
								-->
				</table>
			</td>
			</tr>
		
			</table>
			
	<br/><br/>
				<table cellpadding="0" cellspacing="0" width="100%" border="0" align="center" >
	
	<tr>
						<td style="vertical-align: top;" align="center">
							<img id="performance_img"	src="../images/static/common/m_performance.jpg" border="0" height="35"/>

						</td>

						<td style="vertical-align: top;" align="center">
							
							<img id="exercise_img" src="../images/static/common/m_exercise.jpeg" border="0" height="35"/>


						</td>
					
						<td style="vertical-align: top;" align="center">
							<img id="homework_img" src="../images/static/common/m_homework.png" border="0" height="35"/>

						</td>
						<td style="vertical-align: top;" align="center">
								<img id="friends_img" src="../images/static/common/m_friends.jpeg" border="0" height="35"/>
						</td>
					</tr>

	<tr>
			<td colspan="4" align="center" style="font-family: Verdana, Arial, Sans-Serif; font-size:9px;">
<br/>
			<br/>© 2015 iSchool. All Rights Reserved.
			</td>
			</tr>
	</table>
	<br/><br/>
			
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
					    document.getElementById("mainImg").width=width-20;
					    
					    //alert ('window: '+window.innerWidth);
					    //alert ('doc: '+document.documentElement.clientWidth);
					    //alert ('body: '+ document.body.clientWidth);
					    
					    //alert(width);
					    //alert(height);
					    //alert(document.getElementById("friends_img").width());
					  
					    /*
					    document.getElementById("performance_img").width=(width-8)*(90/100)/4;
					    document.getElementById("exercise_img").width=(width-8)*(90/100)/4;
					    document.getElementById("homework_img").width=(width-8)*(90/100)/4;
						document.getElementById("friends_img").width=(width-8)*(90/100)/4;
					    */
					    /*
					    document.getElementById("performance_img").width=width*(90/100)/4;
					    document.getElementById("exercise_img").width=width*(90/100)/4;
					    document.getElementById("homework_img").width=width*(90/100)/4;
					    document.getElementById("friends_img").width=width*(90/100)/4;
							*/	
								
							};
							adjust_width();
							
							var ua = navigator.userAgent.toLowerCase();
							var isAndroid = ua.indexOf("android") > -2; //here it will always appear, if want to display from android devices only change -2 to -1 
							//alert(ua);							
							if(isAndroid) {
								// Do something!
								// Redirect to Android-site?
								//window.location = 'http://android.davidwalsh.name';
								document.getElementById('android_div').style.display=''
							}
							
							
							</script>
</body>
</html>