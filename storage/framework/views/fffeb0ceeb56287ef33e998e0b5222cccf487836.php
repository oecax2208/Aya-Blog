<?php $__env->startSection('content'); ?>
<?php $__currentLoopData = $tenplate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $home): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<!-- gallery -->
<div id="fh5co-work fh5co-guest" class="fh5co-bg-dark">
        <div class="container">
            <div class="row animate-box">
                <div class="col-md-8 col-md-offset-2 text-center fh5co-heading heading-section">
                    <h2> <?php echo e($home->title); ?> Galerry </h2>
                </div>
            </div>
            <div class="row">
                <?php $__currentLoopData = $galery; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $g): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> 
                <div class="col-md-3 text-center col-padding animate-box">
                    <a href="<?php echo e($g->photo); ?>" class="work gallery-img image-popup image-popup" title="By <?php echo e($g->name_author); ?>" >
                        <!-- <div class="desc">
                            <h3>Project Name</h3>
                            <span>Illustration</span>
                        </div> -->
                        <img src="<?php echo e($g->photo); ?>" class="img-responsive" alt=" <?php echo e($g->title); ?> " width="200" height="200">
                    </a>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>
\

<!-- Blog Post -->
       <div id="fh5co-blog-section" class="fh5co-section-gray">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center heading-section">
                        <h2>Recent post</h2>
                    </div>
                </div>
            </div>
       
            <div class="container">
                <div class="row row-bottom-padded-md">
                    

                <?php $__currentLoopData = $result; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="clearfix visible-sm-block"></div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="fh5co-blog animate-box">
                <?php 
                    preg_match('/<img.+src=[\'"](?P<src>.+?)[\'"].*>/i', $row->content, $image);
                    $image = $image['src'];
                ?>
                 <?php if($image): ?>
             
<a href="#"><img class="img-responsive" src="<?php echo e($image); ?>" alt=""></a>
 <?php endif; ?>
                <!-- Title -->
                <div class="blog-text">
                                <div class="prod-title">
                                    <h3><a  href='<?php echo e(url("/$row->id/".str_slug($row->slug))); ?>'><?php echo e($row->title); ?></a></h3>
                                    <span class="by"> by <?php echo e($row->name_author); ?></span>
               
             <span class="posted_date">Posted on <?php echo e(date('M,d Y',strtotime($row->created_at))); ?></span>
                                    <!-- <span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span> -->
                                    <p>   <?php echo e(str_limit(strip_tags($row->content),200)); ?> .</p>
                                    <p><a  href='<?php echo e(url("/$row->id/".str_slug($row->slug))); ?>'>Learn More...  &raquo;</a></p>
                                </div>
                            </div> 
                        </div>
                    </div>
                <!-- Date/Time -->

            
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>
       </div>
</div>

<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>