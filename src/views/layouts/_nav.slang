- active = context.request.path == "/" ? "active" : ""
a class="nav-item #{active}" href="/" Home
- active = context.request.path == "/tasks" ? "active" : ""
a class="nav-item #{active}" href="/tasks" Tasks
