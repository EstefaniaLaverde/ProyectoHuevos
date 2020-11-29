from django import forms
from apps.carrito.models import carrito_producto
from apps.carrito.models import carrito

class agregarCarritoForm(forms.ModelForm):
    class Meta:
        model = carrito_producto
        fields = [
            'id_carrito_carrito',
            'id_producto_producto',
            'cantidad',
        ]
        fields = {
            'id_carrito_carrito':'Id carrito',
            'id_producto_producto':'Id Producto',
            'cantidad':'Cantidad',
        }
        widgets = {
            'id_carrito_carrito': forms.TextInput(attrs={'class':'form-control'}),
            'id_producto_producto': forms.TextInput(attrs={'class':'form-control'}),
            'cantidad' : forms.TextInput(attrs={'class':'form-control'}),

        }

class verificarIdsForm(forms.ModelForm):
    class Meta:
        model = carrito
        fields = [
            'id_carrito',
            'id_cliente',
        ]
        fields = {
            'id_carrito':'Id carrito',
            'id_cliente':'Id cliente',
        }
        widgets = {
            'id_carrito': forms.TextInput(attrs={'class':'form-control'}),
            'id_cliente': forms.TextInput(attrs={'class':'form-control'}),
        }
