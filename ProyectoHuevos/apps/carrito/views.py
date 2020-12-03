from django.shortcuts import render
from django.shortcuts import render
from django.http import HttpResponse
from apps.cliente.models import cliente
import apps.carrito.models
from apps.producto.models import producto
from apps.carrito.models import carrito
from apps.carrito.models import carrito_producto
from apps.carrito.forms import agregarCarritoForm
from apps.carrito.forms import verificarIdsForm
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from apps.producto.models import producto
from apps.producto.views import consultarProducto
import json
from django.core.serializers.json import DjangoJSONEncoder
from django.core.serializers import serialize


# Create your views here.sds

def index(request):
    return render(request, 'carrito/inicio.html')

# def carrito(request):
#     carrito = carrito_producto.objects.all()
#     contexto = {'carrito':carrito}
#     return render(request, 'carrito/inicio.html', contexto)

@login_required
def consultarCarrito(request):
    user = request.user
    id_productos = []
    id_cliente = cliente.objects.get(id_user = user.id).id_cliente
    id_carrito = carrito.objects.get(id_cliente = id_cliente).id_carrito
    productos_carrito = carrito_producto.objects.filter(id_carrito_carrito=id_carrito)
    prod_carrito_def = productos_carrito.filter(cantidad__gt=0)
    #Se añaden a una lista los precios de los productos del carrito
    for product in prod_carrito_def:
        # precios.append(producto.objects.get(id_producto = product.id_producto_producto_id).precio)
        # nombres.append(producto.objects.get(id_producto = product.id_producto_producto_id).nombre)
        id_productos.append(product.id_producto_producto_id)
    descripcion_productos = producto.objects.filter(id_producto__in=id_productos)
    return render(request, 'carrito/consultarCarrito.html',{'user':user,'carro':prod_carrito_def,'desc_productos':descripcion_productos,'id_productos':id_productos})

@login_required
def verificarIds (request, id_prod):
    #Producto = producto.objects.get(id_producto = id_prod)
    if request.method == 'POST':
        form = verificarIdsForm(request.POST)
        if form.is_valid():
            form.save()
        return consultarProducto(request)
    else:
        form = verificarIdsForm()
        return render(request, 'producto/verificarIds.html', {'form' : form})

@login_required
def agregarCarrito (request, id_prod):
    #Producto = producto.objects.get(id_producto = id_prod)
    if request.method == 'POST':
        form = agregarCarritoForm(request.POST)
        if form.is_valid():
            form.save()
        return consultarProducto(request)
    else:
        form = agregarCarritoForm()
        return render(request, 'producto/agregarCarrito.html', {'form' : form})

def sumarItem(request):
    if request.method == 'POST':
        id_producto = request.POST['id_producto']
        user = request.user
        id_cliente = cliente.objects.get(id_user = user.id).id_cliente
        id_carrito = carrito.objects.get(id_cliente_id = id_cliente).id_carrito
        print(id_carrito)
        query0 = carrito_producto.objects.filter(id_carrito_carrito=id_carrito)
        query = query0.get(id_producto_producto_id = id_producto)
        cantidad = list(query0.filter(id_producto_producto_id = id_producto).values('cantidad'))[0]['cantidad']
        print(cantidad)
        query.cantidad = 1 + int(cantidad)
        query.save()
        return HttpResponse('')

def restarItem(request):
    if request.method == 'POST':
        id_producto_r = request.POST['id_producto']
        user = request.user
        id_cliente = cliente.objects.get(id_user = user.id).id_cliente
        id_carrito = carrito.objects.get(id_cliente_id = id_cliente).id_carrito
        print(id_carrito)
        query0 = carrito_producto.objects.filter(id_carrito_carrito=id_carrito)
        query = query0.get(id_producto_producto_id = id_producto_r)
        cantidad = list(query0.filter(id_producto_producto_id = id_producto_r).values('cantidad'))[0]['cantidad']
        #print(cantidad)
        query.cantidad = int(cantidad) - 1
        query.save()
        precio = list(producto.objects.filter(id_producto = id_producto_r).values('precio'))[0]['precio']
        print(id_producto_r)
        print(precio)
        # return HttpResponse([id_producto,cantidad,precio])  
        res = str(id_producto_r) + ',' + str(cantidad) + ',' + str(precio)
        return HttpResponse(res)  