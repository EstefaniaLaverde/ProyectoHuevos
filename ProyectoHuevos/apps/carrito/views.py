from django.shortcuts import render
from django.shortcuts import render
from django.http import HttpResponse
from apps.carrito.models import carrito
from apps.carrito.models import carrito_producto


# Create your views here.

def index(request):
    return render(request, 'carrito/inicio.html')

def carrito(request):
    carrito = carrito_producto.objects.all()
    contexto = {'carrito':carrito}
    return render(request, 'carrito/inicio.html', contexto)
