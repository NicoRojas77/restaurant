from rest_framework.serializers import ModelSerializer
from categories.models import Categoria

class CategorySerializer(ModelSerializer):
    class Meta:
        model = Categoria
        fields = ['id','nombre','imagen']