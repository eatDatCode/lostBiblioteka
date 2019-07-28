from django.contrib import admin
from django.urls import path, include

# dev only imports
from django.conf.urls.static import static
from django.conf import settings


urlpatterns = [
    path('', include('pages.urls')),
    path('books/', include('books.urls')),
    path('authors/', include('authors.urls')),
    path('admin/', admin.site.urls),
]

# dev only url configuration for static and media files
urlpatterns = urlpatterns + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns = urlpatterns + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
