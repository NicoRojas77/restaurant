from rest_framework.serializers import ModelSerializer
from products.models import Producto
from categories.api.serializers import CategorySerializer


class ProductSerializer(ModelSerializer):
    categoria_data = CategorySerializer(source='categoria', read_only=True)
    
    class Meta:
        model = Producto
        fields = ['id', 'nombre', 'imagen', 'precio', 'activo', 'categoria', 'categoria_data']
