from django.urls import path
from apps.carrito.views import index, carrito
urlpatterns = [
    path('', index),
    path('carrito/', carrito, name = 'carrito'),
]
