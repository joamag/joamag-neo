#!/usr/bin/python
# -*- coding: utf-8 -*-

import appier

class JoamagNeoApp(appier.WebApp):

    def __init__(self):
        appier.WebApp.__init__(
            self,
            name = "joamag_neo",
            locales = ("en_us",)
        )
        self.config = dict(
            cache = not self.is_devel()
        )

if __name__ == "__main__":
    app = JoamagNeoApp()
    app.serve()
