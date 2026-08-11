# Weekly-des-dés

Ce projet a pour but d'être utilisé par l'association [Smash Association Loire Touraine](https://discord.gg/7A487aVQpF) (SALT) lors des weeklies des dés. La weekly des dés est une idée de [Lero](https://x.com/leror0) : au début de l'évènement on choisit six personnages, et on les associe chacun à un nombre entre 1 et 6. Au début de chaque match, le dé choisit quels personnages sont joués.

Le but de ce projet est donc de générer rapidement des cartes des personnages à imprimer pour tous les joueurs.

[<img width="138" height="246" alt="Capture d’écran 2026-08-11 à 23 12 19" src="https://github.com/user-attachments/assets/ddfd83c6-9452-4102-aec3-84fb07b65848" />](https://www.supermajor.gg/ultimate/player/Lero?id=S2464181) [<img width="140" height="246" alt="Capture d’écran 2026-08-11 à 21 29 07" src="https://github.com/user-attachments/assets/04452224-e6a9-46c3-bc10-d07e19420108" />](https://www.supermajor.gg/ultimate/player/Thao?id=S4568057) [<img width="140" height="246" alt="Capture d’écran 2026-08-11 à 21 28 43" src="https://github.com/user-attachments/assets/6a5ac574-d478-423d-84c5-34c91a188169" />](https://www.supermajor.gg/ultimate/player/Galgar?id=S3259966) [<img width="140" height="246" alt="Capture d’écran 2026-08-11 à 21 29 46" src="https://github.com/user-attachments/assets/d6e73fd4-9b0c-4675-92f1-45a9c92ebade" />](https://www.supermajor.gg/ultimate/player/Monki?id=S3228975) [<img width="140" height="246" alt="Capture d’écran 2026-08-11 à 21 30 34" src="https://github.com/user-attachments/assets/dcc8c4ed-e351-4b69-89c0-31924ff2d73b" />](https://www.supermajor.gg/ultimate/player/Lief?id=S551722)

## Dépendances 

Ce script est entièrement réalisé à l'aide du langage [Typst](https://typst.app/), je vais présenter une manière de compiler le pdf final qui utilise le logiciel [VS Code](https://code.visualstudio.com/) (plus agréable à utiliser, et vous devrez dans tous les cas utiliser un éditeur de texte pour modifier le rendu final) et une qui utilise le terminal de commande (rien de compliqué mais peut faire peur si on n'est pas habitué)

## Utiliser le script

### 1. Entrer les informations des participants dans le fichier "player_infos.typ"

Le fichier "player_info.typ" contient la liste des joueurs, pour chaque joueur on doit rentrer son pseudo (```name```), et la liste de ses personnages (```characters```).
Par exemple si je rentre :
```
#let player_infos = (
  name: "WejdenePower",
  characters: (
    "samus",
    "donkey_kong",
    "byleth",
    "mario",
    "captain_falcon",
    "palutena"
  )
)
```

