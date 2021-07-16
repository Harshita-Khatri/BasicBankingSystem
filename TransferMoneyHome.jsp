<%-- 
    Document   : TransferMoneyHome
    Created on : Jul 13, 2021, 1:36:24 PM
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

        <style> 
            hr{
                height: 1.2px;
                background-color: #000000;
            }
        </style>

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

        <br>
    <center>
        <h1 style="background-color: #384f7d ; color: white; font-size: 50px" >Transaction</h1>
    </center>
    <br><br>


    <div class="card" style="width: 30%; margin-left: 35%; border-radius: 15px 50px" >
        <div class="card-header"  >
            <img src="Paris.jpg"  style="border-radius: 15px 50px;width: 100%"> 
        </div>
        <div class="card-body">
            <form method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1">(SENDER)</label><br>
                    <label for="exampleInputEmail1">Name:</label>
                    <input style="background-color: #F0F0F0; border:  1px solid black; border-radius: 15px 50px"  type="text"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="sendername" placeholder="Enter Name">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Account Number:</label>
                    <input style="background-color: #F0F0F0; border: 1px solid black; border-radius: 15px 50px"  type="number"  class="form-control" id="exampleInputPassword1" name="Saccountno" placeholder="Enter Account Number">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Amount To Transfer:</label>
                    <input style=" background-color: #F0F0F0; border: 1px solid black; border-radius: 15px 50px" type="number" class="form-control" id="exampleInputPassword1" name="amount"placeholder="Enter Amount">
                </div>

                <hr>

                <div class="form-group">
                    <label for="exampleInputEmail1">(RECEIVER)</label><br>
                    <label for="exampleInputPassword1">Account Number:</label>
                    <input  style="background-color: #F0F0F0; border: 1px solid black; border-radius: 15px 50px" type="number" class="form-control" id="exampleInputPassword1" name="Raccountno" placeholder="Enter Account Number">
                </div>
                <center>
                    <button type="submit" style="border-radius: 15px 50px" class="btn btn-primary">Transfer</button>
                </center>
            </form>
        </div>
    </div>
    <br><br><br>
    <%
        String url = "jdbc:mysql://localhost:3306/bankingsystem";
        String user = "root";
        String pswd = "";
        Class.forName("com.mysql.jdbc.Driver");

        try {
            Connection con = DriverManager.getConnection(url, user, pswd);
            Statement st = con.createStatement();
            ResultSet rs;

            String SenderName = request.getParameter("sendername");
            String SenderAccountNo1 = request.getParameter("Saccountno");
            Integer SenderAccountNo = Integer.parseInt(SenderAccountNo1);
            String query1 = "SELECT * from customer where Account_No = " + SenderAccountNo + " ";
            rs = st.executeQuery(query1);

            int SenderAmount = 0;
            while (rs.next()) {
                SenderAmount = rs.getInt("Current_Balance");
            }

            int Transferamount = Integer.parseInt(request.getParameter("amount"));

            String reciverAccount1 = request.getParameter("Raccountno");
            Integer ReciverAccountNo = Integer.parseInt(reciverAccount1);

            String query2 = "SELECT * from Customer where Account_No = " + ReciverAccountNo + " ";
            rs = st.executeQuery(query2);

            int reciverAmount = 0;
            while (rs.next()) {
                reciverAmount = rs.getInt("Current_Balance");
            }
            if (Transferamount <= SenderAmount) {
                int senderAmountChange = SenderAmount - Transferamount;
                int reciverAmountChange = reciverAmount + Transferamount;

                String query3 = "update Customer set Current_Balance = " + senderAmountChange + " where Account_No = " + SenderAccountNo + " ";
                String query4 = "update Customer set Current_Balance = " + reciverAmountChange + " where Account_No = " + ReciverAccountNo + " ";
                int result1 = st.executeUpdate(query3);
                int result2 = st.executeUpdate(query4);
                if (result1 != 0 && result2 != 0) {
                    String query5 = "insert into Transfer values(" + SenderAccountNo + ", " + ReciverAccountNo + ", " + Transferamount + " )";
                    int i = st.executeUpdate(query5);
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Transaction done successfully !');");
                    out.println("location='Home.jsp';");
                    out.println("</script>");
                } else {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Transaction Failed! Try again.');");
                    out.println("</script>");
                }
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Amount invalid . try again..');");
                out.println("</script>");
            }
            con.close();
            rs.close();
            st.close();
        } catch (Exception ex) {
            System.out.println(ex);
        }
    %>

</body>
<script type="text/javascript" src="jquery.js" ></script>
<script type="text/javascript" src="bootstrap.min.js" ></script>
</html>
