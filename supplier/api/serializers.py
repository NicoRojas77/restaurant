from rest_framework.serializers import ModelSerializer
from supplier.models import Proveedor



class SupplierSerializer(ModelSerializer):
    
    class Meta:
        model = Proveedor
        fields = ['id', 'nombre','email', 'telefono']
