# CSCI 265 Initial Project Proposal

## Team name: MacroHard

## Project/product name: 'Cyber' Cyber City

## Members and contact email

 - Alister Lawson, AlisterLawson64@gmail.com *main contact*
 - Bruce Fernandes, bruce2005.ind@gmail.com *secondary contact*
 - Jamie Mano, jamieysabelmano1018@gmail.com
 - Marek Bettzig, bettzig@hotmail.de
 - Nick Biagioni, viud2l_1061684@d2l.viu.ca

## Project Overview

Travel back to the 1980s with a historically inaccurate simulation of an arcade. The product we plan to develop is a virtual space with various interactive features made to emulate a visit to the arcade. It will have game machines that you can physically walk up to and interact with to play recreations of classic arcade games.
To emulate the atmosphere of an arcade back in the good old days there will be several features implemented for the sake of immersion. Non-player Characters will congratulate players for reaching a high score with life-like voice lines such as “Wow player, you are so good at that game!”  there will be non-functioning machines with out-of-order signs, so you can feel what it was like to be frustrated that your favorite game still isn’t fixed.  
Just like a real-life arcade the arcade machines will award players with tickets based on their performance. The arcade will feature a booth to spend those tickets on various items such as new games, collectibles, and powerups.

## Target audience and motivation 
Nanaimo used to have a beloved arcade, but it was closed for good on December 31st, 2012. Where did its customers go? Nowhere! In 2024 there is still no other arcade in the city (VR arcades don’t count) this huge market is so ripe for the picking it’s starting to get moldy.
The product also adds value by being an homage to an important piece of history. Immortalizing the arcade experience onto code allows future generations to appreciate an accurate depiction of a 1980s recreational activity.

## Key features and discussion
As mentioned in the proposal, it would implement, if goes right, a 3D arcade to host games. It would be just single-player games but the thought of multiplayer games is currently being discussed as another option for scaling up. It will include retro and nostalgic games that we used to play back then. 

The environment was created to offer the same experience as it was back then when the arcade was still popular.  An overall breakdown of key features of the programs is listed below:

 - Physical space with interactable objects to represent various features of an arcade.
 - Interacting with the arcade machine will take you to a game.
 - Completing one game will take you back to the arcade and award tickets based on performance.
 - Will have a booth where you can spend the tickets to purchase things.
 - Non-player characters (NPC) that comment on the player's performance and interact with the arcade machines.

### Interactables objects

Arcade machines will be the main attraction to the acrade. When interacted with take you into a minigame that one of the team members has developed. Once the game is over the game will return the player to the initial arcade and tickets will be given.
Arcade machines can be falvoured differently such as a pool table but the functionality would be identical.

Other interactables as a secondary feature set will include jukeboxes, or vending machines. that will play music or dispense power-up beverages respectively.

The shop will be an interactable that allows you to spend your tickets earned through games.

### Non-Player Characters (NPC)

NPCs main purpose is to comment on the player's performance in arcade games and make the arcade feel more life-like. 

They will walk around the arcade on set paths and occaisionally create lines in front of, and occupy, the arcade machines preventing access to games for the player.

### Ticket Shop

The ticket shop will offer players progression that persists between arcade games played. The progression will take form in purchasable power-ups, games, and difficulties.

## Preliminary interface sketches
The arcade machines, ticket shop booth, NPCs will be scattered around the 3D arcade environment to complete the experience. There will be guides to follow to which directions or what keys to use (WASD). The player can move sideways (3D) or up/down and left/right (2D). 

### Arcade Map

The general layout of the arcade is inspired by research and recollection of the real life arcade "Cyber City" when it was still in business. 

The overall gameplay will be smooth and easy to follow to focus more on providing a space for the user to have fun and explore more.

### Ticket Shop

The Ticket shop will be a 2D overlayed menu with a search bar.
It will be an itemized list with pricing on the right hand side of the screen with a scrollable menu. It will offer a wide variety of items in a 2D png form. It will be accessible through the shop-keeper within the ticket shop. The tickets will be golden tickets much like what was found in old arcades.

## Scaling options
Since most of the team members are new to "Godot", the core aspects of the game are capped to a minimum. These points represent the features that should be achievable even if major problems arise.

The secondary features represent the game as it is planned for the course. This is the most likely outline of the game, assuming most parts go as expected or within a reasonable margin of error.

Stretch goals represent additional features that may be implemented if time still remains after the secondary features are completed.

### Core aspects
- Implement a 2D hub world in which the player may control a character from a top-down view (if implementation of a 3D world fails).
- The player can start games within the hub world by moving to certain objects in the hub world and interacting with them.
- Implementation of the game "Snake."
- Implementation of the game "Pong."
- Implementation of the game "Pool."
- The player receives reward tickets based on their score in a game.

### Secondary features
- Implement a 3D hub world where the player controls a first-person view and navigates a character to go up to different games and access them.
- Implementation of the game "Space Invader."
- Implementation of the game "Pac-Man."
- Implementation of the game "Tetris."
- The player needs to use tickets to start playing a game.
- Hub world scoreboard (total of all game scores).
- Scoreboard for each game.
- The player may use tickets to improve "stats" in random different games (makes it easier to get higher scores).
- New games are unlocked by reaching certain milestones in the total hub world score.

### Stretch goals
- NPCs to interact with.
- Implementation of the game "Vampire Survivors clone."
- Implementation of the game "2D platformer."
- Implementation of the game "Street Fighter
- Secrets within the hub world.
- Expansion of the hub world.

## Risks and potential issues

The team has identified the most prominent restriction to be the limited 4-month
development cycle at our disposal for the project. Creating an immersive 3D arcade
environment within that time will prove difficult, specifically the time needed for the visual and
audio design. Furthermore, the group is relatively inexperienced with game development and will be learning and utilizing multiple new software tools, such as Godot, Git, and Blender, which bloats time requirements to complete tasks.

Integrating multiple separate instances of game scenes into our main arcade environment will introduce extra layers of complexity and potential for bugs. Specifically, the optimization of our main project and arcade games will be important to ensure the arcade can function properly.

With so many different potential tasks and side components to this project, keeping the team on track and on the same page may prove challenging. Balancing out the workload on side games and the main arcade environment project, and figuring out how to evaluate the individual contribution of work amongst multiple components also raises concerns and will need solid team agreements and communication.

The team's general inexperience with group work this complex might make organizing and planning challenging.
