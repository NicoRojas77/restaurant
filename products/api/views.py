from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticatedOrReadOnly
from rest_framework.viewsets import ModelViewSet
from django_filters.rest_framework import DjangoFilterBackend 

from products.models import Producto
from products.api.serializers import ProductSerializer

class ProductApiViewSet(ModelViewSet):
    permission_classes = [IsAuthenticatedOrReadOnly]
    serializer_class = ProductSerializer
    queryset = Producto.objects.all()
    filter_backends = [DjangoFilterBackend]
    filterset_fields = ['categoria', 'activo']