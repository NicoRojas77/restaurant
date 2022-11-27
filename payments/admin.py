from django.contrib import admin
from payments.models import Pago
# Register your models here.


@admin.register(Pago)
class PaymentsAdmin(admin.ModelAdmin):
    list_display = ('id','mesa','totalPago','estadoPago','creado_el','tipoPago')
