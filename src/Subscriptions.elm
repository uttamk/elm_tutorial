module Subscriptions exposing (subscriptions)

import Msgs exposing (..)
import Models exposing (..)

subscriptions: Model -> Sub Msg
subscriptions model =
  Sub.none
