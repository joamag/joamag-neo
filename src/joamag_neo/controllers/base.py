#!/usr/bin/python
# -*- coding: utf-8 -*-

import appier


class BaseController(appier.Controller):
    @appier.route("/", "GET")
    def index(self):
        return self.template("index.html.tpl", mode="simplified narrow center")

    @appier.route("/blog", "GET")
    def blog(self):
        return self.template("blog.html.tpl", mode="simplified narrow center")

    @appier.route("/post", "GET")
    def post(self):
        return self.template("post.html.tpl", mode="simplified narrow center")

    @appier.route("/robots.txt", "GET")
    def robots(self):
        return self.template("robots.txt.tpl", content_type="text/plain")

    @appier.route("/keybase.txt", "GET")
    def keybase(self):
        return self.template("keybase.txt.tpl", content_type="text/plain")

    @appier.error_handler(404)
    def not_found_code(self, error):
        if self.is_devel():
            return False
        return self.template("404.html.tpl", mode="simplified")

    @appier.exception_handler(BaseException)
    def base_exception_handle(self, error):
        if self.is_devel():
            return False
        return self.template("error.html.tpl", mode="simplified", error=error)
