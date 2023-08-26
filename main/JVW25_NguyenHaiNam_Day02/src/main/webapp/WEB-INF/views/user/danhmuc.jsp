<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách sản phẩm</title>
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/user/layout/css.jsp"></jsp:include>

</head>

<body>
    <div class="wrapper">
        <!-- Header -->
        <jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>
        <!-- /Header -->
        <main class="main">
            <div class="main__breadcrumb">
                <div class="container">
                    <div class="bread-crumb">
                        <span><a href="./index.html">Trang chủ</a></span>
                        <span><a href="#">Danh mục sản phẩm</a></span>
                    </div>
                </div>
            </div>
            <div class="main__section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 none block">
                            <div class="section__sidebar-widget">
                                <div class="widget__inner">
                                    <div class="widget__list">
                                        <h3 class="widget__title">Search</h3>
                                        <div class="widget__search-box">
                                            <input type="text" placeholder="Tìm kiếm..." class="widget__input">
                                            <button class="search-icon">
                                                <i class='bx bx-search'></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="widget__list">
                                        <h3 class="widget__title">Danh mục</h3>
                                        <div class="widget__list-body">
                                            <ul class="sidebar-list">
                                                <li><a href="#">Tất cả sảm phẩm</a></li>
                                                <li><a href="#">Chó Alaska Malamute (29)</a></li>
                                                <li><a href="#">Chó Corgi (18)</a></li>
                                                <li><a href="#">Chó Poodle (20)</a></li>
                                                <li><a href="#">Mèo Anh (Dài + Ngắn) (3)</a></li>
                                                <li><a href="#">Sản phẩm mới (8)</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="widget__list">
                                        <h3 class="widget__title">Tags</h3>
                                        <div class="widget__list-body">
                                            <ul class="tags">
                                                <li><a href="#">Dogs</a></li>
                                                <li><a href="#">Cats</a></li>
                                                <li><a href="#">Alaska</a></li>
                                                <li><a href="#">Thức ăn</a></li>
                                                <li><a href="#">Hubby</a></li>
                                                <li><a href="#">Animals</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-9 col-12">
                            <div class="toolbar__wrapper">
                                <div class="toolbar__left">
                                    <div class="tool__left-btn">
                                        <i class='bx bxs-grid active-btn'></i>
                                        <i class='bx bx-menu'></i>
                                    </div>
                                </div>
                                <div class="toolbar__right">
                                    <h4 class="tool__right-title">Sắp xếp:</h4>
                                    <div class="toolbar__right-shortby">
                                        <select class="short-by">
                                            <option selected>Theo độ phổ biến</option>
                                            <option>Theo giá: Thấp đến cao</option>
                                            <option>Theo giá: Cao đến thấp</option>
                                            <option>Theo sản phẩm mới</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row section__shop-wrapper">
                                <div class="col-12 col-lg-4 col-md-6">
                                    <div class="product">
                                        <div class="thumb">
                                            <a href="${classpath}/sanpham" class="image">
                                                <img src="${classpath}/user/./img/products/1.jpg" class="fit-img zoom-img">
                                            </a>
                                            <span class="badges">
                                                <span class="sale">-20%</span>
                                                <span class="new">new</span>
                                            </span>
                                        </div>
                                        <div class="content">
                                            <a href="${classpath}/sanpham" class="content-link">
                                                <h5 class="title">Chó mèo</h5>
                                            </a>
                                            <span class="price">
                                                <span class="old">20.000.000đ</span>
                                                <span class="new">15.000.000đ</span>
                                            </span>
                                            <span class="symbol">
                                                <a href="#"><i class='bx bx-heart'></i></a>
                                                <a href="#"><i class='bx bx-cart'></i></a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4 col-md-6">
                                    <div class="product">
                                        <div class="thumb">
                                            <a href="${classpath}/sanpham" class="image">
                                                <img src="${classpath}/user/./img/products/6.jpg" class="fit-img zoom-img">
                                            </a>
                                            <span class="badges">
                                                <span class="sale">-20%</span>
                                            </span>
                                        </div>
                                        <div class="content">
                                            <a href="${classpath}/sanpham" class="content-link">
                                                <h5 class="title">Chó mèo</h5>
                                            </a>
                                            <span class="price">
                                                <span class="old">20.000.000đ</span>
                                                <span class="new">15.000.000đ</span>
                                            </span>
                                            <span class="symbol">
                                                <a href="#"><i class='bx bx-heart'></i></a>
                                                <a href="#"><i class='bx bx-cart'></i></a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4 col-md-6">
                                    <div class="product">
                                        <div class="thumb">
                                            <a href="${classpath}/sanpham" class="image">
                                                <img src="${classpath}/user/./img/products/4.jpeg" class="fit-img zoom-img">
                                            </a>
                                            <span class="badges">
                                                <!-- <span class="sale">-20%</span> -->
                                            </span>
                                        </div>
                                        <div class="content">
                                            <a href="${classpath}/sanpham" class="content-link">
                                                <h5 class="title">Chó mèo</h5>
                                            </a>
                                            <span class="price">
                                                <!-- <span class="old">20.000.000đ</span> -->
                                                <span class="new">15.000.000đ</span>
                                            </span>
                                            <span class="symbol">
                                                <a href="#"><i class='bx bx-heart'></i></a>
                                                <a href="#"><i class='bx bx-cart'></i></a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4 col-md-6">
                                    <div class="product">
                                        <div class="thumb">
                                            <a href="${classpath}/sanpham" class="image">
                                                <img src="${classpath}/user/./img/products/8.jpg" class="fit-img zoom-img">
                                            </a>
                                            <span class="badges">
                                                <span class="sale">-10%</span>
                                            </span>
                                        </div>
                                        <div class="content">
                                            <a href="${classpath}/sanpham" class="content-link">
                                                <h5 class="title">Chó mèo</h5>
                                            </a>
                                            <span class="price">
                                                <span class="old">20.000.000đ</span>
                                                <span class="new">15.000.000đ</span>
                                            </span>
                                            <span class="symbol">
                                                <a href="#"><i class='bx bx-heart'></i></a>
                                                <a href="#"><i class='bx bx-cart'></i></a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4 col-md-6">
                                    <div class="product">
                                        <div class="thumb">
                                            <a href="${classpath}/sanpham" class="image">
                                                <img src="${classpath}/user/./img/products/3.jpeg" class="fit-img zoom-img">
                                            </a>
                                            <span class="badges">
                                                <!-- <span class="sale">-20%</span> -->

                                            </span>
                                        </div>
                                        <div class="content">
                                            <a href="${classpath}/sanpham" class="content-link">
                                                <h5 class="title">Chó mèo</h5>
                                            </a>
                                            <span class="price">
                                                <!-- <span class="old">20.000.000đ</span> -->
                                                <span class="new">15.000.000đ</span>
                                            </span>
                                            <span class="symbol">
                                                <a href="#"><i class='bx bx-heart'></i></a>
                                                <a href="#"><i class='bx bx-cart'></i></a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4 col-md-6">
                                    <div class="product">
                                        <div class="thumb">
                                            <a href="${classpath}/sanpham" class="image">
                                                <img src="${classpath}/user/./img/products/7.jpeg" class="fit-img zoom-img">
                                            </a>
                                            <span class="badges">
                                                <span class="sale">-20%</span>
                                            </span>
                                        </div>
                                        <div class="content">
                                            <a href="./sanpham.html" class="content-link">
                                                <h5 class="title">Chó mèo</h5>
                                            </a>
                                            <span class="price">
                                                <span class="old">20.000.000đ</span>
                                                <span class="new">15.000.000đ</span>
                                            </span>
                                            <span class="symbol">
                                                <a href="#"><i class='bx bx-heart'></i></a>
                                                <a href="#"><i class='bx bx-cart'></i></a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4 col-md-6">
                                    <div class="product">
                                        <div class="thumb">
                                            <a href="${classpath}/sanpham" class="image">
                                                <img src="${classpath}/user/./img/products/8.jpg" class="fit-img zoom-img">
                                            </a>
                                            <span class="badges">
                                                <span class="sale">-10%</span>
                                            </span>
                                        </div>
                                        <div class="content">
                                            <a href="${classpath}/sanpham" class="content-link">
                                                <h5 class="title">Chó mèo</h5>
                                            </a>
                                            <span class="price">
                                                <span class="old">20.000.000đ</span>
                                                <span class="new">15.000.000đ</span>
                                            </span>
                                            <span class="symbol">
                                                <a href="#"><i class='bx bx-heart'></i></a>
                                                <a href="#"><i class='bx bx-cart'></i></a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4 col-md-6">
                                    <div class="product">
                                        <div class="thumb">
                                            <a href="${classpath}/sanpham" class="image">
                                                <img src="${classpath}/user/./img/products/3.jpeg" class="fit-img zoom-img">
                                            </a>
                                            <span class="badges">
                                                <!-- <span class="sale">-20%</span> -->
                                            </span>
                                        </div>
                                        <div class="content">
                                            <a href="${classpath}/sanpham" class="content-link">
                                                <h5 class="title">Chó mèo</h5>
                                            </a>
                                            <span class="price">
                                                <!-- <span class="old">20.000.000đ</span> -->
                                                <span class="new">15.000.000đ</span>
                                            </span>
                                            <span class="symbol">
                                                <a href="#"><i class='bx bx-heart'></i></a>
                                                <a href="#"><i class='bx bx-cart'></i></a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4 col-md-6">
                                    <div class="product">
                                        <div class="thumb">
                                            <a href="${classpath}/sanpham" class="image">
                                                <img src="${classpath}/user/./img/products/7.jpeg" class="fit-img zoom-img">
                                            </a>
                                            <span class="badges">
                                                <span class="sale">-20%</span>
                                            </span>
                                        </div>
                                        <div class="content">
                                            <a href="${classpath}/sanpham" class="content-link">
                                                <h5 class="title">Chó mèo</h5>
                                            </a>
                                            <span class="price">
                                                <span class="old">20.000.000đ</span>
                                                <span class="new">15.000.000đ</span>
                                            </span>
                                            <span class="symbol">
                                                <a href="#"><i class='bx bx-heart'></i></a>
                                                <a href="#"><i class='bx bx-cart'></i></a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="section__shop-toolbars">
                                <div class="shop__toolbar">
                                    <ul class="pagination">
                                        <li class="pages-item active"><a href="#" class="pages-link">1</a></li>
                                        <li class="pages-item"><a href="#" class="pages-link">2</a></li>
                                        <li class="pages-item"><a href="#" class="pages-link">3</a></li>
                                        <li class="pages-item"><a href="#" class="pages-link"><i
                                                    class='bx bx-chevrons-right'></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- Footer -->
		<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
		<!-- /Footer -->
        <div class="scroll__top">
            <i class='bx bx-up-arrow-alt'></i>
        </div>
        <div class="mobile__menu-wrapper">
            <div class="mobile__menu-body">
                <div class="mobile__btn-close">
                    <i class='bx bx-x'></i>
                </div>
                <div class="mobile__content">
                    <div class="mobile__search-box">
                        <form>
                            <input type="text" placeholder="Tìm kiếm..." class="mobile__search-input">
                            <button class="mobile__search-btn">
                                <i class='bx bx-search'></i>
                            </button>
                        </form>
                    </div>
                    <div class="mobile__navigation">
                        <ul class="mobile__nav">
                            <li class="mobile__children"><a href="${classpath}/index" class="mobile__link">Trang chủ</li>
                            <li class="mobile__children">
                                <a href="#" class="mobile__link">Thú cưng
                                    <i class='bx bx-chevron-down'></i>
                                </a>
                                <ul class="mobile__submenu">
                                    <li class="mobile__submenu-item"><a href="${classpath}/danhmuc"
                                            class="mobile__submenu-link">Chó
                                            Corgi</a></li>
                                    <li class="mobile__submenu-item"><a href="${classpath}/danhmuc"
                                            class="mobile__submenu-link">Chó
                                            Beagle</a></li>
                                    <li class="mobile__submenu-item"><a href="${classpath}/danhmuc"
                                            class="mobile__submenu-link">Chó Alaska
                                            Malamute</a></li>
                                    <li class="mobile__submenu-item"><a href="${classpath}/danhmuc"
                                            class="mobile__submenu-link">Chó Golden
                                            Retriever</a></li>
                                    <li class="mobile__submenu-item"><a href="${classpath}/danhmuc"
                                            class="mobile__submenu-link"> Chó Husky
                                            Siberian</a></li>
                                </ul>
                            </li>
                            <li class="mobile__children"><a href="#" class="mobile__link">Phụ kiện</a></li>
                            <li class="mobile__children">
                                <a href="#" class="mobile__link">Dịch vụ <i class='bx bx-chevron-down'></i></a>
                                <ul class="mobile__submenu">
                                    <li class="mobile__submenu-item"><a href="#" class="mobile__submenu-link">Spa</a>
                                    </li>
                                    <li class="mobile__submenu-item"><a href="#" class="mobile__submenu-link">Chăm sóc
                                            thú cưng</a></li>
                                </ul>
                            </li>
                            <li class="mobile__children"><a href="./lienhe.html" class="mobile__link">Liên hệ </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Slider -->
    <jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>

</body>

</html>