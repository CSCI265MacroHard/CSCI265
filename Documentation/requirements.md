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

7. [ Feature prioritization ](#section7)

8. [ Non-functional requirements ](#section8)

9. [ Glossary ](#section9)

## Known issues/ Ommisions <a name="section1"></a>

As movements are already pre-determined for the arcade, the actual interface of the booth itself has not been talked about yet. In addition, the implementation of the mini-games in the arcade has not been brought up, as well as the amount and type of games that each member will bring to the table are not yet finalized. Games such as Pool, Street Fighter, and Vampire Survivors, each have their own set of progress has not been set in motion. Hence, raising a concern about the visuals as well as the Godot process. All of these will be rectified once the phase of development starts, and the team is already focused on the project and programming. 

No errors and changes to the plan and interface were raised, but the group made notes on blame, pull, and push on git in case a member did such corrupt a document.

## 2. Game Overview  <a name="section2"></a>
**Cyber Cyber City** seeks to bring you back the the 80s/90s with a historically inaccurate, first person simulation of an arcade. While the early 80s hosted the golden age of [Video Game Arcades](https://en.wikipedia.org/wiki/Amusement_arcade) , the decline into the late 90s lead to the rise of the [Redemption Game](https://en.wikipedia.org/wiki/Redemption_game#:~:text=Redemption%20games%20are%20typically%20arcade,a%20central%20location%20for%20prizes.), where players could be awarded tickets proportional to their score and then redeem said tickets for prizes.
 
 **Cyber Cyber City** brings ~~the best of~~ both eras together, taking the elegance of traditional arcade video games along with the excitement of the pseudo-gambling redemption games, blending them into a primitive, engaging, and immersive experience where players can enjoy classic-style video games while being awarded tickets based on performance.

  Central within the  **Cyber Cyber City** arcade is the prize booth/ticket shop, where players will be able to spend their hard earned tickets for prizes, unlocks, and collectables. The over-arching objective for our players may be to try unlocking/collecting everything within the prize booth/ticket shop, however, motivating the player to just have fun and diversely explore all the games available will be our objective as developers.

## 3. Target audience and motivation <a name="section3"></a>

The arcade will attempt to replicate the feeling of 90s arcades without explicitly copying the floor plan and decor of a specific location. Instead we will be drawing inspiration from many images, memories, and references to create a general "vibe" of a 90s arcade that could have existed. This way we can appeal to individuals nostalgic for old arcades without them scrutinizing the accuracy of a specific location.

Since we have a limited time and rescources to complete the project, the program won't be a hyper-realistic representation of an arcade. Instead we plan on goin for low resolution textures and low polygon-count models. This lends itself to an asthetic that should still appeal to our nostaligic audience while also making it more accessible to those with lower end hardware.

The arcade itself is our product so we are dealing with two target audiences; the users who want to go to an arcade to play games, and the arcade game developers who will be placing their games within the hub world we create. Since we are also developing games in our spare time we are hoping to ship the arcade with a base catalog of games to play.

The individuals in our group are all interested in game development and with recent drama surrounding what was considered by many to be the most accessible game engine, unity, we decided to take a risk investing time into learning a much more experimental software to develop on: the Godot game engine. There are many drawbacks to using software that hasn't matured or been around long enough to have a lot of 3rd party support, but, there is a lot of freedom that comes with the open source nature of the software. 

## 4. Game flow, objectives, and plot-line <a name="section4"></a>

The arcade itself in it's most base form could be described as a very intricate 3-dimensional video-game browser and launcher.

Starting up the software will place the user at the entryway of a 3D arcade environment with a prompt of the controls used to navigate and interact with objects.

arcades will have a token cost to play that is displayed on the front. when you interact with the machine it will automatically subtract the cost from the players balance.

The arcade will have various arcade machines the user can walk up to and interact with to start up the machine's respective game. 

Ideally the arcade layout will be easy to adjust to accomodate more game machines and various historical arcade recreations but that would be done by game developers with access to the documentation, not the end user.

Initially we will ship the program with various arcade machine styles that launch into games: we plan to include example games with basic sprites and features as a starting point for prospective arcade game developers as well as to practice developing in the godot engine. planned games to ship with include but aren't limited to:
 - A street fighter clone:
    - 2D sprites made from cropped images of dev team members to represent game characters.
    - 2 player support with a controller connected or shared keyboard.
 - Pool (or snooker)
   - experimentation of godot's built-in physics engine.
   - demonstration that arcade game machines can also represent physical games instead of just video games

Individual games are great but what made arcade-goers want to keep playing and come back everytime was how all the games were tied together by a universal form of progression: tickets. Ticket count will be tracked. Tickets will be awarded to the player once they have completed an arcade game and returned to the arcade.

The player may optionally navigate to the jukebox object and interact with it to select ambient music.

The player may then navigate to the shop and spend their tickets on upgrades to the arcade upgrades include but are not limited to:
 - Energy drinks which slow down the gamespeed of arcade games for greater accuracy and time to react.
 - Alchoholic Beverages to increase game speed and add random inputs (goodbye E rating)
 - Unlocking new arcade machines
 - Cheat codes to input into certain games for configured effects
 - New tracks to play on the jukebox.
 - more tokens to play more games.

The player has complete agency over which features they want to interact with within the program just as arcade goers have agency to play whatever aracade games they desire. then when the arcade goers are done they leave and go home. when the player attempts to leave the aracade through the door they will be prompted asking if they would like to close the program and if they select yes it will end.

## 5. Key features, with detailed requirements for each <a name="section5"></a>

### Arcade Machines

Arcade machines are the key piece of this program and they have several functions for both end users and game developers. All aracade machines will have designs to best represent the games that they launch into and ambient sounds taken from samples within the game.
 
As an end user, the purpose is that they may visually see on the arcade machine's design what game it hosts. from there they may decide to navigate to the machine to interact with it. Interacting with the machine will take them into the game to play until they reach a game ended screen which will put them back into the arcade with tickets. the tickets will be awarded based on the performance of the game which will scale differently depending on the difficulty of the game.

As a game developer there are 2 pieces of functionality that are important, the arcade machine launches into whatever game they have created with optional parameters to modify the game based on what progress the user has made through ticket purchases.
once in the game the developer must have an end screen that returns the player to the arcade with a single variable that contains the players performance that can be converted into tickets for the player.

### Audio
The arcade will contain a jukebox that plays music. More music can be unlocked at the ticket shop. all music used will be outsourced to another VIU student not in the class.

### Ticket Shop
The ticket shop is accessible at all times, however; there isn't much point in visiting it until the player has earned tickets to spend.

since the amount of games within the arcade is dynamic and the ticket shop sells cheat codes and unlocks for each one the ticket shop will also need to accomodate a wide range of stock. in order to do this the ticket shop will have a simple, scalable design that is familiar.

The shop user interface will feature a scroll bar that appears when the shop contains too many items to fit on the screen this way the icons for shop items do not have to be scaled down to fit.

The shop user interface can be navigated entirely with a keyboard or by clicking with a mouse. When the user is prepared to purchase an item there will be a pop-up to confirm their decision. 

Game developers will be able to add generic purchaseable upgrades based on templates so they can quickly integrate their games into the arcade's ecosystem.
generic upgrades will include:
 - (insert game name) Score doubler
 - (insert game name) Rapid fire
 - (insert game name) Extra lives

### Arcade Environment

the arcade itself is a 3 dimensional room filled with arcade machines the room will be lit just enough to easily navigate and see objects but also dim enough to replicate those dingy 90s arcades. it's a careful balance.

The walls have collision so that users bump into them instead of walking through them. there won't be any vertical movement so jumping and gravity aren't necessary unless support for multi-floor arcades is needed.

ambient sounds will play from the arcade machines and from the NPCs and jukebox. 


### Movement
Users are placed directly into the 3D environment upon launching the program so an initial popup will show the controls to navigate the map. The controls within the arcade will be WASD to move forward, back and strafe left and right with the mouse to look around and left click to interact. there will also be an alternative control scheme for if the user has a controller connected.

once the user has interacted with an arcade machine and entered a game, it is up to the game developer to inform the user of the game's controls if they vary from the arcade's controls. if the arcade game is multiplayer the other player may use a second controller connected or both players may share a keyboard for controls.



### Non-Player Characters 
NPCs are an important part of the immersion. NPCs will have certain behaviours and interactions. These behaviours include:

 - Congradulating a player for good performance on an arcade game. "wow nice job", "you're so good at (insert game name)", "can you teach me how to be that good?"
 - Commenting on a player's poor performance in an arcade game. "you suck", "you should never play (insert game name) again", "better luck next time"
 - Occupying arcade machines temporarily blocking the player from accessing them.
 - Giving the player tickets if they are short to buy something
 - Roaming the Arcade.
 - providing tips and tricks. "you have to shoot where they're going to be", "to get more tickets, do better!"
 - Bail the player out if they run out of tokens

## Introduction and overview

Provide the reader with an introduction to the product: its purpose, its core features, what audience it is aimed at and how they'll be using it, and what platform(s) it is targeting.

If the product has limitations that the user wouldn't expect then those should be mentioned as well.  (For example, if we were building a calculator but it couldn't handle real number calculations then we should probably warn the reader about that.)

## Product features and behaviour

This might be much like our original proposal but in far greater detail: we want to thoroughly explain/describe all aspects of the product's functionality: all the features and every aspect of its behaviour.

Here the reader should should be able to find the answer for any question along the lines of
- How do I use feature X?
- How do I enter data value Y?
- What are the limits (if any) on what I enter for Z?
- What does the product do if I enter an incorrect value?
- What happens when I select W?"

This section should be intuitive to follow if the reader is simply reading through the document to learn about the product, but it should also make it easy for the reader to quickly look up the answer to any specific question.

## User interface and navigation

Provide visual depictions of every screen, menu, drop-down, pop-up, etc.  This isn't intended to be a to-the-pixel exact representation, but it is expected to show all the visible elements and options, and their approximate positions and appearance.

Accompany each visual depiction with a clear description of what it shows and what each visible option represents.

Provide a navigation guide/map and description that show how all the screens/menus etc relate to one another: i.e. clearly showing/describing how the user navigates from screen-to-screen and which screens/choices lead to which others.

## Use cases/scenarios

Provide use cases detailing the different ways someone might actually want to use the product (e.g. a "sign in" use case, a "check balance" use case, a "make a deposit" use case, etc).

Provide scenarios that illustrate the use cases in a practical example.  (E.g. Bob has $30 to deposit and wants to deposit it, check the balance, and if there is enough then transfer $100 to his savings account, ... then walk through the Bob's actions from sign-in to sign-out.)

## Non-functional requirements <a name="section8"></a>

Since this project includes the works of multiple different games by different developers, there are a few restrictions and standards that the games within in the arcade must follow to ensure the systems of the arcade can be implemented correctly.

- Client games will have and communicate the following variables:   
    - Some form of score keeping and ScorePoint output.
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

## Feature prioritization <a name="section7"></a>

As the group presented our proposal from Phase 1, there's a lot to wrap around initiating an arcade environment. This includes building each component from scratch, but assets that are available online could also help. However, a great deal of uncertainty to what elements are able to complete in just a 4-month duration are still a problem.

Core Aspects
As highlighted briefly from the last presentation on risks, we are scaling down the process to a point where the group found these aspects as a success:

- at least 3 games, 
- at least 2-3 Non Playable Character (NPC) to initiate the arcade vibe,
- a working booth for token exchange,
- background retro music,
- game progress are saved, and
- a workable arcade environment (2D).

Secondary Features

In case the group still have time to make more features:

- more NPCs that could interact,
- more games,
- 3D arcade environment (this is being working progress already but a falldown for a 2D is applicable),
- a good UX for the game and booth, and
- higher detailed character visuals for games (the group was thinking of lower bit).

Stretch goals

As the project itself sounds like a stretch already for just one semester, these feature are a great addition to the initial version and provide more experience for users.

- multiplayer
- developers can add their games
- rankings
- more prizes
- chat box

## Glossary

Define any product-specific terms and any terms that are unlikely to be known to the 'average' reader (e.g. a random second-year CS student).

## Appendices

If additional supported documents are needed then append them here
