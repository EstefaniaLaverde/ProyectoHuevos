from django import forms
from apps.factura.models import repartidor

class RepartidorForm(forms.ModelForm):
    class Meta:
        model = repartidor
        fields = [
            'id_repartidor',
            'nombre',
            'apellido',
        ]
        fields = {
            'id_repartidor':'Id',
            'nombre':'Nombre',
            'apellido':'Apellido',
        }
        widgets = {
            'id_repartidor': forms.TextInput(attrs={'class':'form-control'}),
            'nombre': forms.TextInput(attrs={'class':'form-control'}),
            'apellido' : forms.TextInput(attrs={'class':'form-control'}),
        }