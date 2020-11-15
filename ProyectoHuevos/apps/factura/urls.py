from django.urls import path
from apps.factura.views import index, crearRepartidor, consultarRepartidor, editarRepartidor, eliminarRepartidor

urlpatterns = [
    path('', index),
    path('crearRepartidor/', crearRepartidor, name = 'crearRepartidor'),
    path('consultarRepartidor', consultarRepartidor, name = 'consultarRepartidor'),
    path('editarRepartidor/<id_rep>', editarRepartidor, name = 'editarRepartidor'),
    path('eliminarRepartidor/<id_rep>', eliminarRepartidor, name = 'eliminarRepartidor'),

]
