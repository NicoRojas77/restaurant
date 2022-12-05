from rest_framework.routers import DefaultRouter

from supplier_orders.api.views import Supplier_ordersApiViewSet

router_supplier_orders = DefaultRouter()

router_supplier_orders.register(
    prefix='pedidos_proveedores', basename='pedidos_proveedores', viewset=Supplier_ordersApiViewSet
)