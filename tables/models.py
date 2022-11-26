from django.db import models

# Create your models here.

class Mesa(models.Model):
    numero = models.IntegerField(unique=True)

    def __str__(self):
        return str(self.numero)