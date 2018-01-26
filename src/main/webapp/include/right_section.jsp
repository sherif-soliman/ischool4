			<div align="center" style="color: #FFFFFF; background-color:white; 
			 align:left;">
				
				<div class="right_menu_section">
					<span>Follow Up</span>
						
					</div>
					
					<h:panelGrid border="0" columns="2"   width="100%">
									
						<h:graphicImage url="../../images/static/common/followup.png" width="60">
							
						</h:graphicImage>
					
					<p class="right_menu_section_title">
					check your follow ups 
					</p>
					
					</h:panelGrid>
									
					
					<h:dataTable id="followups"							
							width="100%"
							frame="below"
							cellpadding="0"
							cellspacing="0"
							var="trows"
							value="#{followup.followUpsDM}"
							rows="#{followup.followUpsCount}"
							rowClasses="odd_row"
							border="0" style="vertical-align:top;"
							>
						
								<h:column >
							<h:outputText value="<table id='followup_item' width='100%' border='0px' style='background-color: white;'><tr>" escape="false"/>
								 <h:outputText value="<td width='40' style='vertical-align:top;'>" escape="false"/>
								  	<h:graphicImage url="../../images/dynamic/users/profile/#{loginBean.userProfile.schoolId}/#{trows.userName}" 
								  		width="40" ></h:graphicImage>
								<h:outputText value="</td>" escape="false"/>
								<h:outputText value="<td >" escape="false"/>
									<b>&nbsp;&nbsp;<h:outputText value="#{trows.name} "  style="color: #0000CC;  
										font-family: Verdana, Arial, Sans-Serif; font-size:13px;"/>										
										<styless="color:gray;">added ...</styless>
										</b>
								
									<br/>&nbsp;&nbsp;<h:outputText value="#{trows.followUp}" style="color: #3A3A3A;  
										font-family: Verdana, Arial, Sans-Serif; font-size:13px; " />
								<h:outputText value="</td>" escape="false"/>		
							<h:outputText value="</tr>" escape="false"/>
							<h:outputText value="<tr ><td colspan='2' align='center'>" escape="false"
								rendered="#{trows.imaged}"	/>			
								
								
								
								  	<h:graphicImage id="post_image" url="../../images/dynamic/users/posts/#{trows.id}" 
								  		alt=" "  rendered="#{trows.imaged}" width="100%" ></h:graphicImage>
							<h:outputText value="</td></tr>" escape="false" rendered="#{trows.imaged}" />
							<h:outputText value="</table>" escape="false"/>	
								
								</h:column>
												
							</h:dataTable>
							<br/>
							



			
				
				<div class="right_menu_section">
					<span>Homework</span>
						
					</div>
					<p class="right_menu_section_title">
					check your pending homework ... 
					</p>
					 
				<img src="../../images/static/common/pending_homework.jpeg" width="100%" border="0"/>
			
							<br/>
							<br/>
					
							
							
							<h:dataTable id="subjects_list"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows" value="#{homeworkList.subjetcListDM}"
								rows="#{homeworkList.noOfHomeworkSubjects}"
								border="0" 
								rowClasses="left_align"
								>

									
								<h:column>
									&nbsp;<h:outputText value="#{trows}"  style="color: Blue"></h:outputText>
							
								<h:dataTable id="homework_list"
								width="100%" frame="below" cellpadding="0" cellspacing="0"
								var="trows2" value="#{homeworkList.getHomeworkListDM(trows)}"
								rows="#{tempHomeworkListDM.homeworkListSize}"
								rowClasses="plain_row"
								>

								 
								<h:column>
								
								<h:outputLink value="#" styleClass="menu_item" onclick="document.getElementById('main_iframe').src ='../question/question.jsp?newRequest=HOMEWORk&practiceId=#{trows2.substring(0,trows2.indexOf(':'))}';  show_progress_bar('this');">
							
										
										&nbsp;&nbsp;&nbsp;<h:outputText value="Due In: #{trows2.substring(trows2.indexOf(':')+1)}"></h:outputText>
										
								</h:outputLink>
								</h:column>
								 
								
								
							</h:dataTable>
							<br/>
								</h:column>
								
								
							</h:dataTable>	
			
			
				</div>
		