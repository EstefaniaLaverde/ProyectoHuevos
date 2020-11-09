from django.db import models
from apps.carrito.models import carrito
from apps.producto.models import producto

from django.contrib import admin

# Create your models here.

class repartidor(models.Model):
    id_repartidor = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45)
    apellido = models.CharField(max_length=45)

class factura(models.Model):
    id_factura = models.AutoField(primary_key=True)
    precio_total = models.IntegerField()
    fecha = models.DateField()
    id_carrito_carrito = models.ForeignKey(carrito, on_delete=models.CASCADE)
    id_repartidor_repartidor = models.ForeignKey(repartidor, on_delete=models.CASCADE)

class factura_producto(models.Model):
    class Meta:
        unique_together = (('id_factura_factura', 'id_producto_producto'),)
    id_factura_factura = models.ForeignKey(factura, on_delete=models.CASCADE)
    id_producto_producto = models.ForeignKey(producto, on_delete=models.CASCADE)
    precio_total = models.IntegerField()
    cantidad = models.IntegerField()

class metodo_pago(models.Model):
    id_metodo = models.AutoField(primary_key=True)
    nombre_metodo = models.CharField(max_length=45)
    id_factura_factura = models.ForeignKey(factura, on_delete=models.CASCADE)

admin.site.register(repartidor)
admin.site.register(factura)
admin.site.register(factura_producto)
admin.site.register(metodo_pago)

