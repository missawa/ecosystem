from django.views.generic import DetailView, ListView

from .models import Cliente


class ClienteListView(ListView):
    model = Cliente


class ClienteDetailView(DetailView):
    model = Cliente
