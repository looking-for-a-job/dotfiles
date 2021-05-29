from django import template
from django.template.loader import render_to_string

register = template.Library()


@register.simple_tag(takes_context=True)
def exercise_breadcrumbs(context, exercise):
    categories = []
    category = exercise.category
    while category:
        categories.append(category)
        category = category.parent

    html = []
    for category in reversed(categories):
        context["category"] = category
        html.append(render_to_string("category/name.html", context.flatten()))

    context["exercise"] = exercise
    html.append(render_to_string("exercise/name.html", context.flatten()))
    return " > ".join(html)
