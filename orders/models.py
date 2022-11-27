from django.db import models

StatusEnum = (
    ( 'PENDIENTE','pendiente'),
    ('ENTREGADO','entregado')
    )
# Create your models here.

class Orden(models.Model):
    mesa = models.ForeignKey('tables.Mesa', on_delete=models.SET_NULL, null=True, blank=True) 
    producto = models.ForeignKey('products.Producto', on_delete=models.SET_NULL, null=True, blank=True)
    pago = models.ForeignKey('payments.Pago', on_delete=models.CASCADE, null=True, blank=True)
    estado = models.CharField(max_length=250, choices=StatusEnum)
    creado_el = models.DateTimeField(auto_now_add=True)
    cerrado = models.BooleanField(default=False)

    def __str__(self):
        return str(self.mesa)