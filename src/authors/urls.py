from django.urls import path

from .views import AuthorListView, AuthorProfileView, SearchAuthorListView

urlpatterns = [
    path('', AuthorListView.as_view(), name='authors'),
    path('profile/<slug>:<name>/', AuthorProfileView.as_view(), name='author_profile'),
    path('search/', SearchAuthorListView.as_view(), name='search_author'),
]
