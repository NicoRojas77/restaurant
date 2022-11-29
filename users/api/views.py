from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAdminUser, IsAuthenticated, IsAuthenticatedOrReadOnly
from django.contrib.auth.hashers import make_password
from rest_framework.views import APIView
from rest_framework.response import Response

from users.models import Usuario
from users.api.serializers import UserSerializer

class UserApiViewSet(ModelViewSet):
    permission_classes =[IsAuthenticatedOrReadOnly]
    serializer_class = UserSerializer
    queryset = Usuario.objects.all()

    def create(self,request,*args,**kwargs):
        request.data['password'] = make_password(request.data['password'])
        return super().create(request,*args,**kwargs)

    def update(self, request, *args, **kwargs):
        password = request.data['password']
        if password:
            request.data['password'] = make_password(password)
        else:
            request.data['password'] = request.user.password
        return super().update(request, *args, **kwargs)

class UserView(APIView):
    permission_classes = [IsAuthenticatedOrReadOnly]

    def get(self, request):
        serializer = UserSerializer(request.user)
        return Response(serializer.data)
