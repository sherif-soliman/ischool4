<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Exercise List ... iSchool</title>
 
</head>
<body  class="main_body">

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
					<%@ include
							file="../../include/left_section.jsp"%>
							</td -->
					<td id="middle_area" style="vertical-align: top;" width="55%">


						<div align="center" style="border: 1px solid black;">


							<div id="exercise_list"
								style="color: #FFFFFF; background-color: #0033CC; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>Exercise List ....</span>

							</div>
							<br/>
					<br/>
						<h:dataTable id="subjects_list"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{exerciseList.subjetcListDM}"
								rows="#{exerciseList.noOfExerciseSubjects}"
								border="0" 
								>


								<h:column >
								
									&nbsp;&nbsp;<h:graphicImage url="../../images/static/subjects/#{trows.toLowerCase()}.jpeg"  width="140"/>
									
								</h:column>	
								
								<h:column>							
								<h:dataTable id="exercises_list"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows2" value="#{exerciseList.getExercisesListDM(trows)}"
								rows="#{tempExercisesListDM.exercisesListSize}"
								rowClasses="odd_row,even_row"
								>

								 
								<h:column >
								<h:outputLink value="./exercise.jsp">
							
										<h:outputText value="#{trows}.   #{trows2.substring(trows2.indexOf(':')+1)}"></h:outputText>
										<f:param name="practiceId" value="#{trows2.substring(0,trows2.indexOf(':'))}" > </f:param>
										<f:param name="newRequest" value="EXERCISE" > </f:param>										
								</h:outputLink>
								</h:column>
								 
								
								
							</h:dataTable>
							<br/><br/>
								</h:column>
								
								
							</h:dataTable>
							
							
						</div>
					</td>
					<!--  td id="right_area" style="vertical-align: top;">
						<%@ include
							file="../../include/right_section.jsp"%>
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