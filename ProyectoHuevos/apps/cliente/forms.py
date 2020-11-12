from django import forms
from apps.cliente.models import cliente

class ClienteForm(forms.ModelForm):
    class Meta:
        model = cliente
        fields = [
            'id_cliente',
            'nombre',
            'apellido',
            'direccion_correo',
        ]
        fields = {
            'id_cliente':'Id',
            'nombre':'Nombre',
            'apellido':'Apellido',
            'direccion_correo':'Correo'
        }
        widgets = {
            'id_cliente': forms.TextInput(),
            'nombre': forms.TextInput(),
            'apellido' : forms.TextInput(),
            'direccion_correo' : forms.TextInput(),
        }
