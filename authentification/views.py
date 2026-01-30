from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from django.contrib import messages

import datetime
def index(request):
	context={
	"message":"Hello word !!",
	"numberNews":9,
	"usersList":["Papa","Olivier","BAKOU","Fernand"],
	"publication":datetime.datetime.now(),
	"username":"BAKOU LONGO Olivier Fernand"
	}
	template=loader.get_template("authentification/login.html")
	return HttpResponse(template.render(context,request))
