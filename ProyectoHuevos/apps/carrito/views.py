from django.shortcuts import render
from django.shortcuts import render
from django.http import HttpResponse
from apps.carrito.models import carrito
from apps.carrito.models import carrito_producto
from apps.carrito.forms import agregarCarritoForm
from apps.carrito.forms import verificarIdsForm
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from apps.producto.models import producto
from apps.producto.views import consultarProducto
# Create your views here.

def index(request):
    return render(request, 'carrito/inicio.html')

# def carrito(request):
#     carrito = carrito_producto.objects.all()
#     contexto = {'carrito':carrito}
#     return render(request, 'carrito/inicio.html', contexto)

@login_required
def consultarCarrito(request):
    username = request.user.get_username()
    return render(request, 'carrito/consultarCarrito.html',{'username':username})

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
