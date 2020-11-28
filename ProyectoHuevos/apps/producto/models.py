from django.db import models
from django.contrib import admin


class categoria(models.Model):
    id_categoria = models.IntegerField(primary_key=True)
    tipo = models.CharField(max_length=45)
    tamanio = models.SmallIntegerField()

class administrador(models.Model):
    id_administrador = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45)
    apellido = models.CharField(max_length=45)
    correo = models.CharField(max_length=65)

class producto(models.Model):
    id_producto = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=45)
    precio = models.IntegerField()
    stock = models.SmallIntegerField()
    cantidad_venta = models.IntegerField()
    id_categoria = models.ForeignKey(categoria, on_delete=models.CASCADE)
    id_administrador = models.ForeignKey(administrador, on_delete=models.CASCADE)

admin.site.register(categoria)
admin.site.register(administrador)
admin.site.register(producto)
