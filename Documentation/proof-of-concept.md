# CSCI 265 update from Phase2 (Phase 3)
## Team name: MacroHard
## Project/product name: 'Cyber' Cyber City
## Contact person and email

The following person has been designated the main contact person for questions from the reader:

   - Alister Lawson, AlisterLawson64@gmail.com main contact
   - Bruce Fernandes, bruce2005.ind@gmail.com secondary contact
   - Jamie Mano, jamieysabelmano1018@gmail.com
   - Marek Bettzig, bettzig@hotmail.de
   - Nick Biagioni, viud2l_1061684@d2l.viu.ca

# 1. Technical challenges

In this section, we outline four key technical hurdles that are important for the successful implementation of the project:

- 3D environment
- Video streaming, audio, and lighting
- Ticket shop UI
- Communication loop and program integration
- Arcade layout generation

Each of these aspects is essential for realizing the game's vision or plays a core role in the gameplay loop.

## 1.1 3D Environment

The 3D environment was the first hurdle in the game's implementation. Our main concern was whether it would be possible to program a 3D game within the semester's timeframe. The focus of this issue was creating a 3D environment that allowed players to move around within it.

## 1.2 Video streaming Audio/Lighting (Nick TODO)
Text...

## 1.3 Ticket Shop UI (Jamie TODO)
Text...

## 1.4 Communication loop and importing programs (Alister TODO)
Text...

## 1.5 Arcade Layout Generation (Bruce TODO)
Text...


# 2. Approach to meet each challenge

## 2.1 3D Environment

At the outset, we developed a backup plan in case we were unable to create the 3D environment. This plan involved downsizing the project to a 2D environment with a top-down view of the player character. To tackle the challenge more effectively, we divided the requirements into four parts:

- Creating a 3D world using the Godot game engine 
- Developing a movable character in the 3D world (in this case, the camera as the player)
- Designing NPCs that can be placed within the 3D world
- Transitioning from the 3D world into gameplay using the player character and objects in the environment

## 2.2 Video streaming Audio/Lighting (Nick TODO)
Text...

## 2.3 Ticket Shop UI (Jamie TODO)
Text...

## 2.4 Communication loop and importing programs (Alister TODO)
Text...

## 2.5 Arcade Layout Generation (Bruce TODO)
Text...


# 3. Assets produced

## 3.1 3D Environment

To create the 3D world for the arcade, we utilized Godot's grid system. This involved assembling a collection of tiles that we could use to construct the arcade, including floor and wall tiles with all possible rotations. Each tile's mesh is combined with a texture and a hitbox, allowing the player to walk on them and preventing them from passing through walls.

Once the arcade was complete, we implemented the player character for player control. To enhance immersion, we chose a first-person view by not using a 3D mesh for the player character and instead employing the in-game camera to represent the character. We then set up a control scheme that allowed the player to move the camera around and navigate the 3D world. The controls included adjusting the camera's position and rotation. Additionally, we fitted the character with a collision box to ensure it could interact properly with the environment.

Next, we aimed to include interactive elements in the world. We created an NPC blueprint that could be used for various character types. This included an NPC sprite to be displayed within the world, along with a collision box. Due to time constraints, we opted not to use 3D meshes for the NPCs, giving them a more cardboard cutout appearance. To prevent the NPCs from disappearing when the player walked behind them, we programmed them to always face the player.

Finally, we needed to test that the player could actually enter an arcade game through the 3D environment. For this, we utilized a pool game that had already been developed by one of the group members. We created a mesh and textures for the pool table to place it within the 3D world, ensuring it had a collision box so that other elements could interact with it. Additionally, we implemented a script that switches the current game scene to the pool game scene when the player interacts with the pool table.

## 3.2 Video streaming Audio/Lighting (Nick TODO)
Text...

## 3.3 Ticket Shop UI (Jamie TODO)
Text...

## 3.4 Communication loop and importing programs (Alister TODO)
Text...

## 3.5 Arcade Layout Generation (Bruce TODO)
Text...


# 4. Results and implications

## 4.1 3D Environment

The proof of concept was a success, bringing the foundational features to life. This was the first major prototype we built to begin developing the actual game. As a result, the proof of concept served as the foundation for the rest of the game and was incorporated into the repository. Most major features planned for implementation are simply extensions of these core functionalities. The backup plan of creating a 2D arcade was discarded due to the successful realization of the 3D environment. Furthermore, additional smaller features, such as jumping and interacting with NPCs, were successfully implemented on top of the groundwork established by this proof of concept.

## 4.2 Video streaming Audio/Lighting (Nick TODO)
Text...

## 4.3 Ticket Shop UI (Jamie TODO)
Text...

## 4.4 Communication loop and importing programs (Alister TODO)
Text...

## 4.5 Arcade Layout Generation (Bruce TODO)
Text...