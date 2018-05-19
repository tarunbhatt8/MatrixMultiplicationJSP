<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html>
<html>
    
    <body>
        <h1>Server date is <%=new Date() %></h1>
        <%
            int vm1a=Integer.parseInt(request.getParameter("m1a"));
            int vm1b=Integer.parseInt(request.getParameter("m1b"));
            int vm2a=Integer.parseInt(request.getParameter("m2a"));
            int vm2b=Integer.parseInt(request.getParameter("m2b"));
            
            
            
            
            if(vm1b==vm2a&&vm1a>0&&vm1b>0&&vm2a>0&&vm2b>0)
            {
             
                
                
            out.println("<h1> Enter contents of Matrix 1: </h1><br/>");
            out.println("<table border=1>");
            String action="\"matmul.jsp\"";
            String method="\"post\"";
            
            out.println(" <form action="+action+" method="+method+"> ");
            
            
            String type="number";
            String submit="\"submit\"";
            String value="\"submit\"";
            for(int i=1;i<=vm1a;i++)
            {
                 out.println("<tr>"); 
             for(int j=1;j<=vm1b;j++)
              {
                  String namea="\"a";
                  int num=(i*10)+j;
                  
                  namea+=num;
                  namea+="\"";
                  
              out.println("<td>"+ "<input type="+type+" name="+namea+" />" +"</td> "); 
              
             
              
              }
             
		out.println("</tr>");
            }
            
            
           
           out.println("</table>");
           
           out.println("<br/><h1> Then Enter contents of Matrix 2: </h1><br/>");
           out.println("<br/><table border=1>");
           
           
           
           for(int i=1;i<=vm2a;i++)
            {
                 out.println("<tr>"); 
             for(int j=1;j<=vm2b;j++)
              {
                  String nameb="\"b";
                  int num=(i*10)+j;
                  nameb+=num;
                 
                  nameb+="\"";
                  
              out.println("<td>"+ "<input type="+type+" name="+nameb+" />" +"</td> "); 
              
             
              
              }
		out.println("</tr>");
            }
           
           
            String hidden="hidden";
            String name1="m1a";
            String value1="";
            value1+=vm1a;
            
            String name2="m1b";
            String value2="";
            value2+=vm1b;
            
            String name3="m2a";
            String value3="";
            value3+=vm2a;
            
            String name4="m2b";
            String value4="";
            value4+=vm2b;
            
             out.println("<input type="+hidden+"  name="+name1+" value="+value1+"/>");
             out.println("<input type="+hidden+"  name="+name2+" value="+value2+"/>");
             out.println("<input type="+hidden+"  name="+name3+" value="+value3+"/>");
             out.println("<input type="+hidden+"  name="+name4+" value="+value4+"/>");
        
             out.println("</table>");
             out.println("<br/><input type="+submit+" value="+value+"/></form>"); 
            
           
          }
            else
            {
                out.println("Sorry the matrices cannot be multiplied,PLEASE REFER TO FOLLOWING RULES:");%><br/>
                <%
                
                out.println("Rule 1: Columns of matrix 1 SHOULD BE EQUAL TO Rows of matrix 2");  %><br/>
                <%
                out.println("Rule 2: Number of rows and number of colums SHOULD BE greater than 0");
            }
        %>
        <br/>
        <a href="index.html">home</a><br><br>
    </body>
</html>
