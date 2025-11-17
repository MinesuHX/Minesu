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

import flixel.group.FlxGroup.FlxTypedGroup;


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

// Body
var menuBody:FlxSprite;

// Primary Buttons + Subset(?)
var nameTitle:String = "Home Mesu";

var menuNavButton:FlxSprite;
var strumLine:FlxTypedGroup<FlxSprite>;

var menuEntries:Array<String> = ["Home", "Categories", "Customize", "Settings"];
var menuXPositions:Array<Int> = [103, 273, 443, 613];

var systemBar:FlxSprite;

	override public function create()
	{
		super.create();
		createWallpaper();

		mainText = new FlxText(122, 60, 500); // x, y, width
		mainText.text = nameTitle;
		mainText.setFormat(defaultFont, 52, mainColor);
		add(mainText);

		statisticsText = new FlxText(1801, 70, 500); // x, y, width
		statisticsText.text = "____";
		statisticsText.setFormat(defaultFont, 24, mainColor, RIGHT);
		statisticsText.x = (1920 - 119) - statisticsText.width; // Should work with custom screen resolutions when the time comes for that.
		add(statisticsText);

		strumLine = new FlxTypedGroup<FlxSprite>();
		add(strumLine);

		menuBody = new FlxSprite();
		menuBody.loadGraphic("assets/images/menuBody/mainMenu/Main Body.png");
		menuBody.x = 103;
		menuBody.y = 271;
		menuBody.color = 0xFFFFFFFF;
		add(menuBody);

		systemBar = new FlxSprite();
		systemBar.loadGraphic("assets/images/bottomBar/bar.png");
		systemBar.y = FlxG.height - systemBar.height;
		add(systemBar);

		for (i in menuEntries){

		menuNavButton = new FlxSprite();
		menuNavButton.loadGraphic("assets/images/navButtons/" + i + ".png");
			for (k in menuXPositions){
				menuNavButton.x = k;
			}

		menuNavButton.y = 133;
		add(menuNavButton);
		}



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
		appGetDate();
	}

	function appGetDate(){ // to whoever sees the first commit of this, say thank you to spile from the haxe discord
		var now = Date.now();
		var hourTwelve:String;

		isPMTime = (now.getHours() > 12) ? true: false;
		hourTwelve = (!isPMTime && (now.getHours() < 1) ) ? "12": ("" + now.getHours());
		//trace(isPMTime);

			currentDate = "" + (now.getMonth() + 1) + "/" + (now.getDay()) + " - " + // MM/DD
			hourTwelve  + ":" + padZero("" + now.getMinutes()) +  (if (isPMTime) " PM" else " AM") + // Hours + Minutes + AMPM
			#if debug
			"\nDebug build ran by " +
			#end
			"" + systemUsername;

			statisticsText.text = currentDate;
			// Seconds for if I get to put an option to add seconds to the menu. /* + ":" padZero("" + now.getSeconds()) +*/
    }

    function padZero(s:String):String {
		return (s.length == 1) ? "0" + s : s;
	}

}
