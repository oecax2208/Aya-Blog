<!DOCTYPE html>

<html lang="en">
<?php $__currentLoopData = $tenplate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $home): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content=" <?php echo e($home->description); ?> ">    
    <title><?php echo e(isset($home->blog_name) ? $home->blog_name : $page_title); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
    <meta name="author" content="FREEHTML5.CO" />

  <!-- 
    //////////////////////////////////////////////////////

    FREE HTML5 TEMPLATE 
    DESIGNED & DEVELOPED by FREEHTML5.CO
        
    Website:        http://freehtml5.co/
    Email:          info@freehtml5.co
    Twitter:        http://twitter.com/fh5co
    Facebook:       https://www.facebook.com/fh5co

    //////////////////////////////////////////////////////
     -->



    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="<?php echo e(CRUDBooster::getSetting('favicon')); ?>">
    
    <link href="https://fonts.googleapis.com/css?family=Montez" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
    
    <!-- Animate.css -->
    <link rel="stylesheet" href="<?php echo e(url('nuptial/css/animate.css')); ?>">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="<?php echo e(url('nuptial/css/icomoon.css')); ?>">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="<?php echo e(url('nuptial/css/bootstrap.css')); ?>">
    <!-- Superfish -->
    <link rel="stylesheet" href="<?php echo e(url('nuptial/css/superfish.css')); ?>">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="<?php echo e(url('nuptial/css/magnific-popup.css')); ?>">
    
    <link rel="stylesheet" href="<?php echo e(url('nuptial/css/style.css')); ?>">


    <!-- Modernizr JS -->
    <script src="<?php echo e(url('nuptial/js/modernizr-2.6.2.min.js')); ?>"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="<?php echo e(url('nuptial/js/respond.min.js')); ?>"></script>
    <![endif]-->

    </head>

    <!-- <meta charset="utf-8"> -->
    <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->



    <!-- Bootstrap Core CSS -->
    <!-- <link href="<?php echo e(url('blogtheme/css/bootstrap.min.css')); ?>" rel="stylesheet"> -->

    <!-- Custom CSS -->
    <!-- <link href="<?php echo e(url('blogtheme/css/blog-post.css')); ?>" rel="stylesheet"> -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js')}}"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js')}}"></script>
    <![endif]-->

<!-- </head> -->
 <style>
#fh5co-logo a {
    color: <?php echo e($home->link); ?>

}

 #fh5co-started .btn-block {
    height: 54px;
    border: none !important;
    background: <?php echo e($home->button); ?>

    color: #fff;
    font-size: 16px;
    text-transform: uppercase;
    font-weight: 400;
    padding-left: 50px;
    padding-right: 50px;
}

#footer {
    background: <?php echo e($home->footer); ?>

    padding: 60px 0 40px;
}
</style>
<body>
        <div id="fh5co-wrapper">
        <div id="fh5co-page">
    

        <div class="fh5co-hero" data-section="home">
            <div class="fh5co-overlay"></div>
            <div class="fh5co-cover text-center " data-stellar-background-ratio="0.5" style="background-image: url(<?php echo e(url($home->header)); ?>);">
                <div class="display-t">
                    <div class="display-tc">
                        <div class="container">
                            <div class="col-md-10 col-md-offset-1">
                                <div class="animate-box">
                                    <h1><?php echo e($home->blog_name); ?></h1>
                                    <h2><?php echo e($home->description); ?></h2>
                                    <p><span><?php echo e($home->title); ?></span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<header id="fh5co-header-section" class="sticky-banner">
            <div class="container">
                <div class="nav-header">
                    <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
                    <h1 id="fh5co-logo"><a href="<?php echo e(url('/')); ?>"> <?php echo e($home->blog_name); ?> </a></h1>
                    <!-- START #fh5co-menu-wrap -->
                    <nav id="fh5co-menu-wrap" role="navigation">
                        <ul class="sf-menu" id="fh5co-primary-menu">
                            <li><a href="<?php echo e(url('/')); ?>" >Home</a></li>
                            <li>
                                <a href="#" class="fh5co-sub-ddown">Category</a>
                                <ul class="fh5co-sub-menu">
                                    <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    
                           <li> <a href='<?php echo e(url("/$category->id".str_slug($category->name))); ?>'><?php echo e($category->name); ?></a> </li>
                        
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            </li>
                             <li>
                                <a href="#" class="fh5co-sub-ddown">Project</a>
                                <ul class="fh5co-sub-menu">
                                    <?php $__currentLoopData = $project; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $project): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    
                           <li> <a target="blank" href="<?php echo e(url(( $project->alamat ))); ?>" title="<?php echo e($project->name); ?>"><?php echo e($project->name); ?></a> </li>
                        
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            </li>
                            <li><a href="<?php echo e(url('/photo')); ?>">Gallery</a></li>
                            <li>
                        <a href="<?php echo e(url('latest')); ?>">List Post</a>
                    </li>
                        </ul>

                    </nav>

                </div>
            </div>
        </header>
    <!-- Page Content -->


        
            <!-- Blog Post Content Column -->
        

                <?php echo $__env->yieldContent('content'); ?>                

          

            <!-- Blog Sidebar Widgets Column -->
            
                <!-- Blog Search Well -->
          
            <div id="fh5co-started" style="background-image:url(<?php echo e(url($home->photo_footer)); ?>);"data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
            <div class="container">
                <div class="row animate-box">
                    <div class="col-md-8 col-md-offset-2 text-center heading-section">
                        <h2><?php echo e($home->title); ?></h2>
                        <p><?php echo e($home->description); ?> </p>
                    </div>
                </div>
                <div class="row animate-box">
                    <div class="col-md-10 col-md-offset-1">
                        <form class='form-inline' method='get' action='<?php echo e(url("search")); ?>'>
                            <div class="col-md-8 col-md-offset-2 text-center heading-section">
                                <div class="form-group">
                                    <input type="text" name="q" placeholder="Search here..." class="form-control">
                                     <button class="btn btn-default btn-primary btn-block" type="submit">
                                <span class="glyphicon glyphicon-search"></span>
                        </button>
                                </div>
                            </div>
                        </form>                        
                    </div>
                </div>
            </div>
        </div>

              
        <!-- /.row -->


        <!-- Footer -->
        <footer>
            <div id="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h2><?php echo e($home->description); ?></h2>
                            <!-- Jack &amp; Rose -->
                        </div>
                        <div class="col-md-6 col-md-offset-3 text-center">
                            <p class="fh5co-social-icons">
                                <a href="http://twitter.com/<?php echo e($home->twitter); ?>" target="blank"><i class="icon-twitter2"></i></a>
                                <a href="http://facebook.com/<?php echo e($home->facebook); ?>" target="blank"><i class="icon-facebook2"></i></a>
                                <a href="http://instagram.com/<?php echo e($home->instagram); ?>" target="blank"><i class="icon-instagram"></i></a>
                                <a href="#" target="blank"><i class="icon-dribbble2"></i></a>
                                <a href="#" target="blank"><i class="icon-youtube"></i></a>
                            </p>
                            <p>Copyright &copy; <?php echo e(date('Y')); ?> <a href="mailto:<?php echo e($home->email); ?>"><?php echo e($home->blog_name); ?> </a>. All Rights Reserved. <br>Made with <i class="icon-heart3"></i> by <a href="mailto:<?php echo e(CRUDBooster::getSetting('e_mail')); ?>"><?php echo e(CRUDBooster::getSetting('made_by_name')); ?></a></p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>


 
</div>
    <!-- END fh5co-page -->

    </div>
    <!-- END fh5co-wrapper -->

    <!-- jQuery -->
    <script src="<?php echo e(url('blogtheme/js/jquery.js')); ?>"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo e(url('blogtheme/js/bootstrap.min.js')); ?>"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
    <!-- jQuery -->
    <script src="<?php echo e(url('nuptial/dist/scripts.min.js')); ?>"></script>

</body>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</html>
