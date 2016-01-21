#!/usr/bin/python
# -*- coding: utf-8 -*-

import appier

class BaseController(appier.Controller):

    @appier.route("/", "GET")
    def index(self):
        return self.template("index.html.tpl")

    @appier.error_handler(404)
    def not_found_code(self, error):
        return self.template("404.html.tpl")
