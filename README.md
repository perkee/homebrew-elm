# elm-format with teleport-imports

A fork of [elm-format](https://github.com/avh4/elm-format) that adds **teleport-imports**: import statements can appear anywhere in your Elm module and will be automatically moved to the import block at the top of the file.

```elm
module Main exposing (x, y)

import String

x =
    String.toUpper "hello"

import List        -- <- this gets teleported to the top

y =
    List.map identity []
```

Running `elm-format` produces:

```elm
module Main exposing (x, y)

import List
import String


x =
    String.toUpper "hello"


y =
    List.map identity []
```

## Install

### Homebrew (macOS Apple Silicon)

```sh
brew install perkee/elm/elm-format
```

### Nix

Run directly:

```sh
nix run github:perkee/elm-format
```

Or add to a flake input:

```nix
{
  inputs.elm-format.url = "github:perkee/elm-format";

  outputs = { self, elm-format, ... }: {
    # use elm-format.packages.${system}.default
  };
}
```

### Manual download

Download a prebuilt binary from the [releases page](https://github.com/perkee/elm-format/releases).
