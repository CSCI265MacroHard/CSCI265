
# <a name="section1"></a> CSCI 265 User Acceptance Test Process (Phase 5)

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
1. [ Project Updates ](#section1)
2. [Test Plan](#section2)
3. [Test Components](#section3)
4. [Test Files and Resources](#section4)

# 1. Project Updates <a name="section1"></a>
## Changes in Standard
- Overall improvement to the document
	- Introduction to each section
	- Converted bulletpoints into fulltext
- Added peer review step before merging to development process
- Align documentation of branch model to existing repo

## Changes in Requirements
- Global document renovations
	- Better describes project to team and clients
	- Elaboration on high-priority components
	- GUI merged into other chapters, chapter 6 now describes example game requirements
- Revamped lists of feature behaviours for all components
	- More detail added to sections that were lacking
	- Standardised summary then bullet-points structure
- Removal of extraneous information
	- Scope creep

## Changes in Design
- Global document renovations
	- Structural changes to better fit object orientented implementation
	- Removal of information that didn't belong in design
- Elaboration of each component's logical design
	- Diagrams added to clarify designs
	- Abstraction level lowered to functions with parameters
- High level full-program ERD
	- Relationship between all nodes (objects) in the main scene and mainline data path
	- Hierarchy displayed to clarify efforts in reduced coupling

# 2. Test Plan <a name="section2"></a>

## Key Testing Challenges
"Cyber  Cyber  City's  base  functionality  is a library  of  executables, presented  as an arcade. It  is  made so creators  may  populate  it  with  arcade-style games, for a player  to browse and play."

- Player's perspective versus Creator's perspective
- Automation of tesing states based on user-generated files
- Poor DirAccess Documentation


## Testing Timeline
- Bottom-up priority for test creation
	- "Design" tests first to ensure base program functionality
		- Split test creation by component to each member
		- One complete pass of all component's tests prior to moving to second part
	- "Requirements" test second to ensure any unexpected behaviour isn't from lower level issues
		- Split test creation by component to each member
		- Review of previous test cases based on requirements tests
- Final run of all combined tests

## Testing Cases and Process
- Creator" and "Player" roles
- Subjective cases
	- Inspections of arcade elements
	- Navigation of arcade
- Objective cases
	- Parameters and return values
	- Components in the program where correct behaviour can be measured with scripts

# 3. Test Component <a name="section3"></a>
## Software Tools and Environment
- Within Godot Editor
	- some of the test will use window's file explorer
	- We are using Windows 11
- Godot Unit Tester (GUT) Plugin
	- It allows you to write tests for your gdscript in gdscript.
	- What's included in the class: setup/teardown, assertion, utilities, and GUT utilities
![GUT Plug in](pics/GUT.png)
- Automated  and manual testing will be performed using user action scripts to ensure consistent test coverage. 
- We will test using gdscripts (GUT) stub for specific parts like functions.
- Tools and Utilities will remain under the Godot Editor and the use of GUT Plug-in.


## User Action Scripts

- Used for multi-tool actions performed by creators (game file manipulation)
- Used for player character behaviour tests

- Description:
	- Step-by-step guides for consistent and reproducible manual testing.
	- Detail specific tester actions, expected behavior, and pass/fail criteria.
	- Include prerequisites, precise instructions, and result assessments.
	- Ensure reliability and clarity in validating product features.
	
### Sample Script
**Step 1: Verify the First-Person Point of View**
- Observe the screen. Ensure the Field of View (FOV) is set to 90 degrees.
- Move the camera left, right, up, and down by dragging the mouse.
- **Expected Result:**
		-Horizontal camera rotation is infinite.
		-Vertical camera rotation locks 90 degrees up and down from the horizon.
	
**Step 2: Test Basic Movement Controls**
- Press W: The player character moves forward at approximately 1.4 meters per second.
- Press S: The player character moves backward at the same speed.
- Press A: The player character strafes left at the same speed.
- Press D: The player character strafes right at the same speed.
- **Expected Result**: 
	- Movement corresponds to the input key, matches the described speed, and appears smooth.

**Step 3: Test Interaction Range**
- Approach an interactable object (e.g., a glowing button) within 2 meters of the player character.
- Ensure the object is aligned with the center of the screen.
- Press Left Click to interact.
- **Expected Result**:
	- The defined behavior of the object (e.g., the button lights up or a door opens) occurs.
	- No interaction occurs if the object is outside the 2-meter range or not aligned with the screen center.

**Step 4: Boundary Testing for Interaction**
- Move the player character just outside the 2-meter range of the object.
- Press Left Click to attempt interaction.
- Expected Result: No interaction occurs.
- Move the object off the center of the screen but within 2 meters.
- Press Left Click to attempt interaction.
- **Expected Result**: 
	- No interaction occurs.



## Executables
- Test scripts  written in gdscript
![Executable](pics/exe.png)


# 4. Test File and Resources<a name="section4"></a>

## Version control and branch structure
- Testing files directory treated like a "feature" in version control
- All files included in project directory, but will be excluded from final program compilation
- Done on same branch as Dev but each test is branched as a feature

## Test Directory Structure 
- All within development branch game directory
- Separated by user scripts and test programs
- Test games setup for test cases from both
- Each subsection split into design and requirements folders
- Arranged for easy picking of layers for test programs with GUT

![test_structure](pics/test_structure.png)

## Testing Dependencies
- Windows 10-11 operating system
- A file explorer or command shell
- Project imported into Godot editor (GUT addon bundled in dev branch project folder)
