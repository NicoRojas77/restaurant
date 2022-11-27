from rest_framework.serializers import ModelSerializer
from payments.models import Pago

from tables.api.serializers import TableSerializer

class PaymentSerializer(ModelSerializer):
    table_data = TableSerializer(source='mesa', read_only=True) 
    class Meta:
        model = Pago
        fields = ['id','mesa','table_data','totalPago',
        'tipoPago', 'estadoPago' , 'creado_el']