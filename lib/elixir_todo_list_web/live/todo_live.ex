defmodule ElixirTodoListWeb.TodoLive do
  use ElixirTodoListWeb, :live_view

  # mount/3 é o "construtor" do LiveView — chamado quando a página é carregada
  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  # render/1 define o HTML que será exibido
  @impl true
  def mount(_params, _session, socket) do
    tasks = [
      %{id: 1, title: "Comprar leite", completed: false},
      %{id: 2, title: "Aprender LiveView", completed: true}
    ]

    socket =
      assign(socket,
        tasks: tasks,
        new_task_title: ""
      )

    {:ok, socket}
  end
end
