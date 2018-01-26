<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Student Performance ... iSchool</title>
<f:loadBundle basename="stream.ischool.internationalization.login" var="msg" />

</head>
<body>

	<f:view>

		<h:form enctype="multipart/form-data">

			<table border="0" width="100%">
			<tr id="top_row">
			<td colspan="3" >
				<%@ include file="../../include/top_section.jsp"%>
			</td>
			</tr>
			<tr id="main_row">
			<td id="left_area" style="vertical-align: top;" >
				<%@ include file="../../include/left_section.jsp"%>
			</td>
			<td id="middle_area" style="vertical-align: top;" width="55%">
			

			<div align="center" style="margin: 10px; border: 1px solid black; " >


	<div id="new_post" style="color: #FFFFFF;  background-color: #0033CC; 
					font-family: Verdana, Arial, Sans-Serif; font-size:15px;
					height:30px; line-height: 30px;
					boarder:1; "
					>
					<span>Overall Performance / Subject ...</span>
						
					</div>
					<table width="100%" border="0">
					<tr>
					<td align="left">
					<h:graphicImage url="../../images/users/profile/#{loginBean.userProfile.schoolId}/#{loginBean.userName}" width="40"></h:graphicImage>
					</td>
					<td align="left" colspan="2" width="100%">
					<h:inputTextarea value="#{posts.newPostMsg}" style="width:98%;"/>
					</td>
					</tr>
				
					<tr>
					
					<td colspan="3" align="right">
					<h:inputFile value="#{posts.part}"></h:inputFile>
					
					</td>
					
					
					</tr>
					<tr>
					<td colspan="3">
					
						<h:panelGrid border="0" columns="3">
					<h:commandButton id="sentToFriend" value="share with friends"
						action="#{posts.sentToFriends}"
						></h:commandButton>

						</h:panelGrid>
					</td>
					
					</tr>
					</table>
					
	<div style="color: #FFFFFF;  background-color: #0033CC; 
					font-family: Verdana, Arial, Sans-Serif; font-size:15px;
					height:30px; line-height: 30px;
					boarder:1; "
					>
					<span>Posts ...</span>
						
					</div>
					
				<table cellpadding="0" cellspacing="2px" width="100%" >
					
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
							<h:dataTable id="questions"							
							width="100%"
							frame="below"
							cellpadding="4"
							cellspacing="0"
							var="trows"
							value="#{posts.postsDM}"
							rows="#{posts.postsCount}"
							rowClasses="odd_row,even_row"
							border="0" style="vertical-align:top;"
							>
						
								<h:column >
								  	<h:graphicImage url="../../images/users/profile/#{loginBean.userProfile.schoolId}/#{trows.userName}" 
								  		width="60" ></h:graphicImage>
								</h:column>
								<h:column >
									<b><h:outputText value="#{trows.userName} posted ..."  style="color: #0000CC;  
										font-family: Verdana, Arial, Sans-Serif; font-size:13px;"
									/></b>
								
									<br/><h:outputText value="#{trows.post}" style="color: #0000FF;  
										font-family: Verdana, Arial, Sans-Serif; font-size:13px;"/>
									
								</h:column>		
								<h:column >
								  	<h:graphicImage url="../../images/users/posts/#{trows.id}" 
								  		width="160" alt=" " rendered="#{trows.imaged}"></h:graphicImage>
								</h:column>					
							</h:dataTable>
									
						</td>
					</tr>
					
				</table>
						
				</div>
				</td>
		<td id="right_area" style="vertical-align: top;">
				<%@ include file="../../include/right_section.jsp"%>
			</td>
			</tr>
			<tr id="lower_row">
			<td colspan="3">
				<%@ include file="../../include/lower_section.jsp"%>
			</td>
			</tr>
			</table>			
		</h:form>
	</f:view>
</body>
</html>