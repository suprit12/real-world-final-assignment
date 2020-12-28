from django.urls import path

from moduleA7 import views

urlpatterns = [
    path('', views.getHome, name='home'),
    # path('bookings', views.getOption, name='bookings'),
    path('contact', views.contact, name='contact'),
    path('haircut', views.getHaircut, name='haircut'),
    path('bookings', views.makeBooking, name='bookings'),

    path('dashboard', views.getDash, name='dashboard'),

    path('delete/<bid>', views.delete, name='delete'),
    path('login/', views.login, name='login'),
    path('register/', views.register, name='register'),
    path('logout/', views.logout, name='logout')
    # path('dashboard<bid>', views.update, name='update'),
]
