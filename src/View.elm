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
        , Grid.row
            []
            [ Grid.column
                []
                [ title ]
            ]
        , cardPositioner extraSmallCard
        , cardPositioner loadingCard
        , cardPositioner smallCard
        , cardPositioner tosCard
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
        , Card.body
            [ p
                []
                [ Html.text "Tiny card" ]
            ]
        ]


loadingCard : Html Msg
loadingCard =
    Card.view
        [ Card.extraSmall
        , Style.center
        ]
        [ Card.header
            { title = "loading" }
        , Spinner.view
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
            [ Grid.row
                [ flex (int 1) ]
                [ p
                    []
                    [ Html.text "some text right in the middle posing a question" ]
                ]
            , Grid.row
                [ flex (int 1) ]
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
        [ Card.medium
        , Style.center
        ]
        [ Card.header
            { title = "medium" }
        , Card.body
            [ Grid.row
                [ flex (int 1) ]
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


mediumCard : Html Msg
mediumCard =
    Card.view
        [ Card.medium
        , Style.center
        ]
        [ Card.header
            { title = "medium" }
        , Card.body
            [ p
                []
                [ Html.text "enter the url of the image you would like to import" ]
            , Button.view
                [ css [ Button.primary ] ]
                "import"
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
            [ Grid.row
                [ flex (int 1) ]
                [ p
                    []
                    [ Html.text "enter the url of the image you would like to import" ]
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
                    "dont import"
                , Button.view
                    [ css
                        [ Button.primary
                        , Button.margins
                        ]
                    ]
                    "import"
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
