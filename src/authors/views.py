from django.views.generic import ListView, DetailView
from django.db.models import Q

from .models import Author


class AuthorListView(ListView):
    model = 'Author'
    template_name = 'author_list.html'
    paginate_by = 12

    def get_queryset(self):
        return Author.objects.all()


class AuthorProfileView(DetailView):
    model = 'Author'
    template_name = 'author_profile.html'
    context_object_name = 'author'

    def get_object(self):
        return Author.objects.get(slug=self.kwargs['name'])

class SearchAuthorListView(ListView):
    model = 'Author'
    template_name = 'author_list.html'
    paginate_by = 12

    def get_queryset(self, *args, **kwargs):
        request = self.request
        query = request.GET.get('q')

        if query is not None:
            return Author.objects.filter(Q(first_name__icontains=query) |
                                         Q(last_name__icontains=query))

        return Author.objects.none()
