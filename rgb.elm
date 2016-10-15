import Html.App as App
import Html exposing (..)
import Html.Events exposing (..)
import Time exposing (Time, second)
import AnimationFrame

-- definitions


main =
  App.program
  { init = init
  , view = view
  , update = update
  , subscriptions = subscriptions
  }

type alias Color =
  { r: Int
  , g: Int
  , b: Int
  }

type alias Model = 
  { currentColor: Color
  , colors: List Color
  }


-- init


initialColor : Color
initialColor =
  Color 0 0 0

init : (Model, Cmd Msg)
init =
  Model initialColor [] ! []


-- subscriptions


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.batch [
    AnimationFrame.diffs Tick 
  ]

-- view


view : Model -> Html Msg
view model =
  p [] [text "hi"]


-- update 


type Msg 
  = NoOp
  | Tick Time

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case Debug.log "msg" msg of
    NoOp -> model ! []
    Tick diff -> model ! []



