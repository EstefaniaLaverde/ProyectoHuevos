from django.shortcuts import render
from django.http import HttpResponse
from apps.producto.models import producto
from apps.producto.forms import ProductoForm
from apps.carrito.forms import agregarCarritoForm
from django.contrib.auth.decorators import login_required
from django.contrib.admin.views.decorators import staff_member_required
from apps.carrito.models import carrito, carrito_producto
from apps.cliente.models import cliente
def index(request):
    return render(request, 'producto/inicio.html')

@staff_member_required
def crearProducto(request):
    if request.method == 'POST':
        form = ProductoForm(request.POST)
        form.save()
        return consultarProducto(request)
    else:
        form = ProductoForm()
        return render(request, 'Producto/crearProducto.html', {'form' : form})

def consultarProducto(request):
    productos = producto.objects.filter(stock__gt = 0)
    id_productos = []
    for i in productos:
        id_productos.append(i.id_producto)
    contexto = {'productos':productos, 'id_productos':id_productos}

    return render(request, 'producto/consultarProducto.html', contexto)

@staff_member_required
def editarProducto(request, id_prod):
    Producto = producto.objects.get(id_producto = id_prod)
    if request.method == 'POST':
        form = ProductoForm(request.POST, instance = Producto)
        if form.is_valid():
            form.save()
        return consultarProducto(request)
    else:
        form = ProductoForm(instance = Producto)
        return render(request, 'producto/editarProducto.html', {'form' : form})

@staff_member_required
def eliminarProducto(request, id_prod):
    Producto = producto.objects.get(id_producto = id_prod)
    if request.method == 'POST':
        Producto.delete()
        return consultarProducto(request)
    else:
        return render(request, 'producto/eliminarProducto.html', {'producto' : Producto})

@login_required
def addProducto(request):
    id_producto = request.POST['id_producto']
    user = request.user
    id_cliente = cliente.objects.get(id_user = user.id).id_cliente
    new_product = carrito_producto(id_carrito_carrito=carrito.objects.get(id_cliente_id = id_cliente), id_producto_producto=producto.objects.get(id_producto= id_producto), cantidad=1)
    new_product.save()
    return HttpResponse('')

    
