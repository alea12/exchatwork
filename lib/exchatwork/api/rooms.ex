defmodule ExChatwork.API.Rooms do
  @moduledoc """
  Provides rooms API interfaces.
  """

  import ExChatwork.API.Base

  def get_rooms do
    get("rooms")
  end
end
