# MySolarSystemApp
A simple application that shows a fun fact about each planet

## What your app does

My app shows each planet in our solar system with its name, a fun fact, and an image. The home screen consists of a background image of the solar system and a button to view the list of planets. Upon clicking the button, you will be navigated to a screen that displays the planets in a list based on their distance from the sun. (Mercury at the top and Neptune at the bottom). Clicking on any of the planets will display the name, a short description, and an image of the planet. 

## How to run it

1.  Download the project.

2.  Start an emulator or simulator of your choice.

3.  Open a terminal and navigate to the project directory.

4.  Run the following commands:

1.  flutter pub get   # installs dependencies

2.  flutter run       # runs the app

6.  The app should launch on your device/emulator, and you can navigate through each screen.

## Any design choices you made

I used a dark blue color to make the planets and text stand out more. I used ListView.builder for a dynamic planet list (in case Pluto gets added back again). I also used the CircleAvatar to display a little thumbnail image next to the planet's name in the list for quick reference.

For my backend data structure, I had three files: main.dart which holds all the screen widgets and their layout, planet.dart which is a constructor to build a planet that contains the name, description, and image URL. I did this because I could add more to it, like the distance from the sun, its diameter, and temperature. The last file was planetinfo.dart which holds all the information needed to display the planet correctly.
## Demo
https://www.loom.com/share/c08572a7e8b1455dbbadf5f99271226a
