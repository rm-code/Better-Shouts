# Better Shouts

__Better Shouts__ is a mod for [Project Zomboid](http://projectzomboid.com/), which overrides the vanilla shouting mechanics and adds a whisper function.

## Overview

- Adds custom shouts
- Adds whispering, which will be used if the player is sneaking 
- Removed vanilla shouts
- [Tiny AVC](https://github.com/blind-coder/pz-tiny_avc) Support

![preview](https://raw.githubusercontent.com/rm-code/better-shouts/master/RMBetterShouts/poster.png)

## Shouting & Whispering

Shouting in this mod works similar to the shouting in the vanilla game, but it adds a few more variations of things your character says.

Whispering works just like shouting and will be used when the player is sneaking. This can be used to only attract zombies who are close by.

## Adding custom Shouts

Adding custom shout and whisper texts is quite easy. The files containing the default text are located in the ```RMBetterShouts/text``` folder.

Add two new files called ```custom_shouts.txt``` and ```custom_whispers.txt``` to the ```RMBetterShouts/text``` folder. These files will be used by the mod to replace the default shouts the next time you load the game.

Now open the newly created files and add a bunch of new shouts:

```
# Example for custom_shouts.txt
# Comments start with # and will be ignored when the file is loaded.
# Empty lines will also be ignored.

# Misc
Supercalifragilisticexpialidocious

# Dovahkiin Shouts
Fus Ro Dah
Od Ah Viing
Laas Yah Nir
Zul Mey Gut
Wuld Nah Kest

# More Shouts
...

```

Of course you could simply edit the base files, but these will be overriden when the mod updates and your changes will be lost. By keeping your custom shouts in separate text files this won't happen.
