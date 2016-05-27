#Tessellate

A fast-paced adrenaline-pumping arcade shooter, Tessellate dares to take the Ludum Dare 35's theme - 'Shapeshift' - literally.

Play as a small but strong triangular CPU and make your way through an 80's tech themed shoot-em-up as you face an endless stream of opponent shapes. What makes your little triangle so special? Why, the power to grow more shapes on yourself as you crush your foes, of course! Mow down hordes of enemies, avoid bombs, and gain power as you assimilate your enemies and go from a mere triangle to a thousand-sided shooting machine!

## How to play

### Aim

The aim of the game is to get the most points by gaining shapes.

### Controls

- Use WASD for movement up, down left and right the screen
- Move mouse pointer to adjust the rotation for your player
- To shoot bullets from all your triangles, use the left mouse button
- To make all your rectangles emit damage, press the right mouse button
- Pause with 'Escape' key

### Enemy AI

When you destroy enough triangles and squares, you gain them into your object and gain their attacks. Bombs destroy large areas of the shape when you hit them and you do not gain anything when you collide with them. Pentagons heal the area that they collide with to full health.

## Screenshots

![Game Play screenshot 1](https://cloud.githubusercontent.com/assets/6304200/14623060/a246762e-05c6-11e6-91e0-ad54331a5539.png)

![Game Play screenshot 2](https://cloud.githubusercontent.com/assets/6304200/14623104/0e005696-05c7-11e6-943f-1b0cf1431ae7.png)

![Main Menu screenshot](https://cloud.githubusercontent.com/assets/6304200/14623071/b79b8ae6-05c6-11e6-80e5-ed2a60f0421e.png)

![Pause Screen screenshot](https://cloud.githubusercontent.com/assets/6304200/14623092/ecdf5c14-05c6-11e6-92ee-5fec1eac46d6.png)


## Source notes

To get the code, just clone this repository:

```bash
git clone git@github.com:ThomasHickman/LudumDare35.git
```

The assets in this game-jam are hosted in Google Drive:
https://drive.google.com/folderview?id=0B3DdC1eaTiECYzRuS0pIYVlHcFE&usp=sharing

If you want to run the game in GameMaker with the assets, you will need to load some folders from Google Drive into the main folder created by git (by either copying these folders, or creating symlinks (`mklink /D` in windows)).

The mappings that you will need to configure are as follows:

| Google Drive folder location | Folder to link to
| ---                          | ---
| other-assets                 | other-assets
| images                       | sprites/images
| background_images            | background/images
| sounds_music                 | sound/audio

## Credits

* Thomas Hickman (ThomasHickman)
* Jack Romo (jackromo)
* Rachel Byrom (turquoiseted)
* Paul Dunn (Loroseco)
