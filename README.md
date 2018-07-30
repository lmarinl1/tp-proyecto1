# README


## Tracker M 
##### Tópicos Especiales de Telemática - Luis Miguel Marín Loaiza
###### EAFIT  -  2018-2

Este repositorio fue creado para gestionar y controlar las versiones del proyecto número 1 de la materia Tópicos Especiales de Telemática.

## Descripción 
Desarrollo de una aplicación web en tiempo real (tipo IoT) utilizando un framework web moderno (nodejs, ruby, etc como backend; angular, react, vue, etc como Frontend), utilizando mejores prácticas DevOps para integración y entrega continua distinguiendo los diferentes ambientes (Desarrollo, Pruebas y Despliegue).

**Requisitos:**
* Integración con Git, Automatización (jenkins), Gestión de la Configuración.
* Registro de eventos IoT en tiempo real georeferenciados (user + gps + hora + fecha)
* Visualización privada de ruta por usuario / dispositivo
* Datos privados por usuario / dispositivo
* Tener 3 grandes Funcionalidades:
	* Autenticación de usuarios y API REST
	* Registro de eventos en tiempo real (se requiere tanto una aplicación que envíe los eventos desde un móvil y el servidor que recibe los eventos, la aplicación que envía los eventos puede ser una página web sencilla en HTML5-Geolocalización y google maps)
	* Visualización de ruta previamente almacenada.


## Tecnologías
-   **El Framework web:** Ruby on Rails 5.1.6 ([https://rubyonrails.org/](https://rubyonrails.org/))
-  **Gema de autentificación:** Devise ( [https://guides.railsgirls.com/devise](https://guides.railsgirls.com/devise) )
-   **Bases de datos:**
	- **Ambiente de desarrollo:** SQLite ([https://www.sqlite.org/index.html](https://www.sqlite.org/index.html))
	-	**Ambiente de Pruebas:** Postgresql ([https://www.postgresql.org/](https://www.postgresql.org/))
	-	**Ambiente de Producción:** Postgresql ([https://www.postgresql.org/](https://www.postgresql.org/))
-   **Captura de eventos:** [https://www.w3schools.com/htmL/html5_geolocation.asp](https://www.w3schools.com/htmL/html5_geolocation.asp)
- **Diseño css y javascript:** Bootstrap 4.0 [https://github.com/RailsApps/rails-bootstrap](https://github.com/RailsApps/rails-bootstrap)
- **App Server:** Puma ([https://github.com/puma/puma](https://github.com/puma/puma))
- **Web Server/proxy Inverso:** Nginx ([https://nginx.org/](https://nginx.org/))
- **Containers:** Docker [https://docs.docker.com/compose/rails/](https://docs.docker.com/compose/rails/)
- **Orquestación de containers:** Docker-compose 


Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
