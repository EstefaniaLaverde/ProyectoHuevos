from django.urls import path
from apps.cliente.views import index, crearCliente, consultarCliente

urlpatterns = [
    path('', index),
    path('crearCliente/', crearCliente),
    path('consultarCliente', consultarCliente),
]
