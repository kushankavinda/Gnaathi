<!DOCTYPE html>
<html>
<head>
	<title>Dengue</title>
        
        <link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" href="css/css_after_navigation.css">
        <link rel="stylesheet" href="css/css_vidgal_home.css">

  <style type="text/css">

    body{
    font-family: "Lato", sans-serif;
    background-size: cover;
    background-repeat: no-repeat;
    background-color: lightsteelblue;
  }


     .video {
    background:#6398ed;
    padding-bottom: 10px;
    box-shadow: 0 2px 2px rgba(0, 0, 0, 0.15);
    width: 18%; /* Thumbnails 5 across */
    height: 250px;
    margin: 1%;
    float: left;
    border-color: black;
    border-width: 5px;
    border-radius: 15px;
    }

  </style>

</head>
<body>

 <span style="color: #636568;font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Video Navigation</span>

        <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a href="index.jsp">Video Gallery Home</a>
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
        
        <br><br>


<div class="head">
<center>
<h1>If you think you are too small to make a difference,<br> 
try sleeping with a mosquito.</h1>
</center>
</div>



<div class="category">

<article class="video">

    <figure>

      <a class="fancybox fancybox.iframe" href="https://www.youtube.com/embed/0PUsdv1kDTc">
      <img class="videoThumb" src="https://i.ytimg.com/vi/OrxYPYnro6w/maxresdefault.jpg"></a>

    </figure>

    <center><h2 class="videoTitle">Dengue virus infection</h2></center>

 </article>





    </div>

 <footer>
 	
 	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script>
  	<script src="js/jquery.fancybox.min.js"></script>

  	<script>
    $(document).ready(function() {
      $('.fancybox').fancybox({
        padding   : 0,
        maxWidth  : '100%',
        maxHeight : '100%',
        width   : 500,
        height    : 300,
        autoSize  : true,
        closeClick  : true,
        openEffect  : 'elastic',
        closeEffect : 'elastic'
      });
    });
  </script>

 </footer>
        
        <script>
            function openNav() {
                document.getElementById("mySidenav").style.width = "250px";
                document.getElementById("main").style.marginLeft = "250px";
            }

            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
                document.getElementById("main").style.marginLeft = "0";
            }
        </script>



</body>
</html>


