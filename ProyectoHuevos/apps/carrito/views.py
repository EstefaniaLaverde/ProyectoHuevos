from django.shortcuts import render
from django.shortcuts import render
from django.http import HttpResponse
from apps.carrito.models import carrito
from apps.carrito.models import carrito_producto
from django.contrib.auth.models import User


# Create your views here.

def index(request):
    return render(request, 'carrito/inicio.html')

# def carrito(request):
#     carrito = carrito_producto.objects.all()
#     contexto = {'carrito':carrito}
#     return render(request, 'carrito/inicio.html', contexto)

def consultarCarrito(request):
    username = request.user.get_username()
    return render(request, 'carrito/consultarCarrito.html',{'username':username})