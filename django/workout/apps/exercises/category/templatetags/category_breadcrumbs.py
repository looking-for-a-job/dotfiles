from django import template
from django.template.loader import render_to_string

register = template.Library()


@register.simple_tag(takes_context=True)
def category_breadcrumbs(context, category):
    categories = [category]
    category = category.parent
    while category:
        categories.append(category)
        category = category.parent

    html = []
    for category in reversed(categories):
        print(context["date"])
        context["category"] = category
        html.append(render_to_string("category/name.html", context.flatten()))
    return " > ".join(html)
