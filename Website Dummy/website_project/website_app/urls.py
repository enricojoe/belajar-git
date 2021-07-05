from django.conf.urls import url, include

from . import views
urlpatterns = [
    url(r'^$',views.home_icos),
    url(r'^2021/home/$',views.home_icos2021),
    url(r'^2021/conference/$',views.info_conference2021),
    url(r'^2021/conference/regist/$',views.regis_conference2021),
    url(r'^2021/lomba/$',views.info_lomba2021),
    url(r'^2021/lomba/regist/$',views.regis_lomba2021),
    url(r'^2021/lomba/regist/kti/', include('kti.urls',namespace='kti')),
    url(r'^2021/lomba/regist/poster/', include('poster.urls',namespace='poster')),
    url(r'^2021/lomba/regist/prototype/', include('prototype.urls',namespace='prototype')),
]
