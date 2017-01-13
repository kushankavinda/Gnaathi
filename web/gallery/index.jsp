<!DOCTYPE html>
<html>
<head>

	<title>Video Gallery Home</title>
<link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
   <link rel="stylesheet" href="css/css_vidgal_home.css">
    <link rel="stylesheet" href="css/gallery_header.css">

</head>

<body>
    
    
    <header>
            <div id='header'>
                <img id='header-background' src="img/edit/websiteedit_0010_headerback.png" alt="header back">
                <a href="../home.jsp"><img id='logo' src="img/edit/websiteedit_0008_logo.png" alt="logo"></a>
                <img id='picture' src="img/edit/websiteedit_0006_picture.png" alt="picture">
                <img id='login' src="img/edit/websiteedit_0000_settings_1.png" alt="login">
                
                <a href="../logout.jsp"><div id='door'><img src="img/edit/home_0006_Layer-4_1.png" alt="door"></div></a>
                

            </div>
        </header>
        

    <span style="color: #636568;font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Video Navigation</span>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="cancer.jsp">Cancer</a>
  <a href="diabetes.jsp">Diabetes</a>
  <a href="std.jsp">STDs</a>
  <a href="kidney_dis.jsp">Kidney Diseases</a>
  <a href="dengue.jsp">Dengue</a>
  <a href="how_to.jsp">How to</a>
  <a href="firstaid.jsp">Tips and First Aid</a>
  <a href="religious.jsp">Religious</a>
  <a href="entertainment.jsp">Entertainment</a>
</div>

<center>

<div id="main">




    <iframe id="mainVideo" width="560" height="315" src="https://www.youtube.com/embed/Wl2_knlv_xw?autoplay=1" frameborder="0" allowfullscreen></iframe>
<br><br><br>

<div id="myDiv" onclick="changeVideo(event)">

	<video class="thumb" src="videos/Life in 4 mins.mp4" type="mp4/video"  ></video>

	<video class="thumb" src="videos/Get Service.mp4" type="mp4/video"  ></video>

	<video class="thumb" src="videos/Faith - a short film.mp4" type="mp4/video"  ></video>

	<video class="thumb" src="videos/Dare to Be - Patient Stories.mp4" type="mp4/video"  ></video>

	<video class="thumb" src="videos/The Hospital Window.mp4" type="mp4/video"  ></video>
	
	<video class="thumb" src="videos/The Most Beautiful Thing (Short Film).mp4" type="mp4/video"  ></video>

</div>



<script type="text/javascript">
	function changeVideo(event)
	{
		event = event || window.event;

		var targetElement = event.target || event.srcElement;

		// if (targetElement == "VIDEO") {

			document.getElementById("mainVideo").src = targetElement.getAttribute("src");

		// }

	}
</script>

<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
}
</script>

</div>

</center>


</body>
</html>