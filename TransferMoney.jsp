<%-- 
    Document   : TransferMoney
    Created on : Jul 6, 2021, 1:49:57 PM
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
        <title>Transaction</title>
    </head>
    <body style="background-color: lavender">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">-Bank Of Paradise-</a>

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
        <h1 style="background-color: #384f7d ; color: white; font-size: 50px" >Transaction</h1>
    </center>
    <br><br>
    <%
        String Id = request.getParameter("id");
        Integer iid = Integer.parseInt(Id);

        String url = "jdbc:mysql://localhost:3306/bankingsystem";
        String user = "root";
        String pswd = "";
        Class.forName("com.mysql.jdbc.Driver");

        int amt1 = 0;
        String sn = null;
        int sa = 0;
        try {
            Connection con = DriverManager.getConnection(url, user, pswd);
            Statement st = con.createStatement();
            String query = "SELECT * from customer where Account_No= " + iid + " ";
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                amt1 = rs.getInt("Current_Balance");
                sn = rs.getString("Name");
                sa = rs.getInt("Account_No");
            %>  
            <div class="row">
                <div class="column" style="margin-left: 10%">
                    <div class="card" style="width: 25rem; border-radius: 15px 50px; margin-left: 15%; margin-top: 1%">
                        <img class="card-img-top" style="border-radius: 15px 50px" src="Paris.jpg" alt="Card image cap">
                        <div class="card-body" style="border-radius: 25px" >
                            <form>
                                <h1 style="text-align: center; color: black; font-size: 150%;" >SENDER</h1><hr>
                                <div class="form-row">
                                    <div class="form-group col-md-12" style="margin-top: 6%">
                                        <label for="inputPassword4">Account Number:</label>
                                        <input type="text" class="form-control" style="border-radius: 25px" id="input4" value="<%=rs.getInt("Account_No")%>" name="acntSender" placeholder="Password"  readonly="true">
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="inputEmail4">Name:</label>
                                        <input type="text" class="form-control" style="border-radius: 25px" value="<%=rs.getString("Name")%>" name="namesender" id="inputEmail4" placeholder="Email" readonly="true">
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="inputAddress">Email</label>
                                        <input type="lable" class="form-control" id="inputAddress" style="border-radius:25px" value="<%=rs.getString("Email")%>" placeholder="email@gmail.com"  readonly="true">
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="inputCity">Current Balance</label>
                                        <input type="text"  class="form-control" value="<%=rs.getInt("Current_Balance")%>" style="border-radius:25px" id="inputCity"  readonly="true">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>  

             <% }
                con.close();
                rs.close();
                st.close();
            } 
            catch (Exception ex)
            {
                System.out.println(ex);
            }%>
            
                <div class="column" style="margin-left: 15%">
                    <div class="card" style="width: 25rem; margin-top: 3%; border-radius: 15px 50px">
                        <img class="card-img-top" src="Paris.jpg" alt="Card image cap" style="border-radius: 15px 50px"> 
                        <div class="card-body">
                            <form>
                                <h1 style="text-align: center; color: black;   font-size: 150%;" >RECEIVER</h1><hr>
                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <input type="hidden" class="form-control" name="id" value="<%=iid%>" style="border-radius: 25px" id="inputEmail4" placeholder="Enter name" >
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="acnt_no">Account Number:</label>
                                        <input type="text" class="form-control" name="acntReciever" style="border-radius: 25px" id="pasword" placeholder="Enter account number"  >
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="name">Name:</label>
                                        <input type="text" class="form-control" name="nameReciever" style="border-radius: 25px" id="inputEmail4" placeholder="Enter name" >
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="inputPassword4">Amount To Transfer:</label>
                                        <input type="number" class="form-control" style="border-radius: 25px" id="inputPassword4" name="amount">
                                        <br>
                                    </div>
                                    <input type="submit" class="btn btn-info" value="Transfer" name="btn" style="margin-left: 35%; border-radius: 15px 50px">
                                </div>
                                <br>
                            </form>
                        </div>
                    </div>  
                </div>
            </div>
            <br><br>                   

    <%
        if (request.getParameter("btn") != null) {
            String uname = request.getParameter("nameReciever");
            String acnt1 = request.getParameter("acntReciever");
            Integer acnt = Integer.parseInt(acnt1);
            String amount = request.getParameter("amount");
            Integer amt = Integer.parseInt(amount);

            try {
                Connection con = DriverManager.getConnection(url, user, pswd);
                Statement st = con.createStatement();

                int left = amt1 - amt;
                if (left >= 0) 
                {
                    String query2 = "UPDATE customer SET Current_Balance= (Current_Balance + " + amt + ") where name='" + uname + "' AND Account_No= " + acnt + " ";
                    String sql = "UPDATE customer SET Current_Balance= (Current_Balance - " + amt + ") where name='" + sn + "' AND Account_No= " + sa + " ";
                    int checkOne = st.executeUpdate(query2);
                    int checkTwo = st.executeUpdate(sql);

                    if (checkOne != 0 && checkTwo != 0) 
                    {
                        String query5 = "insert into Transfer values(" + sa + ", " + acnt + ", " + amt + " )";
                        int i = st.executeUpdate(query5);
                    %>
                    <script>
                        var b = <%=amt%>;
                        alert("Transaction done successfully ! \n " + b + " rs. transfered. ");
                        document.location.href = "ViewAllCustomer.jsp";
                    </script>
                    <%
                    } 
                    else 
                    {
                    %>
                    <script>
                        alert("Transaction failed! Try again");
                        document.location.href = "TransferMoney.jsp?id=<%=iid%>";
                    </script>
                    <%
                    }

                } 
                else
                {
                    %>
                    <script>
                        alert("Amount invalid . try again..");
                        document.location.href = "TransferMoney.jsp?id=<%=iid%>";
                    </script>
                    <%
                }
            } catch (Exception ex) {
                System.out.println("error" + ex);
            }
        }

    %>
</body>
<script type="text/javascript" src="jquery.js" ></script>
<script type="text/javascript" src="bootstrap.min.js" ></script>
</html>
