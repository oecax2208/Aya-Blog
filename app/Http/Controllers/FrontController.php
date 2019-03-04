<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;


class FrontController extends Controller
{
    //

    public $blog_name = 'Cinta';

    public function getIndex() {
        
        $data['tenplate'] =DB::table('tenplate')->get();
         $data['project'] =DB::table('project')->get();
         $data['galery'] =DB::table('galery')
         ->join('cms_users','cms_users.id','=','cms_users_id')
        ->select('galery.*','cms_users.name as name_author')
        ->orderby('galery.id','desc')
        ->get();
        $data['page_title'] = $data->blog_name;
        $data['page_description'] = $data->description;
        $data['blog_name'] = $this->blog_name;
        $data['categories'] = DB::table('categories')->get();
        $data['result'] = DB::table('posts')
        ->join('categories','categories.id','=','categories_id')
        ->join('cms_users','cms_users.id','=','cms_users_id')
        ->select('posts.*','categories.name as name_categories','cms_users.name as name_author')
        ->orderby('posts.id','desc')
        ->take(3)
        ->get();

        return view('home',$data);
    }

    public function getArticle($id, $slug) {
        $row = DB::table('posts')->where('slug',$slug)->first();
        
        if(!$row) return redirect('/');
       // $slug=$Request->slug;
        // $a=$slug->get('slug');
        $row = DB::table('posts')
        ->join('categories','categories.id','=','categories_id')
        ->join('cms_users','cms_users.id','=','cms_users_id')
        ->select('posts.*','categories.name as name_categories','cms_users.name as name_author')
        // ->where('posts.categories_id',$id)
        ->where('posts.slug',$slug )
        ->first();
        $data['project'] =DB::table('project')->get();
        $data['row'] = $row;
        $data['tenplate'] =DB::table('tenplate')->get();
        $data['page_title'] = $row->title.' | ' .$tenplate->blog_name;
        $data['page_description'] = str_limit(strip_tags($row->content),155);
        $data['blog_name'] = $this->blog_name;
        $data['categories'] = DB::table('categories')->get();

        return view('detail',$data);
    }

    public function getCategory($id) {
        $row = DB::table('categories')->where('id',$id)->first();
        
        if(!$row) return redirect('/');

        $data['result'] = DB::table('posts')
        ->join('categories','categories.id','=','categories_id')
        ->join('cms_users','cms_users.id','=','cms_users_id')
        ->select('posts.*','categories.name as name_categories','cms_users.name as name_author')
        ->orderby('posts.id','desc')
        ->where('posts.categories_id',$id)
        ->paginate(5);
        $data['project'] =DB::table('project')->get();
        $data['tenplate'] =DB::table('tenplate')->get();
        $data['row'] = $row;
        $data['page_title'] = $row->name.' | Category |'.$tenplate->blog_name;
        $data['page_description'] = $data['page_title'];
        $data['blog_name'] = $tenplate->blog_name;
        $data['categories'] = DB::table('categories')->get();
        $data['header_title'] = 'Category: '.$row->name;

        return view('lists',$data);
    }

    public function getLatest() {       
        $data['tenplate'] =DB::table('tenplate')->get();
        $data['result'] = DB::table('posts')
        ->join('categories','categories.id','=','categories_id')
        ->join('cms_users','cms_users.id','=','cms_users_id')
        ->select('posts.*','categories.name as name_categories','cms_users.name as name_author')
        ->orderby('posts.id','desc')        
        ->paginate(5);
        $data['project'] =DB::table('project')->get();
        $data['page_title'] = 'Latest |'.$tenplate->blog_name;
        $data['page_description'] = $data['page_title'];
        $data['blog_name'] = $tenplate->blog_name;
        $data['categories'] = DB::table('categories')->get();
        $data['header_title'] = 'Latest';

        return view('lists',$data);
    }

     public function getGalery() {    

       $data['project'] =DB::table('project')->get();
       $data['tenplate'] =DB::table('tenplate')->get();
         $data['galery'] =DB::table('galery')
         ->join('cms_users','cms_users.id','=','cms_users_id')
        ->select('galery.*','cms_users.name as name_author')
        ->orderby('galery.id','desc')
        ->get();
        // $data['page_title'] = $data->blog_name;
        // $data['page_description'] = $data->description;
        // $data['blog_name'] = $this->blog_name;
        $data['categories'] = DB::table('categories')->get();
        $data['result'] = DB::table('posts')
        ->join('categories','categories.id','=','categories_id')
        ->join('cms_users','cms_users.id','=','cms_users_id')
        ->select('posts.*','categories.name as name_categories','cms_users.name as name_author')
        ->orderby('posts.id','desc')
        ->take(3)
        ->get();

       
       

        return view('galery',$data);
    }

    public function getSearch(Request $req) {       

        if($req->get('q')=='') return redirect('/');

        $data['result'] = DB::table('posts')
        ->join('categories','categories.id','=','categories_id')
        ->join('cms_users','cms_users.id','=','cms_users_id')
        ->select('posts.*','categories.name as name_categories','cms_users.name as name_author')
        ->where('posts.title','like','%'.$req->get('q').'%')    
        ->paginate(5);
        $data['tenplate'] =DB::table('tenplate')->get();
        $data['page_title'] = 'Search '.$req->get('q').' |'.$tenplate->blog_name;
        $data['page_description'] = $data['page_title'];
        $data['blog_name'] = $tenplate->blog_name;
        $data['categories'] = DB::table('categories')->get();
        $data['header_title'] = 'Search: '.$req->get('q');

        return view('lists',$data);
    }
}
