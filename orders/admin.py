from django.contrib import admin
from orders.models import Orden
# Register your models here.

@admin.register(Orden)
class OrdersAdmin(admin.ModelAdmin):
    list_display= ('mesa','producto','estado','creado_el','cerrado')

