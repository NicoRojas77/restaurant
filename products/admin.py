from django.contrib import admin
from products.models import Producto
# Register your models here.


@admin.register(Producto)
class ProductAdmin(admin.ModelAdmin):
    pass