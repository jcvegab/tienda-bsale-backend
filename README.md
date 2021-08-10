# README

# Tienda Online - Bsale | Backend

## Documentación

### Desarrollo
El proyecto fue realizado con el framework backend Ruby on Rails en modalidad de solo API.
Se realizó la creación de los modelos Category y Products, igualmente se creó los controladores para
cada uno de los modelos. Las rutas proporcionadas de cada modelo son únicamente las necesarias para la
visualización de la información y consulta a la BBDD (se deshabilitó parte del CRUD).
Los datos de conexión a la base de datos (BBDD) proporcionados para la realización del proyecto se mantienen
ocultos mediante el uso de variables de entorno tanto para el desarrollo local y en producción en Heroku.

### Requisitos:
- Ruby 3.0.1

### Rutas del proyecto
Se uso el estándar RESTful para el desarrollo de la API del proyecto, las rutas generadas son las siguientes:

POST /search
Recibe un parámetro de búsqueda (query) para ser consultado en la BBDD y envia los productos con coincidencias.

* Productos
1. GET /products
   Lista todos los productos de la BBDD.
3. GET /products/:id
   Muestra un producto según el :id especificado en la ruta.

* Categorias
1. GET /categories
   Lista todos las categorías de la BBDD.
3. GET /categories/:id
   Muestra una categoría según el :id especificado en la ruta
5. GET /categories/:id/products
   Muestra los productos que pertenezcan a la categoría identificada con el ID (:id) 

### Despligue del proyecto:
Puedes revisar el proyecto aquí: http://tienda-bsale-backend.herokuapp.com/

** Puedes ver el repositorio del frontend del proyecto aquí: https://github.com/jcvegab/tienda-bsale-frontend
