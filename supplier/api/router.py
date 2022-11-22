from rest_framework.routers import DefaultRouter

from supplier.api.views import SupplierApiViewSet

router_supplier = DefaultRouter()

router_supplier.register(
    prefix='proveedores', basename='proveedores', viewset=SupplierApiViewSet
)