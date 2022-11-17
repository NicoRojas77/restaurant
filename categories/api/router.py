from rest_framework.routers import DefaultRouter
from categories.api.views import CategoryApiViewSet

router_category = DefaultRouter()

router_category.register(
    prefix='categorias', basename='categorias', viewset=CategoryApiViewSet
)