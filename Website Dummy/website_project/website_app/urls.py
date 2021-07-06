from django.conf.urls import url

from . import views
urlpatterns = [
    url(r'^$',views.home_icos, name='home_icos'),
    url(r'^2021/home/$',views.home_icos2021, name='home'),
    url(r'^2021/conference/$',views.info_conference2021, name='conference'),
    url(r'^2021/conference/regist/$',views.regis_conference2021, name='register_conference'),
    url(r'^2021/lomba/$',views.info_lomba2021, name='lomba'),
    url(r'^2021/lomba/regist/$',views.regis_lomba2021, name='register_lomba'),
]
