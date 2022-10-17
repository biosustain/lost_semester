from setuptools import setup, find_packages

setup(
    name="mypackage",
    version="0.1.0",
    description="A python Package",
    author="Ziggy Stardust",
    author_email="bow@honky.ie",
    keywords="python metabolic-models bioinformatics systems-biology",
    license="MIT",
    packages=find_packages(),
    install_requires=["tqdm>=0.9.0"],
)
