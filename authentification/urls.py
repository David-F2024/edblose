from django.urls import path
from . import views
from .views import login_view, logout_view, index_view

urlpatterns = [ 
    path('', login_view, name='login'), 
    path('acceuil/', index_view, name='index'),
    path('', logout_view, name='logout'),  # URL de déconnexion
]


