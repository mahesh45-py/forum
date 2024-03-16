defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn,_params) do
    IO.puts('Users function hit!')
    userData = [
      %{
        id: 1,
        name: "Mahesh",
        email: "mahesh@gmail.com"
      },
      %{
        id: 2,
        name: "Srinu",
        email: "srinu@gmail.com"
      },
      %{
        id: 3,
        name: "Sai",
        email: "sai@gmail.com"
      },
      %{
        id: 4,
        name: "Nikhil",
        email: "nikhil@gmail.com"
      }
    ]
    # render(conn, :users, userData: userData, layout: false)
    json(conn, %{users: userData})
  end
end
