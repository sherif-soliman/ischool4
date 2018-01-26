<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Public Images ... iSchool</title>

</head>
<body onload=" window.parent.scrollTo(0, 0);">

	<f:view>

		<h:form >

			<table border="0" width="100%">

			<!--
				<tr id="top_row">
					<td colspan="3">
					< %@ include
							file="../../include/top_section.jsp"%></td>
				</tr>
				-->
				<tr id="main_row">
					<td id="left_area" style="vertical-align: top;">
					
							</td>
					<td id="middle_area" style="vertical-align: top;" width="100%">


						<div align="center" style=" border: 0px solid black;">


							<div class="middle_menu_section" >
								<span>Public Images ...</span>

							</div>
							<br/>
					<h:panelGrid columns="3">
					<h:inputText value="#{practiceMgrBean.imageTags}" />
						&nbsp;
							<h:commandButton id="searchPublicImages" value="Search Public Images"
												action="#{practiceMgrBean.searchPublicImages}"></h:commandButton>
					</h:panelGrid>
					<br/>
						<h:dataTable id="images"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{practiceMgrBean.publicImages}"
								rows="#{practiceMgrBean.noOfImagesRows}"
								rowClasses="odd_row,even_row">

								<h:column>

										<h:graphicImage url="#{trows}" width="60"/>

								</h:column>
								<h:column>

									<h:outputText value="#{trows.substring(trows.indexOf('_pool')+6)}" />

								</h:column>
								<h:column>
								
															
								<h:commandButton id="selectImage" value="Select Image"
												action="#{practiceMgrBean.selectImage}">
								
								<f:param name="selectedImageUrlParam" value="#{trows}" ></f:param>				
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