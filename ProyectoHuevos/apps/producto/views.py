from django.shortcuts import render
from django.http import HttpResponse
from apps.producto.models import producto
from apps.producto.forms import ProductoForm
# Create your views here.

def index(request):
    return render(request, 'producto/inicio.html')

def crearProducto(request):
    if request.method == 'POST':
        form = ProductoForm(request.POST)
        form.save()
        return consultarProducto(request)
    else:
        form = ProductoForm()
        return render(request, 'Producto/crearProducto.html', {'form' : form})

def consultarProducto(request):
    productos = producto.objects.all()
    contexto = {'productos':productos}

    return render(request, 'producto/consultarProducto.html', contexto)

def editarProducto(request, id_prod):
    Producto = producto.objects.get(id_producto = id_prod)
    if request.method == 'POST':
        form = ProductoForm(request.POST, instance = Producto)
        if form.is_valid:
            form.save()
        return consultarProducto(request)
    else:
        form = ProductoForm(instance = Producto)
        return render(request, 'producto/editarProducto.html', {'form' : form})

def eliminarProducto(request, id_prod):
    Producto = producto.objects.get(id_producto = id_prod)
    if request.method == 'POST':
        Producto.delete()
        return consultarProducto(request)
    else:
        return render(request, 'producto/eliminarProducto.html', {'producto' : Producto})
