<!DOCTYPE html>
<html lang="en">

<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>StayFit</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <!-- owl css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <!-- responsive-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/responsive.css">
    <!-- awesome fontfamily -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>
<!-- body -->

<body class="main-layout">

    <div class="wrapper">
        <!-- end loader -->

        <div class="sidebar">
            <!-- Sidebar  -->
            <nav id="sidebar">

                <div id="dismiss">
                    <i class="fa fa-arrow-left"></i>
                </div>

                <ul class="list-unstyled components">

                    <li class="active">
                        <a href="${pageContext.request.contextPath}/user/showHomePage">Home</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/user/showAboutPage">About</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/user/trainingVideo">Training Videos</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/user/trainerInfo">Trainers</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/user/showContactPage">Contact & Donation</a>
                    </li>
                </ul>

            </nav>
        </div>

        <div id="content">
            <!-- header -->
            <header>
                <div class="container">
                    <div class="row bor_bottom">
                        <div class="col-md-3">
                            <div class="full">
                                <a class="logo" href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="#" width="100" height="100"/></a>
                            </div>
                        </div>

                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
                            <ul class="social_top_icon">
                                <li> <a href="https://www.facebook.com"><i class="fa fa-facebook-f"></i></a></li>
                                <li> <a href="https://www.twitter.com"><i class="fa fa-twitter"></i></a></li>
                                <li> <a href="https://www.instagram.com"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>

                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                            <div class="full">
                                <div class="right_header_info">
                                    <ul>
                                        <li>
                                            <button type="button" id="sidebarCollapse">
                                                <img src="${pageContext.request.contextPath}/resources/images/menu_icon.png" alt="#">
                                            </button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- end header -->
            <!-- start slider section -->
            <div class="slider_section banner_main">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="main_text">
                                <h1>Welcome <br><strong class="bold_text">Stay</strong><strong class="bold_text_black">Fit</strong></h1>
                                <span>It is the time to get healthy! Join Us!</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end slider section -->

            <!-- Gallery -->
            <div id="gallery" class="Gallery">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title">
                                <h2>Latest<strong class="black"> Gallery</strong></h2>
                                <span>The Journey that we have to take!</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-5 col-lg-5 col-md-5 col-sm-12">
                            <div class="row">
                                <div class="col-md-12 mar_bottom">
                                    <div class="Gallery_box">
                                        <figure><img src="${pageContext.request.contextPath}/resources/images/gallery1.jpg" alt="#" /></figure>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="Gallery_box">
                                        <figure><img src="${pageContext.request.contextPath}/resources/images/gallery4.jpg" alt="#" /></figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-7 col-md-7 col-sm-12">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 mar_bottom">
                                    <div class="Gallery_box">
                                        <figure><img src="${pageContext.request.contextPath}/resources/images/gallery2.jpg" alt="#" /></figure>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 mar_bottom">
                                    <div class="Gallery_box">
                                        <figure><img src="${pageContext.request.contextPath}/resources/images/gallery3.jpg" alt="#" /></figure>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                    <div class="Gallery_box">
                                        <figure><img src="${pageContext.request.contextPath}/resources/images/gallery5.jpg" alt="#" /></figure>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                    <div class="Gallery_box">
                                        <figure><img src="${pageContext.request.contextPath}/resources/images/gallery6.jpg" alt="#" /></figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end Gallery -->


            <!-- footer -->


        </div>
        <footer>
            <div class="footer">
                <div class="copyright">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <p>?2022 Sean Chi - StayFit</a></p>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <ul class="social_icon">
                                    <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                    <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li> <a href="#"><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end footer -->


    <div class="overlay"></div>
    <!-- Javascript files-->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>

    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.0.0.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#sidebar").mCustomScrollbar({
                theme: "minimal"
            });

            $('#dismiss, .overlay').on('click', function() {
                $('#sidebar').removeClass('active');
                $('.overlay').removeClass('active');
            });

            $('#sidebarCollapse').on('click', function() {
                $('#sidebar').addClass('active');
                $('.overlay').addClass('active');
                $('.collapse.in').toggleClass('in');
                $('a[aria-expanded=true]').attr('aria-expanded', 'false');
            });
        });
    </script>