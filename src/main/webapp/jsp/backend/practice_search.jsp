<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Public Images ... iSchool</title>

</head>
<body onload="on_page_load();">

	<f:view>

		<h:form >

			<table border="0" width="100%">
				<!--   tr id="top_row">
					<td colspan="3">
					< %@ include
							file="../../include/top_section.jsp"% ></td>
				</tr -->
				<tr id="main_row">
					<td id="left_area" style="vertical-align: top;">
					
							</td>
					<td id="middle_area" style="vertical-align: top;" width="100%">


						<div align="center" style=" border: 0px solid black;">


							<div class="middle_menu_section" >
								<span>Practice List ...</span>

							</div>
							<br/>
						<h:commandButton id="close" value="Back to Practice"
							action="#{practiceMgrBean.backToBractice}"></h:commandButton>
					<br/><br/>
						<h:dataTable id="practiceList"
								width="100%" frame="below" cellpadding="2" cellspacing="2"
								var="trows" value="#{practiceMgrBean.practiceList}"
								rows="#{practiceMgrBean.practiceList.rowCount}"
								rowClasses="odd_row,even_row">


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
								
								<h:column>								
								<h:commandButton id="deletePractice" value="Delete Practice"
												action="#{practiceMgrBean.deletePractice}"
												rendered="#{trows.userName.equals(practiceMgrBean.getUserName())}">
								
								<f:param name="selectedPracticeIdUrlParam" value="#{trows.id}" ></f:param>				
								</h:commandButton>
								</h:column>
								
								<h:column>								
								<h:commandButton id="updatePractice" value="Select Practice"
												action="#{practiceMgrBean.updatePractice}">
								
								<f:param name="selectedPracticeIdUrlParam" value="#{trows.id}" ></f:param>				
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