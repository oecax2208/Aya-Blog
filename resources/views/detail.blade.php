@extends('layout')
@section('content')


<!-- Blog Post -->
    
<div id="fh5co-blog-section" class="fh5co-section-gray">
            <div class="container">
                <!-- Title -->
                <h1>{{ $row->title }}</h1>
                <!-- Author -->
                <p class="lead">
                    by {{ $row->name_author }}
                </p>

                <hr>

                <!-- Date/Time -->
                <p><span class="glyphicon glyphicon-time"></span> Posted on {{ date('M,d Y',strtotime($row->created_at)) }}</p>

                <hr>

                <!-- Post Content -->
                {!! $row->content !!}
                

                <hr>  
                    </div>
            </div>              

@endsection