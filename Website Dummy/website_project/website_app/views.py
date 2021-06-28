from django.shortcuts import render

# Create your views here.
def base (request):
	return render(request,'base_layout.html')

def coursel (request):
	return render(request,'coursel.html')