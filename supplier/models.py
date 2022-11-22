from django.db import models

# Create your models here.

class Proveedor(models.Model):
    nombre  = models.CharField(max_length=250)
    email  = models.CharField(max_length=250)
    telefono = models.IntegerField()

    def __str__(self):
        return self.nombre