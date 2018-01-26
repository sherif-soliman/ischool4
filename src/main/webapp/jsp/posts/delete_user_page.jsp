<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>My Page ... iSchool</title>
<f:loadBundle basename="stream.ischool.internationalization.login" var="msg" />

</head>
<body>

	<f:view>

		<h:form>

			<table border="0" width="100%">
			<tr id="top_row">
			<td colspan="3" >
				<%@ include file="../../include/top_section.jsp"%>
			</td>
			</tr>
			<tr id="main_row">
			<td id="left_area" style="vertical-align: top;">
				<%@ include file="../../include/left_section.jsp"%>
			</td>
			<td id="middle_area" style="vertical-align: top;" width="55%">
			

			<div align="center" style="margin: 10px; border: 1px solid black; ">

	<div style="color: #FFFFFF;  background-color: #0033CC; 
					font-family: Verdana, Arial, Sans-Serif; font-size:15px;
					height:30px; line-height: 30px;
					boarder:1; "
					>
					<span>Posts ...</span>
						
					</div>
					<br/>
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
						<td colspan="2" align="left">
							<h:dataTable id="questions"							
							width="97%"
							frame="below"
							cellpadding="0"
							cellspacing="0"
							var="trows"
							value="#{posts.postsDM}"
							rows="#{posts.postsCount}"
							>
						
								<h:column>
								  	<h:graphicImage url="../../images/users/ahmad/profile2.jpg" width="40"></h:graphicImage>
								</h:column>
								<h:column>
									<h:outputText value="#{trows.userName} posted ..."  style="color: #0000CC;  
										font-family: Verdana, Arial, Sans-Serif; font-size:13px;"
									/>
								</h:column>
								<h:column>
									<br/><h:outputText value="#{trows.post}" style="color: #0000FF;  
										font-family: Verdana, Arial, Sans-Serif; font-size:13px;"/>
									
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