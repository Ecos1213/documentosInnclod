<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## Requerimientos

El proyecto se realizo en laravel 11 y necesita lo siguiente:

- xampp 8.2.12 
- php 8.2.12
- composer 2.5.4
- nodejs 21.5.0
- npm 10.2.4
- mysql

## Repositorio
- [https://github.com/Ecos1213/documentosInnclod.git](https://github.com/Ecos1213/documentosInnclod.git)

## Instalacion

Clonar o agregar la carpeta documentosInnclod dentro de htdocs de xampp, despues de clonar o extraer el archivo no se encontrara el .env pero tendra el archivo ejemplo .env.example, cambiamos el nombre a .env, dentro de este archivo cambiamos los siguientes datos:

- DB_DATABASE=documentoinnclod
- DB_USERNAME=username-de-mysql
- DB_PASSWORD=password-de-mysq
- APP_LOCALE=es

en mysql podemos importar la base de datos que se encuentra dentro de la carpeta del proyecto documentosInnclod/DB o podemos crear una tabla y/o realizar la migracion con el siguiente comando php artisan migrate --seed, es necesario el flag **seed** para que nos cree en la base de datos la informacion pertinente para el programa.

cuando lanzemos los comandos de php artisan tendra que ser en la ruta de la carpeta documentosInnclod, ademas tendremos que usar el siguiente comando: php artisan key:generate este nos genera una key que se puede observar en el archivo .env en:

- APP_KEY

tenemos que correr los siguintes comandos dentro de la carpeta documentosInnclod:
- composer install o composer update (instalara o actualizara los paquetes necesarios para el programa)
- npm install (instalara o actualizara los paquetes necesarios para el programa)
- npm run build o npm run dev (transpilara los componetes de react a javascript en la carpeta public, el comando dev se tendra que mantenerse en la consola para ver el programa)

por prevencio podemos correr los siguientes comandos:

- php artisan cache:clear
- php artisan route:cache

para ver nuestro programa tenemos que tener iniciado los servicios de apache y mysql de xampp y lanzar el siguiente comando:
- php artisan serve (inicia el programa y tambien tendra que mantenerser en consola para ver el programa)

### Nota: 
- Se puede encontrar el diagrama de clases dentro de la carpeta del proyecto documentosInnclod/DIAGRAMA DE UML
- Se puede encontrar la base de datos en la carpeta documentosInnclod/DB
- El buscador, despues de escribir la busqueda hay que darle la tecla enter para realizar la busqueda y si quieres volver a ver todos los documentos se puede dejar en blanco y darle enter de nuevo que retorne todos los documentos

## Login
para ver el dashboard primero tendremos que haber lanzado el comando:php artisan migrate --seed y seguir los pasos de instalacion del programa al iniciar el programa nos mostrara la pagina de login, para iniciar se necesita los siguientes datos:

- usuario: test@admin.com
- password: 1234

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

You may also try the [Laravel Bootcamp](https://bootcamp.laravel.com), where you will be guided through building a modern Laravel application from scratch.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains thousands of video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the [Laravel Partners program](https://partners.laravel.com).

### Premium Partners

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[WebReinvent](https://webreinvent.com/)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Curotec](https://www.curotec.com/services/technologies/laravel/)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[DevSquad](https://devsquad.com/hire-laravel-developers)**
- **[Jump24](https://jump24.co.uk)**
- **[Redberry](https://redberry.international/laravel/)**
- **[Active Logic](https://activelogic.com)**
- **[byte5](https://byte5.de)**
- **[OP.GG](https://op.gg)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
