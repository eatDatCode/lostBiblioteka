# Generated by Django 2.2.3 on 2019-07-20 01:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('authors', '0002_author_avatar'),
    ]

    operations = [
        migrations.AddField(
            model_name='author',
            name='honor',
            field=models.CharField(choices=[('Dr.', 'dr'), ('Miss.', 'miss'), ('Mr.', 'mr'), ('Mrs.', 'mrs')], default='Mr.', max_length=4),
        ),
    ]
