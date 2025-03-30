[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Dzq9z9T4)
# Project 00 For NeXT CS
### Class Period: 04
### Name0: Logan Hau
### Name1: Syed Hussain
---

This project will be completed in phases. The first phase will be to work on this document. Use makrdown formatting. For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

All projects will require the following:
- Researching new forces to impliment.
- Methods for each new force the returns a `PVector` similar to how `getGravity` and `getSpring` (using whatever parameters are necessary).
- A distinct demonstration for each individual force (including gravity and the spring force).
- A visual menu at the top providing information about which simulation is currently active and if movement is on or off.
- The ability to toggle movement on/off
- The ability to toggle bouncing on/off
- The user shoudl be able to switch between simluations using the numebr keys as follows:
  - `1`: Gravity
  - `2`: Spring Force
  - `3`: Drag
  - `4`: Custom Force
  - `5`: Combination

## Phase 0: Force Selection, Analysis & Plan

#### Custom Force: Magnatic Force

### Forumla
What is the formula for your force? Including descriptions/definitions for the symbols. You may include a picture of the formula if it is not easily typed.

<img width="440" alt="image" src="https://github.com/user-attachments/assets/48636fae-2959-494c-a359-32345c1d6b93" />


### Custom Force
- What information that is already present in the `Orb` or `OrbNode` classes does this force use?
  - We need gravity and drag force and velocity from the Orb and OrbNode.

- Does this force require any new constants, if so what are they and what values will you try initially?
  - He would need the charge of the moving particle. But we can let the user make any adjustments they need. Also we need PVector to find the megnatic field.

- Does this force require any new information to be added to the `Orb` class? If so, what is it and what data type will you use?
  - The Charge: Since each object would have different charges, so a charge method need to be established in the Orb.

- Does this force interact with other `Orbs`, or is it applied based on the environment?
  - Yes, it communicate with Orbs by charges.

- In order to calculate this force, do you need to perform extra intermediary calculations? If so, what?
  - Megnatic field. I guess it would be a PVector variable.

### Simulation 1: Gravity
Describe how you will attempt to simulate orbital motion.
Labs and previous HWs

### Simulation 2: Spring
Describe what your spring simulation will look like. Explain how it will be setup, and how it should behave while running.

Labs and Previous HWs

### Simulation 3: Drag
Describe what your drag simulation will look like. Explain how it will be setup, and how it should behave while running.

Labs and Previous HWs

### Simulation 4: Custom force
Describe what your Custom force simulation will look like. Explain how it will be setup, and how it should behave while running.

Setup will contain a line attached to a big circle and there will be a small circle with a heavy colour which act like a megnet. 
First need to declare the strength index of the megnet; then calculate the megnetic field and angle between velocity and magnetic field vectors. For the angle we can use cross(PVector). Then we multiply everything to get the Megnetic force and apply it to the megnet by applyForce(force).

### Simulation 5: Combination
Describe what your combination simulation will look like. Explain how it will be setup, and how it should behave while running.

The plan is described on previous question. Instead of having a normal ball circling around the a megnet, we would have a pendelum near the magnet that would utilise gravity, drag and megnatic force.
