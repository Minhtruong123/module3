<%--
  Created by IntelliJ IDEA.
  User: nlaqu
  Date: 2/9/2023
  Time: 8:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<link rel="stylesheet" href="\css\bootstrap.css">
<link rel="stylesheet" href="\themify-icons\themify-icons.css">
<link rel="stylesheet" href="\style.css">
<body>
<nav class="navbar navbar-expand-lg bg-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand ms-4" href="#">
            <img src="/Picture/tải_xuống-removebg-preview.png" width="23px" height="23px" alt="">
        </a>
        <a class="navbar-brand me-4 text-white" href="#">Group 4</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item mx-3">
                    <a class="nav-link active text-white" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="#">Playlist</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="#">Podcast</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="#">Artist</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="#">Album</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-5 rounded-pill" style="padding-left: 40px" type="search"
                       placeholder="Search Music"
                       aria-label="Search"><i class="ti-search"></i>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item me-4">
                        <a class="nav-link active text-secondary help" aria-current="page" href="#">Help</a>
                    </li>
                    <li class="nav-item me-3">
                        <div class="column-menu"></div>
                    </li>
                    <li class="nav-item mx-2">
                        <i class="ti-user"></i><a class="nav-link active login text-secondary text-nav"
                                                  aria-current="page" href="#">Login</a>
                    </li>
                    <li class="nav-item me-5">
                        <a class="nav-link active register rounded-pill text-black bg-white" aria-current="page"
                           href="#">Register</a>
                    </li>
                </ul>
            </form>
        </div>
    </div>
</nav>

<div class="row" style="margin-top: 56px">
    <div class="col-3 back-ground-grey"></div>
    <div class="col-6 back-ground-grey2 p-0" style="height: 500px">
        <div id="carouselExampleRide" class="carousel slide" data-bs-ride="true">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://www.lofficielvietnam.com/_next/image?url=https%3A%2F%2Fwww.datocms-assets.com%2F56778%2F1671019296-maxresdefault.jpg%3Fauto%3Dformat%252Ccompress%26cs%3Dsrgb&w=3840&q=75"
                         class="d-block w-100 h-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://photo2.tinhte.vn/data/attachment-files/2020/12/5276686_cover.jpg"
                         class="d-block w-100 h-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://m.media-amazon.com/images/I/61dKZra+lKL.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleRide"
                    data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleRide"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <div class="col-3 back-ground-grey">
        <a href=""><h2 class="text-center text-white mt-4">Top Treding Us-Uk</h2></a>
        <ul class="text-white mt-4">
            <li class="mt-2">
                <i class="ti-control-play "></i> <a href="">Hello - Adele</a>
            </li>
            <li class="mt-2">
                <i class="ti-control-play"></i> <a href="">Dynasty - Miia</a>
            </li>
            <li class="mt-2">
                <i class="ti-control-play"></i> <a href="">LoveLy - Billie Eilish, Khalid</a>
            </li>
            <li class="mt-2">
                <i class="ti-control-play"></i><a href=""></a>
            </li>
            <li>
                <i class="ti-control-play"></i><a href=""></a>
            </li>
            <li>
                <i class="ti-control-play"></i><a href=""></a>
            </li>
            <li>
                <i class="ti-control-play"></i><a href=""></a>
            </li>
            <li>
                <i class="ti-control-play"></i><a href=""></a>
            </li>
        </ul>
    </div>
</div>

<%--reason to buy product--%>
<div class="row bg-body-secondary py-5">
    <div class="col-12">
        <div class="row">
            <div class="col-12 text-center">
                <h1>Reasons to upgrade your account?</h1>
            </div>
        </div>
        <div class="row mt-4 d-flex justify-content-center">
            <div class="col-2 text-center float-start">
                <div>
                    <img src="https://i.scdn.co/image/ab671c3d0000f430df61a7d75be4ed36c0857a61" width="142px"
                         height="142px" alt="">
                </div>
                <div>Download</div>
                <div>Listen everywhere</div>
            </div>
            <div class="col-2 text-center float-start">
                <div>
                    <img src="https://i.scdn.co/image/ab671c3d0000f430773401f794c2cc9a1f161cdc" alt="">
                </div>
                <div>Listen to music without ads</div>
                <div>Enjoy music without interruption</div>
            </div>
            <div class="col-2 text-center float-start">
                <div>
                    <img src="https://i.scdn.co/image/ab671c3d0000f430d5f682f0043198ce409efaab" width="142px"
                         height="142px" alt="">
                </div>
                <div>Download</div>
                <div>Listen everywhere</div>
            </div>
            <div class="col-2 text-center float-start">
                <div>
                    <img src="https://i.scdn.co/image/ab671c3d0000f430311a399af710a733778c610c" width="142px"
                         height="142px" alt="">
                </div>
                <div>Play music in any order</div>
                <div>
                    Play any song in the order you like
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Products -->
<section class="plans d-flex align-items-center py-5" id="plans">
    <div class="container text-dark">
        <div class="text-center pb-4">
            <p>OUR SERVICES</p>
            <h2 class="py-2">Choose the package that's right for you</h2>
        </div>
        <div class="row gy-4" data-aos="zoom-in">
            <div class="col-lg-4"
                 style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2); padding-top: 12px; padding-bottom: 12px">
                <div class="card bg-transparent px-4">
                    <h4 class="py-2 text-center">BASIC PACKAGE</h4>
                    <p class="py-3 text-center">Enthusiastic customer support.</p>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>There are many choices.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Can be used on 2 devices.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Fits your pocket.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Discount when buying more than 5 products.</p>
                    </div>
                    <h4 class="py-3">$18/Month</h4>
                    <div class="my-3 bg-success" style="width: 30%">
                        <a class="btn text-light" href="#your-link">
                            <i class="ti-shopping-cart"></i> Buy now</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4"
                 style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2); padding-top: 12px; padding-bottom: 12px">
                <div class="card bg-transparent px-4">
                    <h4 class="py-2 text-center">STANDARD PACKAGE</h4>
                    <p class="py-3 text-center">Listen to all content without advertising</p>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>sale off 50%.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Can be used on 2 devices.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Essential tools.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Brand name good price.</p>
                    </div>
                    <h4 class="py-3">$22/Month</h4>
                    <div class="my-3 bg-success" style="width: 30%">
                        <a class="btn text-light" href="#your-link"><i class="ti-shopping-cart"></i> Buy now</a></a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4"
                 style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2); padding-top: 12px; padding-bottom: 12px">
                <div class="card bg-transparent px-4">
                    <h4 class="py-2 text-center">PREMIUM PACKAGE</h4>
                    <p class="py-3 text-center">Listen to all content without advertising</p>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>gratitude to vip customers.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Can be used on 2 devices.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>10% off your purchase.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Play music in any order.</p>
                    </div>
                    <h4 class="py-3">$30/Month</h4>
                    <div class="my-3 bg-success" style="width: 30%">
                        <a class="btn text-light" href="#your-link"><i class="ti-shopping-cart"></i> Buy now</a></a>
                    </div>
                </div>
            </div>
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</section> <!-- end of products -->

<%--footer--%>
<section class="footer bg-dark text-light">
    <div class="container">
        <div class="row" data-aos="fade-right">
            <div class="col-lg-3 py-4 py-md-5">
                <div class="d-flex align-items-center">
                    <h4 class="">Group 4</h4>
                </div>
                <p class="py-3 para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam atque,
                    deserunt doloremque doloribus et facere, illo ipsam iste molestiae, necessitatibus nobis nulla
                    officia perspiciatis qui ratione similique suscipit vel voluptatem!</p>
            </div> <!-- end of col -->

            <div class="col-lg-3 py-4 py-md-5">
                <div>
                    <h4 class="py-2">Company</h4>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#about"><p class="ms-3">Introduce</p></a>
                    </div>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">Job</p></a>
                    </div>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">For the Record</p></a>
                    </div>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">Contact</p></a>
                    </div>
                </div>
            </div> <!-- end of col -->

            <div class="col-lg-3 py-4 py-md-5">
                <div>
                    <h4 class="py-2">Community</h4>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">For Artists</p></a>

                    </div>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">Developers</p></a>
                    </div>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">
                            Advertisement</p></a>
                    </div>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">
                            Investors</p></a>
                    </div>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">
                            Supplier</p></a>
                    </div>
                </div>
            </div> <!-- end of col -->

            <div class="col-lg-3 py-4 py-md-5">
                <div class="d-flex align-items-center">
                    <h4>Newsletter</h4>
                </div>
                <p class="py-3 para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, voluptatum?</p>
                <div class="d-flex align-items-center">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control p-2" placeholder="Enter Email"
                               aria-label="Recipient's email">
                    </div>
                </div>
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</section> <!-- end of footer -->

<!-- Bottom -->
<div class="bg-dark text-light">
    <div class="container d-flex justify-content-between">
        <div><p class="my-0">&copy; Copyright by Group 4</p><br>
            <p>Distributed by: <a href="#">C1022G1</a></p></div>
        <div>
            <i class="ti-youtube pe-2"></i>
            <i class="ti-facebook pe-2"></i>
            <i class="ti-instagram pe-2"></i>
            <i class="ti-soundcloud pe-2"></i>
        </div>
    </div> <!-- end of container -->
</div> <!-- end of bottom -->

<script src="\js\bootstrap.js"></script>
</body>
</html>