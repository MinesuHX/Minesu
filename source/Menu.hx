package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

import flixel.ui.FlxButton;
import flixel.util.FlxColor;

import sys.FileSystem;
import flixel.text.FlxText;
import Sys; //lowercase and uppercase Sys aer differetn!

import Date;


class Menu extends FlxState
{

var backgroundA:FlxSprite;
var backgroundB:FlxSprite;
var backgroundDots:FlxSprite; // Wallpaper

// Text
var defaultFont:String = "FOT-RodinBokutohPro-B.otf";
var mainColor:Int = 0xff403a46;
// Text Elements
var mainText:FlxText;
var statisticsText:FlxText;
// Date and Time
var currentDate:String;
var properHour:Int;
var isPMTime:Bool;
var systemUsername:String = Sys.environment()["USERNAME"];

	override public function create()
	{
		super.create();

		createWallpaper();

		//trace(Sys.environment);

		mainText = new FlxText(122, 60, 500); // x, y, width
		mainText.text = "Hello World";
		mainText.setFormat(defaultFont, 52, mainColor);
		//mainText.setBorderStyle(OUTLINE, FlxColor.RED, 1);
		add(mainText);

		statisticsText = new FlxText(1801, 70, 500); // x, y, width
		statisticsText.text = "____";
		statisticsText.setFormat(defaultFont, 24, mainColor, RIGHT);
		//statisticsText.setBorderStyle(OUTLINE, FlxColor.RED, 1);
		statisticsText.x = 1801 - statisticsText.width;
		add(statisticsText);

	}

	function createWallpaper(){
		backgroundA = new FlxSprite();
			backgroundA.loadGraphic("assets/images/backgrounds/Wallpaper.png");
			backgroundA.screenCenter();
			backgroundA.color = 0xFFe9ebff;
			add(backgroundA);
		backgroundB = new FlxSprite();
			backgroundB.loadGraphic("assets/images/backgrounds/Gradient.png");
			backgroundB.screenCenter();
			backgroundB.color = 0xFFc7cae5;
			add(backgroundB);
		backgroundDots = new FlxSprite();
			backgroundDots.loadGraphic("assets/images/backgrounds/Dots.png");
			backgroundDots.screenCenter();
			backgroundDots.blend = "screen";
			backgroundDots.alpha = 0.1;
			add(backgroundDots);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		//statisticsText.text = Date.fromString("MM/DD - HH:MM AM") + "\n";
		//
		appGetDate();
	}

	function appGetDate(){ // to whoever sees the first commit of this, say thank you to spile from the haxe discord
		var now = Date.now();
		var hourTwelve:String;

		/*if ((now.getHours() > 12){
				isPMTime = true;
			}else{
				isPMTime = false;
			}*/

		isPMTime = (now.getHours() > 12) ? true: false;
		hourTwelve = (!isPMTime && (now.getHours() < 1) ) ? "12": ("" + now.getHours());
		//trace(isPMTime);

			currentDate = "" + // Blank
			(now.getMonth() + 1) + "/" + (now.getDay()) + " - " + // MM/DD
			hourTwelve  + ":" + // Hours
			padZero("" + now.getMinutes()) + ":" + /*padZero("" + now.getSeconds()) +*/ (if (isPMTime) " PM" else " AM") + // Minutes + Seconds + AMPM
			#if debug
			"\nDebug build ran by " +
			#end
			"" + systemUsername;
			// https://discord.com/channels/162395145352904705/165234904815239168/886052839137378384


			statisticsText.text = currentDate;
    }

    function padZero(s:String):String {
		return (s.length == 1) ? "0" + s : s;
	}

}
