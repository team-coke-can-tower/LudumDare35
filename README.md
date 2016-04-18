#LudumDare35 - Tessellate

An entry for Ludum Dare 35 Game Jam, with theam "Shape Shifter"

## Screenshots

![Game Play shreenshot 1](https://cloud.githubusercontent.com/assets/6304200/14623060/a246762e-05c6-11e6-91e0-ad54331a5539.png)

![Game Play shreenshot 2](https://cloud.githubusercontent.com/assets/6304200/14623104/0e005696-05c7-11e6-943f-1b0cf1431ae7.png)

![Main Menu screenshot](https://cloud.githubusercontent.com/assets/6304200/14623071/b79b8ae6-05c6-11e6-80e5-ed2a60f0421e.png)

![Pause Screen screenshot](https://cloud.githubusercontent.com/assets/6304200/14623092/ecdf5c14-05c6-11e6-92ee-5fec1eac46d6.png)

## Description

TODO:

## How to play

### Aim

The aim of the game is to get the most points by gaining shapes.

### Controls

- Use WSAD for movement up, down left and right the screen and the mouse pointer to adjust the rotation for your player
- To shoot all your triangles, use the left mouse button
- To make all your rectangles emit damage, press the right mouse button

### Enemy AI

When you destroy enough triangles and squares, you gain them into your object and gain their attacks. Bombs destroy large areas of the shape when you hit them and you do not gain anything when you collide with them. Pentagons heal the area that they collide with to full health.

## Source notes

To get the code, just clone this repository:

```bash
git clone git@github.com:ThomasHickman/LudumDare35.git
```

The assets in this game-jam are hosted in Google Drive:
https://drive.google.com/folderview?id=0B3DdC1eaTiECYzRuS0pIYVlHcFE&usp=sharing

If you want to run the game in gamemaker with the assets, you will need to load some folders from Google Drive into the main folder created by git (by either copying these folders, or creating symlinks (`mklink /D` in windows)).

The mappings that you will need to configure are as follows:

| Google Drive folder location | Folder to link to
| ---                          | ---
| other-assets                 | other-assets
| images                       | sprites/images
| background_images            | background/images
| sounds_music                 | sound/audio
