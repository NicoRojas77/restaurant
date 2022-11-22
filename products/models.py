from django.db import models

# Create your models here.

class Producto(models.Model):
    nombre  = models.CharField(max_length=250)
    imagen = models.ImageField(upload_to='products')
    precio = models.IntegerField()
    activo = models.BooleanField(default=False)
    categoria = models.ForeignKey('categories.Categoria', on_delete=models.SET_NULL, null=True, blank=True)

    def __str__(self):
        return self.nombre