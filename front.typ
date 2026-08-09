#import "player_infos.typ" : player_infos

#set page(flipped: true, margin:2em)
#set page(background: image("assets/bg.png"), fill:black)

#let nb_rows = 2
#let nb_cols = 5

#let cell_list = ()




#for (attendee) in player_infos{
  let cell_content = ()
  // nom du joueur 
  cell_content.push(align(center)[#text(font: "Impact", white, 2em)[#attendee.name]])

  // personnages
  for (i) in range(6){
    cell_content.push(align(center)[#table(rows:1, columns: 2, stroke: none,
      image("assets/dice/d"+str(i+1)+".png", height: 100%),
      image("assets/character_icons/"+attendee.characters.at(i)+".png", height:100%))
      ])
  }

  cell_list.push(table(
    stroke:none, 
    inset:0pt, 
    rows:(1fr), 
    columns: (1fr),
    row-gutter: 5pt, 
    ..cell_content))
}




#grid(
  rows: (50%,50%),
  columns: (20%, 20%, 20%, 20%, 20%),
  // stroke: 0.5pt,
  inset: 2em,
  ..cell_list
  )