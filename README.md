<!-- spellcheck-language "en_GB" -->
<!-- markdownlint-disable commands-show-output -->

# Pandoc-import-code

![PyPI](https://img.shields.io/pypi/v/pandoc-import-code)
![GitHub release (latest SemVer including pre-releases)](https://img.shields.io/github/v/release/nlm-pro/pandoc-import-code?include_prereleases)

Pandoc filter to include external code files as fenced code blocks using the
[Vuepress syntax](https://vuepress.vuejs.org/guide/markdown.html#import-code-snippets).

## Install

To install pandoc-import-code, open the command line and type:

```bash
pip install pandoc-import-code
```

Python 3.6+ and PyPy3 are supported.

## Usage

**:warning: pandoc-import-code requires Pandoc 2.11+, as it relies on [Panflute 2](https://github.com/sergiocorreia/panflute/releases/tag/2.0.3)**

### Command

```shell-session
$ pandoc source.md --filter pandoc-import-code -o output.md
```

### Syntax

```raw
<<< @/<path>#[region]
```

- **path** : path to a code file to import
  - relative to the pandoc command working directory
- **region** : custom region name for partial import
  - syntax inspired by
    [VS Code](https://code.visualstudio.com/docs/editor/codebasics#_folding)

### Example

```shell-session
$ pandoc docs/index.md --filter pandoc-import-code -o out.md
```

_Source (`./docs/index.md`)_

<!-- prettier-ignore -->
```md
# Code Sample

<<< @/samples/hello-world.html#title

```

_Code sample (`./samples/hello-world.html`)_

<!-- prettier-ignore -->
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Document</title>
  </head>
  <body>
    <!-- #region title -->
    <h1>
      Hello World!
    </h1>
    <!-- #endregion title -->
  </body>
</html>
```

_Output (`./out.md`)_

<!-- prettier-ignore -->
````md
# Code Sample

``` {.html}
<h1>
  Hello World
</h1>
```

````

#### Limitations

- as line-highlighting isn't supported by pandoc, any `{1-2}` parameter will be
  ignored

## Dev Install

After cloning the repository and opening the pandoc-import-code folder:

`python setup.py install`: installs the package locally

`python setup.py develop`: installs locally with a symlink so changes are
automatically updated
