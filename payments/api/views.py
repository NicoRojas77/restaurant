from rest_framework.viewsets import ModelViewSet
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.filters import OrderingFilter

from rest_framework.permissions import IsAuthenticatedOrReadOnly
from payments.models import Pago
from payments.api.serializers import PaymentSerializer

class PaymentApiViewSet(ModelViewSet):
    # permission_classes = [IsAuthenticatedOrReadOnly]
    serializer_class = PaymentSerializer
    queryset = Pago.objects.all()
    filter_backends = [DjangoFilterBackend, OrderingFilter]
    filterset_fields = ['mesa', 'estadoPago']
    ordering_fields = '__all__'

