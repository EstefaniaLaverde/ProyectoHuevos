from django.shortcuts import render
from django.http import HttpResponse
from apps.cliente.models import cliente
from apps.cliente.forms import ClienteForm
from django.contrib.auth.decorators import login_required
from django.contrib.admin.views.decorators import staff_member_required

# Create your views here.
def index(request):
    # return("Hola mundo :)")
    return render(request, 'cliente/inicio.html')

@staff_member_required
def crearCliente(request):
    if request.method == 'POST':
        form = ClienteForm(request.POST)
        form.save()
        return consultarCliente(request)
    else:
        form = ClienteForm()
        return render(request, 'cliente/crearCliente.html', {'form' : form})

@staff_member_required
def consultarCliente(request):
    clientes = cliente.objects.all()
    contexto = {'clientes':clientes}

    return render(request, 'cliente/consultarCliente.html', contexto)

@staff_member_required
def editarCliente(request, id_cli):
    Cliente = cliente.objects.get(id_cliente = id_cli)
    if request.method == 'POST':
        form = ClienteForm(request.POST, instance = Cliente)
        if form.is_valid:
            form.save()
        return consultarCliente(request)
    else:
        form = ClienteForm(instance = Cliente)
        return render(request, 'cliente/editarCliente.html', {'form' : form})

@staff_member_required
def eliminarCliente(request, id_cli):
    Cliente = cliente.objects.get(id_cliente=id_cli)
    if request.method == 'POST':
        Cliente.delete()
        return consultarCliente(request)
    else:
        return render(request, 'cliente/eliminarCliente.html', {'cliente' : Cliente})