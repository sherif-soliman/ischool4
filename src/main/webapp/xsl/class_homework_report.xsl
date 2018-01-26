<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns="http://www.w3.org/1999/html">
<xsl:template match="output/part-1">
            
            
                <div width="100%">
                    <table width="98%" height="100%" border="0" cellpadding="0"
                           cellspacing="0" >
                      <tr>
                        <td colspan="2"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></td>
                        <td align="left">
                          <img src="../../images/static/common/ischool_logo.jpeg" alt="School LOGO"
                               style="margin-bottom: 10px;" width="150px" height="69px"/>
                        </td>
                      </tr>
                     
                     
                      <tr>
                        <td>
                            Class Report  
                        </td>                        
                      </tr>
                  
                   <tr>
                        <td>
                            <br/><br/>
                        </td>                        
                      </tr>
                  
                      <tr class="header_row">
                        <td>
                            Students Solved the Homework  
                        </td>                        
                      </tr>
                      
                     </table>
                     
                      <table width="98%" height="100%" border="1" cellpadding="0"
                           cellspacing="0" >     
                           
                       <tr class="even_row" >
                        
                        <td width="25%">
                            <span style="margin-left: 10px;">
                            
                            User Name
                              </span>
                        </td>
                        <td width="50%">
                            <span style="margin-left: 10px;">
                            
                            Name
                              </span>
                        </td>
                        <td width="25%">
                            <span style="margin-left: 10px;">
                            
                        Score
                              </span>
                        </td>
                        
                      </tr>     
     
                 <xsl:for-each select="row">
                          			
                           
                      <tr class="odd_row" style="background-color: #FFFFFF ;">
                        
                        <td>
                            <span style="margin-left: 10px;">
                            
                            <xsl:value-of select="user_name"/>
                              </span>
                        </td>
                        <td>
                            <span style="margin-left: 10px;">
                            
                            <xsl:value-of select="name"/>
                              </span>
                        </td>
                        <td>



      <xsl:choose>
                             
                           	<xsl:when test="score = '0/0'">   
                           			
                           </xsl:when>
                           <xsl:otherwise>
                           
	                        <span style="margin-left: 10px;">
                		            <xsl:value-of select="score"/>
        	                   </span>                           
</xsl:otherwise>
			</xsl:choose>
                      

                       

                        </td>
                        
                      </tr>
                      
                      </xsl:for-each>
                      
                      <tr>
                        <td>
                              
                        </td>                        
                      </tr>
                     
                    </table>
                </div>
         
         </xsl:template>
         
                          
                        
           <xsl:template match="output/part-2">
            
<br/> <br/>            
                <div width="100%">
                    <table width="98%" height="100%" border="0" cellpadding="0"
                           cellspacing="0">
                     
       
                      <tr class="header_row">
                        <td>
                            Students Did not Solve the Homework  
                        </td>                        
                      </tr>               
                     </table>
                      <table width="98%" height="100%" border="1" cellpadding="0"
                           cellspacing="0" > 
                           
                       <tr class="even_row">
                        
                        <td width="25%">
                            <span style="margin-left: 10px;">
                            
                            User Name
                              </span>
                        </td>
                        <td width="75%">
                            <span style="margin-left: 10px;">
                            
                            Name
                              </span>
                        </td>
                        
                      </tr>    
                      <xsl:for-each select="row">
                      
                       <tr class="odd_row" style="background-color: #FFFFFF ;">
                        <td>
                            <span style="margin-left: 10px;">
                            
                            <xsl:value-of select="user_name"/>
                              </span>
                        </td>
                        <td>
                            <span style="margin-left: 10px;">
                            
                            <xsl:value-of select="name"/>
                              </span>
                        </td>
                        
                        
                      </tr>
                      </xsl:for-each>
                      
                      <tr>
                        <td>
                              
                        </td>                        
                      </tr>
                     
                    </table>
                </div>
         
         </xsl:template>
      
</xsl:stylesheet>