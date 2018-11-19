import os
from django.shortcuts import render
from django.views import generic

# Create your views here.
class IndexView(generic.TemplateView):
    template_name = 'test_site/index.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['msg'] = 'Hello world!'
        context['name'] = os.environ.get('USER_NAME', 'Unknown')
        return context
