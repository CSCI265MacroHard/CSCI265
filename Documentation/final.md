
# <a name="section1"></a> CSCI 265 Final Demo (Phase 6)

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
1. [Final Updates](#section1)
2. [End State of the Product](#section2)
3. [Review the Organizational Aspects of the Project](#section3)
4. [Review the Technical Aspects of the Project](#section4)


# 1. Final Updates <a name="section1"></a>
## Ticket Shop and Ticket / Token Economy
A ticket shop has been introduced to the game, managed by the NPC Bruce, who serves as the shopkeeper. Players can interact with Bruce to access the shop and purchase items from a predefined list. Available options include upgrading various arcade games or converting tokens into additional tickets.

Additionally, a Ticket/Token economy has been implemented. Players now earn tokens and tickets by playing arcade games, with rewards based on their high scores. Tickets are used to start games at arcade machines, while tokens function as the in-game currency for shop transactions. Tickets can also be found scattered throughout the arcade hub world for players to collect.

## Improvements to the Hub World
The Arcade Hub World has undergone several visual and functional enhancements. Key updates include:

- Improved visuals, such as redesigned windows, plants, arcade machine models, a jukebox, a shop counter, and a door.
- Arcade machines have been upgraded from 2D sprites to textured 3D models for a more immersive experience.
- The hub now features additional arcade games, which players can find and play.
- The shop NPC, positioned behind a counter, clearly signals that items can be purchased here.

On one side of the arcade, players will now find a door. Interacting with the door allows players to exit and close the game.

## Improvements to Arcade Games
Arcade games now integrate upgrades that players can purchase from the shop. These upgrades modify various aspects of gameplay, such as:

- Adjusting game speed.
- Providing bonuses to high scores.
- Other gameplay enhancements.

Additionally, arcade games now offer the option to exit directly back to the hub world. Previously, players were stuck in the game environment even after completing gameplay.

## Jukebox
A jukebox has been added to a corner of the arcade. Players can interact with it to play music, adding a lively atmosphere to the hub world.

# 2. End State of the Product <a name="section2"></a>
- The group successfully made an arcade environment that had 2 working games on it such as 2Cool4Pool and Jetris. 
- Second, we also had a working 3D environment to host our arcade, in which you can move inside and interact with the objects.
- Cutting of features such as Audio System and other games (Blutsauger Superschlager).
	- Estimated time to implement this would take at least another month, a semester for a stretch, since the group needs to learn the Audio System and make another game which also requires assets and resources.
- Built-in Games: Pool, Jetris, and Street Fighter. These are the final games being implemented in the arcade. 
- Focused on implementing static NPCs, import games, arcade environment generation, and Ticket Shop.
	- NPCs could still be made alive by having them walk around the arcade or interact in pre-set ways, like cheering when players win or giving out tickets for achievements. 
	- Import feature would still allow players to upload custom-made games to your arcade platform.
	- Arcade Environment Generation still involves creating dynamic arcade environments, likely a variety of rooms and layouts.
	- A new working Ticket Shop is populated with each game's config folders that a creator sets up with this format (name, pip, argument, cost).
 
<strong> Player Gameplay Loop </stong>
- The game starts with the user spawning inside the arcade with limited amount of tickets.
- Movements are WASD and interaction between each element is by clicking it with the trackpad/mouse.
- There are 2 built-in games you could play, Pool and Tetris.
- Earn as many tickets by playing each game to afford upgrades within the ticket shop.
- You could return the upgrades bought in the ticket shop.
- You could also play the jukebox to set up some background music.
- Exiting within the game is by walking out the door.

<strong> Creator Loop </strong>
- Icon
- Skin, 128x256, pixels, .png
	- Argument handling 
- Any argument the game accepts as a string
- Upgrade config
	- .json
	- Godot dictionary

 
<strong> Cut Features </strong>
Some planned features, primarily aimed at enhancing the arcade's atmosphere and creating a more lively and immersive environment, were ultimately cut from the final game. These included:
**Additional NPCs**

- Alister and Nate NPCs: Originally, two additional NPCs were planned to give the arcade a "lived-in" feeling.
- Expanded NPC functionality:
  - NPCs were intended to feature canned voice lines triggered by player actions.
  - NPCs were designed to walk around the arcade, interact with dummy arcade machines (which players couldn't interact with), and generally enhance the environment.
  - NPCs were also planned to engage in minor interactions with the player.

**Audio System**

- A dynamic audio system was planned, where arcade machines would emit localized sound effects in a radius. Players would hear the sound of different machines depending on their position in the hub world.

**Simplifications to Existing Features**

- Jukebox:
  - Initially designed to include multiple soundtracks and a menu, allowing players to select, skip, or rewind tracks.
- Shop:
  - The shopkeeper was originally planned to switch sprites and display purchased items in hand for added interaction.

**Save and Load System**

- A general save and load mechanic was planned but cut due to time constraints, limiting the player's ability to preserve progress.

**Future Considerations**

If the team had more development time, the priority would be adding these features alongside programming new arcade games. Implementing the cut features (excluding new games) would require an estimated two weeks of programming time.

# 3. Review the Organizational Aspects of the Project <a name="section3"></a>

The project lasted at least 5 months, during which the team handled a large scope of work. Members were responsible for building games as well as developing other features like the Ticket Shop, the arcade itself, and various assets. Therefore, focusing more on the primary goals was the key organizational decision the team made.

- The arcade environment worked well, so we decided to keep it.
- Importing games worked with Infinite Pizza, so the ability to import external games became our main focus.
- The pool game worked as a built-in feature, so adding 2-3 more games would provide a well-rounded arcade experience.

If given a do-over, it would have been beneficial for all team members to learn the Godot system from the start, enabling everyone to contribute more effectively. This would also speed up the development process, creating more space for additional features.



# 4. Review the Technical Aspects of the Project <a name="section4"></a>

The implementation with Godot has proven to be smooth and efficient, with the engine's flexibility allowing us to build complex mechanics without unnecessary complications. The flexibility of Godot has allowed us to focus on building a great arcade experience without getting bogged down by technical limitations. Additionally, the possibility of extending the project further, either with additional games or by refining existing systems, makes Godot a compelling choice for our team.

<strong> Maintenance </strong>
- With the end of the project here we basically do not have much to maintain,
- As you saw, the project auto enlarges with increase in the number of games.
- There will be need for minor bugfixes when necessary but otherwise the need for maintenance is minimal.
- We hope to bring some amount of updates which will simply add new features even after this class but the main takeaway is that we learnt a great deal through this course in terms of team management, coding and godot in specific.

