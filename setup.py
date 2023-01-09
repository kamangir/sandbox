from setuptools import setup

from sandbox import NAME, VERSION

setup(
    name=NAME,
    author="arash@kamangir.net",
    version=VERSION,
    description="template for an abcli plugin",
    packages=[NAME],
)
