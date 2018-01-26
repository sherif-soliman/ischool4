<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Exercise List ... iSchool</title>
 
</head>
<body  class="main_body" onload="on_page_load();">

	<f:view>

		<h:form >

			<table border="0" width="100%">
				<!--  tr id="top_row">
					<td colspan="3">
					<%@ include
							file="../../include/top_section.jsp"%></td>
				</tr -->
				<tr id="main_row">
					<!--  td id="left_area" style="vertical-align: top;">
					
							</td -->
					<td id="middle_area" style="vertical-align: top;" width="100%">


						<div align="center" style="border: 0px solid black;">

						<div class="middle_menu_section" >
								<span>Exercise List ...</span>

							</div>
							<br/>
					
					
					<h:graphicImage url="../../images/static/subjects/#{subjectExerciseList.subject.toLowerCase()}.jpeg"  width="100%" style="border:0;" rendered="#{exerciseList.mobileDevice}"/>
					
					<h:graphicImage url="../../images/static/subjects/#{subjectExerciseList.subject.toLowerCase()}.jpeg"  width="140" style="border:0;" rendered="#{!exerciseList.mobileDevice}"/>
					
					<br/>
					<br/>
						
						
							
							 <h:dataTable id="exercises_list"
								width="100%" frame="below" cellpadding="5" cellspacing="0"
								var="trow" value="#{subjectExerciseList.subjectExercisesListDM}"
								rows="#{subjectExerciseList.subjectExercisesListDM.rowCount}"
								rowClasses="odd_row,even_row" 
								headerClass="header_row"
								border="0"
								style="align:center;"
								>

								
								
								<h:column  >
										<h:outputText value="#{trow.substring(0,trow.indexOf(':'))}"></h:outputText>
							
								</h:column>
								
								<h:column >
										<h:outputText value="#{trow.substring(trow.indexOf(':')+1,trow.indexOf(' -'))}"></h:outputText>
							
								</h:column>
								
								
								 
								<h:column >
									<h:outputLink value="../question/question.jsp">
							
										<h:outputText value="#{trow.substring(trow.indexOf(' -')+2)}"></h:outputText>
										<f:param name="practiceId" value="#{trow.substring(0,trow.indexOf(':'))}" > </f:param>
										<f:param name="newRequest" value="EXERCISE" > </f:param>										
								</h:outputLink>
								</h:column>
								 
								
								
							</h:dataTable>
							
						
							
							
						</div>
					</td>
					<!--  td id="right_area" style="vertical-align: top;">
						
					</td -->
				</tr>
				<!--  tr id="lower_row">
					<td colspan="3">
						<%@ include
							file="../../include/lower_section.jsp"%>
					</td>
				</tr -->
			</table>
		</h:form>
	</f:view>
	
</body>
</html>