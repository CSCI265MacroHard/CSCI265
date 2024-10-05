# CSCI 265 Team Standards and Processes (Phase 2)

## Team name: MacroHard

## Project name: 'Cyber' Cyber City

## Key contact person and email

 - Alister Lawson, AlisterLawson64@gmail.com (Main Contact)
 - Bruce Fernandes, bruce2005.ind@gmail.com secondary contact
 - Jamie Mano, jamieysabelmano1018@gmail.com
 - Marek Bettzig, bettzig@hotmail.de
 - Nick Biagioni, viud2l_1061684@d2l.viu.ca

## Content

In this document we will be addressing three core areas of standards and processes:
 - Documentation standards and processes
 - Coding standards and processes
 - Version control standards and processes

Each section includes discussion of how those standards/processes will be enforced, and how they will be reviewed for potential updates if/as needed.

## Documentation standards and processes
### Standards
- Documentation will be done according to Professor David Wessels' choice in terms of file types and formatting.
- All documents will be proofread by each member at least once to make it final.
- Documents will be discussed by all members in due time and to avoid conflict all members must bring there concerns up immediatly.
- Team will use the documentation "pics" folder to store images for documentation.
- All presentations for the different phases are saved in the "presentation" folder
- The mechanism for submitting document content/revisions is via a 'Pull request', as described in the version controlsection later in this document.

### Processes
- The Documentation will be divided to be an equal load upon all members.
- The Documentation will be worked on separately or as a group as needed.
- All Documents will be proofread by every member during a meeting.


## Coding standards and processes
### Standards
- Everyone will be working using the software Godot 4.3.
- The team is going to work with the game engine named [Godot](https://godotengine.org).
- The team will be using GDScript within Godot for all programming realted work.
- We will be referencing the [GDScipt style guide](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html).

### Processes
- The team will be referencing the [Godot documentation](https://docs.godotengine.org/en/stable/index.html)for all coding.
- The team will be working together on the 3D Arcade hub world and complete this within Godot.
- The team will then split up and work separatly on each game within the arcade.
- After each game is working as intended, the visual head will take over and create sprites and other front end work for each game.
- The final playtest will be done by team members in order to test for any bugs in each game and the hub world as well.

## Version control standards and processes
### Standards
- The version control will be handled by Marek understudied by Bruce.
- The version control will work in a 5 Branch System.
  - The Master Branch will be our Main Branch with only working versions.
  - The Feature Branch will be the working branch for members to work on individual features.
  - The Development Branch is an amalgamation of multiple features from the Feature Branch.
  - The Testing Branch will have developed versions of the product ready for testing.
  - The Hotfix Branch is for sudden hotfixes to be made to the Master Branch when and if necessary. If a hotfix is made this version will be sent to the next version of the Master Branch and Development Branch.

### Processes
- The version control is handled by Marek and Bruce.
- To develop a feature, pull from the Developer Branch.
- Develop your feature in the local Feature Branch.
- Pull from the Developer Branch once more to check that you are up to date. (If not fix inconsistencies. 
- Communicate that you will make a push, Marek or Bruce will merge the new feature into the Developer Branch.
- After the development of multiple features is complete, a pull request will be made from the Release Branch.
- The Release Branch will then be tested and edited to fix any bugs. If bugs are too big then it will be pushed back to the Development Branch.
- Upon all tests being completed, the version will be sent to the Main/Master Branch and Development Branch for new features.
- If the Main/Master Branch has a massive problem/bug it will be pulled into the Hotfix Branch and the fix will be made as soon as possible. After this, the new version will be pushed into both the main and Development Branch.
- The Development Branch will now be taking the hotfix and incorporating this with any new features added.
