from django.urls import path
from apps.factura.views import index, crearRepartidor, consultarRepartidor

urlpatterns = [
    path('', index),
    path('crearRepartidor/', crearRepartidor, name = 'crearRepartidor'),
    path('consultarRepartidor', consultarRepartidor, name = 'consultarRepartidor'),
]
