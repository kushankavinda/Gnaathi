

<%-- 
    Document   : newpost
    Created on : Nov 10, 2016, 12:51:23 PM
    Author     : Geeth
--%>
    <%@ page import="java.io.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.geeth.DB"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="jquery.min.js"> </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        #wrapper{
            margin:auto;
            width:800;
        }
        label{display:block}
          #c1{
        
        border: 3px solid black;
        margin-top: 80px;
        margin-right: 250px;
        margin-left: 350px;
        padding: 30px 30px 50px 30px;
        }
        #post{
        
        border: 3px solid black;
        margin-top: 50px;
        margin-right: 200px;
        margin-left: 380px;
        padding: 30px 30px 50px 30px;
        }
        
        
    </style>
    <body>
        <h1 style="font-size:45px; color: rgb(0,0,90); "><center>Post Your Article</center></h1>
        <div id="post">
          
        <form action="../posts" method="post"  >
                        <label style="font-size:20px;" >Title :</label>
                        <input style="font-size:20px;" type="text"  size="55" name="title"/><br/><br/>
                      
                        <label style="font-size:20px;" for="body">Body:</label>
                        
                        <%--for post plugins--%>
                        <br />

                        
                        <script src="nicEdit.js" type="text/javascript"></script>
                        <script type="text/javascript"> 
                            bkLib.onDomLoaded(function() {
	
                                new nicEditor({fullPanel : true}).panelInstance('area2');
	
                                                          });
                        </script>

                            <textarea name="body" cols=85 rows=20 id="area2"></textarea>

                           
                        <br>
                        <label style="font-size:20px;">Category :</label><select name="category">
                         <%
                         
                            String sql = "SELECT * FROM categories ";
                            Connection con = DB.getCon();
                            Statement stmt = con.createStatement();
                            ResultSet rs = stmt.executeQuery(sql);
                            while (rs.next()) {
                                
                        %>
                        <option style="font-size:17px;"><%=rs.getString("category")%></option>
                            
                        <%
                            }
                            
                            %></select><br/><br/>
                            
                         
                       <br/>
                       
                        <input style="font-size:20px;" type="submit" name="submit" value="submit">
                    </form>

                              <label style="font-size:20px;">Imeges</label><input id="fileID" type="file" name="filee">
 <br>
                                <br/>  

                            </div>
    </body>
    <script>
        $("#fileID").change(function(){
        filepath();
        });
        function filepath(){
            var fileInput = document.getElementById("fileID");
            var data = new FormData();
                jQuery.each(jQuery('#fileID')[0].files, function(i, file) {
                    data.append('file-'+i, file);
                });
            
            jQuery.ajax({
                url: '../../Gnaathi/posts',
                data: data,
                cache: false,
                contentType: false,
                processData: false,
                type: 'POST',
                success: function(data){
                }
            });
        }
        </script>
</html>
