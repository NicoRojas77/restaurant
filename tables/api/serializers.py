from rest_framework.serializers import ModelSerializer
from tables.models import Mesa



class TableSerializer(ModelSerializer):
    
    class Meta:
        model = Mesa
        fields = ['id','numero']
