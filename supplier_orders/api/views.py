from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticatedOrReadOnly
from rest_framework.viewsets import ModelViewSet


from supplier_orders.models import Pedido_proveedor
from supplier_orders.api.serializers import Supplier_ordersSerializer

class Supplier_ordersApiViewSet(ModelViewSet):
    permission_classes = [IsAuthenticatedOrReadOnly]
    serializer_class = Supplier_ordersSerializer
    queryset = Pedido_proveedor.objects.all()
