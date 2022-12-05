from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticatedOrReadOnly

from django_filters.rest_framework import DjangoFilterBackend

from ingredients.models import Ingrediente
from ingredients.api.serializers import IngredientSerializer

class IngredientApiViewSet(ModelViewSet):
    permission_classes = [IsAuthenticatedOrReadOnly]
    serializer_class = IngredientSerializer
    queryset = Ingrediente.objects.all()

    filter_backends = [DjangoFilterBackend]
    filterset_fields = ['activo']



