- if tasks.errors
  ul.errors
    - tasks.errors.each do |error|
      li = error.to_s

== form(action: "/tasks/#{tasks.id.to_s}", method: tasks.id ? :patch : :post) do
  == csrf_tag
  div.form-group
    == text_field(name: "name", value: tasks.name, placeholder: "Name", class: "form-control")
  == submit("Submit", class: "btn btn-primary btn-xs")
  == link_to("back", "/tasks", class: "btn btn-default btn-xs")
