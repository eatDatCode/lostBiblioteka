from django.views.generic import ListView, DetailView
from .models import Book, Genre
from authors.models import Author


class GenreListView(ListView):
    model = 'Genre'
    template_name = 'genres_list.html'
    context_object_name = 'genres'

    def get_queryset(self):
        return Genre.objects.all()


class BookByGenreList(ListView):
    model = 'Book'
    template_name = 'books_list.html'
    paginate_by = 12

    def get_queryset(self):
        self.genre = Genre.objects.get(slug=self.kwargs['genre'])
        return Book.objects.filter(genre_id=self.genre)


class BooksListByAuthor(ListView):
    model = 'Book'
    template_name = 'books_list.html'
    paginate_by = 12

    def get_queryset(self):
        self.author = Author.objects.get(slug=self.kwargs['name'])
        return Book.objects.filter(written_by=self.author)


class BookListView(ListView):
    model = 'Book'
    template_name = 'books_list.html'
    paginate_by = 12

    def get_queryset(self):
        return Book.objects.all()


class BookReadView(DetailView):
    model = 'Book'
    template_name = 'book_read.html'
    context_object_name = 'book'

    def get_object(self):
        return Book.objects.get(slug=self.kwargs['book'])


class SearchBookListView(ListView):
    model = 'Book'
    template_name = 'books_list.html'
    paginate_by = 12

    def get_queryset(self, *args, **kwargs):
        request = self.request
        query = request.GET.get('q')
        if query is not None:
            return Book.objects.filter(title__icontains=query)
        return Book.objects.none()
