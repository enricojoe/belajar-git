from django.conf.urls import url

from . import views
urlpatterns = [
    url(r'^base/$',views.base),
    url(r'^coursel/$',views.coursel),
]
