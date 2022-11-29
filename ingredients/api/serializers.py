from rest_framework.serializers import ModelSerializer
from ingredients.models import Ingrediente

class IngredientSerializer(ModelSerializer):
    class Meta:
        model = Ingrediente
        fields = ['id','nombre']