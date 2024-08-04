# Basic Concepts

## Blueprint

Zid uses Blueprint, a Crystal library to define the UI structure of your application. Blueprint provides a DSL (Domain Specific Language) that allows you to write HTML-like code directly in Crystal.

### The `blueprint` Method

In your main application class, you define a private method called `blueprint`. This method is where you describe the structure and content of your user interface.

```crystal
class MyApp
  include Blueprint::HTML

  private def blueprint
    # UI elements are defined here
  end
end
```

## HTML-like Syntax

Write your UI with the HTML-like syntax: (most AI thing ever, fix this later)

```crystal
div class: "container" {
  h1 { "Hello" }
  p { "World!" }
}
```

## Running the Application

To get your application up and running, you’ll need to create a new file named `register.cr`.
Use the `run_app` macro to start your application:

```crystal
require "zid/gui/run"
require "<./main>"

run_app(width, height, "Window Title", YourMainClass) # in this case, "MyApp"
```

and link the main file to `register.cr`.
