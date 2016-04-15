#LudumDare35

An entry for Ludum Dare 35 Game Jam

## Development

The assets in this game-jam are linked using a Google Drive. To load them into the correct place, you must use symlinks, as below, to do this, see below:

 - First clone the repository into the correct location

```bash
git clone git@github.com:ThomasHickman/LudumDare35.git
```

 - Open Command Prompt in administator mode (`Ctrl-X -> Command Prompt` for Windows 10) then:
```bash
cd <GAME_MAKER_PROJECT_FOLDER>
mklink other-assets <PATH_TO_GOOGLE_DRIVE_FOLDER>/other-assets
cd sprites
mklink images <PATH_TO_GOOGLE_DRIVE_FOLDER>/images
```

Replacing `<GAME_MAKER_PROJECT_FOLDER>` with the location of the GameMaker project folder and `<PATH_TO_GOOGLE_DRIVE_FOLDER>` with the location of the Google Drive folder
