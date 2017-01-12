/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geeth;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Geeth
 
*/
@WebServlet(name = "posts", urlPatterns = {"/posts"})
public class posts extends HttpServlet {
    private Object calobj;

  
  
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session=request.getSession();
        String user_id=session.getAttribute("user_id").toString();
        String user_name=session.getAttribute("user_name").toString();
        String title = request.getParameter("title");
        System.out.println(title);
        String body = request.getParameter("body");
        System.out.println(title);System.out.println(title);
        String category = request.getParameter("category");
         DateFormat df = new SimpleDateFormat("yy/MM/dd HH:mm:ss");
          Date dateobj = new Date();
        String x=df.format(dateobj);
        
        
    
        
        

        // Save in the DB
        
          String saveFile = "";
      String contentType = request.getContentType();
      if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
            DataInputStream in = new DataInputStream(request.getInputStream());
            int formDataLength = request.getContentLength();
            byte dataBytes[] = new byte[formDataLength];
            int byteRead = 0;
            int totalBytesRead = 0;
            while (totalBytesRead < formDataLength) {
                  byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                  totalBytesRead += byteRead;
            }
            String file = new String(dataBytes);
            saveFile = file.substring(file.indexOf("filename=\"") + 10);
            saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
            saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
            int lastIndex = contentType.lastIndexOf("=");
            String boundary = contentType.substring(lastIndex + 1, contentType.length());
            int pos;
            pos = file.indexOf("filename=\"");
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;
            int boundaryLocation = file.indexOf(boundary, pos) - 4;
            int startPos = ((file.substring(0, pos)).getBytes()).length;
            int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
            String saveFilee = "C:/Users/Geeth/Documents/NetBeansProjects/Gnaathi/web/blog/img/" + saveFile;
            File ff = new File(saveFilee);
            FileOutputStream fileOut = new FileOutputStream(ff);
            fileOut.write(dataBytes, startPos, (endPos - startPos));
            fileOut.flush();
            fileOut.close();}
            
            
            String sql = "INSERT INTO posts (user_id,user_name,title,body,category,posted,image) VALUES (?,?,?,?,?,?,?)";

        try {
            Connection con = DB.getCon();
            PreparedStatement ps = con.prepareStatement(sql);
            out.println(saveFile);
            ps.setString(1, user_id);
            ps.setString(2, user_name); 
            ps.setString(3, title);
            ps.setString(4, body);
            ps.setString(5, category);
            ps.setString(6, x);
            ps.setString(7,saveFile);
           
            
            
            ps.executeUpdate();

            PrintWriter out = response.getWriter();
            out.println("<h1> thank you for Registering<h1/>");
        } catch (Exception e) {
            e.printStackTrace();
            PrintWriter out = response.getWriter();
            out.println("<h1> Errorin Register</h1>title=");

        }
        
        response.sendRedirect("blog/index.jsp#jump-to");

    }

}
