<%-- 
    Document   : ViewDetail
    Created on : Jul 7, 2021, 3:23:24 PM
    Author     : Maharshi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Detail</title>
    </head>
    <body style = "background-color: lavender ">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">-Bank of Paradise-</a>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Home.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Dropdown
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="ViewAllCustomer.jsp">View All Customers</a>
                            <a class="dropdown-item" href="TransferMoneyHome.jsp">Transfer Money</a>
                        </div>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">About Us<span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </nav>

        <br><br>

    <center>
        <h1 style="background-color: #384f7d ; color: white; font-size: 50px" >Customer Details</h1>
    </center>

    
    <% 
            String Id = request.getParameter("id"); 
            Integer iid = Integer.parseInt(Id);
            System.out.println(iid);
                String url = "jdbc:mysql://localhost:3306/bankingsystem";
                String user ="root";
                String pswd = "";
                Class.forName("com.mysql.jdbc.Driver");
                try
                {
                    System.out.println("");
                    Connection con =DriverManager.getConnection(url, user, pswd);
                    Statement st = con.createStatement();
                    String query = "SELECT * from Customer where Account_No= "+Id+" ";
                    ResultSet rs = st.executeQuery(query);
                    while(rs.next())
                    {
                        %>  
                        <div class="card" style="width: 27rem; margin-left: 33%;border-radius: 50px 15px 50px 15px; margin-top: 3%">
                                <img class="card-img-top" src="Paris.jpg" style="border-radius: 50px 15px 50px 15px" alt="Card image cap">
                                <div class="card-body">
                                    <form>
                                        <div class="form-row">
                                          <div class="form-group col-md-6">
                                            <label for="inputPassword4">Account Number</label>
                                            <input type="lable" class="form-control" id="input"passwordPassword4" style="border-radius:15px 50px" value="<%=rs.getInt("Account_No")%>" placeholder="Password"  readonly="true">
                                          </div>
                                          <div class="form-group col-md-6">
                                            <label for="inputEmail4">Name</label>
                                            <input type="lable" class="form-control" value="<%=rs.getString("Name")%>" style="border-radius:15px 50px" id="inputEmail4" placeholder="Email" readonly="true">
                                          </div>  
                                        </div>
                                        <div class="form-group">
                                          <label for="inputAddress">Email</label>
                                          <input type="lable" class="form-control" id="inputAddress" style="border-radius:15px 50px" value="<%=rs.getString("Email")%>" placeholder="email@gmail.com"  readonly="true">
                                        </div>
                                        <div class="form-group">
                                          <label for="inputAddress2">Phone Number</label>
                                          <input type="lable" class="form-control" style="border-radius: 15px 50px" value="<%=rs.getInt("Phone_No")%>" id="inputAddress2" placeholder="Phn no"  readonly="true">
                                        </div>
                                        
                                          <div class="form-group ">
                                              <label for="inputCity">Current Balance</label>
                                            <input type="text"  class="form-control" value="<%=rs.getInt("Current_Balance")%>" style="border-radius:15px 50px" id="inputCity"  readonly="true">
                                          </div>
                                        
                                        <a href="ViewAllCustomer.jsp" class="btn btn-primary" style="border-radius: 15px 50px">Back</a>
                                        
                                      </form>
        
                                </div>
                            </div>
                            
                        <%
                    }
                    con.close();
                    rs.close();
                    st.close();
                }
                catch(Exception ex)
                {
                    System.out.println(ex);
                }
                
        %>
</body>
<script type="text/javascript" src="jquery.js" ></script>
<script type="text/javascript" src="bootstrap.min.js" ></script>
</html>
