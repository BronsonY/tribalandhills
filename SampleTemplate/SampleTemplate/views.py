
from django.shortcuts import render
from cms.models.titlemodels import Title
from django.shortcuts import redirect
from django.db.models import Q




def Search(request,format=None):
    if request.method == 'POST':
        try:
            searchi=request.POST.get("search1")

            a=Title.objects.all().filter(meta_description__contains=searchi).distinct()
            b = list(set(a))

            
            return render(request, "base.html",{'a':b})

        except  Exception as e:
            return render(request, 'base.html',{"b": e.args[0]})
    else:
        return render(request, 'base.html',{"b": "wrong"})

