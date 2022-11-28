from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticatedOrReadOnly
from rest_framework.viewsets import ModelViewSet
from django_filters.rest_framework import DjangoFilterBackend


from tables.models import Mesa
from tables.api.serializers import TableSerializer

class TableApiViewSet(ModelViewSet):
    permission_classes = [IsAuthenticatedOrReadOnly]
    serializer_class = TableSerializer
    queryset = Mesa.objects.all().order_by('numero')
    filter_backends = [DjangoFilterBackend]
    filterset_fields = ['numero']
