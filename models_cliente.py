from django.db import models

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

class calle_direccion(models.Model):
    id_cliente_cliente = models.ForeignKey(cliente, on_delete=models.CASCADE, primary_key=True)
    id_direccion_direccion = models.ForeignKey(direccion, on_delete=models.CASCADE, primary_key=True)
