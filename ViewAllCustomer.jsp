<%-- 
    Document   : ViewAllCustomer
    Created on : Jul 6, 2021, 1:25:50 PM
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
        <title>View All Customer</title>
    </head>
    <body style="background-color: lavender">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">-Bank of paradise-</a>

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
        <h1 style="background-color: #384f7d ; color: white; font-size: 50px" >Details of Customers</h1>
    </center>
    <br>
    <%
        String url = "jdbc:mysql://localhost:3306/bankingsystem";
        String username = "root";
        String password = "";
        Class.forName("com.mysql.jdbc.Driver");
        try{
            
            Connection con = DriverManager.getConnection(url, username, password);
            Statement st = con.createStatement();
            String query = "select * from customer";
            ResultSet rs = st.executeQuery(query); 
            %>
            <div class="row"> 
            <%
            while (rs.next()) 
            {
                int id = rs.getInt("Account_No");
                String name = rs.getString("Name");
                %>
               
                <div class="column" >
                   
                    <div class="card" style="width: 18rem; margin: 1rem; border-radius: 50px 15px 50px 15px; margin-left: 30%">
                        <img class="card-img-top" src="Paris.jpg" style="border-radius: 50px 15px 50px 15px" alt="Card image cap" >
                        <div class="card-body">
                            <h5 class="card-title" style="text-align: center"><%=name%></h5>
                            <p class="card-text" style="text-align: center"><%=id%></p>
                            <!-- Large modal -->
                            <div class="row" style="">
                                <a href="ViewDetail.jsp?id=<%=id%>" style="margin-left: 20%; border-radius: 15px 50px" class="btn btn-primary">View</a>
                                <div class="column">
                                    <a href="TransferMoney.jsp?id=<%=id%>" style="margin-left: 8%; border-radius: 15px 50px" class="btn btn-info">Transaction</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                                
                <%
            } 
            %> </div> <%
            con.close();
            rs.close();
            st.close();
        } 
        catch (Exception ex) {
            System.out.println(ex);
        }%>

</body>
<script type="text/javascript" src="jquery.js" ></script>
<script type="text/javascript" src="bootstrap.min.js" ></script>
</html>
