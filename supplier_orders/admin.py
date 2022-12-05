from django.contrib import admin
from supplier_orders.models import Pedido_proveedor

# Register your models here.

@admin.register(Pedido_proveedor)
class Supplier_orderAdmin(admin.ModelAdmin):
    list_display = ('id','proveedor','ingrediente','cantidad','creado_el')