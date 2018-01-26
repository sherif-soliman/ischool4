<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Report Details... iSchool</title>

</head>
<body  class="main_body" onload="on_page_load();">

	<f:view>

		<h:form>

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
								<span>Report Details ....</span>

							</div>
							<br/>
							<h:outputText value="#{reportDetailsBean.reportContent}" escape="false"> </h:outputText>					
						<br/><br/>	
							

							<input type="button" value="        Print        " onclick="window.open(window.location.href.replace('report_details','report_details_print'),'Report');"/>
							
						<br/><br/>	
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