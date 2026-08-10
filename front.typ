#import "player_infos.typ" : player_infos

#set page(flipped: true, margin:0em)
#set page(background: image("assets/bg.png"), fill:black)

#let nb_rows = 2
#let nb_cols = 5




#let cell_list = ()
#for (attendee) in player_infos{
  let cell_content = ()


  // saut de ligne au début
  cell_content.push[]

  // nom du joueur 

  // on décide de la taille de police en fonction de la longueur du pseudo (seuils arbitraires trouvés par moi)
  let taille = 2em
  if attendee.name.len() >= 14 {taille = 1.5em}
  if attendee.name.len() >= 19 {taille = 1em}
  if attendee.name.len() > 35 {panic("pseudo trop long\n\n>>> \""+attendee.name+"\" \n\n(plus de 34 caractères)")}

  // on ajoute a la liste
  cell_content.push(align(center)[
      #text(font: "Impact", white, size: taille)[#attendee.name]
  ])


  // personnages
  for (i) in range(6){
    cell_content.push(align(center)[#table(rows:1, columns: 2, stroke: none,
      image("assets/dice/d"+str(i+1)+".png", height: 100%),
      image("assets/character_icons/"+attendee.characters.at(i)+".png", height:100%))
      ])
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