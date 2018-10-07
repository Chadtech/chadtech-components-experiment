module View exposing (view)

import Browser
import Chadtech.Colors as Ct
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


view : Model -> Browser.Document Msg
view model =
    { title = "Gulp Elm Boilerplate"
    , body =
        [ Style.globalStyles
        , Grid.row
            []
            [ Grid.column
                []
                [ title ]
            ]
        , cardPositioner extraSmallCard
        , cardPositioner smallCard
        , cardPositioner mediumCard
        , cardPositioner largeCard
        , cardPositioner extraLargeCard
        ]
            |> List.map Html.toUnstyled
    }


cardPositioner : Html Msg -> Html Msg
cardPositioner card =
    Grid.row
        [ padding Units.size4 ]
        [ Grid.column
            []
            [ card ]
        ]


extraSmallCard : Html Msg
extraSmallCard =
    Card.view
        [ Card.extraSmall
        , Style.center
        ]
        [ Card.header
            { title = "extra small" }

        -- , Card.body
        --     [ p
        --         []
        --         [ Html.text "Tiny card" ]
        --     ]
        ]


smallCard : Html Msg
smallCard =
    Card.view
        [ Card.small
        , Style.center
        ]
        [ Card.header
            { title = "small" }
        , Card.body
            [ Button.view
                [ css [ Button.basic ] ]
                "okay"
            ]
        ]


mediumCard : Html Msg
mediumCard =
    Card.view
        [ Card.medium
        , Style.center
        ]
        [ Card.header
            { title = "medium" }
        , Card.body
            [ Button.view
                [ css [ Button.basic ] ]
                "upload"
            ]
        ]


largeCard : Html Msg
largeCard =
    Card.view
        [ Card.large
        , Style.center
        ]
        [ Card.header
            { title = "large" }
        , Card.body
            []
        ]


extraLargeCard : Html Msg
extraLargeCard =
    Card.view
        [ Card.extraLarge
        , Style.center
        ]
        [ Card.header
            { title = "extra large" }
        , Card.body
            []
        ]


title : Html Msg
title =
    p
        [ css [ color Ct.content4 ] ]
        [ Html.text "Elm Project : Go!" ]
