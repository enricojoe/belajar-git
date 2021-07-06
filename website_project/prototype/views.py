from django.shortcuts import render, redirect
from django.http import HttpResponse
# Create your views here.

from .models import Prototype
from .forms import PROTOTYPEForm

def create(request):
	akun_form = PROTOTYPEForm(request.POST or None)

	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('prototype:list')

	context = {
		"page_title":"Daftar Lomba",
		"akun_form":akun_form,
	}

	return render(request,'prototype/create.html',context)

def delete(request,delete_id):
	Prototype.objects.filter(id=delete_id).delete()
	return redirect('prototype:list')

def list(request):
	semua_akun = Prototype.objects.all()

	context = {
		'page_title':'Daftar Perlombaan Prototype',
		'semua_akun':semua_akun,
	}

	return render(request,'prototype/table.html',context)
