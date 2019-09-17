#! /usr/bin/python

from os import path, mkdir
import shutil
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
    
    copy_doc_package("dynamic_graph_manager")