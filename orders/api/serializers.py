from rest_framework.serializers import ModelSerializer
from orders.models import Orden

from products.api.serializers import ProductSerializer
from tables.api.serializers import TableSerializer

class OrderSerializer(ModelSerializer):
    product_data = ProductSerializer(source='producto', read_only=True)
    table_data = TableSerializer(source='mesa', read_only=True) 
    class Meta:
        model = Orden
        fields = ['id','mesa','table_data','producto',
        'product_data', 'estado' , 'creado_el', 'cerrado']