module Update exposing (update)
import Models exposing (Model)
import Msgs exposing (Msg(NoOp))

update: Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp -> (model, Cmd.none)
