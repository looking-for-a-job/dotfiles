from django import template
from apps.exercise.views import Sets

register = template.Library()


@register.simple_tag
def sets(exercise, date):
    return Sets(date, exercise).render()
