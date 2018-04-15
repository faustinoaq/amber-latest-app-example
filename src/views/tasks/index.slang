div.row
  div.col-sm-11
    h2 Tasks
  div.col-sm-1
    a.btn.btn-success.btn-xs href="/tasks/new" New
div.table-responsive
  table.table.table-striped
    thead
      tr
        th Name
        th Actions
    tbody
      - tasks.each do |tasks|
        tr
          td = tasks.name
          td
            span
              == link_to("read", "/tasks/#{tasks.id}", class: "btn btn-primary btn-xs")
              == link_to("edit", "/tasks/#{tasks.id}/edit", class: "btn btn-success btn-xs")
              == link_to("delete", "/tasks/#{ tasks.id }?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-xs")
