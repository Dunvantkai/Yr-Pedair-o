# Yr-Pedair-o
Pedair-o is my version of tetris for the bbc model b which is a computer that was released in the 1980 by acorn.
## Photos
![alt text](https://raw.githubusercontent.com/Dunvantkai/Yr-Pedair-o/main/Programs_Photos/Game.png)
![alt text](https://raw.githubusercontent.com/Dunvantkai/Yr-Pedair-o/main/Programs_Photos/blocksV2.bmp)
## Behind the name
I chose the name Pedair-o (Welsh for (The four of))as a nod to the name "tetris" as it is derived from the Greek prefix "tetra" meaning to having four parts (as every block in teras is make up of four blocks)
## How i made the Pedair-o and the problems i faced
### How is block data stored? Block Data can be broken down into 3 parts Tile Graphics, Cover Tile Graphics and HitBox  <br><br>
### Hitbox <br>
Hitbox block data is by far the easiest to understand, as it is just a 3D array. <br><br> Since BASIC requires short variable names, 'IBAH' is short for 'I Block Array Hitbox' <br><br>
The first number represents what place it holds in the 3D array like a "Frame" of sorts. the latter two say at X 0 and Y 0 place BL$ that is short for CHR$(255) which is just the small boxes that the bricks are made of<br> This way, it is possible to loop over the current "frame" in the array to make sure there are no collisions." <br>
but i found it to be too slow to check each frame to print the hole array
![alt text](https://raw.githubusercontent.com/Dunvantkai/Yr-Pedair-o/main/Programs_Photos/Code_blocks/HiGRAF.PNG) <br><br><br>
### Tile Graphics <br>
IBA' is short for 'I Block Array'<br><br>
Tile Graphics data is the consequence of the inablilaty to quickly load from the main Screen array, The tile graphics are plastered on top of the screen using the PRINTTAB method and some cheeky cursor movements as It makes each move of the active block more seamless and less laggy and does not wright/save anything till it fails the checkdownmove and gets added to the main Screen array<br>
![alt text](https://raw.githubusercontent.com/Dunvantkai/Yr-Pedair-o/main/Programs_Photos/Code_blocks/iGRAF.PNG) <br><br><br>
### The .Length Problem <br><br> ![alt text](https://raw.githubusercontent.com/Dunvantkai/Yr-Pedair-o/main/Programs_Photos/ropos.bmp) <br><br>
the program was writen in bbc basic which is a dumbed down vertion of Basic it's self
## How to run Pedair-o for your self 
You can run this software either on a model IDE or an emulater via a browser or BeebEm <br><br>
Instruction on how to setup each metthord: <br> Click Here to <a href="#run-pedair-o-on-a-local-computer">Install locally</a> <br> Click Here to <a href="#run-pedair-o-in-a-browser">Run in Browser</a> <br> Click Here to <a href="#run-pedair-o-in-a-browser">Run on IDE</a> <br><br>
<a href="#yr-pedair-o">Top</a>
## Run Pedair-o on a local computer
Step 1: To run Pedair-o on your computer you will first need to download an emulator for the Acorn BBC Model B such as [BeebEm](https://github.com/stardot/beebem-windows/releases/download/4.19/BeebEm419.exe). <br><br>
Step 2: Once intalled you will need to grab Pedair-o's .sdd or its accompanying side project files from [Latest Releases](https://github.com/Dunvantkai/Yr-Pedair-o/releases). <br><br>
Step 3: Now open the BeebEm emulator click "File" : "Load Disk 0...", Then navogate to where you have installed Pedair-o's .sdd File. <br><br>
Step 4: To check if you have successfully Mounted the Disk you can type <b>*CAT</b> in uppercase to show the list of Programs on said disk. <br><br>
Step 5: To load a program into ram type <b>LOAD "PEDAIR"</b> and then  to execute type <b>RUN</b>. Making sure all is typed in uppercase
## Run Pedair-o in a browser
Step 1: To run Pedair-o in a browser you will need an online emulator for the Acorn BBC Model B such as [bbc.xania.org](https://bbc.xania.org/) <br><br>
Step 2: Even though you are running this program in a browser, you will still need to download Pedair-o's .sdd file from [Latest Releases](https://github.com/Dunvantkai/Yr-Pedair-o/releases) to upload it to the website <br><br>
Step 3: open [bbc.xania.org](https://bbc.xania.org/) in a new a tab and open the drop down tab called Discs, Select "From examples of local" and upload your .sdd file <br><br>
Step 4: To check if you have successfully Mounted the Disc you can type <b>*CAT</b> in uppercase to show the list of Programs on said disk. <br><br>
Step 5: To load a program into ram type <b>LOAD "PEDAIR"</b> and then  to execute type <b>RUN</b>. Making sure all is typed in uppercase. <br><br>
> [!NOTE]
> When trying to type the * you may find that it will output a whole different key all-together, I'm not sure why it does this but My guess would be a regional keyboard thing to bypass this i have found that one of thease four characters {~ @ | "} should allow you to type *
