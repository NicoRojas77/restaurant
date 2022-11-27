from rest_framework.routers import DefaultRouter
from payments.api.views import PaymentApiViewSet

router_payment = DefaultRouter()

router_payment.register(
    prefix='pagos', basename='pagos', viewset=PaymentApiViewSet
)