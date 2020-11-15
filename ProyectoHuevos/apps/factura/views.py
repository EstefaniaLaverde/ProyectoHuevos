from django.shortcuts import render
from django.http import HttpResponse
from apps.factura.models import repartidor
from apps.factura.forms import RepartidorForm

# Create your views here.

def index(request):
    return render(request, 'repartidor/inicio.html')

def crearRepartidor(request):
    if request.method == 'POST':
        form = RepartidorForm(request.POST)
        form.save()
    else:
        form = RepartidorForm()
    return render(request, 'repartidor/crearRepartidor.html', {'form' : form})

def consultarRepartidor(request):
    repartidores = repartidor.objects.all()
    contexto = {'repartidores':repartidores}

    return render(request, 'repartidor/consultarRepartidor.html', contexto)
