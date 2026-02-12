from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.template import loader
from django.contrib import messages
from .models import TUser
from django.db.models import Q # Pour créer des filtres complexes avec OR
from .decorators import login_required_custom

# Vue pour gérer le login
def login_view(request):
    # Si déjà connecté, on va directement sur index
    if request.session.get('user_id'):
        return redirect('index')

    if request.method == "POST":
        identifiant = request.POST.get("identifiant")
        password = request.POST.get("password")

        users = TUser.objects.filter(
            mdp=password
        ).filter(
            Q(mail_user=identifiant) | Q(cd_user=identifiant)
        )

        if users.exists():
            user = users.first()

            # Création des variables de session
            request.session['user_id'] = user.idt_user
            request.session['user_name'] = user.nm_user

            # Redirection vers la page demandée si elle existe
            next_page = request.session.get('next', 'index')
            if 'next' in request.session:
                del request.session['next']

            return redirect(next_page)
        else:
            messages.error(request, "Identifiant ou mot de passe incorrect")

    return render(request, "authentification/login.html")

# Vue pour afficher la page index.html après connexion
def index_view(request):
    # Sécurité : vérifier si l'utilisateur est connecté
    if not request.session.get('user_id'):
       return redirect('login')
    return render(request, "index.html")

#@login_required_custom
#def index_view(request):
   ## Vue protégée par le décorateur
   ## return render(request, "index.html")

# Déconnecte l'utilisateur en supprimant la session
def logout_view(request):
    # Déconnexion
    request.session.flush()  # supprime toutes les variables de session
    messages.success(request, "Vous êtes déconnecté.")
    return redirect('login')