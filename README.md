# The Neverhood

[The Neverhood](https://en.wikipedia.org/wiki/The_Neverhood) Game Dockerized.

## How to run

If this project does not get deleted from docker hub (Which it probably will) You can just Clone this project and run `03-run.sh` file on your computer. It only works on linux and mac (Tested on linux).

If the docker image is removed from the docker hub then you will need to build it yourself.

## How to build

Oh boy... That's a long story.

But basically you would need to download the [Neverhood.iso](https://www.myabandonware.com/game/the-neverhood-451#download) and place it in the root directory of this project.

Then you need to run `01-build.sh` and configure wine when it asks you to. (Just select windows 95 and then click OK)

After that is done, **DON'T** close the window. Instead open another one and run the `02-commit.sh`.

Now you may use the `03-run.sh` to run the game.


## License

[WTFPL](http://www.wtfpl.net/)
