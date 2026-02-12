from django.urls import path
from . import views
from .views import login_view, logout_view, index_view

urlpatterns = [ 
    path('', login_view, name='login'), # Pour se connecter
    path('acceuil/', index_view, name='index'), # Pour afficher la page acceuil
    path('', logout_view, name='logout'),  # URL de déconnexion
]


