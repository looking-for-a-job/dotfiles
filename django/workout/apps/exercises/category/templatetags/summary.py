from django import template
from apps.category.views import Summary

register = template.Library()


@register.simple_tag(takes_context=True)
def summary(context, exercise, date):
    return Summary(date, exercise, link="exercises" in context).render()
