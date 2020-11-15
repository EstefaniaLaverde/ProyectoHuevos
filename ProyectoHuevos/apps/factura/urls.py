from django.urls import path
from apps.factura.views import index, crearRepartidor, consultarRepartidor

urlpatterns = [
    path('', index),
    path('crearRepartidor/', crearRepartidor),
    path('consultarRepartidor', consultarRepartidor),
]
