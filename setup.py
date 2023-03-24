from setuptools import setup, find_packages

with open("README.md", "r", encoding="utf-8") as f:
    long_description = f.read()

with open("LICENSE.txt", "r") as l:
    lic = l.read()

setup(
    name="vector2Dim",
    version="0.1.1",
    author="Pasquale Mainolfi",
    url="https://github.com/PasqualeMainolfi",
    description="Vector2Dim is a python library to manage operations between vectors in 2D in a simple and intuitive way",
    long_description=long_description,
    keywords=["vector", "2D", "numpy", "development"],
    python_requires=">=3.10",
    packages=find_packages(exclude=("v2d_test.py")),
    license=lic
)
