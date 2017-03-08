defmodule ExChatworkTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  doctest ExChatwork

  setup_all do
    ExVCR.Config.filter_request_headers("X-ChatWorkToken")
    ExVCR.Config.filter_sensitive_data("\"room_id\\\":[0-9]+", "\"room_id\":\"<REMOVED>\"")
    ExVCR.Config.filter_sensitive_data("\"name\\\":\".+?\"", "\"name\":\"<REMOVED>\"")
    ExVCR.Config.filter_sensitive_data("\"icon_path\\\":\".+?\"", "\"icon_path\":\"<REMOVED>\"")
    HTTPoison.start
    :ok
  end

  test "gets authenticated user's room list" do
    use_cassette "get_rooms" do
      response = ExChatwork.get_rooms
      assert Enum.count(response.body) >= 1
    end
  end
end
