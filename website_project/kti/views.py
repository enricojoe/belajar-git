from django.shortcuts import render, redirect
from django.http import HttpResponse
# Create your views here.

from .models import Kti
from .forms import KTIForm

def create(request):
	akun_form = KTIForm(request.POST or None)

	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('kti:list')

	context = {
		"page_title":"Daftar Lomba",
		"akun_form":akun_form,
	}

	return render(request,'kti/create.html',context)

def delete(request,delete_id):
	Kti.objects.filter(id=delete_id).delete()
	return redirect('kti:list')

def list(request):
	semua_akun = Kti.objects.all()

	context = {
		'page_title':'Daftar Perlombaan Karya Tulis Ilmiah',
		'semua_akun':semua_akun,
	}

	return render(request,'kti/table.html',context)
