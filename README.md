# release-pkg

This GitHub action helps making releases of a GAP package.

## Usage

The action `release-pkg` has to be called by the workflow of a GAP
package.
It creates release archives and publishes them in a GitHub release.


### Examples

See below for a minimal example to run this action.

#### Minimal example
```yaml
name: CI

# Trigger the workflow on push or pull request
on:
  push:
  pull_request:

jobs:
  test:
    name: Test
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4
      - uses: gap-actions/setup-gap@v2
      - uses: gap-actions/build-pkg@v1
      - uses: gap-actions/build-pkg-docs@v1
      - uses: gap-actions/release-pkg@v1
```

## Contact
Please submit bug reports, suggestions for improvements and patches via
the [issue tracker](https://github.com/gap-actions/build-pkg/issues).

## License
The action `build-pkg` is free software; you can redistribute
and/or modify it under the terms of the GNU General Public License as published
by the Free Software Foundation; either version 2 of the License, or (at your
opinion) any later version. For details, see the file `LICENSE` distributed
with this action or the FSF's own site.
