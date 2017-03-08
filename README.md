# ExChatwork [![hex.pm version](https://img.shields.io/hexpm/v/exchatwork.svg)](https://hex.pm/packages/exchatwork) [![travis.ci build status](https://img.shields.io/travis/alea12/exchatwork.svg)](https://travis-ci.org/alea12/exchatwork) [![Coverage Status](https://coveralls.io/repos/github/alea12/exchatwork/badge.svg?branch=master)](https://coveralls.io/github/alea12/exchatwork?branch=master)

ChatWork API Interface for Elixir.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `exchatwork` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:exchatwork, "~> 0.1.0"}]
end
```

## Usage

```bash
$ export CHATWORK_API_TOKEN=YOUR_CHATWORK_API_TOKEN
```

```elixir
$ iex -S mix
iex> response = ExChatwork.get_rooms
iex> response.body
iex> response.headers
iex> response.status_code
```

## Implement Progress

### /rooms

|Method|Endpoint                              |Implemented Version                                              |
|------|--------------------------------------|-----------------------------------------------------------------|
|GET   |/rooms                                |[0.1.0](https://github.com/alea12/exchatwork/releases/tag/v0.1.0)|
|POST  |/rooms                                |                                                                 |
|GET   |/rooms/{room_id}                      |                                                                 |
|PUT   |/rooms/{room_id}                      |                                                                 |
|DELETE|/rooms/{room_id}                      |                                                                 |
|GET   |/rooms/{room_id}/members              |                                                                 |
|PUT   |/rooms/{room_id}/members              |                                                                 |
|GET   |/rooms/{room_id}/messages             |                                                                 |
|POST  |/rooms/{room_id}/messages             |                                                                 |
|GET   |/rooms/{room_id}/messages/{message_id}|                                                                 |
|GET   |/rooms/{room_id}/tasks                |                                                                 |
|POST  |/rooms/{room_id}/tasks                |                                                                 |
|GET   |/rooms/{room_id}/tasks/{task_id}      |                                                                 |
|GET   |/rooms/{room_id}/files                |                                                                 |
|GET   |/rooms/{room_id}/files/{file_id}      |                                                                 |

### /me

|Method|Endpoint                              |Implemented Version                                              |
|------|--------------------------------------|-----------------------------------------------------------------|
|GET   |/me                                   |                                                                 |

### /my

|Method|Endpoint                              |Implemented Version                                              |
|------|--------------------------------------|-----------------------------------------------------------------|
|GET   |/my/status                            |                                                                 |
|GET   |/my/tasks                             |                                                                 |

### /contacts

|Method|Endpoint                              |Implemented Version                                              |
|------|--------------------------------------|-----------------------------------------------------------------|
|GET   |/contacts                             |                                                                 |

### /incoming_requests

|Method|Endpoint                              |Implemented Version                                              |
|------|--------------------------------------|-----------------------------------------------------------------|
|GET   |/incoming_requests                    |                                                                 |
|PUT   |/incoming_requests/{request_id}       |                                                                 |
|DELETE|/incoming_requests/{request_id}       |                                                                 |

## Docs

[API Reference – exchatwork v0\.1\.0](https://hexdocs.pm/exchatwork/api-reference.html)

## License

MIT
