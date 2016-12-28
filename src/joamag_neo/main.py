#!/usr/bin/python
# -*- coding: utf-8 -*-

import appier

class JoamagNeoApp(appier.WebApp):

    def __init__(self, *args, **kwargs):
        appier.WebApp.__init__(
            self,
            name = "joamag_neo",
            locales = ("en_us",),
            *args, **kwargs
        )
        self.config = dict(
            cache = not self.is_devel(),
            footer = self.is_devel() or True
        )

if __name__ == "__main__":
    app = JoamagNeoApp()
    app.serve()
else:
    __path__ = []
