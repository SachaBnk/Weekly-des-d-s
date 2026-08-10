#import "test_player_infos.typ" : player_infos
#import "@preview/one-liner:0.3.0": fit-to-width, shrink-to-width

#set page(flipped: true, margin:0em)
#set page(background: image("assets/bg.png"), fill:black)

#let nb_rows = 2
#let nb_cols = 5
#let font_color = white



#let cell_list = ()
#for (attendee) in player_infos{
  let cell_content = ()


  // saut de ligne au début
  cell_content.push[]

  // nom du joueur
  cell_content.push(align(center)[
      #block(
        width:70%,
        text(font: "Impact", font_color, 2em)[#shrink-to-width(attendee.name)]
      )
  ])


  // personnages
  for (i) in range(attendee.characters.len()){
    cell_content.push(align(center)[#table(rows:1, columns: 2, stroke: none,
      image("assets/dice/d"+str(i+1)+".png", height: 100%),
      image("assets/character_icons/"+attendee.characters.at(i)+".png", height:100%))
      ])
  }

  // si il manque des personnages on rajoute les lignes manquantes
  for (i) in range(6-attendee.characters.len()){
    cell_content.push[]
  }

  // saut de ligne a la fin 
  cell_content.push[]

  cell_list.push(table(
    stroke:0pt, 
    inset:0pt, 
    rows:(1fr), 
    columns: (1fr), 
    ..cell_content))
}



#grid(
  rows: (50%,50%),
  columns: (20%, 20%, 20%, 20%, 20%),
  stroke: 0.5pt,
  ..cell_list
  )

