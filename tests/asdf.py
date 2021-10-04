import os

def test_nodejs_is_exists(host):
    assert host.file("{}/.asdf/shims/node".format(os.path.expanduser('~'))).exists

def test_python_is_exists(host):
    assert host.file("{}/.asdf/shims/python".format(os.path.expanduser('~'))).exists
    
def test_go_is_exists(host):
    assert host.file("{}/.asdf/shims/go".format(os.path.expanduser('~'))).exists

def test_yarn_is_exists(host):
    assert host.file("{}/.asdf/shims/yarn".format(os.path.expanduser('~'))).exists
