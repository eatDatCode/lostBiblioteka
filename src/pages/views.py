from django.views.generic import ListView, TemplateView

from books.models import Book

class HomeView(ListView):
	model = Book
	template_name = 'home.html'
	paginate_by = 12

class AboutPageView(TemplateView):
	template_name = 'about_page.html'
