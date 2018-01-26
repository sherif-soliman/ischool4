
<%@ include file="../../include/main_include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Role Management ... iSchool</title>


</head>
<body onload="on_page_load();"> 

	<f:view>

		<h:form id="admin_form">

			<table border="0" width="100%">
			<!--  tr id="top_row">
			<td colspan="3" >
				< %@ include file="../../include/top_section.jsp"%>
			</td>
			</tr-->
			<tr id="main_row">
					<!--  td id="left_area" style="vertical-align: top;" >
				
			</td -->
			
			<td id="middle_area" style="vertical-align: top;" width="55%">
			
						<div align="center" style="border: 0;">
 

						<div class="middle_menu_section" >
								<span>Search For New Accounts ...</span>

							</div>  
							<br/>
					<h:panelGrid columns="3">
					<h:inputText id="newUsersSearchKey" value="#{adminBean.newUsersSearchKey}" />
						&nbsp;
							<h:commandButton value="Search For New Accounts"
								onclick="return check_keyword('admin_form:newUsersSearchKey');"
												action="#{adminBean.searchForNewUsers}"></h:commandButton>
					</h:panelGrid>
					<br/>
						<h:dataTable id="found_users"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{adminBean.searchedUsers}"
								rows="#{adminBean.searchedUsers.rowCount}" 
								rowClasses="odd_row,even_row"
								border="0">

								<h:column>
												
								<h:graphicImage url="../../images/dynamic/users/profile/#{trows.schoolId}/#{trows.userName}" width="40"/>		

								</h:column>
								<h:column>

									<h:outputText value="#{trows.name}" />

								</h:column>
								<h:column >
								
								
								<h:commandButton  value="Add To School"
												action="#{adminBean.addToSchool}">
								
								<f:param name="selectedUserName" value="#{trows.userName}" ></f:param>				
								</h:commandButton>
								
								</h:column>	
									
							</h:dataTable>
						
						</div>
			
			
			
			
				<div align="center" style=" border: 0px solid black; background-color: #ececec;">


							<!-- <div 
								style="color: #FFFFFF; background-color: #0033CC; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>School Users</span>

							</div> -->
							<br/>
					
					<br/>
					<h:panelGrid columns="3">
					<h:inputText value="#{adminBean.schoolUsersSearchKey}" />
						&nbsp;
							<h:commandButton value="Filter Current School Users"
												action="#{adminBean.filterSchoolUsers}"></h:commandButton>
					</h:panelGrid>
					<br/>
					
						<h:dataTable id="school_users"
								width="100%" frame="below" cellpadding="2"  cellspacing="2"
								var="trows" value="#{adminBean.schoolUsers}"
								rows="#{adminBean.schoolUsers.rowCount}"
								rowClasses="odd_row,even_row" border ="0" 
								style="word-wrap: break-word; table-layout: fixed; "								
								>
  
								<h:column>	
								<h:graphicImage url="../../images/dynamic/users/profile/#{trows.schoolId}/#{trows.userName}" width="40"/>		

								</h:column>
								<h:column headerClass="data_table_header"> 
									<f:facet name="header">
                        				<h:outputText value="User" style="float: left;"/>
                    				</f:facet>
									<h:outputText value="#{trows.userName}" />

								</h:column>
								
								<h:column headerClass="data_table_header"> 
									<f:facet name="header" >
                        				<h:outputText value="Name"  style="float: left;"/>
                    				</f:facet>	
									<h:outputText value="#{trows.name}" />

								</h:column>
								<h:column headerClass="data_table_header">
									<f:facet name="header" >
                        				<h:outputText value="Year" style="float: left;"/>
                    				</f:facet>

									<h:outputText value="#{trows.classYear}" />

								</h:column>
								<h:column headerClass="data_table_header">
									<f:facet name="header" >
                        				<h:outputText value="Class" style="float: left;"/>
                    				</f:facet>

									<h:outputText value="#{trows.className}" />

								</h:column>
								<h:column headerClass="data_table_header"> 
									<f:facet name="header" >
                        				<h:outputText value="Role" style="float: left;"/>
                    				</f:facet>
									<h:outputText value="#{trows.role}" />

								</h:column>
								<h:column>								
							<h:commandButton  image="../../images/static/common/delete.png"
												action="#{adminBean.removeFromSchool}"
												style="width:20px">
								
								<f:param name="selectedUserName" value="#{trows.userName}" ></f:param>				
					</h:commandButton>
								</h:column>
								
								<h:column>
								
								<h:selectBooleanCheckbox  value="#{adminBean.selectedUsers[adminBean.schoolUsers.rowIndex]}" />
								</h:column>
								
							</h:dataTable>
							
							 
							
						</div>
			
				<br/>
				
				<div align="center" style=" border: 1px solid black;">


							<div 
								style="color: #FFFFFF; background-color: #0033CC; font-family: Verdana, Arial, Sans-Serif; font-size: 15px; height: 30px; line-height: 30px; boarder: 1;">
								<span>Roles & Classes</span>

							</div>
							<br/>
				<table width="100%"><tr><td>
				Role:
				</td>
				<td>
				<h:selectOneMenu id="roles"
                                                     value="#{adminBean.roles.selectedValue}"
                                                     style="width:40%;" >                                                     
		                                      
		                                      
		                                      
		                                      <f:selectItems value="#{adminBean.roles.values}"/>
		                                      
                        				</h:selectOneMenu>
				</td>
				<td>
					<h:commandButton  value="Add Role"
												action="#{adminBean.addRole}">
								
												
					</h:commandButton>
				</td> 
				<td>
					<h:commandButton  value="Remove Role"
												action="#{adminBean.removeRole}">
								
												
					</h:commandButton>
				</td> 
				</tr>
				<tr>
				<td>
					Class:
			</td>
			<td >
				
				
									<h:selectOneMenu id="classYears"
                                                     value="#{adminBean.classYears.selectedValue}"
                                                     style="width:40%;" >                                                     
		                                      
		                                      
		                                      <f:selectItems value="#{adminBean.classYears.values}"/>
		                                      <a4j:support  event="onchange" actionListener="#{adminBean.onClassYearsChange}"  reRender="classNames" oncomplete="hide_progress_bar();"/>
		                                      
                        				</h:selectOneMenu>
									</td>
									<td align="left" >
									<h:selectOneMenu id="classNames"
                                                     value="#{adminBean.classNames.selectedValue}"
                                                     style="width:40%;"  >                                                     		                                      
		                                      
		                                      <f:selectItems value="#{adminBean.classNames.values}"/>
		                                      
                        				</h:selectOneMenu>
				
				</td>
			<td>
					<h:commandButton  value="Attach To Class"
												action="#{adminBean.updateClass}">
								
												
					</h:commandButton>
				
				</td>
				</tr>
					</table>
					<br/>
					</div>
					
				</td>
		<!--  td id="right_area" style="vertical-align: top;">
				
			</td -->
				</tr>
				<!--  tr id="lower_row">
			<td colspan="3">
				<%@ include file="../../include/lower_section.jsp"%>
			</td>
			</tr-->		
		</h:form>
	</f:view>
</body>
</html>
