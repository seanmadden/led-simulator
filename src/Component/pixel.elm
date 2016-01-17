module Component.Pixel where
{- 
    This represents a pixel on the LED strip
-}

import Html exposing (..)

-- Model
type alias Led = { red : Int
                 , green : Int
                 , blue : Int
                 }

type Action = NoOp
            | SetRed Int
            | SetBlue Int
            | SetGreen Int

initLed : Led
initLed =
    { red = 0
    , green = 0
    , blue = 0
    }

update : Action -> Led -> Led
update action led =
    case action of
    NoOp -> led
    SetRed value -> 
        { led | red = value }
    SetBlue value ->
        { led | blue = value }
    SetGreen value ->
        { led | green = value } 

view : Signal.Address Action -> Led -> Html
view address led =
    div [ ] [ 
            ul []
            [
                li [] [ text (toString led.red) ]
              , li [] [ text (toString led.green) ]
              , li [] [ text (toString led.blue) ]
            ]
            ]
