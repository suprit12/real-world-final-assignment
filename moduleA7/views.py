from django.shortcuts import render, redirect
from django.contrib.auth.models import User, auth

# Create your views here.
from moduleA7.models import Haircut, HomeContent, Feedback, Bookings


def getHome(request):
    return render(request, 'index.html')


def getHaircut(request):
    hc = Haircut.objects.all()
    return render(request, 'hairstyle.html', {'hair': hc})


# def getOption(request):
#     hc = Haircut.objects.all()
#     return render(request, 'booking.html', {'hair': hc})


def contact(request):
    if request.method == 'POST':
        un = request.POST['name']
        pn = request.POST['phone']
        em = request.POST['email']
        ms = request.POST['message']
        f = Feedback(name=un, phone=pn, email=em, message=ms)
        f.save()
        return redirect('../')
    else:
        return render(request, 'contact.html')


# def getDash(request):
#     return render(request, 'dashboard.html')


def makeBooking(request):
    if request.method == 'POST':
        name = request.POST['name']
        phone = request.POST['phone']
        email = request.POST['email']
        haircut = request.POST['course']
        b = Bookings(name=name, phone=phone, email=email, haircut=haircut)
        b.save()
        return redirect('../')
    else:
        return render(request, 'booking.html')


def getDash(request):
    booking = Bookings.objects.all()
    return render(request, 'dashboard.html', {'book': booking})


def delete(request, bid):
    b = Bookings.objects.get(id=bid)
    b.delete()
    return render(request, 'index.html')


def login(request):
    if request.method == 'POST':
        lun = request.POST['lun']
        lpw = request.POST['lpw']
        user = auth.authenticate(username=lun, password=lpw)
        if user is not None:
            auth.login(request, user)
            print('login sucess')
            return redirect('../')
        else:
            print('login fail')
    else:

        return render(request, 'login.html')


def register(request):
    if request.method == 'POST':
        un = request.POST['un']
        em = request.POST['em']
        pw = request.POST['pw']
        user = User.objects.create_user(username=un, email=em, password=pw)
        user.save()
        return redirect('../login')
    return render(request, 'register.html')


def logout(request):
    auth.logout(request)
    return redirect('../')