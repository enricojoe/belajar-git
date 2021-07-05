from django.shortcuts import render

# Create your views here.
def home_icos (request):
	return render(request,'home icos/Home_Page.html')

def home_icos2021 (request):
	return render(request,'home icositer 2021/icos_2021.html')

def info_conference2021 (request):
	return render(request,'info conference 2021/info_conference.html')

def regis_conference2021 (request):
	return render(request,'regis conference 2021/regis_conference.html')

def info_lomba2021 (request):
	return render(request,'info lomba icositer 2021/info_lomba.html')

def regis_lomba2021 (request):
	return render(request,'regis lomba 2021/regis_lomba.html')