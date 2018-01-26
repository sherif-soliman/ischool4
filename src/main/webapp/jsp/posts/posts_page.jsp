<%@ include file="../../include/main_include.jsp"%>
  
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>My Page ... iSchool</title>


</head>
<body onload="on_page_load();">

	<f:view>

	
			<table border="0" width="100%">
			<!--  tr id="top_row">
			<td colspan="3" >
				< %@ include file="../../include/top_section.jsp"%>
			</td>
			</tr-->
			<tr id="main_row">
					<!--  td id="left_area" style="vertical-align: top;" >
				
			</td -->
			
			<td id="middle_area" style="vertical-align: top;" width="55%">
			

			<div align="center" style=" border: 0px solid black; " >

			<h:form id="posts_form" enctype="multipart/form-data" onsubmit="show_progress_bar();">
		
				<h:panelGroup rendered="#{security.isAuthorized('send_post')}">
		<div class="middle_menu_section" >
					<span>News & Posts ...</span>
						
					</div>

					<table width="100%" border="0">
					<tr>
					<td align="left" colspan="2">
					<h:inputTextarea value="#{posts.newPostMsg}" style="width:98%;"/>
					</td>
					</tr>
				<h:panelGroup rendered="#{security.isAuthorized('posts.public_post')}">
				<tr>
				<td style="font-family: sans-serif;font-size: 15px;">
					Public Post
					</td>
					<td>
					<h:selectBooleanCheckbox  value="#{posts.publicPost}" />
					</td>
				</tr>
				</h:panelGroup>
				<tr>
					<td align="left" colspan="2">
					<br/>
					</td>
					</tr>
					<tr>
					
					<td>
						
					<h:commandButton id="sentToFriend" value="Post"
						action="#{posts.sentToFriends}"
						style="font-family: Verdana, Arial, Sans-Serif; font-size:15px; 
						color:black; "
						></h:commandButton>

						
					</td>
					
					<td  >
					<h:inputFile value="#{posts.part}" style="font-family: Verdana, Arial, Sans-Serif; font-size:15px; 
						color:black; " ></h:inputFile>
					
					</td>
					
					
					</tr>
										
					</table>
					
					<br/>
					</h:panelGroup>
				</h:form>
				<h:form >	
					
				<table cellpadding="0" cellspacing="2px" width="100%"  style="background-color:	#ececec;">
					
					<tr>
						<td width="40%">
						</td>
						<td width="60%" align="left">
							<h:messages id="messages" errorClass="error_msg" infoClass="info_msg" warnClass="warning_msg"/>							
						</td>
					</tr>
					<tr>
						<td colspan="2">
					
							
						</td>
					</tr>
					<tr>
						<td colspan="2" align="left" >
							<h:dataTable id="posts_table"							
							width="100%"
							frame="below"
							cellpadding="4"
							cellspacing="0"
							var="trows"
							value="#{posts.postsDM}"
							rows="#{posts.postsCount}"
							rowClasses="odd_row"
							border="0" style="vertical-align:top;"
							>
						
								<h:column >
							<h:outputText value="<table id='post_item' width='100%' border='0px' style='background-color: white;'><tr>" escape="false"/>
								 <h:outputText value="<td width='15%' style='vertical-align:top;'>" escape="false"/>
								  	<h:graphicImage url="../../images/dynamic/users/profile/#{loginBean.userProfile.schoolId}/#{trows.userName}" 
								  		width="40" ></h:graphicImage>
								<h:outputText value="</td>" escape="false"/>
								<h:outputText value="<td >" escape="false"/>
									<b><h:outputText value="#{trows.name} "  style="color: #0000CC;  
										font-family: Verdana, Arial, Sans-Serif; font-size:13px;"/>										
										<styless="color:gray;">posted ...</styless>
										</b>
								
									<br/><h:outputText value="#{trows.post}" style="color: #3A3A3A;  
										font-family: Verdana, Arial, Sans-Serif; font-size:13px; " escape="false"/>
								<h:outputText value="</td>" escape="false"/>		
							<h:outputText value="</tr>" escape="false"/>
							<h:outputText value="<tr ><td colspan='2' align='center'>" escape="false"
								rendered="#{trows.imaged}"	/>			
								
								
								
								  	<h:graphicImage id="post_image" url="../../images/dynamic/users/posts/#{trows.id}" 
								  		alt=" "  rendered="#{trows.imaged}" width="100%" ></h:graphicImage>
							<h:outputText value="</td></tr>" escape="false" rendered="#{trows.imaged}" />
							<h:outputText value="</table>" escape="false"/>	
								
								
								</h:column>
								
								
								
								<h:column rendered="#{security.isAuthorized('send_post')}">
								<h:commandButton image="../../images/static/common/delete.png"
									rendered="#{trows.getUserName().equals(posts.getUserName())}" action="#{posts.deletePost}"
								style="width:20px"
									>
								
								  	<f:param name="postId" value="#{trows.id}" ></f:param>
								 	<f:param name="hasImage" value="#{trows.imaged}" ></f:param>
								 	
								 
								 </h:commandButton>
								</h:column>
						
												
							</h:dataTable>
								
						</td>
					</tr>
					
				</table>
				</h:form>		
				</div>
				</td>
		<!--  td id="right_area" style="vertical-align: top;">
				
			</td -->
				</tr>
				<!--  tr id="lower_row">
			<td colspan="3">
				<%@ include file="../../include/lower_section.jsp"%>
			</td>
			</tr-->
			</table>		
		
	</f:view>	
</body>
</html>