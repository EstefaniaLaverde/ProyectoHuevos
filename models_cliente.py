from django.db import models
from django.contrib import admin
# Create your models here.

class cliente(models.Model):
    id_cliente = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45)
    apellido = models.CharField(max_length=45)
    direccion_correo = models.CharField(max_length=65)

class telefono(models.Model):
    id_telefono = models.AutoField(primary_key=True)
    num_telefono = models.IntegerField()
    id_cliente = models.ForeignKey(cliente, on_delete=models.CASCADE)

class ciudad(models.Model):
    id_ciudad = models.AutoField(primary_key=True)
    nombre_ciudad = models.CharField(max_length=45)

class direccion(models.Model):
    id_direccion = models.AutoField(primary_key=True)
    via = models.CharField(max_length=45)
    num_principal = models.SmallIntegerField()
    sufijo = models.CharField(max_length=45)
    num_secundario = models.SmallIntegerField()
    otro = models.CharField(max_length=70)
    id_ciudad_ciudad = models.ForeignKey(ciudad, on_delete=models.CASCADE)

class calle_direccion(models.Model):
    class Meta:
        unique_together = (('id_cliente_cliente', 'id_direccion_direccion'),)
    id_cliente_cliente = models.ForeignKey(cliente, on_delete=models.CASCADE)
    id_direccion_direccion = models.ForeignKey(direccion, on_delete=models.CASCADE)

admin.site.register(cliente)
admin.site.register(telefono)
admin.site.register(ciudad)
admin.site.register(direccion)
admin.site.register(calle_direccion)
