module View exposing (view)

import Browser
import Chadtech.Colors as Ct
import Components.New
import Components.Old
import Css exposing (..)
import Html.Grid as Grid
import Html.Styled as Html
    exposing
        ( Attribute
        , Html
        , div
        , input
        , p
        )
import Html.Styled.Attributes as Attrs exposing (css)
import Html.Styled.Events exposing (onInput)
import Model exposing (Model)
import Msg exposing (Msg(..))
import Style
import Style.Units as Units
import View.Button as Button
import View.Card as Card
import View.Input as Input
import View.Spinner as Spinner


view : Model -> Browser.Document Msg
view model =
    { title = "Chadtech Components Experiment"
    , body =
        [ Style.globalStyles
        , Grid.container
            []
            [ Grid.row
                []
                [ Grid.column
                    []
                    [ title ]
                ]
            , Grid.row
                []
                [ Components.New.view
                , Components.Old.view
                ]
            ]
        ]
            |> List.map Html.toUnstyled
    }


title : Html Msg
title =
    p
        [ css [ color Ct.content3 ] ]
        [ Html.text "Chadtech Components Experiment" ]
