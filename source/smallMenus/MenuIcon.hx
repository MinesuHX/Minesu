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
	// Clipping code. Google AI (top of searches) seemed to basically regurgitate it lol.
public var back:FlxSprite;
public var middle:FlxSprite;
public var frntGraphic:FlxSprite;
public var front:FlxSprite;

var iconGraphic:String;
var selected:Bool;

    public function new(x:Int, y:Int, iconGraphic:String){

			super(x, y);

            back = new FlxSprite();
			back.loadGraphic("assets/images/menuBody/mainMenu/Icon Borders.png", true, 170, 170);
			back.y = y;
			back.x = x;
			back.animation.add("idle", [0], 1);
			back.animation.add("select", [1], 1);
			back.updateHitbox();
			add(back);

			middle = new FlxSprite();
			middle.loadGraphic("assets/images/menuBody/mainMenu/Icon Filling.png");
			middle.y = y;
			middle.x = x;
			//add(middle);

			frntGraphic = new FlxSprite();
			//frntGraphic.loadGraphic("assets/images/menuBody/mainMenu/exampleIcon1.png", true, 175, 125);
			frntGraphic.loadGraphic("assets/images/menuBody/mainMenu/" + iconGraphic + ".png");
			frntGraphic.y = y;
			frntGraphic.x = x;
			//frntGraphic.pixels.copyPixels(middle.pixels, null, null, middle.pixels, null, true);
			//add(frntGraphic);

			front = new FlxSprite(200, 100);
			//front.loadGraphic("assets/images/menuBody/mainMenu/exampleIcon1.png", true, 175, 125);
			//front.loadGraphic("assets/images/menuBody/mainMenu/" + iconGraphic + ".png");
			front.y = y;
			front.x = x;
			//front.pixels.copyPixels(middle.pixels, null, null, middle.pixels, null, true);
			FlxSpriteUtil.alphaMaskFlxSprite(frntGraphic, middle, front); // Seems the image I wanted to mask needed to go before what needed to be masked. Maybe it was in an update? I do not know.
			add(front);

    }

}
