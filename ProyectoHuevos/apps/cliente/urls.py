from django.urls import path
from apps.cliente.views import index, crearCliente, consultarCliente, editarCliente, eliminarCliente

urlpatterns = [
    path('', index),
    path('crearCliente/', crearCliente, name = 'crearCliente'),
    path('consultarCliente', consultarCliente, name = 'consultarCliente'),
    path('editarCliente/<id_cli>', editarCliente, name = 'editarCliente'), #El name es el nombre de la url
    path('eliminarCliente/<id_cli>', eliminarCliente, name = 'eliminarCliente'),
]
