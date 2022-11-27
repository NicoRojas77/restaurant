from django.db import models

# Create your models here.

PaymentTypeEnum = (
    ("TARJETA", "tarjeta"),
    ("EFECTIVO", "efectivo")
)

StatusPaymentEnum = (
    ("PENDIENTE", "pendiente"),
    ("PAGADO", "pagado")
)

class Pago(models.Model):
    mesa = models.ForeignKey('tables.Mesa', on_delete=models.SET_NULL, null=True)
    totalPago = models.IntegerField()
    tipoPago = models.CharField(max_length=250, choices=PaymentTypeEnum)
    estadoPago = models.CharField(max_length=250, choices=StatusPaymentEnum)
    creado_el = models.DateTimeField(auto_now_add=True)

    def __Str__(self):
        return str(self.mesa)