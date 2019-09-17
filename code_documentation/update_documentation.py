#! /usr/bin/python
from os import path, mkdir
import re
import shutil
import treep.treep_git
import treep.files
import rospkg

def copy_doc_package(package_name):
    ros_pack = rospkg.RosPack()
    share_path = path.dirname(ros_pack.get_path(package_name))
    print(share_path)

    local_doc = path.join("code_documentation", package_name)
    if path.isdir(local_doc):
        shutil.rmtree(local_doc)

    local_doc_html = path.join(share_path, package_name, "doc", "html")
    if path.isdir(local_doc_html):
        shutil.copytree(local_doc_html, local_doc)

if __name__ == "__main__":
    ros_pack = rospkg.RosPack()
    share_path = path.dirname(ros_pack.get_path("dynamic_graph_manager"))
    print(share_path)
    treep_projects = treep.files.read_configuration_files(share_path)

    repos_names = treep_projects.get_repos("CORE_ROBOTICS")
    print(repos_names)
    for repos_name in repos_names:
        repos_path = treep_projects.get_repo_path(repos_name)
        repos_url = treep.treep_git.get_url(repos_path)
        if re.search(repos_url, "*machines-in-motion*"):
            print(repos_path)
            print(repos_url)

        