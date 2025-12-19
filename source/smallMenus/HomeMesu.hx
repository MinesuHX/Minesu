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
				testPoop = new MenuIcon(horizPositions[i], verticPositions[h], "exampleIcon1");
				//testPoop = new MenuIcon(20, 45, "exampleIcon1");
				//testPoop.updateHitbox();
				add(testPoop);

				curMadeSelectionIcons.add(testPoop);
			}
		}

		/*var testPoop:MenuIcon;
		testPoop = new MenuIcon(verticPositions[0], horizPositions[0], "exampleIcon1");
		//testPoop = new MenuIcon(20, 45, "exampleIcon1");
		add(testPoop);*/

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
