<%@ include file="../../include/main_include.jsp"%>

<html >

<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Manage Practice ... iSchool</title>

<script type="text/javascript">
function toggle_leftmenu()
{
	//alert("dsip_mode");
	var disp_mode=document.getElementById('left_menu').style.display;
	//alert(disp_mode);
	if(disp_mode=='')
	{		
		document.getElementById('left_menu').style.display='none';
		return;
	}else if(disp_mode=='none')
	{		
		document.getElementById('left_menu').style.display='';
		return;
	}
	return;
}
</script>


</head>
<body bgcolor="white"  onresize="adjust_width();">

	<f:view>

		

			<table id="header_table" border="0" width="100%">
				<tr id="top_row">
					
					<td background="gray" style="padding-right: 8px;">
					
					<a href="#"   onclick="toggle_leftmenu();"><img  src="../../images/static/common/menu_icon.png" class="icon_image" ></img></a>
					
					<a href="#" style="color: #FFFFFF; text-decoration: none" onclick="openMobileLink('../posts/posts_page.jsp');">
						<img  src="../../images/static/common/ischool_logo.jpeg" class="logo_image" ></img>
					</a>
					
							</td>
							<td align="center">
				
<img id="busy_img" alt="" src="../../images/static/common/busy.gif" style="display:none;" />
</td>
							
			<td align="right">				
					<h:graphicImage url="../../images/dynamic/users/profile/#{loginBean.userProfile.schoolId}/#{loginBean.userName}"  styleClass="profile_image"></h:graphicImage>
					</td>
				</tr>
				<tr>
				<td colspan="2" style="padding-left: 6px; color: blue;  
				font-family: Verdana, Arial, Sans-Serif; font-size:15px;">
					
					<span>Welcome  <h:outputText value="#{loginBean.userProfile.name}"/> ...</span>
					
				</td>
				
				</tr>
			</table>
			
			<table id="frame_table" border="0" width="100%">
				
				<tr id="main_row">
					
					<td id="left_menu" style="vertical-align: top; display:none;" >
						<h:form>
					<div  align="left" style="color: #FFFFFF; background-color: #000066;" 
					onclick="toggle_leftmenu();" >
				<table border="0" style="color: #FFFFFF;  background-color: #FFFFFF; 
					font-family: Verdana, Arial, Sans-Serif; 
					font-weight: bold;
					height:30px; line-height: 30px;
					 
					"
					cellpadding="3"
					
					width="160px"
					>
					
					<tr  bgcolor="#F2F2F2"><td><h:outputLink value="#" styleClass="left_manu_item" onclick="openMobileLink('../posts/posts_page.jsp');">
						Home
					</h:outputLink></td></tr>
						
					<h:panelGroup rendered="#{security.isAuthorized('top_section.friends')}" >
					<tr bgcolor="#F2F2F2"><td><h:outputLink value="#"  styleClass="left_manu_item" onclick="openMobileLink('../friends/friends.jsp');">
						Friends
					</h:outputLink></td></tr>
					</h:panelGroup>				
					
					<tr bgcolor="#F2F2F2"><td><h:outputLink value="#"  styleClass="left_manu_item" onclick="openMobileLink('../exercise/exercise_list.jsp');">
						Exercises
					</h:outputLink></td></tr>					
					<tr bgcolor="#F2F2F2"><td><h:outputLink value="#"  styleClass="left_manu_item" onclick="openMobileLink('../exam/exam_list.jsp');">
						Exams
					</h:outputLink></td></tr>
					
					<tr bgcolor="#F2F2F2"><td><h:outputLink value="#"  styleClass="left_manu_item" onclick="openMobileLink('../homework/homework_list.jsp');">
						Homework
					</h:outputLink></td></tr>
					<tr bgcolor="#F2F2F2"><td><h:outputLink value="#"  styleClass="left_manu_item" onclick="openMobileLink('../reports/reports_list.jsp');">
						Reports
					</h:outputLink></td></tr>
					<h:panelGroup rendered="#{security.isAuthorized('top_section.followup')}" >
					<tr bgcolor="#F2F2F2"><td><h:outputLink value="#"  styleClass="left_manu_item" onclick="openMobileLink('../followup/followup.jsp');">
						Follow Up
					</h:outputLink></td></tr>
					</h:panelGroup>
					<h:panelGroup rendered="#{security.isAuthorized('top_section.manage_practice')}" >
					<tr bgcolor="#F2F2F2"><td><h:outputLink value="#"  styleClass="left_manu_item" onclick="openMobileLink('../backend/practice_manager.jsp');">
						Manage Practice
					</h:outputLink></td></tr>
					</h:panelGroup>
					<h:panelGroup rendered="#{security.isAuthorized('top_section.setup')}" >
					<tr bgcolor="#F2F2F2"><td><h:outputLink value="#"  styleClass="left_manu_item" onclick="openMobileLink('../setup/lookup_setup_manager.jsp');">
						Setup
					</h:outputLink></td></tr>
					</h:panelGroup>
				
					<h:panelGroup rendered="#{security.isAuthorized('top_section.admin')}" >
					<tr bgcolor="#F2F2F2"><td><h:outputLink value="#"  styleClass="left_manu_item" onclick="openMobileLink('../admin/admin_manager.jsp');">
						Admin
					</h:outputLink></td></tr>
					</h:panelGroup>	
					<h:panelGroup rendered="#{security.isAuthorized('top_section.activity_report')}" >
					<tr bgcolor="#F2F2F2"><td><h:outputLink value="#"  styleClass="left_manu_item" onclick="openMobileLink('../monitor/activity_report.jsp');">
						Activity Report
					</h:outputLink></td></tr>
					</h:panelGroup>	
					
					<tr bgcolor="#F2F2F2"><td><h:commandLink action="#{loginBean.logout}" value="Logout" styleClass="left_manu_item"  style="color: red;" ></</h:commandLink></td></tr>
					
				</table>
			</div>
					</h:form>
					
					</td>
					<td id="middle_area" style="vertical-align: top;" width="100%">


						<div  align="center" style="border: 0px solid black;">
 
 <iframe id="main_iframe" src="../posts/posts_page.jsp" style="width: 100%; height:420px; padding:0px; margin:0px; border: 0px"  
 scrolling="auto" frameborder="0px" 
 marginwidth="0" marginheight="0" align="top" hspace="0" vspace="0"
 onload='javascript:resizeMobileIframe(this);'>
</iframe> 

		
						</div>
					</td>
					
				</tr>
	</table>
				<!--  
				<table border="0" width="100%">
	
				<tr id="lower_row">
					<td colspan="2"><%@ include
							file="../../include/lower_section.jsp"%>
					</td>
				</tr>
			</table>
	-->
	
	</f:view>
</body>
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
					    document.getElementById("frame_table").width=width-20;
					    document.getElementById("header_table").width=width-24;
										    
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
							</script>
</html>