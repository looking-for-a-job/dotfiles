#!/usr/bin/env python
from project.views import View


class IndexView(View):
    template_name = 'frontpage/index.html'
