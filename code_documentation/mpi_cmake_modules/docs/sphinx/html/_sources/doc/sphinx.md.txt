Sphinx
======

## 1. Introduction

This module manages the build of the documentation. The input files are C++,
Python, and Markdown. In order to process this we use a couple of
off-the-shelf softwares (see the list below).

* Doxygen the C++ api documentation parser,
* Breathe a sphinx extension that parse the doxygen xml output into restructured text files,
* recommonmark a sphinx extension parsing markdown files.
* sphinx-apidoc the Python api documentation parser,
* Sphinx the documentation renderer,

If anything seems fuzzy (it is a rather long and tedious pipeline),
please let me know via posting an issue
[here](https://github.com/machines-in-motion/mpi_cmake_modules/issues).


## 2. Advanced explanation on the tools

In order to build the documentation we need to setup the following tools:
- [Doxygen](http://www.doxygen.nl/) the C++ api documentation parser,
- [Breathe](https://breathe.readthedocs.io/en/latest/) a sphinx extension that
    parse the doxygen xml output into restructured text files,
- [recommonmark](https://recommonmark.readthedocs.io/en/latest/) a sphinx
    extension parsing markdown files.
- [sphinx-apidoc](http://www.sphinx-doc.org/en/master/man/sphinx-apidoc.html)
    the Python api documentation parser,
- [Sphinx](http://www.sphinx-doc.org/en/master/) the documentation renderer,

### 2.1 Doxygen

In order to execute to generate the C++ API documentation we use the
Doxygen tool.
We wrote a `Doxyfile`, used to parameter Doxyygen, to notably:

- Output the files in the `_build/docs/doxygen` folder with the
  `OUTPUT_DIRECTORY` parameter. 
- Generate a list of xml files containing the API documentation setting
the `GENERATE_XML` to `YES`.

The Makefile looks at the `Doxyfile` in `doc_config_files/doxygen/` and 
CMake configure the `Doxyfile.in` from `cmake/doxygen/`.

### 2.2 Breathe

This tool is a module of sphinx that parse the Doxygen xml output.
Breathe provide two import tools:

- An API that allow you to reference to the object from the Doxygen xml
  output.
- An executable `breathe-apidoc` that generates automatically the C++ API
  into ReStructed files.

In order to use it we need to add a couple of line in the `conf.py`
used by Sphinx:

~~~python
extensions = [
    # ... other stuff
    'breathe', # to define the C++ api
    # ... other stuff
]
~~~

We also need to add the following variable that determine the behavior of
Breathe:

~~~python
# breath project names and paths. Here project is the name of the repos and the path is the path to the Doxygen output.
breathe_projects = { project: "../doxygen/xml" }
# Default project used for all Doxygen output (we use only one here).
breathe_default_project = project
# By default we ask all informations to be displayed.
breathe_default_members = ('members', 'private-members', 'undoc-members')
~~~

Once the `conf.py` is setup we execute `breath-apidoc` on the Doxygen
xml output:

    breathe-apidoc -o $(BREATHE_OUT) $(BREATHE_IN) $(BREATHE_OPTION)

with:

- `BREATHE_OUT` the output path (`_build/docs/sphinx/breathe/`),
- `BREATHE_IN` the path to the Doxygen xml output (`_build/docs/doxygen/xml/`),
- and `BREATHE_OPTION` some output formatting option, here empty.

This breathe-apidoc will generate the list of all classes, namespace and
files in a different ReStructuredText (`.rst`) files.
We will use them to generate the final layout of the documentation.

### 2.3 recommonmark

We want to have an easy and intuitive way of writing extra documentation
from the code. Hence our choice to use `Markdown` and `Restructured` text.
Both file types are parse by sphinx and converted to html.
The sphinx module `recommonmark` is here to convert the Markdown properly.

In the header of the `conf.py` used by sphinx we need to include:

    # AutoStructify for math in markdown
    import recommonmark 
    from recommonmark.transform import AutoStructify

We add it to the `extensions` variable in the same file:

~~~python
extensions = [
    # ... other stuff
    'recommonmark', # markdown support
    # ... other stuff
]
~~~

Then we tell Sphinx to read the .md extension files in the `conf.py`:

~~~python
# The suffix(es) of source filenames.
source_suffix = ['.rst', '.md']
~~~

And last in order to get math support in the mardown using:

    ```math
        a = \theta
    ```

We need to add the following at the end of the `conf.py`:

~~~python
# some tools for markdown parsing
def setup(app):
app.add_config_value('recommonmark_config', {
        'auto_toc_tree_section': 'Contents',
        'enable_math':True,
        'enable_inline_math':True,
        'enable_eval_rst':True,
        }, True)
app.add_transform(AutoStructify)
~~~

### 2.4 sphinx-apidoc

This tool allow the generation of a Python module API documentation 
extracting the doc string from the code.
We need to add to the PYTHONPATH the path to the Python module in the
`conf.py`:

~~~python
sys.path.insert(0, os.path.abspath("path/to/the/python/module"))
~~~

add the according Sphinx extensions:

~~~python
extensions = [
    # ... other
    'sphinx.ext.autodoc',
    'sphinx.ext.doctest',
    'sphinx.ext.intersphinx',
    'sphinx.ext.todo',
    'sphinx.ext.coverage',
    'sphinx.ext.mathjax',
    'sphinx.ext.ifconfig',
    'sphinx.ext.viewcode',
    'sphinx.ext.githubpages',
    # ... other
]
~~~

And then build the API documentation by:

    sphinx_apidoc -o $(SPHINX_BUILD_OUT) path/to/the/python/module

Where `SPHINX_BUILD_OUT` is the output path.

### 2.5 sphinx-build

The final layout is managed here and build using `shpinx-build`. The tricky
thing with `sphinx-build` is that everything included needs to be in the
working directory. Therefore in the build directory we set the output of
`breathe-apidoc` and `shpinx-apidoc` to `_build/docs/sphinx`.
And inside the same folder we create a symlink that points to the source
`doc/` folder.

Therefore in order:

- The `index.rst` includes the C++ API main `.rst` files from Breath.
- Then it includes the `modules.rst` file from `sphinx-apidoc`
- And then is adds all files inside `doc/`, which, again, points toward the
  source `doc/` directory.

The command to execute is the following:

    sphinx-build -M html _build/docs/sphinx _build/docs/sphinx

This will generate the documentation website in `_build/docs/sphinx/html/`
Thefore `firefox _build/docs/sphinx/html/index.html` opens the 
documentation

## 3. Feedback on all this

If anything seems fuzzy (it is a rather long and tedious pipeline), please
let me know via posting an issue
[here](https://github.com/machines-in-motion/mpi_cmake_modules/issues).
