from django.urls import path
from apps.carrito.views import index, carrito, consultarCarrito
urlpatterns = [
    path('', index),
    path('carrito/', carrito, name = 'carrito'),
    path('consultarCarrito/', consultarCarrito, name = 'consultarCarrito')
]
