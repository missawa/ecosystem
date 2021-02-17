from django.contrib.auth.models import User
from django.db import models
from django.urls import reverse


class Cliente(models.Model):
    id = models.IntegerField(primary_key=True)
    cnpj = models.CharField(max_length=14)
    nome = models.CharField(max_length=120)
    fantasia = models.CharField(max_length=100)

    def __str__(self):
        return str(self.id) + '. ' + self.nome

    def get_absolute_url(self):
        return reverse('cliente:detail', kwargs={'slug': self.id})
