h1 Show Tasks
p = tasks.name
p
  == link_to("back", "/tasks", class: "btn btn-default btn-xs")
  == link_to("edit", "/tasks/#{tasks.id}/edit", class: "btn btn-success btn-xs")
  == link_to("delete", "/tasks/#{tasks.id}?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-xs")
