from rest_framework.viewsets import ModelViewSet
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.filters import OrderingFilter

from rest_framework.permissions import IsAuthenticatedOrReadOnly
from orders.models import Orden
from orders.api.serializers import OrderSerializer

class OrderApiViewSet(ModelViewSet):
    # permission_classes = [IsAuthenticatedOrReadOnly]
    serializer_class = OrderSerializer
    queryset = Orden.objects.all()
    filter_backends = [DjangoFilterBackend, OrderingFilter]
    filterset_fields = ['mesa', 'estado', 'cerrado']
    ordering_fields = '__all__'

