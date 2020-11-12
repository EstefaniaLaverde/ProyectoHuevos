from django.shortcuts import render
from django.http import HttpResponse
from apps.cliente.models import cliente
from apps.cliente.forms import ClienteForm

# Create your views here.
def index(request):
    # return("Hola mundo :)")
    return render(request, 'cliente/inicio.html')

def crearCliente(request):
    if request.method == 'POST':
        form = ClienteForm(request.POST)
        form.save()
    else:
        form = ClienteForm()
    return render(request, 'cliente/crearCliente.html', {'form' : form})

def consultarCliente(request):
    clientes = cliente.objects.all()
    contexto = {'clientes':clientes}

    return render(request, 'cliente/consultarCliente.html', contexto)
