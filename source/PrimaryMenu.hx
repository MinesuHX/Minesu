package;

import flixel.FlxG;
import flixel.FlxSprite;
//import flixel.FlxState;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.util.FlxDestroyUtil;
import flixel.util.FlxSpriteUtil;

class PrimaryMenu extends FlxSubState
{
	public function new()
	{
		super();
	}

	override function create()
	{
		super.create();

		var text = new FlxText();
		text.text = "I am the OtherState.";
		text.color = FlxColor.PINK;
		text.size = 16;
		text.setBorderStyle(FlxTextBorderStyle.SHADOW, FlxColor.RED, 4);
		text.screenCenter();

		var button = new FlxButton(0, 0, "Close SubState", closeSub);
		button.screenCenter();
		button.y = text.y + text.height + 16;

		add(text);
		add(button);
	}

	private function closeSub():Void
	{
		close();
	}
}
