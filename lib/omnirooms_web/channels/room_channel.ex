defmodule OmniroomsWeb.RoomChannel do
  use OmniroomsWeb, :channel

  @impl true
  def join("room:" <> _room_name, _payload, socket) do
    {:ok, socket}
  end

  # Channels can be used in a request/response fashion
  # by sending replies to requests from the client
  @impl true
  def handle_in("ping", payload, socket) do
    {:reply, {:ok, payload}, socket}
  end

  # Send message if authorized
  @impl true
  def handle_in("shout", payload, socket) do
    if authorized?(payload) do
      broadcast(socket, "shout", payload)
      {:reply, {:ok, payload}, socket}
    else
      {:reply, {:error, %{reason: "Unauthorized"}}, socket}
    end
  end

  # Add authorization logic here as required.
  defp authorized?(_payload) do
    true
  end
end
