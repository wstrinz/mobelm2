module Main exposing (..)

import Html.App as App
import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class, style)

main : Program Never
main =
  App.beginnerProgram
    { model = model
    , update = update
    , view = view
    }


-- model

type alias Model = Int

model : Model
model = 0


-- update

type Msg
  = Increment
  | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

-- view

view : Model -> Html Msg
view model =
  div [ ]
    [ header
    , contentContainer (content model)
    ]

content : a -> Html Msg
content model =
  div []
    [ div [ ]
      [ div [ ] [ button [ onClick Decrement, class "button" ] [ text "-" ] ]
      , div [ ] [ text (toString model) ]
      , div [ ] [  button [ onClick Increment, class "button" ] [ text "+" ] ]
      ]
    ]

contentContainer : Html a -> Html a
contentContainer inside =
  div [ ]
    [ inside ]

header : Html a
header =
  div [ ]
    [ h1 [ class "title" ] [ text "Counter.elm" ]
    ]
