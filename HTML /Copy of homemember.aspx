<!DOCTYPE html>
<style>

.nav {
background-color: #5fb962;
overflow: hidden;
position: fixed; 
top: 0; 
width: 100%;
z-index: 6; 
}

.nav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font: normal 14px Verdana;
	}

.nav a:hover {
	background-color: #F2F2F2;
	color: black;
	cursor: pointer;
	}

.nav a:active {
	background-color: #FFFFFF;
	color: black;
	border: 2px solid #56CB5A;
	}



body, html {
    height: 100%;
	margin: 0;
	width: 100%;
	}

#Hero {
    height: 40%;
    position: relative;
	margin: 0;
	}


#header {
	color: white;
    font: normal 30px Verdana;
    text-align: center;
	line-height: 200px;
	left: 23.5%;
	}
		
.link a {
    display: block;
    text-align: center;
    width: 150px;
    margin: 0px auto;
    padding: 20px;
    color: white;
    text-transform: uppercase;
    font: normal 12px Verdana;
    border: 1px solid #fff;
    text-decoration: none;
    border-radius: 10px;
	position: absolute;
	z-index: 5;
	cursor: pointer;
	}


#header,
.link {
	height: 100%;
	position: absolute;
	z-index:5;
	}


.slidePic {
    position: absolute;
    width:  100%;
    height: 400px;
    background-repeat:   no-repeat;
    background-size:     cover;
	top: 10%;
	opacity: 1;
	z-index: 1;
	}

.link {
	line-height: 10px;
	z-index: 5;
	text-align: center;
	top: 55%;
	left: 43%;
	}


#description {
	margin-top: 1%;
	margin-bottom: 30%;
		}

#bands {
	margin-top: 30%;
	margin-bottom: 5%;
	}
		
#disc {
	padding: 15px 40px;
	width: 50%;
	font: normal 14px Verdana;
	color: black;
	line-height: 30px;
	position: absolute;
	clear: both;
	}

#leg {
	padding-left: 40px;
	width: 50%;
	font: normal 14px Verdana;
	color: black;
	line-height: 30px;
	clear: both;

	}
	
.logo {
	margin-top: 35px;
	float: right;
	padding: 15px 40px;
	}

.title {
	margin-top: 7%;
	text-align: center;
	font: normal 25px Verdana;
	}

.dropbtn {
    background-color: #5fb962;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
	height: 45px;
	text-align: center;
	font: normal 14px Verdana;
}

.dropbtn:hover {
	background-color: white;
	color: black;
	}

.pageNav {
	position: fixed;
	display: block;
	top: 0;
	right: 0;
	z-index: 5;
		}
		
.content {
	display: none;
    position: fixed;
    background-color: #5fb962;
    z-index: 1;
	width: 100%;
	}

.content a {
	color: white;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
	font: normal 14px Verdana;
	}
	
.content a:hover {
		background-color: #f3f3f3;
		color: black;
		}
.pageNav:hover .content {
	display: block;
	}
	
.pageNav:hover .dropbtn {
	background-color: #f2f2f2;
	color: black;
	}
	
.pageNav:hover {
	color: black;
	}
	
section {
	display: block;
	}

.orderClick a {
	display: block;
    text-align: center;
    width: 150px;
    padding: 20px;
    color: black;
    text-transform: uppercase;
    font: normal 12px Verdana;
    border: 1px solid #000000;
    text-decoration: none;
    border-radius: 10px;
	z-index: 5;
	cursor: pointer;
	}

.orderClick {
	margin-top: 60px;
	left: 100px;
	}
</style>
<html>
<head>

<!-- navigation!-->
<div class="nav">

<a href="homemember.aspx">Home</a>
<a href="bandorder.aspx">Band Order</a>
<a href="membership.aspx">Membership</a>
</div>

<div class = "pageNav">
	<button class = "dropbtn"> Teleport </button>
<div class = "content">
	<a href="http://raml.biz/GUY/homemember.aspx#disc">Intro</a>
	<a href="http://raml.biz/GUY/homemember.aspx#leg">Leg Bands</a>
	<a href="#">3</a>
</div>
</div>


<div id = "Hero">
<div class="slidePic" style="background-image:url('background.png');"></div>
<div class="slidePic" style="background-image:url('bird.png');"></div>
<div class="slidePic" style="background-image:url('bird2.png');"></div>

<div id="header">
    <p>The Aviculture Association Council of Canada</p></div>
	<div class= "link">
	<a href="bandorder.aspx">Order Bands</a>
</div>
</div>




</head>
<body>

<section id = "description">
<div class = "title">
<p> Who Are We? </p>
</div>


<div id = "disc">
<p> The Avicultural Advancement Council of Canada (A.A.C.C.) is a national Canadian organization consisting of avicultural societies, individual 
aviculturists and bird owners. The A.A.C.C. came into being in the early seventies to fulfill the need for a truly national aviculture organization 
to establish a uniform set of standards for the exhibition of cage birds in Canada. Over the years its objects have expanded to include setting 
ethical standards for the management, exhibition, captive breeding and conservation of all non-agriculture bird species kept in captivity in Canada. 
Recently we have been pleased to offer our services to many aviculturalists in Canada who have seen pending local and provincial legislation 
threaten their hobby and their birds. The A.A.C.C. continues to offer many services to its members and affiliates.</p>
</div>
<div class = "logo">
<img src ="http://national-birdshow.com/images/AACC%20-%20LOGO-300%20dpi.gif">
</div>
</section>

<section id = "bands">
<div id = "leg">
<p>
Supplying rings (or leg bands) was the first service the A.A.C.C. offered to our affiliates and the A.A.C.C. has continued to provide excellent and reliable service 
with top quality rings. We distribute a complete ring size chart which lists most birds kept and bred in captivity in Canada from the smallest finches 
to the largest parrots. Our most popular bands are the standard closed variety but steel bands are also available for large parrots as well as colored plastic 
split bands which some breeders use to keep track of smaller birds like canaries and finches. We have registered more than 250 personal codes each year for 
those breeders that desire this service and all told the A.A.C.C. sells more than 60,000 bands per breeding season with sales increasing each year. 
We also maintain a registry of ring bands for identification purposes. Further information on rings can be obtained by visiting our Ring Information Page. 
To locate the correct size band for your bird visit our Ring Size Chart. </p>
</div>
<div class = "orderClick">
<a href="file:///C:/Users/CNS/Desktop/AACC%20Website/bandorder.aspx">Order Bands</a>
</div>
</section>


<script>
var picNum = 0;
slideShow();

function slideShow() {
    var y;
    var x = document.getElementsByClassName("slidePic");
    for (y = 0; y < x.length; y++) {
       x[y].style.display = "none";  
    }
    picNum++;
    if (picNum > x.length) {picNum = 1}    
    x[picNum-1].style.display = "block";  
    setTimeout(slideShow, 3000); // Change image every 3 seconds
}
</script>

</body>
</html>

