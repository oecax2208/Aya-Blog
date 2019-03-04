<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>
# simple-blog Post Laravel 5.4 With Crudbooster Admin Generator
##Template By 
- Nuptial
- Admin LTE




## How to use
- Create Database in your Host
- import database ayablog.sql 
- SQL Compabiliti use ANSI
- Uncheck Do not use AUTO_INCREMENT for zero values

#Setup Connection
- Clone the repository with __git clone__
- Copy __.env.example__ file to __.env__ and edit database credentials there
- Run __composer install__
- Run __php artisan key:generate__

- DB_CONNECTION=mysql
- DB_HOST=127.0.0.1 //By default (Yourhost)
- DB_PORT=3306 //(Your Port)
- DB_DATABASE=homestead //(setup database name)
- DB_USERNAME=homestead //(username host)
- DB_PASSWORD=secret //(Password Additional)

##Login Use 
- url for Admin login
- localhost/admin/
- username : aya@mail.dev
- password : 123456

##Trouble
In Laravel 5.4 Problem Can Be Found In Storage Not Found
- run php artisan storage:link

##Requirements

	PHP >= 5.6.4
	OpenSSL PHP Extension
	PDO PHP Extension
	Mbstring PHP Extension
	Tokenizer PHP Extension
	XML PHP Extension

## License

This is free software distributed under the terms of the MIT license

## Additional information

Inspired by Admin Generator Crudbooster Laravel 5.4 and based on:
[For more detail click here](http://crudbooster.com/)

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, yet powerful, providing tools needed for large, robust applications. A superb combination of simplicity, elegance, and innovation give you tools you need to build any application with which you are tasked.
