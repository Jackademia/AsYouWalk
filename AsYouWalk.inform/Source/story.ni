"AsYouWalk" by Jack Murray

Release along with an interpreter.
Release along with source text.
Release along with the introductory booklet.

[Todo:
	1. Hydration/Drinking
	2. Heat Level increase/reduction
	3. Game Over for both.
	4. Write wasteland descriptions
	5. Add Oasis (disappears after timer). 
]
When play begins:
	now the right hand status line is "Thirst [Thirst]";
	now the left hand status line is "Water [Water] ";
	say "You find yourself in a strange desert. The strangeness is primarily because you don't recall being in a desert when you went to sleep last night. Yet you feel that this is a familliar place. Like  you've been here before.  The desert extends in every direction. The sun beats down relentlessly drawing moisture from your body. ";
	say "Another day, another desert. That's what my mother used to say.";
	now player is in Wasteland;
	
Thirst is initially 60.
Water is initially 10.
Hour is initially 0.
Every Turn:
	now the right hand status line is "Thirst [Thirst].";
	if Hour is less than 6:
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
	now Hour is Hour plus 1;
	say "As you walk the sands shift. The terrain is unrecognizable. You are just as lost as before." ;
	say "[m1 in row a random number from 1 to 20 of the Table of Musings] [line break]";
	say "[m2 in row a random number from 1 to 20 of the Table of Musings] [line break]";
	say "[m3 in row a random number from 1 to 20 of the Table of Musings] [line break]";
	if Hour is less than 6:
		say "[desc in row a random number from 1 to 15 of the Table of Descriptions]";
	else if Hour is 6:
		say "The sun falls over the distant horizon bringing in the darkness. With the darkness comes the cold. A relief  [line break]from this endless heat.";
	else if Hour is greater than 6:
		say "[desc in row a random number from 1 to 15 of the Table of Night]";
	if hour is greater than 12:
		say "The sun tips back over the horizon. With it the first waves of heat. Welcoming in the day. Like an unwanted visitor.";
		now Hour is 0;	




Table of Descriptions
desc
"There is only sand in every direction. You wonder if there is any end to this wasteland."
"The ground here is firmer than usual indicating that there may stone underneath the layer of sand. To the east you see an outcropping."
"In the distance the north you can see the ruins of some large buildings. A monument to some past glory."
"On the ground there are 2 sets of footprints. One traveling west, the other moving to the east. You wonder if the two travelers ever met."
"A cool breeze from the south wafts across your face. A faint smell of salt. It can't possibly be a sea. Right?"
"You've been walking for a while. Yet the sun remains fixed directly above your head casting strange shadows in every direction."
"Dunes stretch out in every direction."
"To the west you see what could be the outline of trees. To the east lies a flat expanse of sand. To the north more dunes. Something unspeakable lies to the south. "
"A strong wind is kicking up sand. There is visibility is low. You could lose your way if you aren't careful."
"A river runs through here. The water is rising. Lapping at your shoes. Then suddenly it is gone. ."
"The sand blasted wasteland extends in all directions. In the distance to the west you think you see a caravan."
"Your thoughts race wildly. Your mind is full of activity. Not like this desert. To the west lies the outline of an oasis."
"To the east lies hope.  To the west lies familiarity. To the south lies family. The north is unknown."
"You find yourself standing on a tall dune. To the south is a steep slope leading down. North leads further up the slope. The dune extends to the east and west."
"The sky is bright, but you still see the stars. The brightest one shines to the south. To the north is a deep red star."

Table of Night
desc
"They say it gets dark at night. This is true in more ways than one. I've lost the way."
"The stars in the sky seem to shift. Guiding you further west."
"In the distance to the north you see the shifting outlines of shapes moving in the darkness. Could they be people braving the wasteland night?"
"Just ahead you see a light. Flickering softly in the darkness of the night. Calling you forward."
"From the south a horrifying sound. Of inconsolable rage. Of unending hunger. Unquenchable desire. Fear permiates your bones."
"There is something out here with you. You haven't seen anything. But you can feel the malevolent presence. Stalking you. Nearer now than before. You cannot stay here."
"Dust swirls in the wind. To the south you see something in the milling grains of sand. A face? Do you recognize it?"
"Alone with your thoughts. Among an endless plane. Nothing but featureless flat land extending into the darkness."
"Looking up at the stars. To the south shines a light, bright like the end of a tunnel. To the north a deep red wound hangs in the night sky."
"Darkness to the south. The east a blank canvas set agains the night sky. The west contains the looming silhouettes of the dunes. The north is a reflection."
"You find yourself standing at the top of a dune. To the north the mound descends into darkness. Is it an effect of the night, or is it too dark?"
"A dark shadow passes over your head, obscuring the light of the moon. Whatever caused it seems to be heading east."
"To the east you see what could be the light of a campfire. "
"The edges of the plateau drop away to the east and the west. What lies to the north remains hidden. Your heard skips a beat at the thought of going south."
"The darkness obscures your vision. No stars are visible and the moon has disappeared. "


Table of Musings
m1	m2	m3
"It is always surpsing what we are willing to see among the dunes."	"You don't think there have been any reports of worms in this desert."	"It is a struggle. This journey."
"The sun beats down. The sand glows a warm orange with the reflected light."	"Climbing through the dunes. Like words on a page. An endless reading."	"Yet you perservere."
"Grains of sand [line break]  cascading [line break] as if the world was an hourglass."	"The horizon stretches out before you. Drawing you ever Forward."	"Carry on. If only to prove you can."
"You are alone with your thoughts. A personal hell."	"If only you could slow your mind down. Maybe then you wouldn't be so tired. "	"Coming here wasn't a mistake. Was it?"
"Do you remember how you got here?"	"What are you running toward?"	"What are you running from?"
"You hate sand. Its course and gets everywhere."	"You know you can do better."	"Remember to take a break every couple of hours. "
"Do you remember when there were plants? A green planet. How strange."	"Do you remember animals? They came in all shapes and sizes."	"Its a dry heat."
"Despite everything behind you, you are still here."	"Despite everything ahead of you, you're going to be amazing."	"Its not so bad once you get used to the humidity."
"The sand makes it dificult to walk. Your progress is slow."	"Step. Step. Slide. Step. Slide. Slide."	"This path leads somewhere. It must. "
"What is that in the distance? You're not sure. Its too far to see. "	"If only you'd been somewhere else. Some kind of gorge or ravine sounds nice. "	"You can only wander."
"How often have you been here?"	"The endless trek. From here to there."	"Surely there must be more than this."
"Isolation is hard. It never gets any easier."	"Existing in your own mind is a challenge."	"This challenge no end. Not for you."
"How do we decide what is important?"	"Everything changes in a moment. "	"Change is a constant. Always in flux. It does not exist within a single moment. "
"There is peace in solitude. "	"Like looking through a window. Where everything is external."	"You want to be there, but cannot summon the courage."
"Your shoes are always full of sand. No matter how much you try."	"Its like there is something stopping you. A barrier preventing comprehnsion."	"It feels as if you are incomplete."
"It's a crisis of creativity. "	"Like the essence of humanity."	"Building an infinite reality."
"What is the present?"	"A past we cannot shed"	"Is there an alternative?"
"I used to be a king."	"But they took everything."	"They even stole my crown."
"Here behind those eyes. There is something you should know. "	"We are all fooled into thinking. That a small group of friends cannot change the world."	"Gut wrenching business."
"Patiently, madness waits in line."	"Tonight you'll howl with the wolves. "	"As though you could reach out [line break] and take this chance to lift off."


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
