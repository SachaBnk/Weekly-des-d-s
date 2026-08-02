#import "player_infos.typ" : player_infos

#set page(flipped: true, margin:2em)

#table(
  columns: (20%, 20%, 20%, 20%, 20%),
  rows: (50%, 50%),
  
  for (attendee) in player_infos [
    #attendee.tag :
    #for (c) in attendee.characters [
        #image("assets/character_icons/"+ c + ".png", height:3em)
    ]
    \
]
)

