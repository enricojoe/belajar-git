from django.shortcuts import render, redirect
from django.http import HttpResponse
# Create your views here.

from .models import Poster
from .forms import POSTERForm

def create(request):
	akun_form = POSTERForm(request.POST or None)

	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('poster:list')

	context = {
		"page_title":"Daftar Lomba",
		"akun_form":akun_form,
	}

	return render(request,'poster/create.html',context)

def delete(request,delete_id):
	Poster.objects.filter(id=delete_id).delete()
	return redirect('poster:list')

def list(request):
	semua_akun = Poster.objects.all()

	context = {
		'page_title':'Daftar Perlombaan Poster',
		'semua_akun':semua_akun,
	}

	return render(request,'poster/table.html',context)
