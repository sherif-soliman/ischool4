<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Exam List ... iSchool</title>

</head>
<body onload="on_page_load();">

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
					<td id="middle_area" style="vertical-align: top;" width="55%">


						<div align="center" style="border:0">


						<div class="middle_menu_section" >								<span>Exams List ...</span>

							</div>
							<br/>
					<br/>
						<h:dataTable id="subjects_list"
								width="100%" frame="below" cellpadding="6" cellspacing="6"
								var="trows" value="#{examList.subjetcListDM}"
								rows="#{examList.noOfExamSubjects}"
								border="0" 
								>


								<h:column rendered="#{!examList.mobileDevice}">
								
									&nbsp;&nbsp;<h:graphicImage url="../../images/static/subjects/#{trows.toLowerCase()}.jpeg"  width="140"/>
									
								</h:column>	
								
								<h:column>
								
									<h:graphicImage url="../../images/static/subjects/#{trows.toLowerCase()}.jpeg"  width="100%" style="border:0;" rendered="#{examList.mobileDevice}"/>
								
								<h:dataTable id="exams_list"
								width="100%" frame="below" cellpadding="0" cellspacing="5"
								var="trows2" value="#{examList.getExamsListDM(trows)}"
								rows="#{tempExamsListDM.examsListSize}"
								rowClasses="odd_row,even_row"
								border="0">

								 
								<h:column>
								<h:outputLink value="../question/question.jsp" style="text-decoration: none;">
							
										<h:outputText value="#{trows} Exame: #{trows2}"></h:outputText>
										<f:param name="practiceId" value="#{trows2.substring(0,trows2.indexOf(':'))}" > </f:param>
										<f:param name="newRequest" value="EXAM" > </f:param>										
								</h:outputLink>
								</h:column>
								 
								
								
							</h:dataTable>
							<br/><br/>
								</h:column>
								
								<h:column rendered="#{!examList.mobileDevice}">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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