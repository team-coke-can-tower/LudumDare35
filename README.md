#LudumDare35 - Tessellate

An entry for Ludum Dare 35 Game Jam, with theam "Shape Shifter"

## Screenshots

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
