from django import forms
from apps.producto.models import producto
from apps.carrito.models import carrito_producto
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

class agregarCarritoForm(forms.ModelForm):
    class Meta:
        model = carrito_producto
        fields = [
            'id_carrito_carrito'
            'id_producto_producto',
            'cantidad',
        ]
        fields = {
            'id_carrito_carrito':'Id carrito',
            'id_producto_producto':'Id Producto',
            'cantidad':'hola'
        }
        widgets = {
            'id_carrito_carrito': forms.TextInput(attrs={'class':'form-control'}),
            'id_producto_producto': forms.TextInput(attrs={'class':'form-control'}),
            'cantidad' : forms.TextInput(attrs={'class':'form-control'}),

        }
