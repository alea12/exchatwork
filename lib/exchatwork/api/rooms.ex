defmodule ExChatwork.API.Rooms do
  @moduledoc """
  Provides rooms API interfaces.
  """

  import ExChatwork.API.Base

  def get_rooms(token, params \\ %{}, headers \\ %{}) do
    get(token, "rooms", params, headers)
  end
end
