# Getting Started with Zid

## Installation

To use Zid in your project, add it to your `shard.yml`:

```yaml
dependencies:
  zid:
    github: XandrCopyrighted/Zid
```

then run the following:

```sh
shards install
```

## Basic Structure

A Zid application typically includes:

* A main class with `Blueprint::HTML`.
* A `blueprint` method for UI definition.
* CSS for styling.
* A registration file to set up the application.

Example:

```crystal
require "blueprint/html"

class HelloWorld
  include Blueprint::HTML

  private def blueprint
    div class: "container" {
      h1 { "Hello World!" }
    }
  end
end
```
