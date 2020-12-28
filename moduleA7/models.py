from django.db import models

# Create your models here.


class Haircut(models.Model):
    image = models.FileField()
    heading = models.CharField(max_length=255)
    detail = models.TextField()
    price = models.FloatField()


class HomeContent(models.Model):
    serviceHead = models.CharField(max_length=255)
    servicesDetail = models.TextField()


class Feedback(models.Model):
    name = models.CharField(max_length=255)
    phone = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    message = models.TextField()


class Bookings(models.Model):
    name = models.CharField(max_length=255)
    phone = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    haircut = models.CharField(max_length=255)

