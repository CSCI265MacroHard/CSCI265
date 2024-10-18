
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

# Table of Contents

1. [ Known issues/omissions ](#section1)

2. [ Product overview ](#section2)

3. [ Core design influences ](#section3)

4. [ Architectural design ](#section5)

5. [ Data design ](#section7)

6. [ Game state and flow of play ](#section8)

7. [ Transition to physical design ](#section9)



# 1. Known issues/omissions <a name="section1"></a>
text....

# 2. Product overview <a name="section2"></a>
text....

# 3. Core design influences <a name="section3"></a>
text....

# 4. Architectural design <a name="section5"></a>

Our program will be composed of many different scenes that are responsible for different parts of the system. these components will be separated by scene and all will be contained within the main Arcade scene's tree

- The Arcade Scene
- The Player Scene
- NPC Template Scene
- Arcade Template Scene
- Premade NPC Scenes
- Premade Arcade Machine Scenes
- Builtin Game Scenes
  
(talk about how all these scenes are connected but each will have it's own chapter as well) 

text....

## 4.1 Arcade Scene

The arcade scene will include all nodes that control it's environment as well as connections to builtin and imported arcade games. these nodes include:

- The Gridmap
- Audio
- Built-in NPCs
- Built-in Arcade Machines
- Instanced Arcade Machines
- Ticket Shop
- Exit Door

### 4.1.1 Initializing the Arcade Scene

When the program launches there will be a setup process before the user may interact with the software.

The steps to initializing the software will mostly serve to accomodate any games added to the arcade. All steps for the initialization will be:

- Scanning the external "arcade_games" folder for any games to add to the arcade
- generating unique instances of the arcade machine template scene for each game found in the folder
- 
text....

## 4.2 Player Scene
text....

# 5. Data design <a name="section7"></a>
text....
## 5.1 file structure
text....
## 5.2 scene tree structure
text....

# 6. Game state and flow of play <a name="section8"></a>
text....

# 7. Transition to physical design <a name="section9"></a>
text....


