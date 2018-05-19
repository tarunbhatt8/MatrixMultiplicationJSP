<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html>
<html>
    
    <body>
        <h1>Server date is <%=new Date() %></h1>
        <br/>
        <%
            String hidden1 = request.getParameter("m1a"); 
            String hidden2 = request.getParameter("m1b");
            String hidden3 = request.getParameter("m2a");
            String hidden4 = request.getParameter("m2b");
            
            int v1=Character.getNumericValue(hidden1.charAt(0));
                  for(int z=1;z<hidden1.length()-1;z++)
                  {
                   
                   if((Character.getNumericValue(hidden1.charAt(z)))!='\n'){
                       v1*=10;
                       int x2=Character.getNumericValue(hidden1.charAt(z));
                       v1+=x2;
                   }
                   
                   }
               int vm1a=v1;
               
               
                int v2=Character.getNumericValue(hidden2.charAt(0));
                  for(int z=1;z<hidden2.length()-1;z++)
                  {
                   
                   if((Character.getNumericValue(hidden2.charAt(z)))!='\n'){
                       v2*=10;
                       int x2=Character.getNumericValue(hidden2.charAt(z));
                       v2+=x2;
                   }
                   
                   }
               int vm1b=v2;
               
               
                
               
                int v3=Character.getNumericValue(hidden3.charAt(0));
                  for(int z=1;z<hidden3.length()-1;z++)
                  {
                   
                   if((Character.getNumericValue(hidden3.charAt(z)))!='\n'){
                       v3*=10;
                       int x2=Character.getNumericValue(hidden3.charAt(z));
                       v3+=x2;
                   }
                   
                   }
               int vm2a=v3;
               
               
               
               
               
               
               int v4=Character.getNumericValue(hidden4.charAt(0));
                  for(int z=1;z<hidden4.length()-1;z++)
                  {
                   
                   if((Character.getNumericValue(hidden4.charAt(z)))!='\n'){
                       v4*=10;
                       int x2=Character.getNumericValue(hidden4.charAt(z));
                       v4+=x2;
                   }
                   
                   }
               int vm2b=v4;
               
              
               
               
               
           
               
           
          
           
           
           
           int[][] a = new int[vm1a][vm1b];
            int[][] b = new int[vm2a][vm2b];
            int[][] c = new int[vm1a][vm2b];
            
            
            
            for(int i=1;i<=vm1a;i++)
            {
                  
             for(int j=1;j<=vm1b;j++)
              {
                  
                  String namea="a";
                  int num=(i*10)+j;
                 
                  namea+=num;
                  
                  
                  
                  
                 
                  String temp1 = request.getParameter(namea);
                  int x1=Character.getNumericValue(temp1.charAt(0));
                  for(int z=1;z<temp1.length()-1;z++)
                  {
                   
                   if((Character.getNumericValue(temp1.charAt(z)))!='\n'){
                       x1*=10;
                       int x2=Character.getNumericValue(temp1.charAt(z));
                       x1+=x2;
                   }
                   
                   }
           
              a[i-1][j-1]=x1;
                        
              
              }
		
            }
            
            
            
             for(int i=1;i<=vm2a;i++)
            {
                  
             for(int j=1;j<=vm2b;j++)
              {
                  
                  String nameb="b";
                  int num=(i*10)+j;
                  
                  nameb+=num;
                  
                  
                  
             
                 String temp2 = request.getParameter(nameb);
                  int x1=Character.getNumericValue(temp2.charAt(0));
                  for(int z=1;z<temp2.length()-1;z++)
                  {
                   
                   if((Character.getNumericValue(temp2.charAt(z)))!='\n'){
                       x1*=10;
                       int x2=Character.getNumericValue(temp2.charAt(z));
                       x1+=x2;
                   }
                   
                   }
           
              b[i-1][j-1]=x1;
            
 
             
              
              }
		
            }
             
             
             int summ=0;
             
             for(int i=0; i<vm1a; i++)
         {
            for(int j=0; j<vm2b; j++)
            {   
               for(int k=0; k<vm2a; k++)
               {
                  summ = summ + a[i][k]*b[k][j];
               }
 
               c[i][j] = summ;
               summ = 0;
            }
         }
             out.println("<h2>The final multiplied matrix is as follows</h2>");
             
             out.println("<table border=1>");
             for(int i=0;i<vm1a;i++)
             {
                 out.println("<tr>");
                 for(int j=0;j<vm2b;j++)
                 {
                    out.println(" <td>"+c[i][j]+"</td>");  
                 }
                 out.println("</tr>");
             }
             out.println("</table>");
             
            
            
        %>
        <br/>
        <a href="index.html">home</a><br><br>
    </body>
</html>
