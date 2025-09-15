from django.urls import path
from . import views

urlpatterns = [
    path('', views.task_list, name='task_list'),               # list all tasks
    path('task/new/', views.task_create, name='task_create'), # create task
    path('task/edit/<int:pk>/', views.task_update, name='task_update'), # edit task
    path('task/delete/<int:pk>/', views.task_delete, name='task_delete'), # delete task
]
