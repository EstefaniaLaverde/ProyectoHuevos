from django.db import models
#importamos para usar la FK
from apps.cliente.models import cliente
from apps.producto.models import producto

# Create your models here.

class carrito(models.Model):
    id_carrito = models.AutoField(primary_key=True)
    id_cliente = models.ForeignKey(cliente, on_delete=models.CASCADE)

class carrito_producto (models.Model):
    id_carrito_carrito = models.ForeignKey(carrito, on_delete=models.CASCADE, primary_key=True)
    id_producto_producto = models.ForeignKey(producto, on_delete=models.CASCADE, primary_key=True)
    cantidad = models.IntegerField()

