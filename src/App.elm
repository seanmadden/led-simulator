import Html exposing (div, button, text)
import Html.Events exposing (onClick)
import StartApp.Simple as StartApp
import Component.Pixel exposing (initLed, view, update)

main = StartApp.start { model = initLed, view = view, update = update }

