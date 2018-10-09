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
                [ newComponents
                , newComponents
                ]
            ]
        ]
            |> List.map Html.toUnstyled
    }


newComponents : Html Msg
newComponents =
    Grid.column
        [ flexDirection column ]
        [ cardPositioner extraSmallCard
        , cardPositioner loadingCard
        , cardPositioner smallCard
        , cardPositioner tosCard
        , cardPositioner largeCard
        , cardPositioner extraLargeCard
        ]


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
        [ Style.center
        ]
        [ Card.header
            { title = "oh hi" }
        , Card.body
            [ p
                []
                [ Html.text "mark" ]
            ]
        ]


loadingCard : Html Msg
loadingCard =
    Card.view
        [ Style.center ]
        [ Card.header
            { title = "loading" }
        , Spinner.view
            [ margin Units.size1 ]
        ]


smallCard : Html Msg
smallCard =
    Card.view
        [ Card.smallWidth
        , Style.center
        ]
        [ Card.header
            { title = "input field" }
        , Card.body
            [ Grid.row
                [ marginBottom Units.size1 ]
                [ p
                    []
                    [ Html.text "some text right in the middle posing a question" ]
                ]
            , Grid.row
                [ marginBottom Units.size1 ]
                [ Input.view
                    []
                    [ Attrs.placeholder "placeholder" ]
                ]
            , Grid.row
                [ justifyContent center ]
                [ Button.view
                    [ css
                        [ Button.secondary
                        , Button.margins
                        ]
                    ]
                    "secondary"
                , Button.view
                    [ css
                        [ Button.primary
                        , Button.margins
                        ]
                    ]
                    "primary"
                ]
            ]
        ]


tosCard : Html Msg
tosCard =
    Card.view
        [ Card.mediumWidth
        , Style.center
        ]
        [ Card.header
            { title = "terms of service" }
        , Card.body
            [ Grid.row
                [ flex2 (int 0) (int 1)
                , flexBasis auto
                , marginBottom Units.size1
                ]
                [ p
                    []
                    [ Html.text
                        """
                    You give me your username, email,
                    and password, and I wont tell it to
                    anyone. I promise. I also promise
                    you that you can use my software, so
                    long as you arent trying to screw with
                    my software, and you dont violate this 
                    agreement.
                    """
                    ]
                ]
            , Grid.row
                []
                [ Grid.column
                    []
                    [ Button.view
                        [ css
                            [ Button.primary
                            , width (pct 100)
                            ]
                        ]
                        "i agree"
                    ]
                ]
            ]
        ]


largeCard : Html Msg
largeCard =
    Card.view
        [ Card.largeWidth
        , Style.center
        ]
        [ Card.header
            { title = "large" }
        , Card.body
            [ Grid.row
                [ marginBottom Units.size2 ]
                [ p
                    [ css [ lineHeight Units.size4 ] ]
                    [ Html.text "jesus i dont even know just some text and a bunch of buttons" ]
                ]
            , Grid.row
                [ marginBottom Units.size2 ]
                [ Grid.column
                    [ flex none
                    , width Units.size7
                    ]
                    [ p
                        [ css [ lineHeight Units.size4 ] ]
                        [ Html.text "labely" ]
                    ]
                , Grid.column
                    []
                    [ Input.view [] [ Attrs.value "valuey" ] ]
                ]
            , Grid.row
                [ marginBottom Units.size2 ]
                [ Grid.column
                    [ flex none
                    , width Units.size7
                    ]
                    [ p
                        [ css [ lineHeight Units.size4 ] ]
                        [ Html.text "labely" ]
                    ]
                , Grid.column
                    []
                    [ Input.view [] [ Attrs.value "valuey" ] ]
                ]
            , Grid.row
                [ justifyContent center ]
                [ Button.view
                    [ css
                        [ Button.disabled
                        , Button.margins
                        ]
                    ]
                    "disabled"
                , Button.view
                    [ css
                        [ Button.secondary
                        , Button.margins
                        ]
                    ]
                    "dont"
                , Button.view
                    [ css
                        [ Button.primary
                        , Button.margins
                        ]
                    ]
                    "yes"
                ]
            ]
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
        [ Html.text "Chadtech Components Experiment" ]
