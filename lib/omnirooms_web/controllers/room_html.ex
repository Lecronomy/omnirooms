defmodule OmniroomsWeb.RoomHTML do
  @moduledoc """
  This module contains pages rendered by RoomController.

  See the `room_html` directory for all templates available.
  """
  use OmniroomsWeb, :html

  embed_templates "room_html/*"
end
