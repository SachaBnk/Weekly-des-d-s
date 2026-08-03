#import "player_infos.typ" : player_infos

#set page(flipped: true, margin:2em)
#set page(background: image("assets/bg.png"), fill:black)

#let nb_rows = 2
#let nb_cols = 5

#let cell_content = ()
#for (attendee) in player_infos{
  let liste_table = ()
  // nom du joueur 
  liste_table.push(align(center)[#text(white, 2em)[#attendee.name]])

  // personnages
  for (c) in attendee.characters{
    liste_table.push(align(center)[#image("assets/character_icons/"+c+".png", height:100%)])
  }
  cell_content.push(table(stroke:none, rows:(1fr), columns: (1fr), ..liste_table))
}


#grid(
  rows: (50%,50%),
  columns: (20%, 20%, 20%, 20%, 20%),
  // stroke: 0.5pt,
  inset: 2em,
  ..cell_content
  )

