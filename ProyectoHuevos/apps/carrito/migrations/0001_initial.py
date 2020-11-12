# Generated by Django 3.1.2 on 2020-11-12 15:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('producto', '0001_initial'),
        ('cliente', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='carrito',
            fields=[
                ('id_carrito', models.AutoField(primary_key=True, serialize=False)),
                ('id_cliente', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='cliente.cliente')),
            ],
        ),
        migrations.CreateModel(
            name='carrito_producto',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.IntegerField()),
                ('id_carrito_carrito', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='carrito.carrito')),
                ('id_producto_producto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='producto.producto')),
            ],
            options={
                'unique_together': {('id_carrito_carrito', 'id_producto_producto')},
            },
        ),
    ]
