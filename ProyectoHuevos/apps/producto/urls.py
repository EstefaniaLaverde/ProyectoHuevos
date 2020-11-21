from django.urls import path
from apps.producto.views import index, crearProducto, consultarProducto, editarProducto, eliminarProducto, agregarCarrito

urlpatterns = [
    path('', index),
    path('crearProducto/', crearProducto, name = 'crearProducto'),
    path('consultarProducto', consultarProducto, name = 'consultarProducto'),
    path('editarProducto/<id_prod>', editarProducto, name = 'editarProducto'),
    path('eliminarProducto/<id_prod>', eliminarProducto, name = 'eliminarProducto'),
    path('agregarCarrito/<id_prod>', agregarCarrito, name = 'agregarCarrito'),
]
