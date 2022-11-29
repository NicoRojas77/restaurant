from rest_framework.routers import DefaultRouter
from ingredients.api.views import IngredientApiViewSet

router_ingredient = DefaultRouter()

router_ingredient.register(
    prefix='ingredientes', basename='ingredientes', viewset=IngredientApiViewSet
)