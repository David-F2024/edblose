from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.template import loader
from django.contrib import messages
from .models import TUser
from django.db.models import Q # Pour créer des filtres complexes avec OR
from .auth_backends import logout_view

# Vue pour gérer le login
def login_view(request):
    # On vérifie si le formulaire a été soumis en POST
    if request.method == "POST":
        # On récupère les données du formulaire
        identifiant = request.POST.get("identifiant")  # l'email ou le code utilisateur
        password = request.POST.get("password")        # le mot de passe

        # On filtre les utilisateurs dans la table TUser, le mot de passe doit correspondre, l'identifiant doit correspondre à l'email OU au code utilisateur
        users = TUser.objects.filter(
            mdp=password
        ).filter(
            Q(mail_user=identifiant) | Q(cd_user=identifiant)
        )

        # On vérifie s'il y a un utilisateur correspondant
        if users.exists():
            # On prend le premier utilisateur trouvé
            user = users.first()
            
            # Connexion réussie : on crée des variables de session
            request.session['user_id'] = user.idt_user       # stocke l'ID de l'utilisateur
            request.session['user_name'] = user.nm_user     # stocke le nom de l'utilisateur
            
            # redirection vers index.html
            return redirect('index')
        else:
            # Si aucun utilisateur ne correspond, on affiche un message d'erreur
            messages.error(request, "Identifiant ou mot de passe incorrect")
  
    return render(request, "authentification/login.html") # Affiche la page login.html

# Vue pour afficher la page index.html après connexion
def index_view(request):
    # Sécurité : vérifier si l'utilisateur est connecté
    if not request.session.get('user_id'):
        return redirect('login')

    return render(request, "index.html")


