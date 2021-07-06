from django.conf.urls import url

from . import views

urlpatterns = [
	url(r'^create/$',views.create, name='create'),
	url(r'^delete/(?P<delete_id>[0-99]+)$', views.delete, name='delete'),
	url(r'^$',views.list, name='list'),
]

app_name = 'poster'