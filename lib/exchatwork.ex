defmodule ExChatwork do
  @moduledoc """
  ChatWork API Interface for Elixir.
  """

  defmodule Response do
    defstruct status_code: nil, body: nil, headers: %{}
  end

  @doc """
  GET /rooms

  ## Examples

      ExChatwork.get_rooms("YOUR_API_KEY")

  ## Reference
  http://developer.chatwork.com/ja/endpoint_rooms.html#GET-rooms
  """
  @spec get_rooms(Keyword.t) :: ExChatwork.Response
  defdelegate get_rooms(token), to: ExChatwork.API.Rooms
end
