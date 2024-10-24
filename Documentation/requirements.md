# CSCI 265 Requirements and specifications (Phase 2)

## Team name: MacroHard

## Project/product name: 'Cyber' Cyber City

## Contact person and email

The following person has been designated the main contact person for questions from the reader:

 - Alister Lawson, AlisterLawson64@gmail.com *main contact*
 - Bruce Fernandes, bruce2005.ind@gmail.com *secondary contact*
 - Jamie Mano, jamieysabelmano1018@gmail.com
 - Marek Bettzig, bettzig@hotmail.de
 - Nick Biagioni, viud2l_1061684@d2l.viu.ca

# Table of Contents

1. [ Known issues/omissions ](#section1)

2. [ Game overview ](#section2)

3. [ Target audience and motivation ](#section3)

4. [ Game flow, objectives, and plot-line ](#section4)

5. [ Key features, with detailed requirements for each ](#section5)

6. [ Game interface, screens, and menus ](#section6)

7. [ Non-functional requirements ](#section7)

8. [ Feature prioritization ](#section8)

9. [ Glossary ](#section9)

## 1. Known issues/ Ommisions <a name="section1"></a>

As movements are already pre-determined for the arcade, the actual interface of the booth itself has not been talked about yet. In addition, the implementation of the mini-games in the arcade has not been brought up, as well as the amount and type of games that each member will bring to the table are not yet finalized. Games such as Pool, Street Fighter, and Vampire Survivors, each have their own set of progress has not been set in motion. Hence, raising a concern about the visuals as well as the Godot process. All of these will be rectified once the phase of development starts, and the team is already focused on the project and programming. 

No errors and changes to the plan and interface were raised, but the group made notes on blame, pull, and push on git in case a member did such corrupt a document.

## 2. Game Overview  <a name="section2"></a>
**Cyber Cyber City** seeks to bring you back the the 80s/90s with a historically inaccurate, first person simulation of an arcade. While the early 80s hosted the golden age of [Video Game Arcades](https://en.wikipedia.org/wiki/Amusement_arcade), the decline into the late 90s lead to the rise of the [Redemption Game](https://en.wikipedia.org/wiki/Redemption_game#:~:text=Redemption%20games%20are%20typically%20arcade,a%20central%20location%20for%20prizes.), where players could be awarded tickets proportional to their score and then redeem said tickets for prizes.
 
**Cyber Cyber City** brings ~~the best of~~ both eras together, taking the elegance of traditional arcade video games along with the excitement of the pseudo-gambling redemption games, blending them into a primitive, engaging, and immersive experience where players can enjoy classic-style video games while being awarded tickets based on performance.

Central within the **Cyber Cyber City** arcade is the prize booth/ticket shop, where players will be able to spend their hard earned tickets for prizes, unlocks, and collectables. The over-arching objective for our players may be to try unlocking/collecting everything within the prize booth/ticket shop, however, motivating the player to just have fun and diversely explore all the games available will be our objective as developers.

## 3. Target audience and motivation <a name="section3"></a>

The arcade will attempt to replicate the feeling of 90s arcades without explicitly copying the floor plan and decor of a specific location. Instead we will be drawing inspiration from many images, memories, and references to create a general "vibe" of a 90s arcade that could have existed. This way we can appeal to individuals nostalgic for old arcades without them scrutinizing the accuracy of a specific location.

Since we have limited time and resources to complete the project, the program won't be a hyper-realistic representation of an arcade. Instead, we plan on going for low-resolution textures and low polygon-count models. This lends itself to an aesthetic that should still appeal to our nostalgic audience while also making it more accessible to those with lower-end hardware.

The arcade itself is our product so we are dealing with two target audiences; the users who want to go to an arcade to play games, and the arcade game developers who will be placing their games within the hub world we create. Since we are also developing games in our spare time we are hoping to ship the arcade with a base catalogue of games to play.

The individuals in our group are all interested in game development and with the recent drama surrounding what was considered by many to be the most accessible game engine, unity, we decided to take a risk investing time into learning a much more experimental software to develop on: the Godot game engine. There are many drawbacks to using software that hasn't matured or been around long enough to have a lot of 3rd party support, but, there is a lot of freedom that comes with the open source nature of the software. 

## 4. Game flow, objectives, and plot-line <a name="section4"></a>

The arcade itself in its most base form could be described as a very intricate 3-dimensional video-game browser and launcher.

Starting up the software will place the user at the entryway of a 3D arcade environment with a prompt of the controls used to navigate and interact with objects.

Arcades will have a token cost to play that is displayed on the front. when you interact with the machine it will automatically subtract the cost from the player's balance.

The arcade will have various arcade machines the user can walk up to and interact with to start up the machine's respective game. 

Ideally the arcade layout will be easy to adjust to accomodate more game machines and various historical arcade recreations but that would be done by game developers with access to the documentation, not the end user.

Initially, we will ship the program with various arcade machine styles that launch into games: we plan to include example games with basic sprites and features as a starting point for prospective arcade game developers as well as to practice developing in the godot engine. planned games to ship with include but aren't limited to:
 - A street fighter clone:
    - 2D sprites made from cropped images of dev team members to represent game characters.
    - 2-player support with a controller connected or shared keyboard.
 - Pool (or snooker)
   - experimentation of Godot's built-in physics engine.
   - demonstration that arcade game machines can also represent physical games instead of just video games

Individual games are great but what made arcade-goers want to keep playing and come back every time was how all the games were tied together by a universal form of progression: tickets. Ticket count will be tracked. Tickets will be awarded to the player once they have completed an arcade game and returned to the arcade.

The player may optionally navigate to the jukebox object and interact with it to select ambient music.

The player may then navigate to the shop and spend their tickets on upgrades to the arcade upgrades include but are not limited to:
 - Energy drinks which slow down the gamespeed of arcade games for greater accuracy and time to react.
 - Alcoholic Beverages to increase game speed and add random inputs (goodbye E rating)
 - Unlocking new arcade machines
 - Cheat codes to input into certain games for configured effects
 - New tracks to play on the jukebox.
 - more tokens to play more games.

The player has complete agency over which features they want to interact with within the program just as arcade goers have agency to play whatever arcade games they desire. then when the arcade goers are done they leave and go home. when the player attempts to leave the arcade through the door they will be prompted asking if they would like to close the program and if they select yes it will end.

## 5. Key features, with detailed requirements for each <a name="section5"></a>

### Arcade Machines

Arcade machines are the key piece of this program and they have several functions for both end users and game developers. All arcade machines will have designs to best represent the games that they launch into and ambient sounds taken from samples within the game.
 
As an end user, the purpose is that they may visually see on the arcade machine's design what game it hosts. from there they may decide to navigate to the machine to interact with it. Interacting with the machine will take them into the game to play until they reach a game ended screen which will put them back into the arcade with tickets. the tickets will be awarded based on the performance of the game which will scale differently depending on the difficulty of the game.

As a game developer, there are 2 pieces of functionality that are important, the arcade machine launches into whatever game they have created with optional parameters to modify the game based on what progress the user has made through ticket purchases.
once in the game, the developer must have an end screen that returns the player to the arcade with a single variable that contains the player's performance that can be converted into tickets for the player.

### Audio system
Chaotic environmental sounds are a pivotal part of arcade experiences.​ To replicate this, Cyber Cyber City uses a proximity-based sound system.​ Any noise-emitting object within the scene will have a detection radius that plays sound louder as the player gets closer.​ To keep this effect from becoming overwhelming/disorientating, only the absolute closest emitter of any given type can output at max (emulating sensory focus on a single object),  and linear interpolation will be used to smooth out transitions between sounds within the space.​ If such an environmental/directional audio system proves too much, we will opt to use static ambience.​	
The arcade will contain a jukebox that plays music. More music can be unlocked through the ticket shop. The music present will be outsourced, either from online libraries or from other VIU students not in the class. 

![Audio System Diagram](pics/audio_system.png)

### Ticket Shop
The ticket shop is accessible at all times, however; there isn't much point in visiting it until the player has earned tickets to spend.

since the amount of games within the arcade is dynamic and the ticket shop sells cheat codes and unlocks for each one the ticket shop will also need to accommodate a wide range of stock. to do this the ticket shop will have a simple, scalable design that is familiar.

The shop user interface will feature a scroll bar that appears when the shop contains too many items to fit on the screen this way the icons for shop items do not have to be scaled down to fit.

The shop user interface can be navigated entirely with a keyboard or by clicking with a mouse. When the user is prepared to purchase an item there will be a pop-up to confirm their decision. 

Game developers will be able to add generic purchasable upgrades based on templates so they can quickly integrate their games into the arcade's ecosystem.
generic upgrades will include:
 - (insert game name) Score doubler
 - (insert game name) Rapid fire
 - (insert game name) Extra lives

### Arcade Environment

the arcade itself is a 3-dimensional room filled with arcade machines the room will be lit just enough to easily navigate and see objects but also dim enough to replicate those dingy 90s arcades. it's a careful balance.

The walls have collision so that users bump into them instead of walking through them. there won't be any vertical movement so jumping and gravity aren't necessary unless support for multi-floor arcades is needed.

ambient sounds will play from the arcade machines and from the NPCs and jukebox. 

### Movement and controls
Users are placed directly into the 3D environment upon launching the program so an initial popup will show the controls to navigate the map. The controls within the arcade will be WASD to move forward, back and strafe left and right with the mouse to look around and left click to interact. there will also be an alternative control scheme for if the user has a controller connected.

Once the user has interacted with an arcade machine and entered a game, it is up to the game developer to inform the user of the game's controls, this will be displayed through a controls screen accessible within the arcade game. The control layout on the keyboard/controller for the arcade games should also be consistent between games, for example, the primary "A button" should be the same assigned key across all games. If the arcade game is multiplayer the other player may use a second controller connected or both players may share a keyboard for controls.


### Non-Player Characters 
NPCs are an important part of the immersion. NPCs will have certain behaviours and interactions. These behaviours include:

 - Congratulating a player for good performance on an arcade game. "wow nice job", "you're so good at (insert game name)", "can you teach me how to be that good?"
 - Commenting on a player's poor performance in an arcade game. "you suck", "You should never play (insert game name) again", "Better luck next time"
 - Occupying arcade machines temporarily blocking the player from accessing them.
 - Giving the player tickets if they are short to buy something
 - Roaming the Arcade.
 - providing tips and tricks. "you have to shoot where they're going to be", "to get more tickets, do better!"
 - Bail the player out if they run out of tokens

## 6. User interface and navigation <a name="section6"></a>

### GUI

The inclusion of GUIs will be kept to a minumum to ensure the user's immersion isn't ruined with popups. The exception to this will be the ticket shop since accomodating a dynamic stock of items will be easier to represent with a 2D interface that overlays the screen. 

### Currencies information display

Within the main arcade scene there the player will have their ticket count displayed in the top right corner of the screen. The player's token count will be displayed in the top left corner.

The token and ticket displays will not be visible when the player has entered a game.

### Navigation

Navigation to interact with features will be physically represented by walking up to and looking at a feature then pressing a select button.

Exiting the program will have a similar method by walking up to the entrance doorway of the arcade and interacting with it. 

### Ticket shop interface

The ticket shop interface will be a 2D dimensional grid of squares with a scroll bar. Within each square will be a display of a product and it's price in tickets. The user can interact with a box purchase the item within. if there are more items than can be fit on one page a scroll bar will be automatically enabled.

### Jukebox interface

The jukebox interface will be a simplified version of the ticket shop interface but instead of multiple rows and columns of boxes it will be a single column that can be scrolled through to select songs names that appear stacked on top of eachother.

## 7. Non-functional requirements <a name="section7"></a>

Since this project includes the works of multiple different games by different developers, there are a few restrictions and standards that the games within in the arcade must follow to ensure the systems of the arcade can be implemented correctly.

- Client games will have and communicate the following variables:   
    - Some form of scorekeeping and ScorePoint output.
    - Score scaling info for ticket payout (I.e. are the 'points per minute' static, grow linearly or exponentially, etc.)(can be measured and implemented during testing)
    - Token cost per play (extra variable that enables easier/dynamic balancing of arcade cabinet's 'tickets per token' value)(can be implemented in testing)
    - In-scope controls and control documentation (e.g. if the 'A button' is assigned to a certain key, games should be consistent with this.)

- Client games must adhere to a set size/memory limit. (TBD) 

- Client games must hit performance/optimization thresholds(TBD) as measured/monitored by the [Godot Performance class](https://docs.godotengine.org/en/stable/classes/class_performance.html), including: 
    - Video memory used via 'Monitor RENDER_VIDEO_MEM_USED'
    - Static memory used via 'Monitor MEMORY_STATIC'
    - Ensure that the game has relatively consistent physics processing via 'Monitor TIME_PHYSICS_PROCESS'

Other non-functional requirements to keep in mind include:
- consistent texture sizes
- consistent 3D object model complexity
- consistent audio file size

## 8. Feature prioritization <a name="section8"></a>

As the group presented our proposal from Phase 1, there's a lot to wrap around initiating an arcade environment. This includes building each component from scratch, but assets that are available online could also help. However, a great deal of uncertainty to what elements are able to complete in just a 4-month duration is still a problem.

### Core Aspects
As highlighted briefly from the last presentation on risks, we are scaling down the process to a point where the group found these aspects a success:

- at least 3 games, 
- at least 2-3 Non-Playable Characters (NPC) to initiate the arcade vibe,
- a working booth for token exchange,
- background retro music,
- game progress is saved,
- a workable arcade environment (3D).

### Secondary Features

In case the group still have time to make more features:

- more NPCs that could interact,
- more games,
- a good UX for the game and booth, and
- higher detailed character visuals for games (the group was thinking of lower bit).

### Stretch goals

As the project itself sounds like a stretch already for just one semester, these feature are a great addition to the initial version and provide more experience for users.

- multiplayer
- developers can add their games
- rankings
- more prizes
- chat box

## 9. Glossary <a name="section9"></a>

The terms "User" and "player" are referring to the end user of the product, an audience who are using the final software combined with games, for the purposes of recreation or historical research.

The terms "developers" and "game developers" refer to the audience who will use the arcade software to host their games for the end user.

### Acronyms
 - NPCs | non-player characters.
 - 3D and 2D | three dimensional and two dimensional respectively. Usually referring to an object's appearance.
 - GUI | graphical user interface, generally a 2D overlay that displays information.

## Appendices

Godot Documentation: [https://docs.godotengine.org/en/stable/index.html](https://docs.godotengine.org/en/stable/index.html)

GDScript Coding Standards: [https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html)
