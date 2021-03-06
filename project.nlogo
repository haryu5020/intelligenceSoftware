
breed [ people person ]
breed [ companies company ]
breed [ schools school ]
breed [ apartments house ]
breed [ stores store ]


to setup
  clear-all
  setup-station 3 3
  setup-company
  setup-people
  draw-map
  reset-ticks
end

to go
  ask people [ move ]
  build-company
  build-apartment
  build-school
  build-store
  population

  tick
end

to setup-people
  create-people 5
  [
    setxy random-xcor random-ycor
    set shape "person"
    set color black
  ]

end

to draw-map
  ask patches [
       set pcolor green - random-float 0.5  ; and the grass is green
  ]
end

to setup-station [ x y ]
  ask patches with [pxcor = x and pycor = y]
  [
    sprout 1
    [
     set color white
     set shape "subway Station"
     set size 3
    ]
  ]
end

to setup-company
  create-companies 1
  [
    set xcor 10
    set ycor 10
    setxy xcor ycor
    set size 3
    set color gray
    set shape "company"
  ]
end

to move
  rt random 50
  lt random 50
  fd 1
end

to population
  if count people < max-people [
    create-people 1
    [
      set color black
      set shape "person"
      setxy 3 2
    ]
  ]
end

to build-company
    if ((count people) mod mod-people-for-company) = 0 [
      create-companies 1
      [
        set size 3
        set color gray
        set shape "company"
        setxy random-xcor random-ycor
      ]
    ]
end

to build-apartment
    if ((count people) mod mod-people-for-apartment) = 0 [
      create-apartments 1
      [
        set size 5
        set color gray
        set shape "apartment"
        setxy random-xcor random-ycor
      ]
    ]
end

to build-school
    if ((count people) mod mod-people-for-school) = 0 [
      create-schools 1
      [
        set size 3
        set color gray
        set shape "school"
        setxy random-xcor random-ycor
      ]
    ]

end

to build-store
    if ((count people) mod mod-people-for-store ) = 0 [
      create-stores 1
      [
        set size 3
        set color white
        set shape "store"
        setxy random-xcor random-ycor
      ]
    ]
end
@#$#@#$#@
GRAPHICS-WINDOW
264
10
935
682
-1
-1
13.0
1
10
1
1
1
0
0
0
1
-25
25
-25
25
1
1
1
ticks
30.0

BUTTON
175
369
250
402
setup
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
187
413
250
446
go
go
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
24
370
81
415
people
count people
17
1
11

MONITOR
90
370
162
415
company
count companies
17
1
11

MONITOR
112
425
169
470
school
count schools
17
1
11

MONITOR
23
425
101
470
apartment
count apartments
17
1
11

MONITOR
26
482
83
527
store
count stores
17
1
11

SLIDER
11
188
229
221
max-people
max-people
1000
5000
1000.0
1
1
NIL
HORIZONTAL

SLIDER
11
222
229
255
mod-people-for-company
mod-people-for-company
1
100
13.0
1
1
NIL
HORIZONTAL

SLIDER
11
290
229
323
mod-people-for-school
mod-people-for-school
0
300
180.0
1
1
NIL
HORIZONTAL

SLIDER
11
256
229
289
mod-people-for-apartment
mod-people-for-apartment
0
200
90.0
1
1
NIL
HORIZONTAL

SLIDER
11
325
229
358
mod-people-for-store
mod-people-for-store
0
100
35.0
1
1
NIL
HORIZONTAL

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

apartment
false
0
Rectangle -7500403 true true 150 30 255 240
Rectangle -16777216 true false 105 60 210 255
Rectangle -7500403 true true 60 90 165 270
Rectangle -16777216 true false 75 105 105 120
Rectangle -16777216 true false 75 135 105 150
Rectangle -16777216 true false 75 165 105 180
Rectangle -16777216 true false 120 105 150 120
Rectangle -16777216 true false 120 135 150 150
Rectangle -16777216 true false 120 165 150 180
Rectangle -16777216 true false 75 195 105 210
Rectangle -16777216 true false 120 195 150 210
Rectangle -16777216 true false 75 225 90 240
Rectangle -16777216 true false 135 225 150 240
Rectangle -16777216 true false 105 225 120 270
Rectangle -16777216 true false 165 45 195 60
Rectangle -16777216 true false 210 45 240 60
Rectangle -16777216 true false 210 75 240 90
Rectangle -16777216 true false 210 105 240 120
Rectangle -16777216 true false 210 135 240 150
Rectangle -16777216 true false 210 165 240 180
Rectangle -16777216 true false 225 195 240 210
Polygon -16777216 false false 60 270 60 90 165 90 165 270 60 270
Polygon -16777216 false false 150 30 150 60 210 60 210 240 255 240 255 30 150 30

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

company
false
0
Rectangle -7500403 true true 75 30 225 270
Rectangle -16777216 true false 135 225 165 270
Rectangle -16777216 true false 90 180 120 210
Rectangle -16777216 true false 135 180 165 210
Rectangle -16777216 true false 180 180 210 210
Rectangle -16777216 true false 90 135 120 165
Rectangle -16777216 true false 135 135 165 165
Rectangle -16777216 true false 180 135 210 165
Rectangle -16777216 true false 90 90 120 120
Rectangle -16777216 true false 135 90 165 120
Rectangle -16777216 true false 180 90 210 120
Rectangle -16777216 true false 90 45 120 75
Rectangle -16777216 true false 135 45 165 75
Rectangle -16777216 true false 180 45 210 75
Line -16777216 false 75 30 75 270
Line -16777216 false 75 30 225 30
Line -16777216 false 225 30 225 270
Line -16777216 false 75 270 225 270

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

house colonial
false
0
Rectangle -7500403 true true 270 75 285 255
Rectangle -7500403 true true 45 135 270 255
Rectangle -16777216 true false 124 195 187 256
Rectangle -16777216 true false 60 195 105 240
Rectangle -16777216 true false 60 150 105 180
Rectangle -16777216 true false 210 150 255 180
Line -16777216 false 270 135 270 255
Polygon -7500403 true true 30 135 285 135 240 90 75 90
Line -16777216 false 30 135 285 135
Line -16777216 false 255 105 285 135
Line -7500403 true 154 195 154 255
Rectangle -16777216 true false 210 195 255 240
Rectangle -16777216 true false 135 150 180 180
Line -16777216 false 75 90 240 90
Line -16777216 false 30 135 75 90
Line -16777216 false 45 135 45 255
Line -16777216 false 45 255 285 255
Line -7500403 true 285 75 285 255
Line -7500403 true 270 75 285 75
Line -16777216 false 240 90 285 135
Line -16777216 false 270 75 285 75
Line -16777216 false 285 75 285 255
Line -16777216 false 270 75 285 75
Line -16777216 false 270 75 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

school
false
0
Rectangle -7500403 true true 30 135 270 240
Rectangle -7500403 true true 105 60 195 135
Rectangle -16777216 true false 45 150 75 180
Rectangle -16777216 true false 90 150 120 180
Rectangle -16777216 true false 135 150 165 180
Rectangle -16777216 true false 180 150 210 180
Rectangle -16777216 true false 225 150 255 180
Rectangle -16777216 true false 45 195 75 225
Rectangle -16777216 true false 90 195 120 225
Rectangle -16777216 true false 180 195 210 225
Rectangle -16777216 true false 225 195 255 225
Rectangle -16777216 true false 135 195 165 240
Circle -16777216 true false 120 75 60
Line -16777216 false 30 135 30 240
Line -16777216 false 30 135 105 135
Line -16777216 false 105 60 105 135
Line -16777216 false 105 60 195 60
Line -16777216 false 195 60 195 135
Line -16777216 false 195 135 270 135
Line -16777216 false 270 135 270 240
Line -16777216 false 30 240 270 240

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

store
false
0
Rectangle -1 true false 60 120 225 240
Rectangle -13791810 true false 165 165 210 240
Rectangle -13791810 true false 75 165 135 210
Polygon -2674135 true false 45 150 60 90 75 90 60 150 45 150
Line -16777216 false 60 150 75 90
Line -16777216 false 60 90 75 90
Line -16777216 false 60 90 45 150
Line -16777216 false 75 90 225 90
Line -16777216 false 90 75 75 135
Line -16777216 false 105 75 90 135
Line -16777216 false 75 135 90 135
Line -16777216 false 120 75 120 135
Line -16777216 false 135 75 135 135
Line -16777216 false 120 135 135 135
Line -16777216 false 150 75 150 135
Line -16777216 false 165 75 165 135
Line -16777216 false 150 135 165 135
Line -16777216 false 180 75 195 135
Line -16777216 false 195 75 210 135
Line -16777216 false 195 135 210 135
Line -16777216 false 210 75 225 135
Line -16777216 false 225 90 240 150
Line -16777216 false 225 150 240 150
Rectangle -6459832 true false 45 240 240 255
Line -6459832 false 165 165 165 240
Polygon -6459832 false false 165 165 210 165 210 240 165 240
Polygon -6459832 false false 75 165 75 165 135 165 135 210 75 210 75 165
Rectangle -2674135 true false 60 75 225 90
Polygon -1 true false 60 150 75 90 90 90 75 150 60 150
Polygon -2674135 true false 90 90 75 150 90 150 105 90 90 90
Polygon -1 true false 105 90 120 90 120 150 90 150 105 90
Polygon -2674135 true false 120 90 120 150 135 150 135 90 120 90
Polygon -1 true false 135 90 150 90 150 150 135 150 135 90
Polygon -1 true false 165 90 165 150 195 150 195 150 180 90 165 90
Polygon -1 true false 195 90 210 150 225 150 210 90 195 90
Polygon -2674135 true false 150 90 150 150 165 150 165 90 150 90
Polygon -2674135 true false 180 90 195 150 210 150 195 90 180 90
Polygon -2674135 true false 210 90 225 150 240 150 225 90 210 90
Line -7500403 true 60 90 225 90

subway station
false
15
Rectangle -7500403 true false 105 180 105 180
Rectangle -7500403 true false 225 90 240 225
Rectangle -7500403 true false 60 90 75 225
Rectangle -6459832 true false 75 195 225 225
Rectangle -7500403 true false 60 45 240 90
Line -16777216 false 60 45 60 225
Line -16777216 false 60 90 240 90
Line -16777216 false 240 45 240 225
Line -16777216 false 60 45 240 45
Line -16777216 false 90 180 210 180
Rectangle -6459832 true false 90 180 210 195
Line -16777216 false 75 195 75 195
Line -16777216 false 75 195 225 195
Polygon -16777216 false false 75 195 105 165 195 165 225 195 75 195
Rectangle -6459832 true false 105 165 195 180
Line -16777216 false 105 180 195 180
Line -16777216 false 90 180 90 195
Line -16777216 false 105 165 105 180
Line -16777216 false 195 165 195 180
Line -16777216 false 210 180 210 195
Line -16777216 false 90 180 210 180
Line -16777216 false 105 165 150 165
Line -16777216 false 150 165 195 165
Polygon -13791810 true false 75 90 75 195 105 165 105 90 75 90
Polygon -13791810 true false 195 165 225 195 225 90 195 90 195 165
Polygon -6459832 true false 90 180 90 195 75 195 90 180
Polygon -6459832 true false 90 180 105 180 105 165 90 180
Polygon -6459832 true false 195 165 210 180 195 180 195 165 225 195 210 195 210 180
Line -16777216 false 195 165 195 180
Line -16777216 false 195 165 225 195
Line -16777216 false 105 165 75 195
Line -16777216 false 210 180 210 195
Line -16777216 false 75 90 75 225
Line -16777216 false 225 90 225 225
Line -16777216 false 60 90 225 90
Line -16777216 false 105 90 105 165
Line -16777216 false 195 90 195 180
Rectangle -1 true true 105 90 195 165
Line -16777216 false 105 90 150 90
Line -16777216 false 150 90 195 90
Line -16777216 false 105 90 105 165

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

train passenger car
false
0
Polygon -7500403 true true 15 206 15 150 15 135 30 120 270 120 285 135 285 150 285 206 270 210 30 210
Circle -16777216 true false 240 195 30
Circle -16777216 true false 210 195 30
Circle -16777216 true false 60 195 30
Circle -16777216 true false 30 195 30
Rectangle -16777216 true false 30 140 268 165
Line -7500403 true 60 135 60 165
Line -7500403 true 60 135 60 165
Line -7500403 true 90 135 90 165
Line -7500403 true 120 135 120 165
Line -7500403 true 150 135 150 165
Line -7500403 true 180 135 180 165
Line -7500403 true 210 135 210 165
Line -7500403 true 240 135 240 165
Rectangle -16777216 true false 5 195 19 207
Rectangle -16777216 true false 281 195 295 207
Rectangle -13345367 true false 15 165 285 173
Rectangle -2674135 true false 15 180 285 188

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.0.1
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
