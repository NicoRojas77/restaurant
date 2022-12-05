from django.db import models

# Create your models here.

class Pedido_proveedor(models.Model):
    proveedor = models.ForeignKey('supplier.Proveedor', on_delete=models.SET_NULL, null=True, blank=True)
    ingrediente = models.ForeignKey('ingredients.Ingrediente', on_delete=models.SET_NULL, null=True, blank=True)
    creado_el = models.DateTimeField(auto_now_add=True)
    cantidad = models.IntegerField()

    