from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    print('775')
    return render(request, 'landing/landing_page.html', {})