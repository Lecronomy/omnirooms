defmodule OmniroomsWeb.RoomController do
  use OmniroomsWeb, :controller

  def room_redirect(conn, %{"name" => name}) when is_binary(name) do
    redirect(conn, to: ~p"/room/#{name}")
  end

  def room_redirect(conn, _params) do
    redirect(conn, to: "/")
  end

  def room(conn, _params) do
    room_name = conn.path_params["name"] |> String.downcase()
    render(conn, :room, page_title: room_name, room_name: room_name)
  end
end
