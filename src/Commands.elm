module Commands exposing (..)

import Http
import Json.Decode
import Json.Decode.Pipeline exposing (decode, required)
import Models exposing (Player)
import Msgs exposing (Msg)
import RemoteData

fetchPlayers: (Cmd Msg)
fetchPlayers =
    Http.get "http://localhost:4000/players" playersDecoder
        |> RemoteData.sendRequest
        |> Cmd.map Msgs.OnFetchPlayers

playersDecoder: Json.Decode.Decoder (List Player)
playersDecoder =
    Json.Decode.list playerDecoder


playerDecoder: Json.Decode.Decoder Player
playerDecoder =
    decode Player
        |> required "id" Json.Decode.string
        |> required "name" Json.Decode.string
        |> required "level" Json.Decode.int