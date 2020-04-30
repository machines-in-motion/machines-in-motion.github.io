# -*- coding: utf-8 -*-
#
# Configuration file for the Sphinx documentation builder.
#
# This file does only contain a selection of the most common options. For a
# full list see the documentation:
# http://www.sphinx-doc.org/en/master/config

# -- Path setup --------------------------------------------------------------

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#
import os
import sys
import textwrap
import datetime

# AutoStructify for math in markdown
import recommonmark 
from recommonmark.transform import AutoStructify

# on_rtd is whether we are on readthedocs.org, this line of code grabbed from docs.readthedocs.org
on_rtd = os.environ.get('READTHEDOCS', None) == 'True'


# -- Project information -----------------------------------------------------

project = u'Machines-in-Motion'
copyright = datetime.date.year + u' New York University and Max Planck Gesellschaft. All rights reserved.'
author = u'Maximilien Naveau'

# The short X.Y version
version = u'0.0'
# The full version, including alpha/beta/rc tags
release = u'0.0.0'


# -- General configuration ---------------------------------------------------

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.doctest',
    'sphinx.ext.todo',
    'sphinx.ext.coverage',
    'sphinx.ext.mathjax', # doxygen math in doc
    'sphinx.ext.ifconfig',
    'sphinx.ext.viewcode',
    'sphinx.ext.githubpages',
    'recommonmark', # markdown support
]

source_suffix = ['.rst', '.md']
exclude_patterns = []

master_doc = 'index'
language = None


# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
import sphinx_rtd_theme
html_theme = 'sphinx_rtd_theme'
html_theme_path = [sphinx_rtd_theme.get_html_theme_path()]

templates_path = ['_templates']
pygments_style = None
htmlhelp_basename = 'tuto_sphinx_doxygendoc'

##
latex_elements = {}
latex_documents = [
    (master_doc, project + '.tex', project + u' Documentation',
     author, 'manual'),
]
##
man_pages = [
    (master_doc, project, project + u' Documentation',
     [author], 1)
]
##
texinfo_documents = [
    (master_doc, project, project + u' Documentation',
     author, project, 'Machines in Motion group code base documentation.',
     'Robotics'),
]


# -- Options for Epub output -------------------------------------------------

# Bibliographic Dublin Core info.
epub_title = project
# A list of files that should not be packed into the epub file.
epub_exclude_files = ['search.html']

# Example configuration for intersphinx: refer to the Python standard library.
intersphinx_mapping = {}

# If true, `todo` and `todoList` produce output, else they produce nothing.
todo_include_todos = True

# some tools for markdown parsing
def setup(app):
    app.add_config_value('recommonmark_config', {
            'auto_toc_tree_section': 'Contents',
            'enable_math':True,
            'enable_inline_math':True,
            'enable_eval_rst':True,
            }, True)
    app.add_transform(AutoStructify)
