# Generated by Django 3.1.2 on 2020-11-12 15:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='administrador',
            fields=[
                ('id_administrador', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=45)),
                ('apellido', models.CharField(max_length=45)),
                ('correo', models.CharField(max_length=65)),
            ],
        ),
        migrations.CreateModel(
            name='categoria',
            fields=[
                ('id_categoria', models.IntegerField(primary_key=True, serialize=False)),
                ('tipo', models.CharField(max_length=45)),
                ('tamanio', models.SmallIntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='producto',
            fields=[
                ('id_producto', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=45)),
                ('precio', models.IntegerField()),
                ('stock', models.SmallIntegerField()),
                ('cantidad_venta', models.IntegerField()),
                ('id_administrador', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='producto.administrador')),
                ('id_categoria', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='producto.categoria')),
            ],
        ),
    ]
