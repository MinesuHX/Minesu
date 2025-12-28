package smallMenus;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.group.FlxSpriteGroup;
import smallMenus.MenuIcon;

class HomeMesu extends FlxSubState
{

var horizPositions:Array<Int> = [141, 341, 541, 741, 941, 1141];
var verticPositions:Array<Int> = [302, 502, 702, 902];

var menuIconBorder:FlxSprite;
var curMadeSelectionIcons:FlxTypedGroup<MenuIcon>; // These both have to be changed, whoops!

var homeLayout = haxe.Json.parse(sys.io.File.getContent('external/games/home_layout.json'));

	public function new()
	{
		super();
	}

	override function create()
	{
		super.create();

		curMadeSelectionIcons = new FlxTypedGroup<MenuIcon>();
		add (curMadeSelectionIcons);

		for (h in 0...verticPositions.length){
			for (i in 0...horizPositions.length){
				/*menuIconBorder = new FlxSprite();
				menuIconBorder.loadGraphic("assets/images/menuBody/mainMenu/Icon Borders.png", true, 170, 170);
				menuIconBorder.animation.add("idle", [0], 1);
				menuIconBorder.animation.add("select", [1], 1);
				menuIconBorder.animation.play("idle");
				menuIconBorder.x = horizPositions[i];
				menuIconBorder.y = verticPositions[h];
				menuIconBorder.updateHitbox();*/

				var testPoop:MenuIcon;
				//testPoop = new MenuIcon(horizPositions[i], verticPositions[h], "exampleIcon1");
				// vPos aligns with 0, 1, 2, and 3.
				// hPos aligns with the arrays.

				switch (verticPositions.indexOf(h)){
					case 0: trace("zero");
				}


				testPoop = new MenuIcon(horizPositions[i], verticPositions[h], "smb1r"); // Replace with something in the homeLayout JSON somehow.
				//add(testPoop);

				curMadeSelectionIcons.add(testPoop);
				//trace("Entry: " + horizPositions[i] + ", " + verticPositions[h] + ".");
			}
		}
	}

	override function update(elapsed:Float){

		super.update(elapsed);

		for (h in 0...curMadeSelectionIcons.members.length){
			if (FlxG.mouse.overlaps(curMadeSelectionIcons.members[h]))
				curMadeSelectionIcons.members[h].border.animation.play("select");
			else
				curMadeSelectionIcons.members[h].border.animation.play("idle");
		}

		for (i in 0...curMadeSelectionIcons.members.length){
			if (FlxG.mouse.overlaps(curMadeSelectionIcons.members[i]))
				curMadeSelectionIcons.members[i].border.animation.play("select");
			else
				curMadeSelectionIcons.members[i].border.animation.play("idle");
		}



	}

	private function closeSub():Void
	{
		close();
	}
}
