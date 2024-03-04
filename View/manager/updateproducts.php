<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./View/manager/styles.css">
    <link rel="stylesheet" href="./header.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <title>Sản phẩm</title>
</head>
<body>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">info@company.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="index.php">
                BAO
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost/milktea/milktea">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Về chúng tôi</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Cửa hàng</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Liên hệ</a>
                        </li>
                        <?php if(isset($_SESSION['role']) && $_SESSION['role'] == 1):?>
                            <li class="nav-item">
                                <a class="nav-link" href="?action=manager&categories_manager">Quản lí</a>
                            </li>
                        <?php endif;?>
                    </ul>
                </div>
            </div>
            <div class="navbar align-self-center d-flex">
                <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                    <div class="input-group">
                        <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                        <div class="input-group-text">
                            <i class="fa fa-fw fa-search"></i>
                        </div>
                    </div>
                </div>
                <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                    <i class="fa fa-fw fa-search text-dark mr-2"></i>
                </a>
                <a class="nav-icon position-relative text-decoration-none" href="?action=cart">
                    <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                    <!-- <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span> -->
                </a>
                <?php 
                    if(isset($_SESSION['username'])){
                        ?>
                            <a class="nav-icon position-relative text-decoration-none" href="?action=account">
                                <i class="fa fa-fw fa-user text-dark mr-3"></i>
                            </a>
                        <?php
                    }else{
                        ?>
                            <a class="nav-icon position-relative text-decoration-none" href="?action=login">
                                <i class="fa fa-fw fa-user text-dark mr-3"></i>
                            </a>
                        <?php
                    }
                ?>
            </div>
        </div>
    </nav>
    <!-- Close Header -->

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div> 


    <div class="container add-product">
        <h3>Sửa sản phẩm</h3>
        <div class="action">
            <a href="?action=manager&products_manager">Quay lại</a>
        </div>
        <?php 
        if(isset($productID)){
            ?>
            <form action="#" method="post" class="form-product">
                <?php
                if(isset($check) && $check == 0){
                    ?>
                    <p class='message'>Vui lòng nhập giá khuyến mãi nhỏ hơn giá gốc!!</p>
                    <?php
                }
                ?>
                <div class="title-product">
                    <label for="title">
                        <p>Tên sản phẩm:</p>
                        <input type="text" name="title" value="<?php echo $productID['title']; ?>" placeholder="Nhập tên sản phẩm" id="title" required>
                    </label>
                </div>
                <div class="regular_price-product">
                    <label for="regular_price">
                        <p>Giá gốc:</p>
                        <input type="number" name="regular_price" value="<?php echo $productID['regular_price']; ?>" placeholder="Nhập giá gốc" id="regular_price" required>
                    </label>
                </div>
                <div class="sale_price-product">
                    <label for="sale_price">
                        <p>Giá khuyến mãi:</p>
                        <input type="number" name="sale_price" value="<?php echo $productID['sale_price']; ?>" placeholder="Nhập giá khuyến mãi" id="sale_price">
                    </label>
                </div>
                <div class="image-product">
                    <label for="image">
                        <p>Ảnh:</p>
                        <input type="text" name="image" value="<?php echo $productID['img']; ?>" placeholder="Nhập link ảnh" id="image" required>
                    </label>
                </div>
                <div class="descrip-product">
                    <label for="descrip">
                        <p>Mô tả:</p>
                        <textarea name="descrip" placeholder="<?php echo $productID['descrip']; ?>" id="descrip" cols="43" rows="3"></textarea>
                    </label>
                </div>

                <div class="cate">
                    <label for="cate">
                        Danh mục:
                        <select name="cate">
                            <?php foreach($categories as $value): ?>
                                <option value="<?php echo $value['id']?> ">
                                    <?php echo $value['title']?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </label>
                </div>
                <input type="submit" name="update_product" value="OK">
            </form>
        <?php
        }
        ?>
    </div>
</body>
</html>