from django.conf.urls import url

from . import views
urlpatterns = [
    url(r'^home_page_icos/$',views.home_icos),
    url(r'^home_page_icos2021/$',views.home_icos2021),
    url(r'^info_conference2021/$',views.info_conference2021),
    url(r'^regis_conference2021/$',views.regis_conference2021),
    url(r'^info_lomba2021/$',views.info_lomba2021),
    url(r'^regis_lomba2021/$',views.regis_lomba2021),
]
