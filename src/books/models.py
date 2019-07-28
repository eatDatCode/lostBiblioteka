from django.db import models
from django.urls import reverse
from django.utils.text import slugify

from authors.models import Author

class Genre(models.Model):
    genre = models.CharField(max_length=50)
    slug = models.SlugField(default='', blank=True)

    class Meta:
        db_table = 'genres'

    def save(self, *args, **kwargs):
        self.slug = slugify(self.genre)
        super().save(*args, **kwargs)

    def get_absolute_url(self):
        return reverse('books_by_genre',args=[str(self.slug)])

    def __str__(self):
        return self.genre

class Book(models.Model):
    isbn = models.CharField(max_length=17,
                help_text="<em>ISBN: 9780-0-143-02857-4</em>")
    title = models.CharField(max_length=200)
    slug = models.SlugField(default='',blank=True)
    written_by = models.ManyToManyField(Author)
    genre = models.ForeignKey(Genre, on_delete=models.CASCADE)
    pages = models.IntegerField()
    price = models.DecimalField(decimal_places=2, default=0.00,max_digits=10)
    first_published = models.DateField(blank=True)
    language = models.CharField(max_length=20)
    book_cover = models.ImageField(upload_to='bookCovers/')

    class Meta:
        db_table = 'books'

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        super().save(*args, **kwargs)

    def get_absolute_url(self):
        return reverse('read_book', args=[str(self.slug)])

    def __str__(self):
        return self.title + "[" + self.isbn + "]"
