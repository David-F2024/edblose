from functools import wraps
from django.shortcuts import redirect
from django.contrib import messages

def login_required_custom(view_func):
    """
    Protège les vues : redirige vers login si non connecté
    Sauvegarde la page demandée pour redirection après login
    """
    @wraps(view_func)
    def wrapper(request, *args, **kwargs):
        if not request.session.get('user_id'):
            # Sauvegarde la page actuelle
            request.session['next'] = request.get_full_path()
            # Message d'avertissement
            messages.warning(request, "Vous devez vous connecter pour accéder à cette page.")
            return redirect('login')
        return view_func(request, *args, **kwargs)
    return wrapper
