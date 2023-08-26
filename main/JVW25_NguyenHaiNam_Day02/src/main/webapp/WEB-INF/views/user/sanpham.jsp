<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản phẩm</title>
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
                        <span><a href="${classpath}/index">Trang chủ</a></span>
                        <span><a href="${classpath}/danhmuc">Danh mục sản phẩm</a></span>
                        <span><a href="${classpath}/sanpham">Sản phẩm</a></span>
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
                                                <li><a href="#">Tất cả sản phẩm</a></li>
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
                            <div class="section__product-detail">
                                <div class="row">
                                    <div class="col-12 col-lg-5">
                                        <div class="product__detail-img">
                                            <div class="swiper myProduct">
                                                <div class="swiper-wrapper">
                                                    <div class="swiper-slide">
                                                        <img src="${classpath}/user/./img/products/4.jpeg" alt=""
                                                            class="swiper__product-img">
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <img src="${classpath}/user/./img/products/2.jpeg" alt=""
                                                            class="swiper__product-img">
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <img src="${classpath}/user/./img/products/8.jpeg" alt=""
                                                            class="swiper__product-img">
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <img src="${classpath}/user/./img/products/7.jpeg" alt=""
                                                            class="swiper__product-img">
                                                    </div>
                                                </div>
                                                <!-- <div class="swiper-button-next"></div>
                                                <div class="swiper-button-prev"></div> -->
                                                <div class="swiper-pagination"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-7">
                                        <div class="product__detail-summery">
                                            <div class="product__header mb-10">
                                                <h2 class="product__header-title">SAMOYED TRẮNG XINH</h2>
                                            </div>
                                            <div class="product__price mb-10">
                                                <span class="curr__price">15.000.000đ</span>
                                                <span class="old__price">20.000.000đ</span>
                                            </div>
                                            <div class="product__code mb-10">
                                                <span>Mã đơn hàng: ABC123</span>
                                            </div>
                                            <div class="product__inventroy mb-10">
                                                <span class="inventroy-title">Tình trạng: </span>
                                                <span class="inventory__varient">Còn hàng</span>
                                            </div>
                                            <div class="product__quantity mb-10">
                                                <span>
                                                    Số lượng:
                                                </span>
                                                <div class="quantity__plus mb-10">
                                                    <input type="number" name="" id="">
                                                </div>
                                            </div>
                                            <div class="product__cart-button">
                                                <div class="add__to__cart">
                                                    <a href="#" class="add-cart-link">Add to cart</a>
                                                </div>
                                                <a href="#" class="add-cart-heart">
                                                    <i class='bx bx-heart'></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- chi tiết sản phẩm -->
                            <div class="section__product-description">
                                <h2 class="detail__heading">
                                    Chi tiết sản phẩm
                                </h2>
                                <div class="detail__text">
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur nulla
                                        voluptatum dolor, quidem quaerat saepe in. Obcaecati voluptatem ea sapiente,
                                        neque soluta incidunt harum a facilis possimus fuga distinctio voluptates. Lorem
                                        ipsum dolor sit amet consectetur, adipisicing elit. Maiores esse sequi at eius
                                        cumque. Temporibus architecto sunt aperiam corporis corrupti repellendus
                                        doloremque itaque recusandae facere provident voluptate dolore, nulla mollitia?
                                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deserunt, fugit
                                        adipisci. Quasi laboriosam sapiente, explicabo repellat, nemo ex tempore
                                        deserunt a accusamus quas deleniti debitis obcaecati, fugiat reiciendis mollitia
                                        architecto? Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia eos
                                        magni eius eligendi distinctio? Debitis porro veritatis perferendis officia
                                        iusto nostrum quisquam ducimus, consequuntur accusantium doloribus quibusdam
                                        voluptatum recusandae magnam?
                                    </p>
                                </div>
                            </div>

                            <!-- sản phẩm tương tự -->
                            <div class="related__products">
                                <div class="main__products-title">
                                    <p>Sản phẩm tương tự</p>
                                </div>
                                <div class="row">
                                    <div class="swiper myRelated">
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="${classpath}/sanpham" class="image">
                                                            <img src="${classpath}/user/./img/products/3.jpg" class="fit-img zoom-img">
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
                                            <div class="swiper-slide">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="${classpath}/sanpham" class="image">
                                                            <img src="${classpath}/user/./img/products/7.jpg" class="fit-img zoom-img">
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
                                            <div class="swiper-slide">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="${classpath}/sanpham" class="image">
                                                            <img src="${classpath}/user/./img/products/4.jpeg" class="fit-img zoom-img">
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
                                            <div class="swiper-slide">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="${classpath}/sanpham" class="image">
                                                            <img src="${classpath}/user/./img/products/2.jpg" class="fit-img zoom-img">
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
                                            <div class="swiper-slide">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="${classpath}/sanpham" class="image">
                                                            <img src="${classpath}/user/./img/products/8.jpeg" class="fit-img zoom-img">
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
                                            <div class="swiper-slide">
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
                                            <div class="swiper-slide">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="${classpath}/sanpham" class="image">
                                                            <img src="${classpath}/user/./img/products/4.jpg" class="fit-img zoom-img">
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
                                            <div class="swiper-slide">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="${classpath}/sanpham" class="image">
                                                            <img src="${classpath}/user/./img/products/8.jpg" class="fit-img zoom-img">
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
                                            <div class="swiper-slide">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="${classpath}/sanpham" class="image">
                                                            <img src="${classpath}/user/./img/products/5.jpeg" class="fit-img zoom-img">
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
                                        <div class="swiper-button-next next"></div>
                                        <div class="swiper-button-prev prev"></div>
                                        <div class="swiper-pagination"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <footer class="footer">
            <div class="footer__top">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-lg-3 col-md-6">
                            <div class="footer-widget">
                                <div class="widget-header">
                                    <h1 class="title">Về chúng tôi</h1>
                                </div>
                                <div class="widget-content">
                                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Magni, dicta libero
                                        debitis delectus eum praesentium esse error eius odio, maxime labore iste earum
                                        ratione natus autem illum porro veniam enim.</p>
                                </div>
                                <div class="widget-social">
                                    <i class='bx bxl-facebook'></i>
                                    <i class='bx bxl-instagram'></i>
                                    <i class='bx bxl-youtube'></i>
                                    <i class='bx bxl-github'></i>

                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-3 col-md-6">
                            <div class="footer-widget">
                                <div class="widget-header">
                                    <h1 class="title">Hỗ trợ khách hàng</h1>
                                </div>
                                <div class="widget-list">
                                    <ul>
                                        <li><a href="#">Hướng dẫn mua hàng</a></li>
                                        <li><a href="#">Điều khoản và điều kiện</a></li>
                                        <li><a href="#">Chính sách bảo mật</a></li>
                                        <li><a href="#">Chính sách thanh toán</a></li>
                                        <li><a href="#">Chất lượng dịch vụ</a></li>
                                        <li><a href="#">Hướng dẫn gửi trả hàng</a></li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                        <div class="col-12 col-lg-3 col-md-6">
                            <div class="footer-widget">
                                <div class="widget-header">
                                    <h1 class="title">Địa chỉ liên hệ</h1>
                                </div>
                                <div class="widget-list">
                                    <ul>
                                        <li>Tầng 1, số 1 Trung Hòa, Cầu Giấy, Hà Nội</li>
                                        <li>Email: <i>mail@gmail.com.vn</i></li>
                                        <li>Hotline: 0123456789</li>
                                        <li>muopham.com</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-3 col-md-6">
                            <div class="footer-widget">
                                <div class="widget-header">
                                    <h1 class="title">Đăng ký nhận tin:</h1>
                                </div>
                                <div class="widget-content">
                                    <p>Đăng ký nhận tin mới nhất và được giảm giá 10% khi mua hàng đầu tiên của
                                        bạn ..</p>
                                </div>
                                <div class="widget-subscribe">
                                    <form action="">
                                        <input type="email" id="subs-email" placeholder="mail@gmai.com">
                                        <button type="submit" class="widget-btn">Gửi</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
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
                            <li class="mobile__children"><a href="${classpath}/danhmuc" class="mobile__link">Trang chủ</li>
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
                            <li class="mobile__children"><a href="${classpath}/lienhe" class="mobile__link">Liên hệ </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>

</body>

</html>