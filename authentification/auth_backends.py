from django.shortcuts import render, redirect
# Déconnecte l'utilisateur en supprimant la session
def logout_view(request):
    request.session.flush()  # supprime toutes les variables de session
    return redirect('login')  # retourne à la page de login