module View exposing (..)

import Html exposing (Html, text, div)
import Models exposing (Model)
import Msgs exposing(..)

view: Model -> Html Msg
view model =
  div[]
    [model |> toString |> text]
