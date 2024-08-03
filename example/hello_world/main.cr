require "blueprint/html"
require "../../src/gui/macros"
require "./css"
require "./register"

class Hello_World
  include Blueprint::HTML

  private def blueprint
    style { LocalCSS }
    script src: "https://unpkg.com/htmx.org@2.0.1"

    div class: "container" {
      h1 { "Hello World!" }
      h2 { "I\"m using Zid!" }
      h3 { "(⌒‿⌒)" }
    }
  end
end
