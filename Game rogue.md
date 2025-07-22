## Game rogue
### Installation on Debian
sudo apt-get install bsdgames-nonfree
### Run
cd /usr/games
./rogue
### Play
Movement:\
 y  k  u   by default, @ moves one space and picks up items or attacks\
  \\ | /    with SHIFT, @ moves as many spaces as possible\
h —+— l  with CTRL, @ moves until something interesting is nearby\
  / | \    use m \<dir> to move without picking up\   
 b  j  n   use f/F \<dir> to attack without moving\
\
Other commands:
- .        - wait (precede with numbers to wait longer)
- \*       - when asked for an item, show inventory
- \>       - go one level down
- \<       - go one level up (only possible with amulet)
- a
- b       - move downleft (see above)
- c \<itm> - call (name) an item (NOT IMPLEMENTED)
- d \<itm> - drop item
- e \<itm> - eat something
- f \<dir> - fight
- F \<dir> - fight to death
- g
- h      - move left (see above)
- i       - show inventory
- I \<itm> - show only a single item (for whatever reason...)
- j       - move up (see above) 
- k      - move down (see above)
- l       - move right (see above)
- m \<dir> - move onto a field without picking up an item
- n       - move downright (see above)
- o
- p
- P       - put on (wear) armor
- q \<itm> - quaff (drink) a potion
- Q       - quit the game
- r \<itm> - read a scroll
- s
- t \<d>\<i>- throw a weapon (for arrows, you need to wield a bow)
- T       - take off armor
- u       - move upright (see above)
- v       - print version number
- w \<itm> - wield (use) a weapon
- W \<itm> - wear armor
- x
- y       - move upleft (see above)
- z \<d>\<i>- zap a wand (against a monster nearby)