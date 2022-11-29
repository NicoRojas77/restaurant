from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticatedOrReadOnly
from ingredients.models import Ingrediente
from ingredients.api.serializers import IngredientSerializer

class IngredientApiViewSet(ModelViewSet):
    permission_classes = [IsAuthenticatedOrReadOnly]
    serializer_class = IngredientSerializer
    queryset = Ingrediente.objects.all()

