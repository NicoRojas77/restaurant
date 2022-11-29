from django.contrib import admin
from ingredients.models import Ingrediente

# Register your models here.

@admin.register(Ingrediente)
class IngredienteAdmin(admin.ModelAdmin):
    pass