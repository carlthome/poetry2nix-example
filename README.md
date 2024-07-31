# poetry2nix template

## Usage

Install and launch the application with

```sh
nix profile install
app
```

or the Python package only with

```sh
poetry install
poetry run app
```

You can also use `nix run` to launch the application directly.

## Develop

1. Run `nix develop` or `poetry shell` to enter a development environment
1. Either build the Python package with `poetry build`, or the Nix package with `nix build`
1. Run tests with `poetry run pytest` or `nix develop --command pytest`
1. Update the `poetry.lock` file with `poetry update` and the `flake.lock` file with `nix flake update`
1. Release a new version with `poetry version prerelease` and `poetry publish`
