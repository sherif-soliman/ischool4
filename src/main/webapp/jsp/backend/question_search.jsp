<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Search Questions ... iSchool</title>


</head> 

<body onload="on_page_load();">

	<f:view>

		<h:form id="search_q_form">

			<table border="0" width="100%">
				<!--tr id="top_row">
					<td colspan="3">
					< %@ include
							file="../../include/top_section.jsp"%></td>
				</tr-->
				<tr id="main_row">
					<td id="left_area" style="vertical-align: top;">
					
							</td>
					<td id="middle_area" style="vertical-align: top;" width="100%">


						<div align="center" style="border: 0px solid black;">


							<div class="middle_menu_section" >
								<span>Questions ...</span>

							</div>
							<br/>
					<h:panelGrid columns="3">
					<h:inputText id="keyword" value="#{practiceMgrBean.questionKeyword}" />
						
							<h:commandButton id="searchQuestions" value="Search Questions"
									onclick="return check_keyword('search_q_form:keyword');"
												action="#{practiceMgrBean.searchQuestions}"></h:commandButton>
							
							<h:commandButton id="close" value="Back to Practice"
							action="#{practiceMgrBean.backToBractice}"></h:commandButton>
					</h:panelGrid>
					<br/>
						<h:dataTable id="searchedQuestions"
								width="100%" frame="below" cellpadding="2" cellspacing="2"
								var="trows" value="#{practiceMgrBean.searchedQuestions}"								
								rows="#{practiceMgrBean.searchedQuestions.rowCount}"
								rowClasses="odd_row,even_row" styleClass="fixed-size">

 
								<h:column>

									<h:outputText value="#{trows.id}" />

								</h:column>
								<h:column>

									<h:outputText value="#{trows.subject}" />

								</h:column>
																<h:column>

									<h:outputText value="#{trows.classYear}" />

								</h:column>
								<h:column>

									<h:outputText value="#{trows.userName}" />

								</h:column>
								<h:column>

									<h:outputText value="#{trows.creationDate}" />

								</h:column>
									<h:column >

									<h:outputText value="#{trows.questionText}"  />
									<br/><h:outputText value="#{trows.answer_1}" />
									<br/><h:outputText value="#{trows.answer_2}" />
									<br/><h:outputText value="#{trows.answer_3}" />
									<br/><h:outputText value="#{trows.answer_4}" />

								</h:column>
								
								<h:column>								
								<h:commandButton id="deleteQuestion" value="Delete"
												action="#{practiceMgrBean.deleteQuestion}" style="font-size:11px"
												rendered="#{trows.userName.equals(practiceMgrBean.getUserName())}">
								
								<f:param name="selectedQuestionIdUrlParam" value="#{trows.id}" ></f:param>				
								</h:commandButton>
								</h:column>
								
								<h:column>								
								<h:commandButton id="updateQuestion" value="Select"
												action="#{practiceMgrBean.openQuestionForUpdate}" style="font-size:11px">
								
								<f:param name="selectedQuestionIdUrlParam" value="#{trows.id}" ></f:param>				
								</h:commandButton>
								</h:column>
									

							</h:dataTable>
							
							
						</div>
					</td>
					<td id="right_area" style="vertical-align: top;">
						
					</td>
				</tr>
				<tr id="lower_row">
					<td colspan="3">
						<!--%@ include
							file="../../include/lower_section.jsp"%-->
					</td>
				</tr>
			</table>
		</h:form>
	</f:view>
</body>
</html>