module Components.New exposing (view)

import Css exposing (..)
import Html.Grid as Grid
import Html.Styled as Html exposing (Html, div, p)
import Html.Styled.Attributes as Attrs
import Msg exposing (Msg(..))
import Style
import Style.Units as Units
import View.Button as Button
import View.Card as Card
import View.Input as Input
import View.Spinner as Spinner


view : Html Msg
view =
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
            { title = "oh hi"
            , shouldShowCloseButton = False
            }
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
            { title = "loading"
            , shouldShowCloseButton = False
            }
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
            { title = "input field"
            , shouldShowCloseButton = True
            }
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
                    [ Attrs.css
                        [ Button.secondary
                        , Button.margins
                        ]
                    ]
                    "secondary"
                , Button.view
                    [ Attrs.css
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
            { title = "terms of service"
            , shouldShowCloseButton = False
            }
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
                    you give me your username, email,
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
                        [ Attrs.css
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
            { title = "large"
            , shouldShowCloseButton = True
            }
        , Card.body
            [ Grid.row
                [ marginBottom Units.size2 ]
                [ p
                    [ Attrs.css [ lineHeight Units.size4 ] ]
                    [ Html.text "hey why dont you fill this stuff out" ]
                ]
            , Grid.row
                [ marginBottom Units.size2 ]
                [ Grid.column
                    []
                    [ Input.view
                        []
                        [ Attrs.placeholder "vornamen"
                        , Attrs.value ""
                        ]
                    ]
                , Grid.column
                    [ marginLeft Units.size2 ]
                    [ Input.view
                        []
                        [ Attrs.placeholder "nachnamen"
                        , Attrs.value ""
                        ]
                    ]
                ]
            , Grid.row
                [ marginBottom Units.size2 ]
                [ Grid.column
                    []
                    [ Input.view
                        []
                        [ Attrs.placeholder "email"
                        , Attrs.value ""
                        ]
                    ]
                ]
            , Grid.row
                [ marginBottom Units.size2 ]
                [ Grid.column
                    [ flex none
                    , width Units.size7
                    ]
                    [ p
                        [ Attrs.css [ lineHeight Units.size4 ] ]
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
                        [ Attrs.css [ lineHeight Units.size4 ] ]
                        [ Html.text "labely" ]
                    ]
                , Grid.column
                    []
                    [ Input.view [] [ Attrs.value "valuey" ] ]
                , Grid.column
                    [ flex none
                    , width Units.size7
                    , marginLeft Units.size2
                    ]
                    [ p
                        [ Attrs.css [ lineHeight Units.size4 ] ]
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
                        [ Attrs.css [ lineHeight Units.size4 ] ]
                        [ Html.text "options" ]
                    ]
                , Grid.column
                    []
                    [ Button.view
                        [ Attrs.css [ Button.primary ] ]
                        "option 0"
                    , Button.view
                        [ Attrs.css [ Button.secondary ] ]
                        "option 1"
                    , Button.view
                        [ Attrs.css [ Button.secondary ] ]
                        "option 2"
                    ]
                ]
            , Grid.row
                [ justifyContent center ]
                [ Button.view
                    [ Attrs.css
                        [ Button.disabled
                        , Button.margins
                        ]
                    ]
                    "disabled"
                , Button.view
                    [ Attrs.css
                        [ Button.secondary
                        , Button.margins
                        ]
                    ]
                    "delete"
                , Button.view
                    [ Attrs.css
                        [ Button.primary
                        , Button.margins
                        ]
                    ]
                    "okay"
                ]
            ]
        ]


extraLargeCard : Html Msg
extraLargeCard =
    Card.view
        [ Card.extraLargeWidth
        , Style.center
        ]
        [ Card.header
            { title = "squarepusher playing his instrument"
            , shouldShowCloseButton = True
            }
        , Card.body
            [ Grid.row
                [ marginBottom Units.size1 ]
                [ Grid.column
                    []
                    [ div
                        [ Attrs.css [ minWidth (px 0) ] ]
                        [ Html.img
                            [ Attrs.css [ width (pct 100) ]
                            , Attrs.src "https://i.ytimg.com/vi/VypU8zojFsY/maxresdefault.jpg"
                            ]
                            []
                        ]
                    ]
                ]
            , Grid.row
                [ marginBottom Units.size1 ]
                [ Grid.column
                    [ justifyContent center ]
                    [ p
                        []
                        [ Html.text "bretty cool huh" ]
                    ]
                ]
            , Grid.row
                [ justifyContent center ]
                [ Button.view
                    [ Attrs.css
                        [ Button.secondary
                        , Button.margins
                        ]
                    ]
                    "no"
                , Button.view
                    [ Attrs.css
                        [ Button.primary
                        , Button.margins
                        ]
                    ]
                    "yes"
                ]
            ]
        ]
