module Main exposing (main)

import Browser
import Html.Styled
import Json.Decode as D
import Model exposing (Model)
import Msg exposing (Msg(..))
import Return2 as R2
import View exposing (view)



-- MAIN --


main : Program D.Value Model Msg
main =
    { init = init
    , view = view
    , update = update
    , subscriptions = always Sub.none
    }
        |> Browser.document


init : D.Value -> ( Model, Cmd Msg )
init json =
    {}
        |> R2.withNoCmd



-- UPDATE --


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        None ->
            ( model, Cmd.none )
