from django.urls import path
from apps.producto.views import index, crearProducto, consultarProducto, editarProducto, eliminarProducto, addProducto
from apps.carrito.views import verificarIds, agregarCarrito
urlpatterns = [
    path('', index),
    path('crearProducto/', crearProducto, name = 'crearProducto'),
    path('consultarProducto', consultarProducto, name = 'consultarProducto'),
    path('editarProducto/<id_prod>', editarProducto, name = 'editarProducto'),
    path('eliminarProducto/<id_prod>', eliminarProducto, name = 'eliminarProducto'),
    path('anadirProducto/',addProducto, name='add'),
    #('agregarCarrito/<id_prod>', agregarCarrito, name = 'agregarCarrito'),
    #path('verificarIds', verificarIds, name = 'verificarIds')
]
