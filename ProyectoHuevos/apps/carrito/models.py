from django.db import models
#importamos para usar la FK
from apps.cliente.models import cliente
from apps.producto.models import producto
from django.contrib import admin


class carrito(models.Model):
    id_carrito = models.AutoField(primary_key=True)
    id_cliente = models.ForeignKey(cliente, on_delete=models.CASCADE)

class carrito_producto (models.Model):
    class Meta:
        unique_together = (('id_carrito_carrito', 'id_producto_producto'),)
    id_carrito_carrito = models.ForeignKey(carrito, on_delete=models.CASCADE)
    id_producto_producto = models.ForeignKey(producto, on_delete=models.CASCADE)
    cantidad = models.IntegerField()

admin.site.register(carrito)
admin.site.register(carrito_producto)
