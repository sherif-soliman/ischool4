<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<title>iSchool ... Homework</title>
<f:loadBundle basename="stream.ischool.internationalization.login" var="msg" />
</head>
<body>

	<f:view>

		<h:form >
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
							<h:outputText  value="#{homeworkQuestions.questionText}" />
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
							value="#{homeworkQuestions.answersDM}"
							rows="#{homeworkQuestions.rowCount}"
							>
						
								<h:column>
								  	
									<h:selectBooleanCheckbox value="#{trows.selected}" />
									
									[<h:outputText value="#{trows.id}"/>]&nbsp;&nbsp;&nbsp;       
									
									<h:outputText value="#{trows.answerText}"/>
									
								</h:column>							
							</h:dataTable>
									
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<h:outputText value="Question is Correctly Answered .." style="color:green" rendered="#{homeworkQuestions.showCorrectAnswerMessage}"/>
							<h:outputText value="Question is Wrongly Answered .." style="color:red" rendered="#{homeworkQuestions.showWrongAnswerMessage}"/>
						</td>
						<tr>
						<td colspan="2" align="left">
							<h:dataTable id="correctAnswers"
							width="97%"
							frame="below"
							cellpadding="0"
							cellspacing="0"
							var="correctAnswer"
							value="#{homeworkQuestions.correctAnswersDM}"
							rows="#{homeworkQuestions.correctAnswersrowCount}"							
							rendered="#{homeworkQuestions.reviewMode}" 
							>
								<h:column>
									
									<f:facet name="header">
										<h:outputText value="Correct Answer .."/>									
									</f:facet>
									[<h:outputText value="#{correctAnswer.id}"/>]&nbsp;&nbsp;&nbsp;
									<h:outputText value="#{correctAnswer.answerText}"/>
										
									
								</h:column>							
							</h:dataTable>
									
						</td>
					</tr>
				</table><br>
				
				<h:panelGrid border="0" columns="3">
				<h:commandButton id="previous" value="Previous Question" 
									action="#{homeworkQuestions.moveToPreviousQuestion}" rendered="#{homeworkQuestions.notFirstQuestion}"></h:commandButton>
									
				<h:commandButton id="next" value="Next Question" 
									action="#{homeworkQuestions.moveToNextQuestion}" rendered="#{homeworkQuestions.notLastQuestion}"></h:commandButton>
									
									<h:commandButton id="results" value="Show Results" 
									action="#{homeworkQuestions.showResults}" rendered="#{homeworkQuestions.lastQuestion}"></h:commandButton>	
				</h:panelGrid>

				
							<h:outputText value="#{homeworkQuestions.result}" rendered="#{homeworkQuestions.resultMode}" />
				
				<h:panelGrid border="0" columns="3" rendered="#{homeworkQuestions.resultMode}">
				<h:commandButton id="review" value="Review Results" 
					action="#{homeworkQuestions.reviewMyAnswers}">
				</h:commandButton>
				
				<h:commandButton id="close" value="Close" 
					action="#{homeworkQuestions.reviewMyAnswers}" onclick="Popup=window.close(); " >
				</h:commandButton>
				
				<h:commandButton id="save" value="Save" 
					action="#{homeworkQuestions.saveHomework}">
				</h:commandButton>
				
				</h:panelGrid><br>
				
				</div>
		</h:form>
	</f:view>
</body>
</html>