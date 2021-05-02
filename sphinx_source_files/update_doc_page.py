#! /usr/bin/python

# Python 3 compatibility. It has to be the first import.
from __future__ import print_function, division
from pathlib import Path


def get_package_list():
    """
    We get all the package names from which the documentation is available.
    """
    package_list = []
    for stuff in (Path().resolve().parent / "code_documentation").glob("*"):
        if stuff.is_dir():
            package_list.append(stuff.name)
    package_list.sort()
    print("The list of all the available documentation yet")
    print("package_list = ", package_list)
    return package_list


def get_doc_and_coverage(package_name):
    """return the path to the index.html and the path to code coverage."""

    package_path = (
        Path().resolve().parent / "code_documentation" / package_name
    )
    coverage_path = list((package_path / "coverage").glob("index.html"))
    documentation_path = list(
        (package_path / "documentation").glob("index.html")
    )
    return documentation_path, coverage_path


def update_index_rst():
    """Create the ReStructured text file of the main page from its template.

    Args:
        exported_doc_list (list(str)): List of the stored package names.
        exported_code_cov_list (list(str)): List of the stored project code coverage.
    """

    # Extract the list of the package contains in this repo.
    package_list = get_package_list()

    # Open the template files.
    with open("index.rst.in", "r") as file:
        filedata = file.read()

    # Create the table of all the links to the doxygen/sphinx documentations.
    first_column = ["Repositories"] + package_list
    second_column = ["Documentation"] + package_list
    third_column = ["Code coverage"] + package_list

    # Fill the table.
    for i, package_name in enumerate(package_list):

        package_doc, package_coverage = get_doc_and_coverage(package_name)
        print(package_name, " :", package_doc, " ", package_coverage)
        if package_doc:
            second_column[i + 1] = (
                "`api doc "
                + "<"
                + "./code_documentation/"
                + package_name
                + "/documentation/index.html>`_"
            )
        else:
            second_column[i + 1] = "Not available."

        if package_coverage:
            third_column[i + 1] = (
                "`coverage "
                + "<"
                + "./code_documentation/"
                + package_name
                + "/coverage/index.html>`_"
            )
        else:
            third_column[i + 1] = "Not available."

    # Define the column width.
    first_column_width = len(max(first_column, key=len)) + 2
    second_column_width = len(max(second_column, key=len)) + 2
    third_column_width = len(max(third_column, key=len)) + 2

    # Construct the RsT style table.
    table_documentation = (
        "+"
        + first_column_width * "-"
        + "+"
        + second_column_width * "-"
        + "+"
        + third_column_width * "-"
        + "+\n"
    )
    for i, (first, second, third) in enumerate(
        zip(first_column, second_column, third_column)
    ):

        table_documentation += (
            "| "
            + first
            + (first_column_width - (len(first) + 1)) * " "
            + "| "
            + second
            + (second_column_width - (len(second) + 1)) * " "
            + "| "
            + third
            + (third_column_width - (len(third) + 1)) * " "
            + "|\n"
        )

        if i == 0:
            table_documentation += (
                "+"
                + first_column_width * "="
                + "+"
                + second_column_width * "="
                + "+"
                + third_column_width * "="
                + "+\n"
            )
        else:
            table_documentation += (
                "+"
                + first_column_width * "-"
                + "+"
                + second_column_width * "-"
                + "+"
                + third_column_width * "-"
                + "+\n"
            )
    table_documentation += "\n"

    filedata = filedata.replace("@table_documentation@", table_documentation)

    with open("index.rst", "w") as file:
        file.write(filedata)


if __name__ == "__main__":
    update_index_rst()
    print("Done updating the website")
