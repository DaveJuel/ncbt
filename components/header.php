 
<!-- ========== HEADER ========== -->
<header class="fixed transparent">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle mobile_menu_btn" data-toggle="collapse" data-target=".mobile_menu" aria-expanded="false">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand light" href="#">
                <h1><?php echo $main->appName; ?></h1>           
            </a>
            <a class="navbar-brand dark nodisplay" href="#">
                <h1><?php echo $main->appName; ?></h1> 
            </a>
        </div>
        <nav id="main_menu" class="mobile_menu navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="mobile_menu_title" style="display:none;">MENU</li>
                <li class="dropdown simple_menu active">
                    <a href="#slider">HOME </a>
                </li>                
                <li class="dropdown mega_menu mega_menu_fullwidth"><a href="#features" aria-expanded="true">FEATURES</a>
                </li>                
                <li><a href="#contact">CONTACT US</a></li>                
                <li class="menu_button">
                    <a href="../dashboard/views/login.php" class="button  btn_yellow"><i class="fa fa-sign-in"></i>SIGN IN</a>
                </li>
            </ul>
        </nav>
    </div>
</header> 