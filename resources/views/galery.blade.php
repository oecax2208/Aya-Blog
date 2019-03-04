@extends('layout')
@section('content')
@foreach($tenplate as $home)


  
  <!--   <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link href="{{ asset ("galery/dist/css/jasny-bootstrap.min.css")}}" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href="{{ asset ("galery/css/bootstrap.min.css")}}" rel="stylesheet"> -->
    <!-- Custom styles for this template -->
    <!-- <link href="{{ asset ("galery/css/navmenu-reveal.css")}}" rel="stylesheet"> -->
    <!-- <link href="{{ asset ("galery/css/style.css")}}" rel="stylesheet"> -->
    <!-- <link href="{{ asset ("galery/css/full-slider.css")}}" rel="stylesheet"> -->
    <!-- <link href="{{ asset ("galery/css/Icomoon/style.css")}}" rel="stylesheet" type="text/css" /> -->
    <link href="{{ asset ("galery/css/animated-masonry-gallery.css")}}" rel="stylesheet" type="text/css" />
    <!-- <link rel="stylesheet" type="text/css" href="{{ asset ("galery/css/normalize.css")}}" /> -->
    <!-- <link rel="stylesheet" type="text/css" href="{{ asset ("galery/css/demo.css")}}" /> -->
    <link rel="stylesheet" type="text/css" href="{{ asset ("galery/css/component.css")}}" />
    <link href="{{ asset ("galery/css/lightbox.css")}}" rel="stylesheet" type="text/css" />
    <script type="text/javaScript" src="{{ asset ("galery/js/modernizr.min.js")}}"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <style type="text/css">
      
      .photostack {
    background-image: url({{ $home->photo_galerry }});
    position: relative;
    text-align: center;
    overflow: hidden;
}
.photostack figure {
    width: 320px;
    height: 360px;
    position: relative;
    display: inline-block;
    background: rgba(255, 255, 255, 0);
    padding: 40px;
    text-align: center;
    margin: 5px;
}
.photostack-img {
    outline: none;
    display: block;
    width: 240px;
    height: 240px;
    background: rgba(249, 249, 249, 0);
}
  </style>



        <h1 class="blog-post-title text-center">Gallery of Images</h1>
        <span class="title-divider"></span>
        </section>
            <section id="photostack-3" class="photostack">
                <div>
                    @foreach($galery as $ga)
                    <figure>
                        <a href="{{ $ga->photo }}"  data-lightbox="studio2" class="photostack-img"><img src="{{ $ga->photo }}" alt="{{ $ga->title}}" height="350"/></a>
                        <figcaption>
                            <h2 class="photostack-title">{{ $ga->title}} </h2>
                            <div class="photostack-back">
                                <p>{{ $ga->tags}} . Photo By {{$ga->name_author }}  </p>

                            </div>
                        </figcaption>
                    </figure>
                   @endforeach
                   @foreach($galery as $gi)
                    <figure data-dummy>
                        <a href="#" class="photostack-img"><img src="{{ $gi->photo }}" alt="{{ $gi->title }}" width="200" /></a>
                      
                    </figure>
                   @endforeach
                </div>
            </section>
   
      
    

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

    <script type="text/javascript" src="{{ asset ("galery/js/jquery.js")}}"></script>
    <script type="text/javascript" src="{{ asset ("galery/js/jquery-ui-1.10.4.min.js")}}"></script>
   <!--  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js">
    </script> -->
    <!-- <script type="text/javascript" src="{{ asset ("galery/js/isotope.js")}}"></script> -->
    <script type="text/javascript" src="{{ asset ("galery/js/animated-masonry-gallery.js")}}"></script>
    <!-- <script src="dist/js/jasny-bootstrap.min.js")}}"></script> -->
    <script src="{{ asset ("galery/js/classie.js")}}"></script>
    <script src="{{ asset ("galery/js/photostack.js")}}"></script>
    <script src="{{ asset ("galery/js/main.js")}}"></script>
    <script src="{{ asset ("galery/js/lightbox.js")}}"></script>


@endforeach


@endsection