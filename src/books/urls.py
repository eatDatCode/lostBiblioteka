from django.urls import path

from .views import (BookListView, BookReadView, 
GenreListView, BookByGenreList, BooksListByAuthor, SearchBookListView)

urlpatterns = [
    path('', BookListView.as_view(), name='books'),
    path('read/<slug:book>/', BookReadView.as_view(), name='read_book'),
    path('genres/', GenreListView.as_view(), name='genres'),
    path('genres/<slug:genre>/', BookByGenreList.as_view(), name='books_by_genre'),
    path('author/<slug:name>/', BooksListByAuthor.as_view(), name='books_by_author'),
    path('search/', SearchBookListView.as_view(), name='search'),
]
