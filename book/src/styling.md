Zid uses regular CSS for styling. Define your styles in a separate Crystal file:

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

Include the styles in your main file:

```crystal
style { LocalCSS }
```
