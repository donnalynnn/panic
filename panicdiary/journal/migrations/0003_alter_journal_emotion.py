# Generated by Django 5.0.4 on 2024-04-09 12:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('journal', '0002_journal_emotion'),
    ]

    operations = [
        migrations.AlterField(
            model_name='journal',
            name='emotion',
            field=models.TextField(),
        ),
    ]
