from django.shortcuts import render
from django.http import HttpResponse
from apps.factura.models import repartidor
from apps.factura.forms import RepartidorForm
from django.contrib.auth.decorators import login_required
from django.contrib.admin.views.decorators import staff_member_required

# Create your views here.

def index(request):
    return render(request, 'repartidor/inicio.html')

@staff_member_required
def crearRepartidor(request):
    if request.method == 'POST':
        form = RepartidorForm(request.POST)
        form.save()
        return consultarRepartidor(request)
    else:
        form = RepartidorForm()
        return render(request, 'repartidor/crearRepartidor.html', {'form' : form})

@staff_member_required
def consultarRepartidor(request):
    repartidores = repartidor.objects.all()
    contexto = {'repartidores':repartidores}

    return render(request, 'repartidor/consultarRepartidor.html', contexto)

@staff_member_required
def editarRepartidor(request, id_rep):
    Repartidor = repartidor.objects.get(id_repartidor = id_rep)
    if request.method == 'POST':
        form = RepartidorForm(request.POST, instance = Repartidor)
        if form.is_valid:
            form.save()
        return consultarRepartidor(request)
    else:
        form = RepartidorForm(instance = Repartidor)
        return render(request, 'repartidor/editarRepartidor.html', {'form' : form})

@staff_member_required
def eliminarRepartidor(request, id_rep):
    Repartidor = repartidor.objects.get(id_repartidor=id_rep)
    if request.method == 'POST':
        Repartidor.delete()
        return consultarRepartidor(request)
    else:
        return render(request, 'repartidor/eliminarRepartidor.html', {'repartidor' : Repartidor})