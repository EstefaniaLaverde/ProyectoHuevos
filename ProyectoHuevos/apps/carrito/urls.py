from django.urls import path
from apps.carrito.views import index, carrito, consultarCarrito, agregarCarrito, verificarIds, sumarItem 

urlpatterns = [
    path('', index),
    path('carrito/', carrito, name = 'carrito'),
    path('consultarCarrito/', consultarCarrito, name = 'consultarCarrito'),
    path('agregarCarrito/', agregarCarrito, name = 'agregarCarrito'),
    path('verificarIds/<id_prod>', verificarIds, name = 'verificarIds'),
    path('sumar/', sumarItem, name='sumar'),
]
