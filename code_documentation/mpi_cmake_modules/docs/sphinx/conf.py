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

sys.path.insert(0, os.path.abspath('.')) # in order to use the local modules
sys.path.insert(0, os.path.abspath("/home/mnaveau/devel/workspace/src/catkin/core_robotics/mpi_cmake_modules/python"))
import textwrap

# cmake parser custom module
from docutils.parsers.rst import Directive
from docutils import nodes
from sphinx.util.nodes import set_source_info
currentmode = "user"

# AutoStructify for math in markdown
import recommonmark 
from recommonmark.transform import AutoStructify

# on_rtd is whether we are on readthedocs.org, this line of code grabbed from docs.readthedocs.org
on_rtd = os.environ.get('READTHEDOCS', None) == 'True'


# -- Project information -----------------------------------------------------

project = u'mpi_cmake_modules'
copyright = (u'Copyright (c) 2020, New York University and ' +
             u'Max Planck Gesellschaft. License under the BSD 3-clause.')
author = u'Maximilien Naveau'

# The short X.Y version
version = u'1.0'
# The full version, including alpha/beta/rc tags
release = u'1.0.0'


# -- General configuration ---------------------------------------------------

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.doctest',
    'sphinx.ext.intersphinx',
    'sphinx.ext.todo',
    'sphinx.ext.coverage',
    'sphinx.ext.mathjax', # doxygen math in doc
    'sphinx.ext.ifconfig',
    'sphinx.ext.viewcode',
    'sphinx.ext.githubpages',
    'cmake',
    'recommonmark', # markdown support
    'breathe', # to define the C++ api with breathe-apidoc
]

# Root of the github page:
github_doc_root = 'https://machines-in-motion.github.io/code_documentation/mpi_cmake_modules'
html_baseurl = github_doc_root

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# breath extension management
breathe_projects = { project: "/home/mnaveau/devel/workspace/devel/.private/mpi_cmake_modules/share/mpi_cmake_modules/docs/sphinx/doxygen/xml" }
breathe_default_project = project
breathe_default_members = ('members', 'private-members', 'undoc-members')

# cmake parsing
# primary_domain = 'cmake'
# highlight_language = 'cmake'

# The suffix(es) of source filenames.
source_suffix = ['.rst', '.md']

# The master toctree document.
master_doc = 'index'

# The language for content autogenerated by Sphinx. Refer to documentation
# for a list of supported languages.
#
# This is also used if you do content translation via gettext catalogs.
# Usually you set "language" from the command line for these cases.
language = None

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.
exclude_patterns = []

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = None


# -- Options for HTML output -------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
if not on_rtd:
    import sphinx_rtd_theme
    html_theme = "sphinx_rtd_theme"
    html_theme_path = [sphinx_rtd_theme.get_html_theme_path()]

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a list of options available for each theme, see the
# documentation.
#
# html_theme_options = {}

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
# html_static_path = ['_static']

# Custom sidebar templates, must be a dictionary that maps document names
# to template names.
#
# The default sidebars (for documents that don't match any pattern) are
# defined by theme itself.  Builtin themes are using these templates by
# default: ``['localtoc.html', 'relations.html', 'sourcelink.html',
# 'searchbox.html']``.
#
# html_sidebars = {}


# -- Options for HTMLHelp output ---------------------------------------------

# Output file base name for HTML help builder.
htmlhelp_basename = 'mpi_cmake_modules_doc'


# -- Options for LaTeX output ------------------------------------------------

latex_elements = {
    # The paper size ('letterpaper' or 'a4paper').
    #
    # 'papersize': 'letterpaper',

    # The font size ('10pt', '11pt' or '12pt').
    #
    # 'pointsize': '10pt',

    # Additional stuff for the LaTeX preamble.
    #
    # 'preamble': '',

    # Latex figure (float) alignment
    #
    # 'figure_align': 'htbp',
}

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title,
#  author, documentclass [howto, manual, or own class]).
latex_documents = [
    (master_doc, 'mpi_cmake_modules.tex', u'mpi_cmake_modules Documentation',
     author, 'manual'),
]


# -- Options for manual page output ------------------------------------------

# One entry per manual page. List of tuples
# (source start file, name, description, authors, manual section).
man_pages = [
    (master_doc, 'mpi_cmake_modules', u'mpi_cmake_modules Documentation',
     [author], 1)
]


# -- Options for Texinfo output ----------------------------------------------

# Grouping the document tree into Texinfo files. List of tuples
# (source start file, target name, title, author,
#  dir menu entry, description, category)
texinfo_documents = [
    (master_doc, 'mpi_cmake_modules', 'mpi_cmake_modules C++',
     author, 'mpi_cmake_modules', 'One line description of project.',
     'Robotics'),
]


# -- Options for Epub output -------------------------------------------------

# Bibliographic Dublin Core info.
epub_title = project

# The unique identifier of the text. This can be a ISBN number
# or the project homepage.
#
# epub_identifier = ''

# A unique identification for the text.
#
# epub_uid = ''

# A list of files that should not be packed into the epub file.
epub_exclude_files = ['search.html']


# -- Extension configuration -------------------------------------------------

# -- Options for intersphinx extension ---------------------------------------

# Example configuration for intersphinx: refer to the Python standard library.
intersphinx_mapping = {'https://docs.python.org/': None}

# -- Options for todo extension ----------------------------------------------

# If true, `todo` and `todoList` produce output, else they produce nothing.
todo_include_todos = True


# cmake parser custom module
class IfMode(Directive):

    has_content = True
    required_arguments = 1
    optional_arguments = 0
    final_argument_whitespace = True
    option_spec = {}

    def run(self):
        cm = self.state.document.settings.env.config.currentmode
        if cm == self.arguments[0]:
            node = nodes.Element()
            node.document = self.state.document
            set_source_info(self, node)
            self.state.nested_parse(self.content, self.content_offset,
                                    node, match_titles=1)
            return node.children
        return []

# cmake parser custom module
class SetMode (Directive):
    has_content = False
    required_arguments = 1
    optional_arguments = 0
    final_argument_whitespace = False

    def run(self):
        self.state.document.settings.env.config.currentmode = self.arguments[0]
        return []


# some tools for markdown parsing
def setup(app):
    # cmake parser custom module
    app.add_config_value('currentmode', 'user', 'env')
    app.add_directive("setmode", SetMode)
    app.add_directive("ifmode", IfMode)
    # Markdown
    app.add_config_value('recommonmark_config', {
            'auto_toc_tree_section': 'Contents',
            'enable_math':True,
            'enable_inline_math':True,
            'enable_eval_rst':True,
            }, True)
    app.add_transform(AutoStructify)
