package smallMenus;

import flixel.FlxG;
import flixel.FlxSprite;
//import flixel.FlxSubState;
import flixel.group.FlxSpriteGroup;
//import flash.display.BitmapData;
import flixel.util.FlxSpriteUtil;

class MenuIcon extends FlxSpriteGroup{
// Reference A: https://github.com/FunkinCrew/Funkin/blob/main/source/funkin/ui/freeplay/SongMenuItem.hx
	// Heavy reference as I've not worked with FlxSpriteGroups before and I just didn't want to get any example code up.
// Reference B: https://coinflipstudios.com/devblog/?p=421
	// Clipping code. Google AI (top of searches) seemed to basically regurgitate it lol. Note: I didn't use what Google regurgitated, I went straight to the source.
public var border:FlxSprite;
public var iconMask:FlxSprite;
public var iconToBeClipped:FlxSprite;
public var icon:FlxSprite;

var iconGraphic:String;
var selected:Bool;

    public function new(x:Int, y:Int, iconGraphic:String){

			super(x, y);

            border = new FlxSprite();
			border.loadGraphic("assets/images/menuBody/mainMenu/Icon Borders.png", true, 170, 170);
			//border.y = y;
			//border.x = x;
			border.animation.add("idle", [0], 1);
			border.animation.add("select", [1], 1);
			border.updateHitbox();
			add(border);

			iconMask = new FlxSprite();
			iconMask.loadGraphic("assets/images/menuBody/mainMenu/Icon Filling.png");
			iconMask.y = y;
			iconMask.x = x;
			iconMask.updateHitbox();
			//add(iconMask);

			iconToBeClipped = new FlxSprite();
			//iconToBeClipped.loadGraphic("assets/images/menuBody/mainMenu/exampleIcon1.png", true, 175, 125);
			iconToBeClipped.loadGraphic("assets/images/menuBody/mainMenu/" + iconGraphic + ".png");
			iconToBeClipped.updateHitbox();
			//iconToBeClipped.y = y;
			//iconToBeClipped.x = x;
			//iconToBeClipped.pixels.copyPixels(iconMask.pixels, null, null, iconMask.pixels, null, true);
			//add(iconToBeClipped);

			icon = new FlxSprite();
			//icon.loadGraphic("assets/images/menuBody/mainMenu/exampleIcon1.png", true, 175, 125);
			//icon.loadGraphic("assets/images/menuBody/mainMenu/" + iconGraphic + ".png");
			//icon.y = y;
			//icon.x = x;
			//icon.pixels.copyPixels(iconMask.pixels, null, null, iconMask.pixels, null, true);
			FlxSpriteUtil.alphaMaskFlxSprite(iconToBeClipped, iconMask, icon); // Seems the image I wanted to mask needed to go before what needed to be masked. Maybe it was in an update? I do not know.
			icon.updateHitbox();
			add(icon);

    }

}
