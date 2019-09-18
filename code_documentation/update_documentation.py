#! /usr/bin/python
from os import path, mkdir, walk
import re
import shutil
import treep.treep_git
import treep.files
import rospkg


def get_ros_install_share_path():
    """
    Use rospack to get the path to the installation folder (supposed sourced)
    """
    ros_pack = rospkg.RosPack()
    if "shared_memory" in ros_pack.list():
        return path.dirname(ros_pack.get_path("shared_memory"))
    else:
        raise Exception('The shared_memory is not part of the cloned packages')
    return 


def copy_doc_package(package_name):
    """
    Copy/Replace the documentation of the ros package in this repository.
    """
    share_path = get_ros_install_share_path()
    local_doc = path.join("code_documentation", package_name)
    if path.isdir(local_doc):
        shutil.rmtree(local_doc)

    local_doc_html = path.join(share_path, package_name, "doc", "html")
    if path.isdir(local_doc_html):
        shutil.copytree(local_doc_html, local_doc)


def find_ros_packages():
    """
    Find the ros packages cloned from the machines-in-motion github organisation
    """
    share_path = get_ros_install_share_path()
    treep_projects = treep.files.read_configuration_files(share_path)
    repos_names = treep_projects.get_repos("CORE_ROBOTICS")

    packages_list = []
    for repos_name in repos_names:
        repos_path = treep_projects.get_repo_path(repos_name)
        repos_url = treep.treep_git.get_url(repos_path)
        if "machines-in-motion" in repos_url:
            for root, _, files in walk(repos_path):
                for file in files:
                    if file == "package.xml":
                        packages_list.append(path.basename(root))
    
    return packages_list

if __name__ == "__main__":
    
    share_path = get_ros_install_share_path()
    print(share_path)
    packages_list = find_ros_packages()
    for package in packages_list:
        copy_doc_package(package)
