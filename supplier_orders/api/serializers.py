from rest_framework.serializers import ModelSerializer
from supplier_orders.models import Pedido_proveedor

from supplier.api.serializers import SupplierSerializer
from ingredients.api.serializers import IngredientSerializer


class Supplier_ordersSerializer(ModelSerializer):
    proveedor_data = SupplierSerializer(source='proveedor', read_only=True)
    ingrediente_data = IngredientSerializer(source='ingrediente', read_only=True)
    
    class Meta:
        model = Pedido_proveedor
        fields = ['id', 'proveedor_data', 'ingrediente_data', 'creado_el', 'cantidad']

