#!/usr/bin/env python
import inspect
import sys

included_file="included_file.py"
# scope = inspect.stack()[1][0].f_globals # previous frame
scope = inspect.stack()[0][0].f_globals

with open(included_file, 'rb') as to_compile:
    exec(compile(to_compile.read(), included_file, 'exec'), scope)


print(sys.modules[__name__].REGISTRATION_AUTO_LOGIN)

