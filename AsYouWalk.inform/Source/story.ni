"AsYouWalk" by Jack Murray


[Todo:
	1. Hydration/Drinking
	2. Heat Level increase/reduction
	3. Game Over for both.
	4. Write wasteland descriptions
	5. Add Oasis (disappears after timer). 
]
When play begins:
	now player is in Wasteland;
	now the right hand status line is "Thirst [Thirst]";
	now the left hand status line is " ";
	say "Another day, another desert. That's what my mother used to say."
	
Thirst is initially 50.
Water is initially 10.

Every Turn:
	now the right hand status line is "Thirst [Thirst].";
	now thirst is Thirst minus 5;
	if thirst is less than 0:
		Say "You're dying of thirst.";
	if thirst is less than -20:
		end the story finally saying "You collapse in onto the sandy ground, unable to muster the energy to keep moving. The sands shift.";

	

Instead of drinking:
	Say "You take a sip from your handy canteen.";
	if Water is 0:
		Say " Your canteen is empty.";
	else:	
		if Thirst is less than 0:
			Say " You're still feeling dehydrated.";
		else if Thirst is less than 20:
			Say "You're feeling parched.";
		else if Thirst is less than 30:
			Say "You're feeling thirsty.";
		else if Thirst is less than 40:
			Say " You're feeling quenched.";
		else:
			Say "You are well hydrated!";
		now Water is water minus 1;
		now thirst is thirst plus 20;

Wasteland is a room. 
[Sun is a view.  It is in the Wasteland. " The sun beats down relentlessly."]

Small Tent is a container in Wasteland. "Nearby is your tent. Your only respite from the heat. ".
Instead of entering Small Tent:
	if player is not holding Small Tent:
		Say "You lift the tent flap and go inside. ";
		now player is in Tent Interior;
	else if the player is holding Small Tent:
		Say " Your tent is all packed up. Physics says you can't carry yourself on your own back. Sometimes its ok to rely support from others. Like this soft sandy ground.";
	else if the Small Tent is nowhere:
		Say "You don't see your tent. You left it behind. The shifting sands have surely burried it by now."
	

Understand "set up tent" as dropping

Instead of dropping Small Tent:
	Say " You begin the work of making camp. You've had a lot of practice assembling the tent and complete the task quickly.";
	now Small Tent is in Wasteland.

Sand is in the Wasteland.
Instead of taking sand, say "You pick up a hand full of sand. It slowly falls through your fingers. You're getting sick of sand. Its course and gets everywhere."
[Instead of taking Tent, Small Tent is in Inventory, say "You begin the task of packing up your tent.":]



Instead of going:
	if player is not holding Small Tent:
		now Small Tent is nowhere;
	say "As you walk the sands shift.";
	say " [m1 in row a random number from 1 to 20 of the Table of Musings]";
	say " [m2 in row a random number from 1 to 20 of the Table of Musings]";
	say " [m3 in row a random number from 1 to 20 of the Table of Musings]";
	say "[desc in row a random number from 1 to 20 of the Table of Descriptions]"




Table of Descriptions
desc
"This is room 1."
"This is room 2."
"This is room 3."
"This is room 4."
"This is room 5."
"This is room 6."
"This is room 7."
"This is room 8."
"This is room 9."
"This is room 10."
"This is room 11."
"This is room 12."
"This is room 13."
"This is room 14."
"This is room 15."
"This is room 16."
"This is room 17."
"This is room 18."
"This is room 19."
"This is room 20."
"This is room 21."

Table of Musings
m1	m2	m3
"q"	"w"	"e"


Tent  Interior is a room.
"The interior of the tent is dim. The canvas walls protect you from the sun. The tent flaps lead ouside."
Center pole is a scenery supporter in the tent interior. 
The description of center pole is "This sturdy wooden pole supports keeps the tent standing. You've also used it once or twice to fend off curious wildlife."
Your backpack is a container. "A backpack hangs on the center pole."
Your backpack is on the pole.
Your backpack contains a canteen and a sleepingbag.

Instead of exiting :
	Say " You grab your backpack and exit the tent.";
	now player has backpack;
	now player is in wasteland.
