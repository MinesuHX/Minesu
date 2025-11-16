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
var backgroundDots:FlxSprite;
var currentDate:String;

//	var TextFormat = {

	var defaultFont:String = "FOT-RodinBokutohPro-B.otf";
	var mainColor:Int = 0xff403a46;
	//var alignment (whatever type this is)

//../\\\	}; // thanks glintfish, but more thanks to some internet sources for telling me i need a semicolon and https://softwarepatternslexicon.com/patterns-haxe/2/6/ for telling me i need ot put the "var" behind TextFormat
// update: found out tyepdefs are useless
var mainText:FlxText;
var statisticsText:FlxText;

	override public function create()
	{
		super.create();

		createWallpaper();

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
			add(backgroundA);
		backgroundB = new FlxSprite();
			backgroundB.loadGraphic("assets/images/backgrounds/Gradient.png");
			backgroundB.screenCenter();
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
			currentDate = "Date: " + (now.getMonth() + 1) + "/" + (now.getDay() + 1) + " - " + (now.getHours() + 1) + ":" + (now.getMinutes() + 1) + ":" + (now.getSeconds() + 1);
			statisticsText.text = currentDate;
    }

}
