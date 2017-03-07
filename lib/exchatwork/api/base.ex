defmodule ExChatwork.API.Base do
  alias ExChatwork.Response

  @doc """
  Sends API request and returns ExChatwork.Response
  """
  def request(token, method, path, params \\ %{}, headers \\ %{}) do
    headers = headers |> Map.put("X-ChatWorkToken", token)
    case method do
      :get ->
        url = process_url(path) <> URI.encode_query(params)
        body = ""
        HTTPoison.request!(:get, url, body, headers) |> response
      :post ->
        url = process_url(path)
        body = JSX.encode!(params)
        HTTPoison.request!(:post, url, body, headers) |> response
    end
  end

  @doc """
  Sends GET API request
  """
  def get(token, path, params \\ %{}, headers \\ %{}) do
    request(token, :get, path, params)
  end

  defp process_url(url) do
    "https://api.chatwork.com/v2/#{url}"
  end

  defp response(response) do
    body = case response.body do
      "" -> nil
      _  -> JSX.decode!(response.body)
    end
    %Response {
      status_code: response.status_code,
      headers: response.headers,
      body: body
    }
  end
end
