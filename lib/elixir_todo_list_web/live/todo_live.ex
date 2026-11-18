defmodule ElixirTodoListWeb.TodoLive do
  use ElixirTodoListWeb, :live_view

  # mount/3 é o "construtor" do LiveView — chamado quando a página é carregada
  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
