from django import forms
from apps.producto.models import producto

class ProductoForm(forms.ModelForm):
    class Meta:
        model = producto
        fields = [
            'id_producto',
            'nombre',
            'precio',
            'stock',
            'cantidad_venta',
            'id_categoria',
            'id_administrador',
        ]
        fields = {
            'id_producto':'Id',
            'nombre':'Nombre',
            'precio':'Precio',
            'stock':'Stock',
            'cantidad_venta':'Cantidad Vendida',
            'id_categoria':'id_categoria',
            'id_administrador':'id_administrador'
        }
        widgets = {
            'id_producto': forms.TextInput(attrs={'class':'form-control'}),
            'nombre': forms.TextInput(attrs={'class':'form-control'}),
            'precio' : forms.TextInput(attrs={'class':'form-control'}),
            'stock': forms.TextInput(attrs={'class':'form-control'}),
            'cantidad_venta': forms.TextInput(attrs={'class':'form-control'}),
            'id_categoria': forms.TextInput(attrs={'class':'form-control'}),
            'id_administrador': forms.TextInput(attrs={'class':'form-control'}),
        }
