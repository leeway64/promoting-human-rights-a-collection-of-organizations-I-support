# LWOrganizations

A list of NGOs, human rights groups, and other organizations I support.



Ubuntu Linux is the primary development environment for this project.

## Usage

```
$ git clone https://github.com/leeway64/LWOrganizationsISupport.git
$ ghc --make include/Main.hs include/Organizations.hs
$ ./include/Main



```


## Documentation

If you prefer, you can also view LWOrganization's content through Sphinx-generated documentation.

To build the html file, run the following commands:

```
$ python3 -m venv .venv
$ source .venv/bin/activate
$ pip install -U sphinx
$ pip install furo
$ cd docs
$ sphinx-build -b html source build
```

Then, in under ``docs/build``, open the ``index.html`` file.


## Links

A collected list of all the links can be viewed in the html file, or it can be viewed by running
the Docker container.

```
$
```


## Third-party tools

- [Sphinx](https://github.com/sphinx-doc/sphinx) (BSD license): Documenation generator.


## License

The content of this project is licensed under the []().

The source code used to format and display the content is licensed under the [MIT License](LICENSE.txt)

