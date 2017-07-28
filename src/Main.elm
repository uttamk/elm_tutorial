module Main exposing (..)

import Commands exposing (fetchPlayers)
import Html exposing (program)
import Models exposing (Model, initialModel)
import Msgs exposing (Msg)
import View exposing (view)
import Update exposing (update)
import Subscriptions exposing (subscriptions)

init : ( Model, Cmd Msg )
init =
    (initialModel, fetchPlayers)

main: Program Never Model Msg
main =
  program
    {
    init = init,
    view = view,
    update = update,
    subscriptions = subscriptions
  }
