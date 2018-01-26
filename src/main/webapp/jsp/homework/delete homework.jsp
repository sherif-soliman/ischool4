<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<title>MCQ Exercise ... iSchool</title>
<f:loadBundle basename="stream.ischool.internationalization.login" var="msg" />

</head>
<body>

	<f:view>

		<h:form>
				
			<%@ include file="../../include/top_section.jsp"%>
		
			<div align="center">
			
				<table cellpadding="0" cellspacing="0" width="300">
					<tr>
						<td width="40%">
						</td>
						<td width="60%" align="left">
							<h:messages id="messages" errorClass="error_msg" infoClass="info_msg" warnClass="warning_msg"/>							
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<h:outputText  value="Pending Homework" /><br/><br/>
						</td>
					</tr>
					
					
					
					<tr>
						<td colspan="2" align="left">
							<h:dataTable id="homework"							
							width="97%"
							frame="below"
							cellpadding="0"
							cellspacing="0"
							var="trows"
							value="#{homework.homeworkDM}"
							rows="#{homework.homeworkCount}"
							>
						
								<h:column>
									<h:outputText value="#{trows.id}"/>&nbsp;&nbsp;&nbsp;       
								</h:column>
								<h:column>		
									<h:outputText value="#{trows.subject}"/>
								</h:column>
								<h:column>		
								
										
									<h:outputLink value="../../jsp/homework/homework_questions.jsp" 
										style="font-family: Verdana, Arial, Sans-Serif; font-size:12px;">
										<f:param name="subject" value="#{trows.subject}" />
										<f:param name="homeworkId" value="#{trows.id}" />
											Start Homework
									</h:outputLink>

								</h:column>							
							</h:dataTable>
									
						</td>
					</tr>
				</table>

				
				</div>
		</h:form>
	</f:view>
</body>
</html>