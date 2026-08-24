#!/usr/bin/python
# -*- coding: utf-8 -*-

import re
import json
import unittest

import appier

import joamag_neo


class BaseTest(unittest.TestCase):
    def setUp(self):
        self.app = joamag_neo.JoamagNeoApp()
        self.app.start()
        self.index = self.app.template(
            "index.html.tpl", mode="simplified narrow center"
        )

    def tearDown(self):
        self.app.unload()

    def test_index(self):
        self.assertNotEqual(self.index.find("João Magalhães"), -1)
        self.assertNotEqual(self.index.find('<section class="links">'), -1)

    def test_index_secure(self):
        self.assertEqual(self.index.find('href="http://'), -1)

        unsafe = re.findall('target="_blank"(?![^>]*rel="noopener")', self.index)
        self.assertEqual(len(unsafe), 0)

    def test_index_avatar(self):
        self.assertNotEqual(self.index.find('alt="João Magalhães"'), -1)
        self.assertNotEqual(self.index.find('width="256"'), -1)
        self.assertNotEqual(self.index.find('height="256"'), -1)
        self.assertEqual(self.index.find('alt="avatar"'), -1)

    def test_index_mailto(self):
        self.assertNotEqual(
            self.index.find("mailto:joao@joao.me?subject=Hey%20Jo%C3%A3o"), -1
        )
        self.assertEqual(self.index.find("?subject=Hey João"), -1)

    def test_index_socials(self):
        self.assertNotEqual(self.index.find('href="https://github.com/joamag"'), -1)
        self.assertNotEqual(self.index.find('href="https://gitlab.com/joamag"'), -1)
        self.assertNotEqual(
            self.index.find('href="https://linkedin.com/in/joamag"'), -1
        )
        self.assertNotEqual(self.index.find('href="https://x.com/joamag"'), -1)
        self.assertNotEqual(
            self.index.find('href="https://bsky.app/profile/joamag.bsky.social"'), -1
        )
        self.assertNotEqual(self.index.find('href="https://keybase.io/joamag"'), -1)
        self.assertNotEqual(self.index.find('href="https://resume.joao.me"'), -1)
        self.assertEqual(self.index.find('href="https://twitter.com/joamag"'), -1)

    def test_index_projects(self):
        self.assertNotEqual(
            self.index.find('href="https://github.com/hivesolutions/appier"'), -1
        )
        self.assertNotEqual(
            self.index.find('href="https://github.com/hivesolutions/netius"'), -1
        )
        self.assertNotEqual(
            self.index.find('href="https://github.com/hivesolutions/colony"'), -1
        )
        self.assertNotEqual(
            self.index.find('href="https://github.com/joamag/boytacean"'), -1
        )

    def test_index_description(self):
        self.assertNotEqual(
            self.index.find(
                'name="description" content="Old school software engineer '
                "and technology enthusiast. Co-founder and Chief Executive "
                "Officer at Hive Solutions"
            ),
            -1,
        )
        self.assertEqual(self.index.find("Amplemarket"), -1)

    def test_index_schema(self):
        match = re.search(
            '<script type="application/ld\\+json">(.*?)</script>', self.index, re.DOTALL
        )
        self.assertNotEqual(match, None)

        schema = json.loads(match.group(1))
        self.assertEqual(schema["@type"], "Person")
        self.assertEqual(schema["name"], "João Magalhães")
        self.assertEqual(schema["jobTitle"], "Co-founder and Chief Executive Officer")
        self.assertEqual(schema["worksFor"]["name"], "Hive Solutions")
        self.assertEqual(schema["address"]["addressCountry"], "PT")
        self.assertEqual(len(schema["sameAs"]), 6)
        self.assertNotEqual(schema["sameAs"].count("https://x.com/joamag"), 0)
        self.assertNotEqual(schema["knowsAbout"].count("Python"), 0)
        self.assertNotEqual(schema["knowsAbout"].count("Rust"), 0)

    def test_index_analytics(self):
        self.assertEqual(self.index.find("google-analytics.com/ga.js"), -1)
        self.assertEqual(self.index.find("_gaq"), -1)
        self.assertEqual(self.index.find("googletagmanager.com"), -1)

        appier.conf_s("ANALYTICS_ID", "G-XXXXXXXXXX")
        try:
            result = self.app.template(
                "index.html.tpl", mode="simplified narrow center"
            )
        finally:
            appier.conf_r("ANALYTICS_ID")

        self.assertNotEqual(
            result.find("https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"), -1
        )
        self.assertNotEqual(result.find('gtag("config", "G-XXXXXXXXXX")'), -1)

    def test_index_preconnect(self):
        self.assertNotEqual(
            self.index.find('<link rel="preconnect" href="https://libs.bemisc.com"'), -1
        )
        self.assertNotEqual(
            self.index.find(
                '<link rel="preconnect" href="https://ajax.googleapis.com"'
            ),
            -1,
        )

    def test_index_og(self):
        self.assertNotEqual(
            self.index.find('property="og:image:width" content="256"'), -1
        )
        self.assertNotEqual(
            self.index.find('property="og:image:height" content="256"'), -1
        )
        self.assertNotEqual(self.index.find('property="og:locale" content="en_US"'), -1)

    def test_index_twitter(self):
        self.assertNotEqual(
            self.index.find('name="twitter:creator" content="@joamag"'), -1
        )
        self.assertNotEqual(self.index.find('name="twitter:image:alt"'), -1)

    def test_blog(self):
        result = self.app.template("blog.html.tpl", mode="simplified narrow center")

        self.assertNotEqual(result.find('<section class="blog">'), -1)
        self.assertNotEqual(
            result.find('rel="noopener" href="https://resume.joao.me"'), -1
        )
        self.assertEqual(result.find("Amplemarket"), -1)

    def test_post(self):
        result = self.app.template("post.html.tpl", mode="simplified narrow center")

        self.assertNotEqual(result.find('<section class="title">'), -1)
        self.assertNotEqual(result.find('<script type="application/ld+json">'), -1)

    def test_llms(self):
        result = self.app.template("llms.txt.tpl", content_type="text/plain")

        self.assertEqual(result.startswith("# João Magalhães"), True)
        self.assertNotEqual(result.find("## Pages"), -1)
        self.assertNotEqual(result.find("## Projects"), -1)
        self.assertNotEqual(
            result.find("[Boytacean](https://github.com/joamag/boytacean)"), -1
        )
        self.assertNotEqual(result.find("joao@joao.me"), -1)
        self.assertEqual(result.find("Amplemarket"), -1)
