from django.db import models
#Clases de otras apps
from apps.carrito.models import carrito
from apps.producto.models import producto
# Create your models here.
class Repartidor:
    id_repartidor = models.AutoField(primary_key=True)
    Nombre = models.CharField(max_length=45)
    Apellido = models.CharField(max_length=45)


class Factura:
    id_factura = models.AutoField(primary_key=True)
    precio_total = models.IntegerField()
    id_repartidor = models.ForeignKey('Repartidor', on_delete=models.CASCADE )
    id_carrito = models.ForeignKey('carrito', on_delete=models.CASCADE)
    
class Factura_Producto:
    class Meta:
        unique_together = (('id_factura', 'id_cliente'),)
    id_factura = models.AutoField(primary_key=True)
    id_producto = models.ForeignKey('producto', on_delete=models.CASCADE)
    cantidad = models.IntegerField()
    precio_total = models.IntegerField()

class Metodo_Pago:
    id_metodo = models.AutoField(primary_key=True)
    nombre_metodo = models.CharField(max_length=45)
    id_factura = models.ForeignKey('Factura', on_delete=models.CASCADE)