<%@ include file="../../include/main_include.jsp"%>

<html>
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
<body bgcolor="white">

	<f:view>

		

			<table id="header_table" border="0" width="100%">
				<tr id="top_row">
					
					<td background="gray" style="padding-right: 8px;">
					
					<a href="#" style="color: #FFFFFF; text-decoration: none" 
					onclick="toggle_leftmenu();">
					
					<img  src="../../images/static/common/menu_icon.png" width="40" 
					
					></img>
					
					</a>
					
					<img  src="../../images/static/common/ischool_logo.jpeg" width="100"></img>
							</td>
							<td align="right">
					<h:graphicImage url="../../images/dynamic/users/profile/#{loginBean.userProfile.schoolId}/#{loginBean.userName}" width="40"></h:graphicImage>
					</td>
				</tr>
			</table>
			<table id="frame_table" border="0" width="100%">
				
				<tr id="main_row">
					
					<td id="left_menu" style="vertical-align: top; display:none;" >
						
					<div id="left_menu" align="left" style="color: #FFFFFF; background-color: #000066;" 
					onclick="toggle_leftmenu();">
				<h:panelGrid border="0" columns="1" style="color: #FFFFFF;  background-color: #000066; 
					font-family: Verdana, Arial, Sans-Serif; font-size:14px;
					font-weight: bold;
					height:30px; line-height: 30px;"
					
					>
					
					<a href="../../m_home.jsp" style="color: #FFFFFF; text-decoration: none" >
						Home
					</a>
					
						
					<a href="#" style="color: #FFFFFF; text-decoration: none" onclick="document.getElementById('main_iframe').src ='../friends/friends.jsp'">
						Friends
					</a>					
							
					<a href="#" style="color: #FFFFFF; text-decoration: none" onclick="document.getElementById('main_iframe').src ='../exercise/exercises_list.jsp'">
						Exercises
					</a>					
					<a href="#" style="color: #FFFFFF; text-decoration: none" onclick="document.getElementById('main_iframe').src ='../exam/exam_list.jsp'">
						Exams
					</a>
					
					<a href="#" style="color: #FFFFFF; text-decoration: none" onclick="document.getElementById('main_iframe').src ='../homework/homework_list.jsp'">
						Homework
					</a>
					<a href="#" style="color: #FFFFFF; text-decoration: none" onclick="document.getElementById('performance').style.display=''">
					
						Performance
					</a>
					
					<a href="#" style="color: #FFFFFF; text-decoration: none" onclick="document.getElementById('main_iframe').src ='../posts/posts_page.jsp'">
						Posts
					</a>
					<a href="#" style="color: #FFFFFF; text-decoration: none" onclick="document.getElementById('main_iframe').src ='../backend/practice_manager.jsp'">
						Manage Practice
					</a>
					
					<h:outputText value="School"></h:outputText>
					<h:outputText value="Search"></h:outputText>
				</h:panelGrid>
			</div>
					
					</td>
					<td id="middle_area" style="vertical-align: top;" width="98%">


						<div  align="center" style="border: 0px solid black;">
 
 <iframe id="main_iframe" src="../posts/posts_page.jsp" style="width: 100%; height:420px; padding:0px; margin:0px; border: 0px"  
 scrolling="auto" frameborder="0px" 
 marginwidth="0" marginheight="0" align="top" hspace="0" vspace="0"
 >
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
							function getImgWidth()
							{
								//document.getElementById("mainImg").width=window.innerWidth*90/100;
								
								  var width = window.innerWidth ||
					                document.documentElement.clientWidth ||
					                document.body.clientWidth;
					    var height = window.innerHeight ||
					                 document.documentElement.clientHeight ||
					                 document.body.clientHeight;
					    document.getElementById("frame_table").width=width-20;
					    document.getElementById("header_table").width=width-20;
										    
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
							getImgWidth();
							</script>
</html>