from django.conf.urls import url

from . import views

urlpatterns = [
	url(r'^delete/(?P<delete_id>[0-9]+)$', views.deletelist, name='delete'),
	url(r'^update/(?P<update_id>[0-9]+)$', views.updatelist, name='update'),
	url(r'^create/$',views.create, name='create'),
	url(r'^$',views.list, name='list'),
]
