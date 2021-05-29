#!/usr/bin/env python


class Options:
    reps = True
    kg = None
    km = None

    def __init__(self, **kwargs):
        for k, v in kwargs.items():
            setattr(self, k, bool(v))
