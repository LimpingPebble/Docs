# Docs

The documentation for the stone engine project

To modify it, you can use vscode or Obsidian.

## Docs modifications

All documentation files are located in the `docs/` folder. Everything is written in markdown files to keep simplicity.



## Build html

The markdown is compiled into html files using [mkdocs](https://www.mkdocs.org/)

You can install it and its dependency using `pip`. So you need to have [python](https://www.python.org/) installed locally.

The Makefile target `install` is already setup to install everything required.

```sh
make install
```

Once mkdocs is installed, you can either :

- build the html files with the `build` target
- start the http service with the `serve` target

```sh
make build
```

```sh
make serve
```

> Using `serve` will not create html files locally.

After using `serve`, you can open the documentation in your browser at `http://127.0.0.1:8000`.

Any modifications to the markdown files will hot reload the page.
