<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Full Reports List ... iSchool</title>
 
</head>
<body  class="main_body" onload="on_page_load();">

	<f:view>

		<h:form onsubmit="show_progress_bar()">

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
								<span>Full Reports ....</span>

							</div>
							<br/>
							
				<h:dataTable id="full_reports"
								width="100%" frame="below" cellpadding="5" cellspacing="0"
								var="report" value="#{practiceReportsListBean.practiceReportsListDM}"
								
								rowClasses="odd_row,even_row" 
								border="0"
								>

								 
								<h:column >				
										
									<h:outputLink value="./report_details.jsp" onclick="show_progress_bar()">
							
											<h:outputText value="View Questions (#{report.id})"></h:outputText>																				
											<f:param name="report_id" value="#{report.reportId}" > </f:param>
											<f:param name="practice_id" value="#{report.id}" > </f:param>
											<f:param name="creation_date" value="#{report.creationDate}" > </f:param>
											<f:param name="practice_type" value="#{practiceReportsListBean.practiceType}" > </f:param>
											<f:param name="mode" value="questions_view" > </f:param>										
									</h:outputLink>																			
								</h:column>
								<h:column >				
									<h:outputText value="#{report.subject}"></h:outputText>																				
								</h:column>
																<h:column >				
									<h:outputText value="#{report.creationDate}"></h:outputText>																				
								</h:column>
												 
								<h:column >
								
								<h:outputLink value="./report_details.jsp" onclick="show_progress_bar()">
							
										<h:outputText value="View Details"></h:outputText>																				
										<f:param name="report_id" value="#{report.reportId}" > </f:param>
										<f:param name="practice_id" value="#{report.id}" > </f:param>
										<f:param name="creation_date" value="#{report.creationDate}" > </f:param>
										<f:param name="practice_type" value="#{practiceReportsListBean.practiceType}" > </f:param>										
								</h:outputLink>
								</h:column>	
								
							</h:dataTable>
					
<br/>	
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