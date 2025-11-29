package smallMenus;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.group.FlxGroup.FlxTypedGroup;

class HomeMesu extends FlxSubState
{

var horizPositions:Array<Int> = [141, 341, 541, 741, 941, 1141];
var verticPositions:Array<Int> = [302, 502, 702, 902];

var menuIconBorder:FlxSprite;
var curMadeSelectionIcons:FlxTypedGroup<FlxSprite>;

	public function new()
	{
		super();
	}

	override function create()
	{
		super.create();

		curMadeSelectionIcons = new FlxTypedGroup<FlxSprite>();
		add (curMadeSelectionIcons);

		for (h in 0...verticPositions.length){
			for (i in 0...horizPositions.length){
				menuIconBorder = new FlxSprite();
				menuIconBorder.loadGraphic("assets/images/menuBody/mainMenu/Icon Borders.png", true, 170, 170);
				menuIconBorder.animation.add("idle", [0], 1);
				menuIconBorder.animation.add("select", [1], 1);
				menuIconBorder.animation.play("idle");
				menuIconBorder.x = horizPositions[i];
				menuIconBorder.y = verticPositions[h];
				menuIconBorder.updateHitbox();
				curMadeSelectionIcons.add(menuIconBorder);
			}
		}

	}

	override function update(elapsed:Float){

		super.update(elapsed);

		for (h in 0...curMadeSelectionIcons.members.length){
			if (FlxG.mouse.overlaps(curMadeSelectionIcons.members[h]))
				curMadeSelectionIcons.members[h].animation.play("select");
			else
				curMadeSelectionIcons.members[h].animation.play("idle");
		}

		for (i in 0...curMadeSelectionIcons.members.length){
			if (FlxG.mouse.overlaps(curMadeSelectionIcons.members[i]))
				curMadeSelectionIcons.members[i].animation.play("select");
			else
				curMadeSelectionIcons.members[i].animation.play("idle");
		}



	}

	private function closeSub():Void
	{
		close();
	}
}
