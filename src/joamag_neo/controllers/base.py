#!/usr/bin/python
# -*- coding: utf-8 -*-

import appier

class BaseController(appier.Controller):

    @appier.route("/", "GET")
    def index(self):
        return self.template(
            "index.html.tpl",
            mode = "simplified"
        )

    @appier.error_handler(404)
    def not_found_code(self, error):
        if self.is_devel(): return False
        return self.template(
            "404.html.tpl",
            mode = "simplified"
        )

    @appier.exception_handler(BaseException)
    def base_exception_handle(self, error):
        if self.is_devel(): return False
        return self.template(
            "error.html.tpl",
            mode = "simplified",
            error = error
        )
