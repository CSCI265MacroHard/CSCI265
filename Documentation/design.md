# <a name="section1"></a> CSCI 265 Product Design (Phase 3)

## Team name: MacroHard

## Project/product name: 'Cyber' Cyber City

## Contact person and email

The following person has been designated the main contact person for questions from the reader:

 - Alister Lawson, AlisterLawson64@gmail.com *main contact*
 - Bruce Fernandes, bruce2005.ind@gmail.com *secondary contact*
 - Jamie Mano, jamieysabelmano1018@gmail.com
 - Marek Bettzig, bettzig@hotmail.de
 - Nick Biagioni, viud2l_1061684@d2l.viu.ca

# Table of Contents (TODO)

1. [ Known issues/omissions ](#section1)

2. [ Product overview ](#section2)

3. [ Core design influences ](#section3)

4. [ Architectural design ](#section4)

5. [ Arcade Scene ](#section5)

6. [ Player Scene ](#section6)

7. [ NPC Scenes ](#section7)

8. [ Arcade Machines ](#section8)

9. [ Ticket Shop ](#section9)

10. [ Built In Games ](#section10)

11. [ File structure ](#section11)

12. [ Initializing the program ](#section12)

13. [ Game state and flow of play ](#section13)

14. [ Transition to physical design ](#section14)

15. [ Glossary ](#section15)


# 1. Known issues/omissions (TODO) <a name="section1"></a>
text....

[//]: # (////////////////////CHAPTER ENDS////////////////////)

# 2. Product overview (TODO) <a name="section2"></a>
text....

[//]: # (////////////////////CHAPTER ENDS////////////////////)

# 3. Core design influences (TODO) <a name="section3"></a>
text....

[//]: # (////////////////////CHAPTER ENDS////////////////////)

# 4. Architectural Design (TODO) <a name="section4"></a>

Our program will be composed of many different scenes* that are responsible for different parts of the system. these components will be separated by scene and all will be contained within the main Arcade scene's tree

- The Arcade Scene
- The Player Scene
- NPC Template Scene
- Arcade Game Template Scene
- Ticket Shop Scene
- Premade NPC Scenes
- Premade Arcade Machine Scenes
- Built-in Game Scenes
- Externally Stored Arcade Games
  
(talk about how all these scenes are connected but each will have it's own chapter as well)

text....

[//]: # (////////////////////CHAPTER ENDS////////////////////)

# 5. Arcade Scene (TODO) <a name="section5"></a>

The arcade scene will include all nodes that control it's environment as well as connections to builtin and imported arcade games. include:

- 3D Environment and Lighting@
- The Gridmap@ (just What a gridmap does, functionality in other chapters)
- Audio@
- Built-in NPCs (functionality in other chapters)
- Built-in Arcade Machines (functionality in other chapters)
- Instanced Arcade Machines (functionality in other chapters)
- Ticket Shop (functionality in other chapters)
- Exit Door@

(write how all nodes with @ next to them work)

[//]: # (////////////////////CHAPTER ENDS////////////////////)

# 6. Player Scene (TODO) <a name="section6"></a>

The Player scene is composed of 3 parts:

- The movement module
  - user inputs -> character velocity
  - user input -> camera rotation
  - collision
- raycast module
  - calling the object that the raycast collides with's interact() function
- The player data
  - Ticket count storage
  - Token count storage
  - Game Scores

### Movement
Directional Movement will be achieved by taking user input and converting it into a vector to be used as velocity withing godot's builtin physics engine. it will work by taking button presses and... (todo)

Camera movement will be achieved by converting player inputs into a 3d rotational vector to rotate a camera node. it will work by either mouse movement or joystick input and... (todo)

Collision will mostly be handled by Godot's physics engine however we will have to ensure that all player movement is done by setting the player scene's velocity rather than position since setting position bypasses the physics engine.

### Raycast
The raycast will be a rotational child to the player's camera node so that it always collides with whatever is on the center of the screen. players will be able to interact with objects by... (todo)

### Player Data

Player data will be stored as... and changed by...(todo)

[//]: # (////////////////////CHAPTER ENDS////////////////////)

# 7. NPC Scenes (TODO) <a name="section7"></a>

There will be a two NPC scene types designed for the software:

- Template NPC scene with basic functionailty
- Premade NPCs with specially designated written behaviour within their functions

### Template NPCs

template npcs serve as a  developer rescource for us to quickly duplicate then customize to create custom NPCs. They may also be used to instance custom NPCs defined by end users but there are no plans to impliment that in the first version. the template NPCs will have:
- a placeholder sprite
- a placeholder interact function
- a placeholder player performance reaction function

These will be implimented as...(todo)

### Custom NPCs:

### BruceNPC:
When interacted with will... by...

Will react when the player... by...
### NateNPC:
When interacted with will... by...

Will react when the player... by...
### AlisterNPC:
When interacted with will... by...

Will react when the player... by...

[//]: # (////////////////////CHAPTER ENDS////////////////////)

# 8. Arcade Machines (TOTO) <a name="section8"></a>

There will be two kinds of arcade machines while nearly functionally identical to the user, under the hood they behave differently:

- Premade, Pre-placed Arcade Machines
- Instanced Arcade Machines

### Premade Arcade Machines
Premade Arcade Machines Will have built-in games (See Built-In Games) and built-in textures and models...(todo)

also talk about token cost and ticket reward system

### Instanced Arcade Machines
Instanced arcade machines will use imported games and assets (see Initializing the program). they will...(todo)

[//]: # (////////////////////CHAPTER ENDS////////////////////)

# 9. Ticket Shop (TODO) <a name="section9"></a>

The ticket shop implimentation will be...(todo)

The player's ticket amount will go down after... which is stored in...(see player scene chapter)... (todo)

The interface will work by using arrays blah blah blah... i don't know (todo)

[//]: # (////////////////////CHAPTER ENDS////////////////////)

# 10. Built In Games (TODO EVERYONE) <a name="section10"></a>

The Arcade will feature built-in games developed by us in our personal time. here we are providing a brief description of the games and their token cost/ticket reward but it is not our plan to document them in detail since they are all solo projects

### Jetris / The Pinaytrix (Jamie)
(tetris clone)
### 2Cool4Pool / Poking balls with a stick (pool)
(Pool clone)
### Bruce The Bruiser's Bollywood Beatdown Bonanza - a Bharat Brawl (Bruce)
(Street fighter clone)
### Blutsauger Superschlager 
Blutsauger Superschlager is a minimalist, rogue-lite survival action game, heavily inspired by Vampire Survivors. Players face waves of monsters in a pixel-art world, controlling a character who automatically attacks while focusing on dodging enemies and collecting power-ups. Defeated enemies drop gems that grant experience points, which can be used to unlock new abilities, weapons, and upgrades. The gameplay emphasizes strategic movement and quick decision-making as enemy hordes grow in size and strength over time. Though it's a clone of Vampire Survivors, its fast-paced combat and addictive progression system offer a familiar yet thrilling challenge.

[//]: # (////////////////////CHAPTER ENDS////////////////////)

# 11. File structure (TODO) <a name="section11"></a>
text....

[//]: # (////////////////////CHAPTER ENDS////////////////////)

# 12. Initializing the program (ALISTER) <a name="section12"></a>

When the program launches there will be a setup process before the user may interact with the software.

The steps to initializing the software will mostly serve to accomodate any games added to the arcade. All steps for the initialization will be:

- Importing Arcade Games
  - Scanning the external "arcade_games" folder for any games to add to the arcade
  - generating unique instances of the arcade machine template scene for each game found in the folder
  - Generating A file path to each game and placing it in it's respective instanced arcade machine scene's interact() function
  - generating a 2d array

[//]: # (////////////////////CHAPTER ENDS////////////////////)

# 13. Game state and flow of play <a name="section13"></a>
text....

[//]: # (////////////////////CHAPTER ENDS////////////////////)

# 14. Transition to physical design <a name="section14"></a>

The arcade is currently still in a prototype stage. To transition it into the finished game, the listed design choices will be converted into a feature list. Each feature on the list will encapsulate a specific function of the game, clearly defined in its description. By listing features in this way, it won’t matter which team member works on them, as long as they adhere to the defined description. This workflow will shift the project to a feature-based implementation, aligning more closely with the agile work model we aspire to. The feature list will be managed in GitHub’s project manager, which is already being used for planning the documentation. After that, the feature descriptions can also be used to create standardized tests for all new functions and releases. Another key focus for the next phase of the project is developing a framework for integrating games into the arcade. Once the first game is implemented, the process will be documented and standardized.

[//]: # (////////////////////CHAPTER ENDS////////////////////)

# 15. Glossary (TODO) <a name="section15"></a>
