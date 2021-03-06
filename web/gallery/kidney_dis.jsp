<!DOCTYPE html>
<html>
<head>
	<title>Kidney Diseases</title>
        
        <link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" href="css/css_after_navigation.css">
        <link rel="stylesheet" href="css/css_vidgal_home.css">
        <link rel="stylesheet" href="css/gallery_header.css">
        <link rel="stylesheet" href="../css/home.css">

</head>

<body>

<span style="color: #636568; font-size:30px; cursor:pointer" onclick="openNav()">&#9776; Video Navigation</span>

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
            <a href="vir_tour.jsp">Virtual Tours</a>
            <a href="religious.jsp">Religious</a>
            <a href="entertainment.jsp">Entertainment</a>
        </div>

<div class="head">
    
<center>
<h1>Don't mind the scattered thoughts, blank stares and the pharmacy in my purse.<br> 
I'm a kidney disease warrior.</h1>
</center>
    
</div>

<center>

        <div id="main">

            <iframe id="mainVideo" width="560" height="315" src="https://www.youtube.com/embed/wY4VvAjYLBU?autoplay=1" frameborder="0" allowfullscreen></iframe>
            
            <div id="myDiv" onclick="changeVideo(event)">

                <div id="vid1"><center><h6>Basics About Kidney Diseases</h6></center><img src="https://img.youtube.com/vi/wY4VvAjYLBU/0.jpg"><label id="vid1_label"></label></div>

                <div id="vid2"><center><h6>Best Diet for Healing Kidneys</h6></center><img src="https://img.youtube.com/vi/hIapd1INkvc/0.jpg"><label id="vid2_label"></label></div>

                <div id="vid3"><center><h6>A Week With a Cancer Patient</h6><img src="https://img.youtube.com/vi/MGA2jhfapno?list=PLGCRpNRQB-dbw9ZviU08CXCBX5Tql7SS0/0.jpg"><label id="vid3_label"></label></div>
                
                <div id="vid4"><center><h6>My Cancer Story</h6><img src="https://img.youtube.com/vi/mG6PQISaAjg/0.jpg"><label id="vid4_label"></label></div>
                
                <div id="vid4"><center><h6>Sister, a Sad Story</h6><img src="https://img.youtube.com/vi/UwmrrCSFEPE/0.jpg"><label id="vid4_label"></label></div>
                
                <div id="vid4"><center><h6>Sharon Kim Story</h6><img src="https://img.youtube.com/vi/xezvOLcPe48/0.jpg"><label id="vid4_label"></label></div>
                
                <div id="vid4"><center><h6>Inspiring Cancer Survivors</h6><img src="https://img.youtube.com/vi/yWrcfii2nKM/0.jpg"><label id="vid4_label"></label></div>
                
                <div id="vid4"><center><h6>Cancer Survivors Inspire</h6><img src="https://img.youtube.com/vi/lRLP7LOu68I/0.jpg"><label id="vid4_label"></label></div>
                
                <div id="vid4"><center><h6>What It's Really Like to Have Cancer</h6><img src="https://img.youtube.com/vi/WsE0todqBXY/0.jpg"><label id="vid4_label"></label></div>
                
                <div id="vid4"><center><h6>Abby's Childhood Cancer Story</h6><img src="https://img.youtube.com/vi/nitxpkaoFyc/0.jpg"><label id="vid4_label"></label></div>
                
                <div id="vid4"><center><h6>Katelyn Shaves Her Head for Kids With Cancer</h6><img src="https://img.youtube.com/vi/cH0xGjBgnks/0.jpg"><label id="vid4_label"></label></div>
                
                <div id="vid4"><center><h6>Emily's Story</h6><img src="https://img.youtube.com/vi/Sz11e0r2L_s/0.jpg"><label id="vid4_label"></label></div>
                
                <div id="vid4"><center><h6>Best and Worst Parts of Cancer</h6><img src="https://img.youtube.com/vi/KNIoZI7yDJU/0.jpg"><label id="vid4_label"></label></div>
                
                <div id="vid4"><center><h6>Top Ten Cancer Facts</h6><img src="https://img.youtube.com/vi/PdUZEpW1akU/0.jpg"><label id="vid4_label"></label></div>
                

                

            </div>
            <script type="text/javascript">
                
                function changeVideo(event)
                {
                    
                    event = event || window.event;

                    var targetElement = event.target || event.srcElement;

                    // if (targetElement == "VIDEO") {
                    var src=targetElement.src;
                    src= src.split("/"); 
                    
                    src="https://www.youtube.com/embed/"+src[4]+"?autoplay=1";
                    
                    document.getElementById("mainVideo").src = src;

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
                    document.getElementById("main").style.marginLeft = "0";
                }
            </script>

        </div>

    </center>

    </body>
</html>
