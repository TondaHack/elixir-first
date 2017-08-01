# web/controllers/user_controller
defmodule Todos.UserController do
  use Todos.Web, :controller
  def index(conn, _params) do
    users = Repo.all(Todos.User)
    json conn, users
  end
  def show(conn, %{"id" => id}) do
    user = Repo.get(Todos.User, String.to_integer(id))
    json conn, user
  end
end