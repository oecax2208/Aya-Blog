@extends('layout')
@section('content')
@foreach($tenplate as $home)
<!-- gallery -->
<div id="fh5co-work fh5co-guest" class="fh5co-bg-dark">
        <div class="container">
            <div class="row animate-box">
                <div class="col-md-8 col-md-offset-2 text-center fh5co-heading heading-section">
                    <h2> {{ $home->title }} Galerry </h2>
                </div>
            </div>
            <div class="row">
                @foreach($galery as $g ) 
                <div class="col-md-3 text-center col-padding animate-box">
                    <a href="{{ $g->photo }}" class="work gallery-img image-popup image-popup" title="By {{ $g->name_author }}" >
                        <!-- <div class="desc">
                            <h3>Project Name</h3>
                            <span>Illustration</span>
                        </div> -->
                        <img src="{{ $g->photo }}" class="img-responsive" alt=" {{ $g->title }} " width="200" height="200">
                    </a>
                </div>
                @endforeach
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
                    

                @foreach($result as $row)
                <div class="clearfix visible-sm-block"></div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="fh5co-blog animate-box">
                <?php 
                    preg_match('/<img.+src=[\'"](?P<src>.+?)[\'"].*>/i', $row->content, $image);
                    $image = $image['src'];
                ?>
                 @if($image)
             
<a href="#"><img class="img-responsive" src="{{$image}}" alt=""></a>
 @endif
                <!-- Title -->
                <div class="blog-text">
                                <div class="prod-title">
                                    <h3><a  href='{{ url("/$row->id/".str_slug($row->slug)) }}'>{{$row->title}}</a></h3>
                                    <span class="by"> by {{ $row->name_author }}</span>
               
             <span class="posted_date">Posted on {{ date('M,d Y',strtotime($row->created_at)) }}</span>
                                    <!-- <span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span> -->
                                    <p>   {{ str_limit(strip_tags($row->content),200) }} .</p>
                                    <p><a  href='{{ url("/$row->id/".str_slug($row->slug)) }}'>Learn More...  &raquo;</a></p>
                                </div>
                            </div> 
                        </div>
                    </div>
                <!-- Date/Time -->

            
                @endforeach

            </div>
       </div>
</div>

@endforeach

@endsection