# CSCI 265 Requirements and specifications (Phase 2)

## Team name: MacroHard

## Project/product name: 'Cyber' Cyber City

## Contact person and email

The following person has been designated the main contact person for questions from the reader:

 - Alister Lawson, AlisterLawson64@gmail.com

# Table of Contents

1. [ Known issues/omissions ](#section1)

2. [ Game overview ](#section2)

3. [ Target audience and motivation ](#section3)

4. [ Product Perspective ](#section4)

5. [ Key features, with detailed requirements for each ](#section5)

6. [ Example Game Requirements ](#section6)

7. [ Non-functional requirements ](#section7)

8. [ Feature prioritization ](#section8)

9. [ Glossary ](#section9)

## 1. Known issues/ Ommisions <a name="section1"></a>

Measurements used for the environment and player rely on the real-world metric system but must be adjusted to match the scale of the program's geometry during design.

The jukebox location is challenging to finalize due to the spatial audio system. In theory, a user could add enough games that the music becomes inaudible at the far end of the hallway. We will revisit this decision after developing a working prototype, as it will be easier to relocate the jukebox and adjust the volume and range variables at that stage. This approach will allow us to determine what sounds best and potentially tie the range to the number of games imported.

Currently, the configuration file's only function is to define upgrades for a game. However, it may become essential for collecting other unforeseen data about the executable. Testing additional executable types in Phase 5 should help us evaluate whether expanding its functionality will be necessary.

## 2. Product Overview  <a name="section2"></a>

**Cyber Cyber City** aims to transport you back to the 80s and 90s with a historically inaccurate first-person simulation of an arcade. While the early 80s marked the golden age of [Video Game Arcades](https://en.wikipedia.org/wiki/Amusement_arcade), the late 90s saw a decline that gave rise to the popularity of [Redemption Games](https://en.wikipedia.org/wiki/Redemption_game#:~:text=Redemption%20games%20are%20typically%20arcade,a%20central%20location%20for%20prizes.). These games rewarded players with tickets based on their scores, which could then be redeemed for prizes.

At the heart of the **Cyber Cyber City** arcade is the prize booth/ticket shop, where players can spend their hard-earned tickets on prizes, unlocks, and collectibles. While the overarching goal for players might be to unlock or collect everything available in the ticket shop, our primary aim as developers is to encourage players to simply have fun and explore the wide variety of games available in the arcade.

### Scope

The program's core functionality is to serve as a library of executables, presented in the form of an arcade. Creators can populate this arcade with arcade-style games, allowing players to browse and play them.

This is a single-player, offline application that does not require an internet connection.

The program is compatible with Windows operating systems, version 10 or newer.

## 3. Target audience and motivation <a name="section3"></a>

The arcade will aim to evoke the feeling of 90s arcades without explicitly replicating the floor plan or décor of any specific location. Instead, we will draw inspiration from a variety of images, memories, and references to create a general "vibe" of a 90s arcade that could have existed. This approach allows us to appeal to individuals’ nostalgia for old arcades while avoiding scrutiny over the accuracy of any specific location.

Given our limited time and resources, the program will not aim for a hyper-realistic representation of an arcade. Instead, we will use low-resolution textures and low polygon-count models. This aesthetic should still resonate with our nostalgic audience while making the program accessible to users with lower-end hardware.

The arcade itself is our product, which means we are catering to two distinct target audiences:

- Players who want to visit the arcade to browse and play games.
- Game developers who will populate the hub world with their own arcade-style games.

To ensure the arcade is functional and engaging at launch, we plan to include a base catalog of games. While developing a large library of games is not the primary goal, we aim to ship with at least one game for testing, development, and the initial release. Additional games are encouraged if they do not detract from the development of the core software.

All members of our team share a strong interest in game development. Following the recent controversy surrounding what was widely considered the most accessible game engine, Unity, we decided to take a calculated risk by investing our time in learning a more experimental tool: the Godot game engine. While using a less mature platform has its drawbacks—such as limited third-party support—it offers significant freedom due to its open-source nature.

Our primary objective is not to develop numerous games but to create a platform that enables users to curate and showcase their own games within a single, cohesive environment. To make this platform accessible, we must provide basic examples for developers to build upon, starting with at least one example game as part of the project’s scope.

## 4. Product Perspective <a name="section4"></a>

When a player launches the program, they will enter the arcade environment. This environment features a single map designed to resemble the interior of an arcade. It consists of one floor and a single main room that dynamically expands to accommodate all imported arcade game machines. The room's appearance may vary based on the size of the user's game collection, but the arcade will always include the following key elements: a shop, an exit door, and—provided the template game is not removed—at least one game.

Players navigate the arcade from a first-person perspective, allowing them to walk up to and interact with any game they wish to play. Interacting with the exit door will close the program.

When a player approaches and interacts with an arcade machine, the respective game will start, and the token cost for playing will automatically be deducted from the player's balance.

To encourage sharing of arcade games among users, games will be bundled in a format that allows them to be easily copied and pasted into other players’ libraries. To assist creators, we will include an example game (Tetris) with proper file configurations to serve as a reference.

The final product will be compiled in a portable format, with all assets contained within a single folder. This makes it easy for users to carry their arcade collection and gradually expand it over time.

While individual arcade game experiences are the main attraction, what made real-world arcades so engaging was their universal progression system: tickets. The player's ticket count will be tracked and updated. Tickets will be awarded after a player completes an arcade game and returns to the arcade.

In addition to playing arcade games, players can engage with other features in the arcade, such as:

- Navigating to the jukebox to play or pause ambient music.
- Interacting with NPCs placed within the arcade, each offering unique functionalities.
- Using the shop to spend tickets on upgrades for arcade machine games.

A high-level model of the core components and their relationships is provided below.

![Components Sketch](pics/high_level_overview.png)

## 5. Key features, with detailed requirements for each <a name="section5"></a>

### Player character, movement, and controls

Since we are presenting our product as an immersive experience, the player character is designed to make users feel as though they are truly in the arcade. Upon launching the program, users will be directly placed into the 3D environment, with an initial pop-up showing the controls for navigating the map.

The player character has the following characteristics:

**First-Person View:** 
- The player’s perspective will be first-person, with a Field of View (FOV) set to 90 degrees.

**No Vertical Movement:**
- Since there is no vertical movement, jumping and gravity mechanics are unnecessary.

**Player Speed:**
- The player will move at a speed of approximately 1.4 meters per second (rounded to the average walking speed of a person).

**Character Shape:**
- The player will be represented as a circle with a diameter of 0.5 meters; height is irrelevant due to the lack of vertical movement.

**Camera Position:**
- The camera will be positioned 1.6 meters above the ground, reflecting the average height of a human’s eyes.

**Mouse-Based Camera Movement:**
- The camera will move in the direction the mouse is dragged. It can rotate infinitely left and right but will be limited to a 90-degree vertical rotation from the horizon (no looking directly up or down).

**Movement Controls:** The player will use the W, A, S, D keys for movement:
- W to move forward
- A to move left (strafe)
- S to move backward
- D to move right (strafe)

**Interaction Controls:** Left-clicking will interact with objects that meet the following criteria:
- The object has defined behavior when interacted with
- The object is within 2 meters of the player
- The object intersects with the center point of the screen

### Ticket and Token Economy

**Tickets** are the resource used to purchase upgrades from the shop and are earned as a reward for scoring in arcade games. The only way a player can accumulate tickets is by completing games. Tickets are tracked through a global variable, ticket_count, which has the following properties:

- Non-negativity: It can never be a negative value.
- Maximum Limit: It can never exceed 100,000.
- Cost Reduction: It decreases by the cost of a shop item when:
  - The player selects an upgrade to purchase from the shop.
  - The ticket_count is at least equal to the cost of the item.
- Score Increase: It increases by a game's given score when a game is completed.
- Nate Interaction: If you interact with Nate while you have 10 or more tokens, Nate gives you 10,000 tickets and deducts 10 tokens from your count.

**Tokens** are the resource used as a toll to access the arcade games. They add stakes to playing games but can also restrict access if a player runs out. Tokens are stored as a global variable, token_count, with these properties:

- Non-negativity: It can never be a negative value.
- Maximum Limit: It can never exceed 100.
- Cost Reduction: It decreases by an arcade machine’s cost to play when:
  - The arcade machine is interacted with.
  - token_count is at least equal to the cost to play.
- Purchasable Tokens: Tokens can be purchased from the shop at a rate of 1000 tickets per token.
- NPC Token Provision: NPCs will give you a token if your token_count is 0, ensuring that players are never locked out of games due to token shortages.
- Token Gain Chance: There is a 100*e^-(final_score/2000)% chance to receive a token when completing a game. This probability decreases from 100% at a score of 0 to effectively 0% at a score of 10,000.

### Arcade Environment

The arcade is a 3-dimensional space filled with various interactive objects. The player must be able to navigate the map without obstruction in order to access all of the program's features. Below are the characteristics and details of the arcade map:

- Collision:
  - The walls have collision enabled, so players will bump into them instead of walking through them.
  - The floor has collision as well, preventing players from falling into the infinite void.
- Pre-built Sections:
  - The room has a pre-built section that remains consistent, ensuring there is always space for built-in interactive objects.
- Objects and Placement:
  - NPCs:
    - Alister will be placed in the south-west corner.
    - Nate will be positioned in the south-east corner.
    - Bruce will be located behind the ticket shop counter.
  - Ticket Shop: Located in the north-west corner.
  - Jukebox: The location will be determined after the audio system has been prototyped, ensuring it provides the best immersive audio experience. It must be centrally placed to ensure it can be faintly heard from various points in the room.
  - Arcade Machines: These are placed in the hallway, instanced from the games the user has added.
- Expanding Hallway:
  - To accommodate an expanding library of games, there will be an infinitely extending hallway that protrudes from the east wall.
- Lighting:
  - The room will be lit sufficiently to ensure that all objects and paths are clearly visible.

Mockup: Below is a bird's-eye view mockup of the arcade map.

![Arcade Map Sketch](pics/arcade_map_mockup.png)

### Arcade Machines

Arcade machines are the central feature of this program, offering important functions for both end users and game developers. Each arcade machine will have a design that visually represents the game it launches, along with ambient sounds drawn from samples within the game. The intended behavior and characteristics of all arcade machines are as follows:

- Visual Indicator: Each arcade machine will have a clear, unique visual indicator (typically a skin for the cabinet) to represent the game it launches.
- Unique Cabinets: Each arcade machine is unique, with no duplicates in the arcade.
- Collision Footprint: Each arcade machine will have a collision footprint no larger than 1 square meter.
- Interactivity: Interacting with an arcade machine will launch the game it represents.
- Token Requirement:
  - The game will only launch if the player has the required tokens. If the player doesn't have enough, a buzzing sound will play to indicate this.
  - The correct amount of tokens will be deducted from the player's balance before the game is launched.
- Disabled Interaction: Once a game has been launched, interaction with the arcade machine will be disabled until the arcade game has provided a score for the player.

### Game Importing

The success of this product depends on user-generated content, so the process of making games compatible and importing them should be as simple as possible. To maintain an intuitive experience for creators, the games will be packaged into folders. Each game folder should be named after the game, and the case sensitivity of the name will depend on the implementation but should follow a consistent rule. A correctly set up game folder will include the following files:

- "game": A .exe file for the software that will launch when the arcade machine is interacted with.
- "skin": A .png texture for the program to use to represent the game's arcade cabinet within the arcade.
- "config": A .txt file containing various properties used by the program when instancing the arcade machine. This file will define what upgrades the game will support to populate the shop with.
- "icon": A .svg file used as a base icon for upgrades added to the shop for this game.

Any extra files within the game folder will be ignored, but the game folder will not be rejected if extra files are included, as they could be necessary for the game to function properly.
Setup Requirements for Game Files

To be imported correctly, a game file must accept launch arguments. Upgrades defined in the game’s config file can have whatever effect the creator implements within the game. For example, a pool game might have a "Turbo Cue" upgrade that increases the force of the cue stick by four times. In this case, the developer would need to:

- Define the "Turbo Cue" upgrade in the config file so it appears in the ticket shop.
- Add logic within the game to recognize the "turbo" argument and apply the effect (e.g., increase cue force).

Upgrade Characteristics

- Number of Upgrades: Any number of upgrades can be defined per game.
- Upgrade Icons: All upgrades will be displayed in the shop with the same icon provided by the creator in their game package.
- Unique Names and Arguments: All upgrades for a game must have unique names and launch arguments.
- Ticket Costs: Upgrades will require tickets for purchase. The following are suggested guidelines for ticket costs, though these values may vary based on the game's context and the impact of the upgrade:
  - Small impact on gameplay: 8,000 to 10,000 tickets
  - Medium impact on gameplay: 15,000 to 20,000 tickets
  - Large impact on gameplay: 30,000 to 50,000 tickets

If a creator wants a player to earn tickets for winning, they must ensure that their game returns a score value (as an integer) to the main application upon completion. Suggested scoring ranges are:

- Poor performance: 0 to 1,000 points
- Average performance: 1,000 to 5,000 points
- Excellent performance: 5,000 to 10,000 points
- Exceptional performance: Over 10,000 points (used sparingly)

Skin and Icon File Setup

- Icon File: The icon must have a 1:1 aspect ratio.
- Skin File: The skin must match the same aspect ratio as the provided example arcade skin.

These guidelines are suggestions, and any SVG or PNG file will be accepted by the program, as rejecting files based on aspect ratios is beyond our current capabilities.
Importing Process

Once the game is correctly packaged within the folder, the creator can leave the rest to the software. The program will scan, import, and instantiate arcade machines based on the following behaviors and characteristics:

- Folder Validation:
  - The program will ignore folders that are not correctly set up or are missing required files.
  - Folders with extra files will not be rejected, as some of these files may be necessary for the game.
  - Only directories (folders) will be accepted as valid game packages.

- Arcade Machine Creation:
  - The program will create an arcade machine for each valid game found in the folder.
  - The arcade machine’s skin will be applied to the mesh based on the game’s folder configuration.

- Arcade Environment:
  - The arcade environment will expand to accommodate all created arcade machines.
  - The arcade machines will be evenly distributed within the space to avoid obstructing access to any part of the map.

- Game and Arcade Machine Connection:
  - The arcade machine will be linked to its corresponding game application.

- Ticket Shop:
  - The ticket shop will be populated with all upgrades defined in each game’s config file, with their respective names, icons, and ticket costs.

### Audio system

Chaotic environmental sounds are a key feature of arcade experiences. To replicate this, Cyber Cyber City utilizes a proximity-based sound system. Any noise-emitting object in the scene will have a detection radius, with the volume of the sound increasing as the player gets closer.

To avoid overwhelming or disorienting the player, only the closest emitter of each sound type will play at maximum volume, emulating sensory focus on a single object. Linear interpolation will be used to smoothly transition between sounds in the environment, ensuring a more natural audio experience.

However, if this environmental and directional audio approach proves to be too intense or distracting, we will switch to using static ambient sounds instead.

![Audio System Diagram](pics/audio_system.png)

### Ticket Shop
The ticket shop is accessible at all times; however, it may not be particularly useful to visit until the player has earned tickets to spend.

Given that the number of games in the arcade is dynamic and the ticket shop offers upgrades for each one, the shop will need to accommodate a wide range of stock. To achieve this, the ticket shop will feature a simple, scalable design. The key features of the ticket shop are outlined below:

- The shop's user interface will include a scrollbar that appears when the shop contains too many items to fit on the screen. This ensures that item icons do not need to be scaled down to fit the available space.
- The shop interface can be navigated entirely with either the keyboard or mouse.
- When the user is ready to purchase an item, a pop-up will appear to confirm their decision before proceeding.
- Game developers will have the ability to define upgrades and their costs, integrating their games seamlessly into the arcade’s ecosystem.

### Non-Player Characters 
NPCs play a crucial role in enhancing immersion within the arcade. They will have a variety of behaviors and interactions designed to engage the player. These behaviors include:

- Congratulating the player for good performance in an arcade game, with phrases like:
  - "Wow, nice job!"
  - "You're so good at [insert game name]!"
  - "Can you teach me how to be that good?"

- Commenting on poor performance in a game, with phrases such as:
  - "You suck!"
  - "You should never play [insert game name] again."
  - "Better luck next time."

- Occupying arcade machines, temporarily blocking the player from accessing them.

- Giving the player tickets if they are short and need them to make a purchase.

- Roaming the arcade, moving around and interacting with the environment.

- Providing tips and tricks, with helpful phrases like:
  - "You have to shoot where they're going to be."
  - "To get more tickets, do better!"

- Bailing the player out if they run out of tokens, ensuring they can keep playing.

### Currencies information display

Within the main arcade scene, the player's ticket count will be displayed in the top-right corner of the screen, and the player's token count will be shown in the top-left corner.

These displays will not be visible while the player is actively engaged in a game, ensuring an uninterrupted gaming experience.

## 6. Example Game Requirements <a name="section6"></a>

### Jetris

#### Overview
The **Jetris** is a modern, pixelated take on the classic Tetris game many of us grew up with. Designed for a single-player experience, it brings the familiar challenge of stacking and clearing lines within a simple, retro-styled interface.

Players control the tetrominoes using the following keys:

- Q: Rotate counterclockwise
- R: Rotate clockwise
- A: Move left
- S: Move down
- D: Move right
- Space Bar: Hard drop

The core mechanics stay true to the original Tetris. Players earn points by completing horizontal lines, which are cleared from the grid. Cleared lines create room for new tetrominoes to fall, allowing the player to keep playing and earn higher scores. The game ends when the stack of uncleared lines reaches the top of the grid.

A unique twist in Jetris is the absence of a "ghost piece" or drop guide, increasing the challenge as players must calculate where each tetromino will land after a hard drop. The game grid consists of 20 rows and 10 columns, and features the seven classic tetromino shapes (I, J, L, O, S, T, and Z), which spawn randomly.

**The objective is simple:** survive as long as possible, rack up points, and develop precision in placing blocks to optimize space.

#### Requirements
**Game Flow, Objectives, and Plot-Line**
The Jetris offers a straightforward yet engaging gameplay loop:

#### Start Screen
The game begins with a clean, pixelated interface, featuring a simple start menu. Players can either begin the game or view the basic controls.

#### Gameplay
Once the game starts, tetrominoes begin to drop from the top of the grid. Players must manipulate these shapes to form complete lines while avoiding gaps that might block future moves.

#### Scoring
Points are awarded as follows:
- 20+ points per cleared line.

#### Endgame
The game ends when the blocks stack up to the top of the grid. A game-over screen is displayed, showing the player's final score and offering the option to restart. While there is no narrative plotline, the game provides a timeless challenge of skill, strategy, and reflexes, with the main goal being to achieve the highest score possible.

**Key Features**
Jetris blends classic Tetris mechanics with modern tweaks, offering a nostalgic yet refreshing experience.

- Wall Kicks
  - Tetrominoes can rotate without moving outside the grid boundaries, eliminating frustration from shapes getting stuck at the edges.

- Line Clearing
  - Completed lines disappear seamlessly.
  - Each cleared line awards 20+ points, rewarding strategic stacking.
  - Clearing multiple lines at once (Tetris) grants bonus points.

- Next Piece Preview
  - A preview window shows the next tetromino, allowing players to plan their moves ahead of time.

- Sound Effects
  - Immersive sound effects are included for rotations, line clears, and game overs, enhancing player engagement without overwhelming the experience.

- Pixelated Art Style
  - The retro, pixel-art aesthetic appeals to fans of classic gaming, with charming visuals for the grid, tetrominoes, and UI elements.

- Simple UI
  - A clean start menu and straightforward game-over screen.
  - The interface prioritizes functionality and ease of use, keeping the focus on gameplay.

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

External developers will store their game files outside of the main game directory. The game executable will then access these files to integrate the games into the arcade. This approach is designed to protect the arcade's source code and simplify the process of adding new games to the arcade.

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
