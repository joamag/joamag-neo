# AGENTS.md file

## Python Virtual Environment (venv)

The Python virtual environment for this repository is typically located in `.venv`.

## Formatting

Always format the code before committing, making sure that the Python code is properly formatted using:

```bash
pip install black
black .
```

## Testing

To run the custom suite of unit tests for Joamag Neo use the following sequence of commands that will install dependencies
and run the appropriate test suite (last command).

Try to run the unit tests whenever making changes to the codebase, before committing new code.

```bash
pip install -r requirements.txt
PYTHONPATH=src python -m unittest discover -s src -p "test_*.py"
```

## Style Guide

- Always update `CHANGELOG.md` according to semantic versioning, mentioning your changes in the unreleased section.
- Write commit messages using [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).
- Never bump the internal application version in `src/joamag_neo/main.py`. This is handled as part of the release process.
- Source files (`.py`, `.tpl`, `.css` and `.js`) use CRLF as the line ending, while Markdown files use LF.
- The implementation should be done in Python 3.10+ and compatible with Python 3.14.
- No type annotations should exist in the `.py` files and if they exist they should be isolated in the `.pyi` files.
- The style should respect the black formatting.
- The implementation should be done in a way that is compatible with the existing codebase.
- Prefer `item not in list` over `not item in list`.
- Prefer `item == None` over `item is None`.
- The commenting style of the project is unique, try to keep commenting style consistent.
- Use Python docstrings with the `:type:`, `:args:`, `:rtype:`, `:return:`, etc. structure and with a newline after the docstring end (`"""`).

## Commit Messages

This project follows [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) with the following structure:

```text
<type>: <description>

<body>
```

### Commit Types

| Type       | Description                                             |
| ---------- | ------------------------------------------------------- |
| `feat`     | A new feature or functionality                          |
| `fix`      | A bug fix                                               |
| `docs`     | Documentation only changes                              |
| `refactor` | Code change that neither fixes a bug nor adds a feature |
| `chore`    | Maintenance tasks, dependency updates, build changes    |
| `test`     | Adding or updating tests                                |
| `version`  | Version bump commits (reserved for releases)            |

### Guidelines

- Use lowercase for the type prefix.
- Use imperative mood in the description (e.g., "Add feature" not "Added feature").
- Keep the first line under 80 characters.
- Reference issue/PR numbers when applicable using `(#123)` at the end.
- For version releases, use the format `version: X.Y.Z`.
- Add an extra newline between subject and body.
- Make the body a series of bullet points about the commit.
- Be descriptive, always making use of the body of the message.

### Examples

```text
feat: add structured data to the site metadata (#2)
fix: resolve unencoded subject in the contact link
docs: add configuration entries for the new options
refactor: extract the contact links into a shared list
chore: update dependencies to latest stable versions
test: add tests for the rendered templates
version: 1.3.3
```

## Pre-Commit Checklist

Before committing, ensure that the following items check out:

- [ ] Code is formatted with `black .`
- [ ] Tests pass: `PYTHONPATH=src python -m unittest discover -s src -p "test_*.py"`
- [ ] CHANGELOG.md is updated in [Unreleased] section
- [ ] No debugging print statements or commented-out code
- [ ] CRLF line endings are preserved
- [ ] No type annotations in .py files (use .pyi if needed)

## New Release

To create a new release follow the following steps:

- Make sure that both the tests pass and the code formatting is valid.
- Increment (look at `CHANGELOG.md` for semver changes) the `def _version(self):` return value in `src/joamag_neo/main.py`.
- Move all the `CHANGELOG.md` Unreleased items that have at least one non empty item into a new section with the new version number and date, and then create new empty sub-sections (Added, Changed and Fixed) for the Unreleased section with a single empty item.
- Create a commit with the following message `version: $VERSION_NUMBER`.
- Push the commit.
- Create a new tag with the value of the new version number `$VERSION_NUMBER`.
- Create a new release on the GitHub repo using the Markdown from the corresponding version entry in `CHANGELOG.md` as the description of the release and the version number as the title. Do not include the title of the release (version and date) in the description.

## License

Joamag Neo is licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/).
