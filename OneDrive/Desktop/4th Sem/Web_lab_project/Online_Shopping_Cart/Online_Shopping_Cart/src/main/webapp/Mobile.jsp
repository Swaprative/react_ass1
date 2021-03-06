<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Seymour+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="Category.css">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Mobile | S-cart</title>
</head>
<body>
	<header>
		<div class="logo">
			<div style="color: red; font-family: 'Seymour One', sans-serif; font-size: 48px;">S</div>
			<div style="color:green; font-family:'Seymour One', sans-serif; font-size: 48px;">-</div>
			<div style="color: blue; font-family: 'Seymour One', sans-serif; font-size: 48px;">c</div>
			<div style="color: rgb(226, 226, 89); font-family: 'Seymour One', sans-serif; font-size: 48px;">a</div>
			<div style="color: orange; font-family: 'Seymour One', sans-serif; font-size: 48px;">r</div>
			<div style="color: skyblue; font-family: 'Seymour One', sans-serif; font-size: 48px;">t</div>
		</div>
		<div class="head">
			<ul>
			<li><a href=""><i class="fa fa-handshake-o" style="color: black;"></i> Help and Support</a></li>
			<li><a href=""><i class="fa fa-bell-o" style="color: black;"></i> Notification</a></li>
			</ul>
		</div>
		<div class="search">
			<form action="Search.jsp" method="post">
			<input type="text" name="search">
			<a href="Search.jsp"><button><i class="fa fa-search"></i> Search</button></a></form>
		</div>
		<%String name = (String)session.getAttribute("name"); %>
		<div class="acc_cart">
			<a href="Myaccount.jsp"><button class="user"><i class="fa fa-user"></i> <%out.print(name); %></button></a>
			<a href="Cart.jsp"><button class="cart"><i class="fa fa-shopping-cart"></i> My cart</button></a>
		</div>
	</header>
	<nav>
		<a href="Home.jsp"><i class="fa fa-home"></i> Home</a>
		<a href="Fashion.jsp"><i class="fa fa-suitcase"></i> Fashion</a>
		<a href="Medicine.jsp"><i class="fa fa-medkit"></i> Medicine</a>
		<a href="Electronics.jsp"><i class="fa fa-tv"></i> Electronic</a>
		<a href="Mobile.jsp"><i class="fa fa-phone"></i> Mobile</a>
		<a href="Home-app.jsp"><i class="fa fa-plug"></i> Home-appliences</a>
	</nav>
	<%
			int i = 0;
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "root");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from mobiles");
				if (rs.next() && i == 0) {
				i = 1;
			%>
	<div style="display: flex;">
		<img class="cat_items" src="https://m.media-amazon.com/images/I/71w3oJ7aWyL._SL1500_.jpg">
		<span style="position:relative; margin-top: 40px; 
		font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-weight: bolder;
		font-size: 50px;">APPLE iPhone 11 <br></span>
		<span style="position:relative;  margin-top: 40px; font-weight: 900; right: 25%;"><br><br><br><br><br><br>Price: Rs.54,900.00<br>
			Inclusive of all taxes</span>
		<span style="position:relative; margin-top: 40px; top: 50px;">128 GB ROM <br> 15.49 cm (6.1 inch) Liquid Retina HD Display <br> 12MP + 12MP | 12MP Front Camera <br> 
			A13 Bionic Chip Processor With Neural Engine</span>
	</div>
	<a href="Mobilecart.jsp?id=<%=rs.getString(1)%>"><button style="position: relative;
		width: auto; background-color: rgb(223, 223, 103); color: black; 
		border-radius: 5px; padding: 5px; width: 10vw; font-weight: 700; font-size: 18px;
		transform: translate(32vw,-18vh);"> Add to Cart</button></a>
		<%
			}
			%>
			<%
			if (rs.next() && i == 1) {
				i = 2;
			%>
	<div style="display: flex;">
		<img class="cat_items" style="left: 6%;" src="https://images-na.ssl-images-amazon.com/images/I/41E6sCbEffL.jpg">
		<span style="position:relative; margin-top: 40px; 
		font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-weight: bolder;
		font-size: 50px; left: 14%;">realme X7 Pro <br></span>
		<span style="position:relative;  margin-top: 40px; font-weight: 900; right: 7%;"><br><br><br><br><br><br>Price: Rs.28,499<br>
			Inclusive of all taxes</span>
		<span style="position:relative; margin-top: 40px; top: 50px; left: 18%;">8 GB RAM | 128 GB ROM <br> 16.64 cm (6.55 inch) Full HD+ Display <br> 64MP + 8MP + 2MP + 2MP | 32MP Front Camera <br> 
			MediaTek Dimensity 1000 Plus Processor</span>
	</div>
	<a href="Mobilecart.jsp?id=<%=rs.getString(1)%>"><button style="position: relative;
		width: auto; background-color: rgb(223, 223, 103); color: black; 
		border-radius: 5px; padding: 5px; width: 10vw; font-weight: 700; font-size: 18px;
		transform: translate(32vw,-18vh);"> Add to Cart</button></a>
		<%
			}
			%>
			<%
			if (rs.next() && i == 2) {
				i = 3;
			%>
	<div style="position: relative; display: flex; left: 2%;">
		<img class="cat_items" style="width: 300px;" src="https://images-na.ssl-images-amazon.com/images/I/519KIlHA2wL._SL1024_.jpg">
		<span style="position:relative; margin-top: 40px; 
		font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-weight: bolder;
		font-size: 50px; left: 6%;">Apple iPhone XR <br></span>
		<span style="position:relative;  margin-top: 40px; font-weight: 900; right: 19%;"><br><br><br><br><br><br>Price: Rs.46,999.00<br>
			Inclusive of all taxes</span>
		<span style="position:relative; margin-top: 40px; top: 50px;left: 6%;">128 GB ROM <br> 15.49 cm (6.1 inch) HD Display <br> 12MP | 7MP Front Camera <br> 
			A12 Bionic Chip Processor With Neural Engine</span>
	</div>
	<a href="Mobilecart.jsp?id=<%=rs.getString(1)%>"><button style="position: relative;
		width: auto; background-color: rgb(223, 223, 103); color: black; 
		border-radius: 5px; padding: 5px; width: 10vw; font-weight: 700; font-size: 18px;
		transform: translate(32vw,-18vh);"> Add to Cart</button></a>
		<%
			}
			%>
			<%
			if (rs.next() && i == 3) {
				i = 4;
			%>
	<div style="position: relative; display: flex; left: 5%;">
		<img class="cat_items" style="width: 200px;" src="https://images-na.ssl-images-amazon.com/images/I/61blpkX3jyL._SL1500_.jpg">
		<span style="position:relative; margin-top: 40px; left: 10%; 
		font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-weight: bolder;
		font-size: 50px;">realme X50 Pro <br></span>
		<span style="position:relative;  margin-top: 40px; font-weight: 900; right: 14%;"><br><br><br><br><br><br>Price: Rs.30,999.00<br>
			Inclusive of all taxes</span>
		<span style="position:relative; margin-top: 40px; top: 50px; left: 10%;">12 GB RAM | 256 GB ROM <br> 16.36 cm (6.44 inch) Full HD+ Display <br> 64MP + 12MP + 8MP + 2MP | 32MP + 8MP Dual Front Camera <br> 
			Qualcomm Snapdragon 865 Processor</span>
	</div>
	<a href="Mobilecart.jsp?id=<%=rs.getString(1)%>"><button style="position: relative;
		width: auto; background-color: rgb(223, 223, 103); color: black; 
		border-radius: 5px; padding: 5px; width: 10vw; font-weight: 700; font-size: 18px;
		transform: translate(32vw,-18vh);"> Add to Cart</button></a>
		<%
			}
			%>
			<%
			if (rs.next() && i == 4) {
			%>
	<div style="display: flex;">
		<img class="cat_items" src="https://images-na.ssl-images-amazon.com/images/I/61UT9AvxZHL._SL1000_.jpg">
		<span style="position:relative; margin-top: 40px; left: 2%; 
		font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-weight: bolder;
		font-size: 50px;">POCO X3 <br></span>
		<span style="position:relative;  margin-top: 40px; font-weight: 900; right: 11%;"><br><br><br><br><br><br>Price: Rs.18,999.00<br>
			Inclusive of all taxes</span>
		<span style="position:relative; margin-top: 40px; top: 50px; left: 13%;">6 GB RAM | 128 GB ROM <br> 16.94 cm (6.67 inch) Full HD+ Display <br> 48MP + 8MP + 2MP + 2MP | 20MP Front Camera <br> 
			Qualcomm Snapdragon 860 Processor</span>
	</div>
	<a href="Mobilecart.jsp?id=<%=rs.getString(1)%>"><button style="position: relative;
		width: auto; background-color: rgb(223, 223, 103); color: black; 
		border-radius: 5px; padding: 5px; width: 10vw; font-weight: 700; font-size: 18px;
		transform: translate(32vw,-18vh);"> Add to Cart</button></a>
<%
			}
			} 
			catch (Exception e) {
			System.out.println(e);
			}
			%>
</body>
</html>