@extends('layout')
@section('content')
 <div id="fh5co-blog-section" class="fh5co-section-gray">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center heading-section">
                        <h2>{{ $header_title }}</h2>
                    </div>
                </div>
            </div>
       
            <div class="container">
                <div class="row row-bottom-padded-md">
               @foreach($result as $row)
<div class="clearfix visible-sm-block"></div>
                    <div class="col-md-8 col-md-offset-2 text-center heading-section">
                        <div class="fh5co-blog animate-box">
                <?php 
                    //http://stackoverflow.com/questions/7479835/getting-the-first-image-in-string-with-php
                    //Thanks : Rene Roth
                    preg_match('/<img.+src=[\'"](?P<src>.+?)[\'"].*>/i', $row->content, $image);
                    $image = $image['src'];
                ?>
 @if($image)
             
<a href="#"><img class="img-responsive" src="{{$image}}" alt=""></a>
 @endif
              <div class="blog-text">
                                <div class="prod-title">
                                    <h3><a  href='{{ url("/$row->id/".str_slug($row->slug)) }}'>{{ $row->title }}</a></h3>
                                    <span class="by"> by {{ $row->name_author }}</span>
               
             <span class="posted_date">Posted on {{ date('M,d Y',strtotime($row->created_at)) }}</span>
                                    <span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
                                    <p>   {{ str_limit(strip_tags($row->content),200) }} .</p>
                                    <p><a  href='{{ url("/$row->id/".str_slug($row->slug)) }}'>Read More &raquo;</a></p>
                                </div>
                            </div> 
                        </div>
                    </div>
                <!-- Date/Time -->
            
                @endforeach

            </div>
       </div>
</div>

                @if(count($result)==0)
                    <div class='alert alert-info'>Sorry the article is not found !</div>
                @endif

                {!! $result->links() !!}

@endsection