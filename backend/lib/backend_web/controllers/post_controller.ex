defmodule BackendWeb.PostController do
  use BackendWeb, :controller

  alias Backend.Content
  alias Backend.Content.Post

  action_fallback BackendWeb.FallbackController

  def index(conn, _params) do
    posts = Content.list_posts()
    render(conn, :index, posts: posts)
  end

  def create(conn, %{"post" => post_params}) do
    with {:ok, %Post{} = post} <- Content.create_post(post_params) do
      conn
      |> put_status(:created)
      |> render(:show, post: post)
    end
  end

  def show(conn, %{"id" => id}) do
    post = Content.get_post!(id)
    render(conn, :show, post: post)
  end

  def update(conn, %{"id" => id, "post" => post_params}) do
    post = Content.get_post!(id)

    with {:ok, %Post{} = post} <- Content.update_post(post, post_params) do
      render(conn, :show, post: post)
    end
  end

  def delete(conn, %{"id" => id}) do
    post = Content.get_post!(id)

    with {:ok, %Post{}} <- Content.delete_post(post) do
      send_resp(conn, :no_content, "")
    end
  end
end
