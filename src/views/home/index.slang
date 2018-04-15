div
  h2 = t "welcome_message"
  p
    | This is an amber framework example app to test latest features implemented by
    a href="https://github.com/faustinoaq" @faustinoaq
    | in his latest branch
    a href="https://github.com/faustinoaq/amber/tree/latest" faustinoaq/amber
  p This time we are testing new error pages and the new amber watcher.
  div.list-group
    a.list-group-item.list-group-item-action target="_blank" href="/404" Not Found Error (404)
    a.list-group-item.list-group-item-action target="_blank" href="/500" Internal Server Error (500)
    a.list-group-item.list-group-item-action target="_blank" href="/tasks" Database Eror
    a.list-group-item.list-group-item-action target="_blank" href="/about" Template Error (runtime)
  div.alert.alert-warning
    | Compile time errors are not available in this demo.
    | To try them:
    ol
      li
        | Clone, build and run the repository 
        a href="https://github.com/faustinoaq/amber-latest-app-example" amber-latest-app-example
      li
        | Go to
        a href="http://localhost:3000" localhost:3000

