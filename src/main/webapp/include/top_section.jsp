
					
			<div align="center" class="top_menu_section" >
			
				<h:form>
				<h:panelGrid border="0" columns="9" styleClass ="top_menu_section_grid">
					
					<a href="#" class="top_menu_section_item"  onclick="openTopLink('../posts/posts_page.jsp');">		
						Home <span class="top_menu_section_item_sep">|</span>
					</a>
					
						
					<h:outputLink value="#"  styleClass="top_menu_section_item"   
							onclick="openTopLink('../friends/friends.jsp');"
							rendered="#{security.isAuthorized('top_section.friends')}">
							Friends <span class="top_menu_section_item_sep">|</span>
					</h:outputLink>				
					
													
					<a href="#" class="top_menu_section_item"   onclick="openTopLink('../exercise/exercise_list.jsp');">
						Exercises <span class="top_menu_section_item_sep">|</span>
					</a>										
					<a href="#" class="top_menu_section_item"   onclick="openTopLink('../exam/exam_list.jsp');">
						Exams <span class="top_menu_section_item_sep">|</span>
					</a>
					
					<a href="#" class="top_menu_section_item"   onclick="openTopLink('../homework/homework_list.jsp');">					
						Homework <span class="top_menu_section_item_sep">|</span>
					</a>
					
					<a href="#" class="top_menu_section_item"   onclick="openTopLink('../reports/reports_list.jsp');">					
					
						Reports <span class="top_menu_section_item_sep">|</span>
					</a>
					
					
					<h:outputLink value="#"  styleClass="top_menu_section_item"   
							onclick="openTopLink('../followup/followup.jsp');"
							rendered="#{security.isAuthorized('top_section.followup')}">
							Follow Up <span class="top_menu_section_item_sep">|</span>
					</h:outputLink>
					<h:outputLink value="#"  styleClass="top_menu_section_item"   
							onclick="openTopLink('../backend/practice_manager.jsp');"
							rendered="#{security.isAuthorized('top_section.manage_practice')}">
							Manage Practice <span class="top_menu_section_item_sep">|</span>
					</h:outputLink>
					
					<h:outputLink value="#"  styleClass="top_menu_section_item"   
							onclick="openTopLink('../setup/lookup_setup_manager.jsp');"
							rendered="#{security.isAuthorized('top_section.setup')}">
							Setup <span class="top_menu_section_item_sep">|</span>
					</h:outputLink>
					<h:outputLink value="#"  styleClass="top_menu_section_item"   
							onclick="openTopLink('../admin/admin_manager.jsp');"
							rendered="#{security.isAuthorized('top_section.admin')}">
							Admin <span class="top_menu_section_item_sep">|</span>
					</h:outputLink>
					<h:outputLink value="#"  styleClass="top_menu_section_item"   
							onclick="openTopLink('../monitor/activity_report.jsp');"
							rendered="#{security.isAuthorized('top_section.activity_report')}">
							Activity Report <span class="top_menu_section_item_sep">|</span>
					</h:outputLink>
					
					<h:commandLink action="#{loginBean.logout}" value="Logout"  styleClass="top_menu_section_logout"  > </h:commandLink>
					
				</h:panelGrid>
				</h:form>
			</div>
			