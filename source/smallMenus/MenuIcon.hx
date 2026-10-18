package smallMenus;

import flixel.FlxG;
import flixel.FlxSprite;
//import flixel.FlxSubState;
import flixel.group.FlxSpriteGroup;
//import flash.display.BitmapData;
import flixel.util.FlxSpriteUtil;

// For potential icon movement.
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;

class MenuIcon extends FlxSpriteGroup{
	// Reference A: https://github.com/FunkinCrew/Funkin/blob/main/source/funkin/ui/freeplay/SongMenuItem.hx
		// Heavy reference as I've not worked with FlxSpriteGroups before and I just didn't want to get any example code up.
	// Reference B: https://coinflipstudios.com/devblog/?p=421
		// Clipping code. Google AI (top of searches) seemed to basically regurgitate it lol. Note: I didn't use what Google regurgitated, I went straight to the source. B)
public var border:FlxSprite;
public var iconMask:FlxSprite;
public var iconToBeClipped:FlxSprite;
public var icon:FlxSprite;

var iconGraphic:String;
var selected:Bool;

var type:Int; // For the animate function.
public var isVisible:Bool; // Is meant to determine if the icon is visible.
public var currentStatus:String; // Like the prior variable, but more advanced.

var gameConfig = haxe.Json.parse("{}");

    public function new(x:Int, y:Int, iconGraphic:String){ // iconGraphic will just be JSON loading, lol.
			super(x, y);

						border = new FlxSprite();
						border.loadGraphic("assets/images/menuBody/mainMenu/Icon Borders.png", true, 170, 170);
						border.animation.add("idle", [0], 1);
						border.animation.add("select", [1], 1);
						border.updateHitbox();
						border.alpha = 0.01;
						add(border);

			if (iconGraphic != null){
						gameConfig = haxe.Json.parse(sys.io.File.getContent('external/games/config/' + iconGraphic + '.json'));

						border.visible = true;
						iconMask = new FlxSprite();
						iconMask.loadGraphic("assets/images/menuBody/mainMenu/Icon Filling.png");
						iconMask.y = y;
						iconMask.x = x;
						iconMask.updateHitbox();
						iconMask.alpha = 0.01;

						iconToBeClipped = new FlxSprite();
						iconToBeClipped.loadGraphic("assets/images/menuBody/mainMenu/default.png"); // Default.

						if (gameConfig.icon != null)
							iconToBeClipped.loadGraphic("external/games/icons/" + gameConfig.icon + ".png");
						else
							iconToBeClipped.loadGraphic("external/games/icons/" + iconGraphic + ".png");

						iconToBeClipped.updateHitbox();
						iconToBeClipped.y = y;
						iconToBeClipped.x = x;
						iconToBeClipped.alpha = 0.01;


			icon = new FlxSprite();
			FlxSpriteUtil.alphaMaskFlxSprite(iconToBeClipped, iconMask, icon); // Seems the image I wanted to mask needed to go before what needed to be masked. Maybe it was in an update? I do not know. Confusing crap.
			icon.updateHitbox();
			icon.alpha = 0.01;
			add(icon);
			var timer:FlxTimer = new FlxTimer();
				timer.start(0.25, (_) -> { animate(1); });

			}else{

				border.visible = false;
				trace("Expected: " + iconGraphic + "at XY:" + x + "," + y);

			}

    }

    public function animate(type:Int){ // 0 for death/dissapear, 1 for spawning in, and maybe if I feel like it, two would be a "shaking" incase say an icon were to be moved. Only hypothetical however.

				switch type{
					// Dissapear, assumes that the icon sprite has been made fully visible already.
					case 0:{
								FlxTween.tween(icon, {alpha: 0.01}, 0.65, {ease: FlxEase.expoInOut});
								FlxTween.tween(border, {alpha: 0.01}, 0.5, {ease: FlxEase.expoInOut});
								// The reason the border gets tweened as well is since the icon variable is the focus part being clipped onto the "decorator" as one sprite. But the border is a seperate sprite, so that has to be tweened as well.
								//I could make the border and icon sprite into another combined/clipped sprite, but that would be too much work.
								isVisible = false;
								currentStatus = "hidden";
					}
					// Summon, assumes that the icon sprite has been created already with an alpha of 0.01.
					case 1:{
							FlxTween.tween(icon, {alpha: 1}, 0.65, {ease: FlxEase.expoInOut});
							FlxTween.tween(border, {alpha: 1}, 0.5, {ease: FlxEase.expoInOut});
							isVisible = true;
							currentStatus = "visible";
					}
				 	// Shaking. Make it rotate to -8 and 8 degrees.
					case 2: trace("This feature has not been implemented yet!"); animate(0);
				}

    }

}
