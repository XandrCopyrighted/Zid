# Zid
## GUI lib for Crystal-lang allowing for developing simple desktop apps.

- Expressive (JSX-like).
- Concise (it's like writing HTML).
- Modular (A custom visual widget can include other custom widgets)
- Stylable using regular CSS.
- Easy layout coding.
- Easy state management of the app.
- Ajax support.

### Built on

- [Blueprint](https://github.com/stephannv/blueprint)
- [Webview for Crystal](https://github.com/naqvis/webview)
- [Pico CSS](https://picocss.coma)
- [HTMX](https://github.com/bigskysoftware/htmx)
- [Crystal](https://crystal-lang.org)

### Dependencies on Linux
- [webkit2gtk](https://archlinux.org/packages/extra/x86_64/webkit2gtk)

### Usage
The aim is to provide a portable GUI library which will allows developers to code desktop apps in Crystal.

- One goal is to make it as easy to use as Tkinter for Python.
- Another goal is portability across platforms (Linux, Mac, Windows)
- Another goal is to make it easy to distribute : The only dependency is Webview for Crystal. The app is simply one (binary executable) file.
- The library uses Crystal, HTML, CSS and Webmin, internally but developers using the library only need to master Crystal (no HTML, CSS, JS knowledge required).
- The author expects to develop a fairly complete set of widgets, to match the most commonly used HTML tags, once the initial tests are conclusive.

### Layouts / Styling / Customisation
To experiment with layouts, graphical appearance, the CSS which is used is pico.css (provided in the module: pico.cr), therefore most of the features of pico.css are available in the current version of the framework.

## Contributors

- [Serge Hulne](https://github.com/serge-hulne) - Creator
- [XDR](https://github.com/XandrCopyrighted)
