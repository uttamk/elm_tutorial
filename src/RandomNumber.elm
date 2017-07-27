module RandomNumber exposing (..)

import Html exposing (Html, div, button, text, program)
import Html.Events exposing (onClick)
import Random

-- model
type alias Model = Int

init: (Model, Cmd Msg)
init =
    (0, Cmd.none)

-- messages
type Msg =   Roll
           | OnResult Int
-- view
view: Model -> Html Msg
view model =
    div[]
      [ button [onClick Roll] [text "Roll"], text (model |> toString)]

-- update
update: Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
      Roll ->
        (model, Random.generate OnResult (Random.int 1 6))
      OnResult number ->
        (number, Cmd.none)

-- subscriptions


-- main
main : Program Never Model Msg
main =
  program
    {
      init = init, view = view, update=update, subscriptions = (always Sub.none)
  }
