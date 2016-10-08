module Style
    exposing
        ( Model
        , Weak
        , Element
        , Colors
        , Position
        , Shadow
        , Transition
        , Visibility
        , TextDecoration
        , Alignment
        , VerticalAlignment
        , Transform
        , Filter
        , Border
        , BorderStyle
        , Table
        , Flow
        , Layout
        , Textual
        , Text
        , Anchor
        , RelativeTo
        , Repeat
        , flowUp
        , flowDown
        , flowRight
        , flowLeft
        , textLayout
        , tableLayout
        , top
        , bottom
        , left
        , right
        , all
        , topBottom
        , leftRight
        , allButTop
        , allButLeft
        , allButRight
        , allButBottom
        , normal
        , pre
        , preWrap
        , preLine
        , noWrap
        , alignLeft
        , alignRight
        , justify
        , justifyAll
        , alignCenter
        , verticalCenter
        , verticalStretch
        , alignTop
        , alignBottom
        , topLeft
        , bottomRight
        , topRight
        , bottomLeft
        , currentPosition
        , parent
        , screen
        , hidden
        , visible
        , opacity
        , transparency
        , auto
        , px
        , percent
        , solid
        , dotted
        , dashed
        , floatLeft
        , floatRight
        , transitionTo
        , scale
        , translate
        , rotate
        , repeat
        , repeatX
        , repeatY
        , space
        , round
        , noRepeat
        , underline
        , overline
        , strike
        , filterUrl
        , blur
        , brightness
        , contrast
        , grayscale
        , hueRotate
        , invert
        , opacityFilter
        , saturate
        , sepia
        , bold
        , light
        , bolder
        , animation
        )

{-| A different take on styling.



-}

import Html
import Html.Attributes
import Animation
import Style.Model
import Time exposing (Time)


{-|
-}
type alias Model =
    Style.Model.Model


{-|
-}
type alias Weak =
    Style.Model.Weak


{-|
-}
type alias Element msg =
    Style.Model.Element msg


{-|
-}
type alias Colors =
    Style.Model.Colors


{-|
-}
type alias Shadow =
    Style.Model.Shadow


{-|
-}
type alias Position =
    Style.Model.Position


{-|
-}
type alias Transition =
    Style.Model.Transition


{-|
-}
type alias Visibility =
    Style.Model.Visibility


{-|
-}
type alias TextDecoration =
    Style.Model.TextDecoration


{-|
-}
type alias Alignment =
    Style.Model.Alignment


{-|
-}
type alias VerticalAlignment =
    Style.Model.VerticalAlignment


{-|
-}
type alias Transform =
    Style.Model.Transform


{-|
-}
type alias BorderStyle =
    Style.Model.BorderStyle


{-|
-}
type alias Table =
    Style.Model.Table


{-|
-}
type alias Flexible =
    Style.Model.Flexible


{-|
-}
type alias Layout =
    Style.Model.Layout


{-|
-}
type alias Textual =
    Style.Model.Textual


{-|
-}
type alias Length =
    Style.Model.Length


{-|
-}
type alias Anchor =
    Style.Model.Anchor


{-|
-}
type alias RelativeTo =
    Style.Model.RelativeTo


{-|
-}
type alias Floating =
    Style.Model.Floating


{-|
-}
type alias Repeat =
    Style.Model.Repeat


{-|
-}
type alias Border =
    Style.Model.Border


{-|
-}
type alias Text =
    Style.Model.Text


{-| -}
type alias Whitespace =
    Style.Model.Whitespace


{-|
-}
type alias Filter =
    Style.Model.Filter


{-|
-}
type alias Animation =
    Style.Model.Animation


(=>) =
    (,)


{-| -}
repeatX : Repeat
repeatX =
    Style.Model.RepeatX


{-| -}
repeatY : Repeat
repeatY =
    Style.Model.RepeatY


{-| -}
repeat : Repeat
repeat =
    Style.Model.Repeat


{-| -}
space : Repeat
space =
    Style.Model.Space


{-| -}
round : Repeat
round =
    Style.Model.Round


{-| -}
noRepeat : Repeat
noRepeat =
    Style.Model.NoRepeat


{-| -}
transitionTo : Model -> Maybe Transition
transitionTo model =
    Just (Style.Model.Transition model)


{-|

-}
floatLeft : Floating
floatLeft =
    Style.Model.FloatLeft


{-|

-}
floatRight : Floating
floatRight =
    Style.Model.FloatRight


{-| -}
screen : RelativeTo
screen =
    Style.Model.Screen


{-| -}
parent : RelativeTo
parent =
    Style.Model.Parent


{-| -}
currentPosition : RelativeTo
currentPosition =
    Style.Model.CurrentPosition


{-| -}
topLeft : Anchor
topLeft =
    Style.Model.AnchorTop => Style.Model.AnchorLeft


{-| -}
topRight : Anchor
topRight =
    Style.Model.AnchorTop => Style.Model.AnchorRight


{-| -}
bottomLeft : Anchor
bottomLeft =
    Style.Model.AnchorBottom => Style.Model.AnchorLeft


{-| -}
bottomRight : Anchor
bottomRight =
    Style.Model.AnchorBottom => Style.Model.AnchorRight


{-| -}
px : Float -> Length
px x =
    Style.Model.Px x


{-| -}
percent : Float -> Length
percent x =
    Style.Model.Percent x


{-| -}
auto : Length
auto =
    Style.Model.Auto


{-| -}
textLayout : Textual -> Layout
textLayout t =
    Style.Model.TextLayout t


{-| -}
tableLayout : Table -> Layout
tableLayout t =
    Style.Model.TableLayout t


type alias Flow =
    { wrap : Bool
    , spacing : ( Float, Float, Float, Float )
    , horizontal : Alignment
    , vertical : VerticalAlignment
    }


{-| -}
flowDown : Flow -> Layout
flowDown { wrap, spacing, horizontal, vertical } =
    Style.Model.FlexLayout
        { go = Style.Model.Down
        , wrap = wrap
        , spacing = spacing
        , horizontal = horizontal
        , vertical = vertical
        }


{-| -}
flowUp : Flow -> Layout
flowUp { wrap, spacing, horizontal, vertical } =
    Style.Model.FlexLayout
        { go = Style.Model.Up
        , wrap = wrap
        , spacing = spacing
        , horizontal = horizontal
        , vertical = vertical
        }


{-| -}
flowRight : Flow -> Layout
flowRight { wrap, spacing, horizontal, vertical } =
    Style.Model.FlexLayout
        { go = Style.Model.Right
        , wrap = wrap
        , spacing = spacing
        , horizontal = horizontal
        , vertical = vertical
        }


{-| -}
flowLeft : Flow -> Layout
flowLeft { wrap, spacing, horizontal, vertical } =
    Style.Model.FlexLayout
        { go = Style.Model.Left
        , wrap = wrap
        , spacing = spacing
        , horizontal = horizontal
        , vertical = vertical
        }


{-| -}
normal : Whitespace
normal =
    Style.Model.Normal


{-| -}
pre : Whitespace
pre =
    Style.Model.Pre


{-| -}
preWrap : Whitespace
preWrap =
    Style.Model.PreWrap


{-| -}
preLine : Whitespace
preLine =
    Style.Model.PreLine


{-| -}
noWrap : Whitespace
noWrap =
    Style.Model.NoWrap


{-| -}
alignTop : VerticalAlignment
alignTop =
    Style.Model.AlignTop


{-| -}
alignBottom : VerticalAlignment
alignBottom =
    Style.Model.AlignBottom


{-| -}
verticalStretch : VerticalAlignment
verticalStretch =
    Style.Model.VStretch


{-| -}
verticalCenter : VerticalAlignment
verticalCenter =
    Style.Model.VCenter


{-| -}
justify : Alignment
justify =
    Style.Model.Justify


{-| -}
justifyAll : Alignment
justifyAll =
    Style.Model.JustifyAll


{-| -}
alignLeft : Alignment
alignLeft =
    Style.Model.AlignLeft


{-| -}
alignRight : Alignment
alignRight =
    Style.Model.AlignRight


{-| -}
alignCenter : Alignment
alignCenter =
    Style.Model.AlignCenter


{-| -}
underline : TextDecoration
underline =
    Style.Model.Underline


{-| -}
overline : TextDecoration
overline =
    Style.Model.Overline


{-| -}
strike : TextDecoration
strike =
    Style.Model.Strike


{-| -}
bold : Maybe Float
bold =
    Just 700


{-| -}
light : Maybe Float
light =
    Just 300


{-| -}
bolder : Maybe Float
bolder =
    Just 900


{-| -}
all : a -> ( a, a, a, a )
all x =
    ( x, x, x, x )


{-| -}
left : Float -> ( Float, Float, Float, Float )
left x =
    ( 0, 0, 0, x )


{-| -}
right : Float -> ( Float, Float, Float, Float )
right x =
    ( 0, x, 0, 0 )


{-| -}
top : Float -> ( Float, Float, Float, Float )
top x =
    ( x, 0, 0, 0 )


{-| -}
bottom : Float -> ( Float, Float, Float, Float )
bottom x =
    ( 0, 0, x, 0 )


{-| -}
topBottom : Float -> ( Float, Float, Float, Float )
topBottom x =
    ( x, 0, x, 0 )


{-| -}
leftRight : Float -> ( Float, Float, Float, Float )
leftRight x =
    ( 0, x, 0, x )


{-| -}
allButRight : Float -> ( Float, Float, Float, Float )
allButRight x =
    ( x, 0, x, x )


{-| -}
allButLeft : Float -> ( Float, Float, Float, Float )
allButLeft x =
    ( x, x, x, 0 )


{-| -}
allButTop : Float -> ( Float, Float, Float, Float )
allButTop x =
    ( 0, x, x, x )


{-| -}
allButBottom : Float -> ( Float, Float, Float, Float )
allButBottom x =
    ( x, x, 0, x )


{-| -}
solid : BorderStyle
solid =
    Style.Model.Solid


{-| -}
dashed : BorderStyle
dashed =
    Style.Model.Dashed


{-| -}
dotted : BorderStyle
dotted =
    Style.Model.Dotted


{-|
-}
hidden : Visibility
hidden =
    Style.Model.Hidden


{-|
-}
visible : Visibility
visible =
    Style.Model.Transparent 0


{-| A Value between 0 and 1
-}
transparency : Float -> Visibility
transparency x =
    Style.Model.Transparent x


{-| A Value between 0 and 1
-}
opacity : Float -> Visibility
opacity x =
    Style.Model.Transparent (1.0 - x)


{-| Units always given as radians.

Use `x * deg` if you want to use a different set of units.
-}
rotate : Float -> Float -> Float -> Transform
rotate x y z =
    Style.Model.Rotate x y z


{-| Units always always as pixels
-}
translate : Float -> Float -> Float -> Transform
translate x y z =
    Style.Model.Translate x y z


{-| -}
scale : Float -> Float -> Float -> Transform
scale x y z =
    Style.Model.Scale x y z


{-| -}
filterUrl : String -> Filter
filterUrl s =
    Style.Model.FilterUrl s


{-| -}
blur : Float -> Filter
blur x =
    Style.Model.Blur x


{-| -}
brightness : Float -> Filter
brightness x =
    Style.Model.Brightness x


{-| -}
contrast : Float -> Filter
contrast x =
    Style.Model.Contrast x


{-| -}
grayscale : Float -> Filter
grayscale x =
    Style.Model.Grayscale x


{-| -}
hueRotate : Float -> Filter
hueRotate x =
    Style.Model.HueRotate x


{-| -}
invert : Float -> Filter
invert x =
    Style.Model.Invert x


{-| -}
opacityFilter : Float -> Filter
opacityFilter x =
    Style.Model.Opacity x


{-| -}
saturate : Float -> Filter
saturate x =
    Style.Model.Saturate x


{-| -}
sepia : Float -> Filter
sepia x =
    Style.Model.Sepia x



-- CSS Animations


animation :
    { duration : Time
    , easing : String
    , repeat : Float
    , steps : List ( Float, Weak )
    }
    -> Maybe Animation
animation anim =
    Just <| Style.Model.Animation anim
