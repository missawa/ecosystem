from django.urls import path

from . import views

app_name = 'cliente'

urlpatterns = [
    path('', views.ClienteListView.as_view(), name='list'),
    path('<slug:id>/', views.ClienteDetailView.as_view(), name='detail'),
]
