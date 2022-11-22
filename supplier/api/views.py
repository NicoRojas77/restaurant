from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticatedOrReadOnly
from rest_framework.viewsets import ModelViewSet
from supplier.models import Proveedor
from supplier.api.serializers import SupplierSerializer

class SupplierApiViewSet(ModelViewSet):
    permission_classes = [IsAuthenticatedOrReadOnly]
    serializer_class = SupplierSerializer
    queryset = Proveedor.objects.all()
