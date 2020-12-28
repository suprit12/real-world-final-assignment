from django.contrib import admin

# Register your models here.
from moduleA7.models import Haircut, HomeContent, Bookings

admin.site.register(Haircut)
admin.site.register(HomeContent)
admin.site.register(Bookings)
