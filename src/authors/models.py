from django.db import models
from django.urls import reverse
from django.utils.text import slugify

class Author(models.Model):
    HONORIFIC_IN_CHOICE = [
                ('Miss.','miss'),
                ('Mr.','mr'),
                ('Mrs.','mrs'),
            ]
    honor = models.CharField(
                                max_length=4,
                                choices=HONORIFIC_IN_CHOICE,
                                default='Mr.'
                            )
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    slug = models.SlugField(default='', blank=True)
    dob = models.DateField()
    place = models.CharField(max_length=100)
    avatar = models.ImageField(upload_to='authors/', blank=True, null=True)

    class Meta:
        db_table = 'authors'
        ordering = ['first_name','-dob']

    def save(self, *args, **kwargs):
        self.slug = slugify(self.first_name + " " + self.last_name)
        super().save(*args, **kwargs)

    def get_absolute_url(self):
        return reverse('author_profile', args=[str(self.slug)])

    def __str__(self):
        self.full_name = f"{self.honor} {self.first_name} {self.last_name}"
        return self.full_name
