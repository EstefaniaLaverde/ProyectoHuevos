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
            'id_cliente': forms.TextInput(attrs={'class':'form-control'}),
            'nombre': forms.TextInput(attrs={'class':'form-control'}),
            'apellido' : forms.TextInput(attrs={'class':'form-control'}),
            'direccion_correo' : forms.TextInput(attrs={'class':'form-control','aria-describedby':"emailHelp"}),
            #NOTA: si quiero que salga un calendario pongo .DateInput o en inspeccionar iput type='date'
        }