defmodule ExChatwork.API.Base do
  alias ExChatwork.Response

  @doc """
  Sends API request and returns ExChatwork.Response
  """
  def request(method, path, params \\ %{}, headers \\ %{}) do
    headers = headers |> Map.put("X-ChatWorkToken", Application.get_env(:exchatwork, :api_token))
    case method do
      :get ->
        url = process_endpoint_url(path) <> URI.encode_query(params)
        body = ""
        HTTPoison.request!(:get, url, body, headers) |> response
      :post ->
        url = process_endpoint_url(path)
        body = JSX.encode!(params)
        HTTPoison.request!(:post, url, body, headers) |> response
    end
  end

  @doc """
  Sends GET API request
  """
  def get(path, params \\ %{}, headers \\ %{}) do
    request(:get, path, params, headers)
  end

  defp process_endpoint_url(path) do
    Application.get_env(:exchatwork, :endpoint_base_uri) <> path
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
