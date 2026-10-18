package;

import flixel.FlxGame;
import openfl.display.Sprite;
import flixel.FlxG;

import haxe.ui.Toolkit;

// Crash Handler
	import lime.app.Application;
	#if CRASH_HANDLER
		import openfl.events.UncaughtErrorEvent;
		//import dge.states.ErrorState;
		import haxe.CallStack;
		import haxe.io.Path;
	#end

class Main extends Sprite
{
	public function new()
	{ // The first line is for the transparent fade-in effect at the start of the program.
		lime.app.Application.current.window.opacity = 0;
		super();
		Toolkit.init();
		//#if debug Application.current.window.alert("This software is still in development.", "Disclaimer"); #end
		addChild(new FlxGame(1920, 1080, Menu));
		FlxG.mouse.load('assets/images/cursor.png');

		// Refer to this:
				// https://github.com/DibyoExcel/Dragon-Engine/blob/c0fc2b6d7eaa01d7d6bc4cd82bca013ad3a2ff58/source/Main.hx#L166
				// For potential crash handler method.

		// Code referenced from the "Dragon Engine" source code which apparently was written entirely by "sqirra-rng"
			#if supports_crash_handler
				function onCrash(e:UncaughtErrorEvent):Void{
						trace("Fatal Error! " + e.error);
						Application.current.window.alert(e.error, "Fatal Error!"); // Temporary before I make it fancy!


				}
			#end
	}
}
