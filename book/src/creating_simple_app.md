# Creating a Simple App

Let's create a "Hello World" app with Zid.

Create `main.cr`:

```crystal
require "blueprint/html"
require "zid/gui/macros"
require "./css"

class HelloWorld
  include Blueprint::HTML

  private def blueprint
    style { LocalCSS }

    div class: "container" {
      h1 { "Hello World!" }
      h2 { "I'm using Zid!" }
      h3 { "(⌒‿⌒)" }
    }
  end
end
```

Create `css.cr`:

```crystal
LocalCSS = <<-CSS
body {
  font-family: sans-serif;
  font-size: 16px;
  line-height: 1.6
}

h1, h2, h3 {
  color: pink
}

.container {
  text-align: center
}
CSS
```

Create `register.cr`:

```crystal
require "zid/gui/macros"
require "zid/gui/run"
require "./main"

run_app(800, 600, "Zid Example", HelloWorld)
```

Run the app with this command:

```sh
shards run
```
