#
# Minimal makefile for Sphinx documentation based on
# doxygen + breath-apidoc + sphinx-apidoc + sphinx-build
#

# You can set these variables from the command line.
DOC_BUILD_DIR        = _build

# Sphinx
SPHINXOPTS      =
SPHINX_BUILD    = sphinx-build
SPHINX_QUIET	= #-Q
SPHINX_BUILD_IN = $(DOC_BUILD_DIR)/sphinx
SPHINX_BUILD_OUT = $(SPHINX_BUILD_IN)

all:
	make html

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINX_BUILD) -M help "$(SPHINX_BUILD_IN)" "$(DOC_BUILD_DIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile

	# Create a build directory for the temporary files.
	mkdir -p $(DOC_BUILD_DIR)
	
	# Copy the config files
	cp -r sphinx_source_files/* $(DOC_BUILD_DIR)

	# Setup the new index.rst from Python
	python $(DOC_BUILD_DIR)/update_doc_page.py $(DOC_BUILD_DIR)

	# Copy the markdown doc files
	cp readme.md $(DOC_BUILD_DIR)

	# Generate the final layout.
	@$(SPHINX_BUILD) -M $@ "$(SPHINX_BUILD_IN)" "$(SPHINX_BUILD_OUT)" $(SPHINXOPTS) $(O) $(SPHINX_QUIET)