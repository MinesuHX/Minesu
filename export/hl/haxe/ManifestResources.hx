package;

import haxe.io.Bytes;
import haxe.io.Path;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

#if disable_preloader_assets
@:dox(hide) class ManifestResources {
	public static var preloadLibraries:Array<Dynamic>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;

	public static function init (config:Dynamic):Void {
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
	}
}
#else
@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

			if(!StringTools.endsWith (rootPath, "/")) {

				rootPath += "/";

			}

		}

		if (rootPath == null) {

			#if (ios || tvos || webassembly)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif (console || sys)
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_a_otf_shingopro_bold_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_a_otf_shingopro_debold_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_a_otf_shingopro_exlight_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_a_otf_shingopro_heavy_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_a_otf_shingopro_light_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_a_otf_shingopro_medium_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_a_otf_shingopro_regular_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_a_otf_shingopro_ultra_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_contb_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_contl_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_contm_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_b_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_db_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_eb_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_l_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_m_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_ub_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		Assets.libraryPaths["default"] = rootPath + "manifest/default.json";
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

	}


}

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_test_execute_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_bold_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_debold_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_exlight_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_heavy_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_light_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_medium_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_regular_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_ultra_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_contb_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_contl_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_contm_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_b_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_db_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_eb_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_l_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_m_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_ub_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_backgrounds_iisu_background_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_backgrounds_riisu_settingsbackground_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/6,1,1/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/6,1,1/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("C:/HaxeToolkit/haxe/lib/flixel/6,1,1/assets/fonts/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("C:/HaxeToolkit/haxe/lib/flixel/6,1,1/assets/fonts/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/6,1,1/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/6,1,1/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}

@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_bold_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-Bold.otf"; name = "A-OTF Shin Go Pro B"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_debold_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-DeBold.otf"; name = "A-OTF Shin Go Pro DB"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_exlight_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-ExLight.otf"; name = "A-OTF Shin Go Pro EL"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_heavy_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-Heavy.otf"; name = "A-OTF Shin Go Pro H"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_light_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-Light.otf"; name = "A-OTF Shin Go Pro L"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_medium_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-Medium.otf"; name = "A-OTF Shin Go Pro M"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_regular_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-Regular.otf"; name = "A-OTF Shin Go Pro R"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_ultra_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-Ultra.otf"; name = "A-OTF Shin Go Pro U"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_contb_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/contb.ttf"; name = "Continuum Bold"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_contl_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/contl.ttf"; name = "Continuum Light"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_contm_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/contm.ttf"; name = "Continuum Medium"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_b_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/FOT-RodinBokutohPro-B.otf"; name = "FOT-RodinBokutoh Pro B"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_db_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/FOT-RodinBokutohPro-DB.otf"; name = "FOT-RodinBokutoh Pro DB"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_eb_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/FOT-RodinBokutohPro-EB.otf"; name = "FOT-RodinBokutoh Pro EB"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_l_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/FOT-RodinBokutohPro-L.otf"; name = "FOT-RodinBokutoh Pro L"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_m_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/FOT-RodinBokutohPro-M.otf"; name = "FOT-RodinBokutoh Pro M"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_ub_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/FOT-RodinBokutohPro-UB.otf"; name = "FOT-RodinBokutoh Pro UB"; super (); }}


#else

@:keep @:expose('__ASSET__assets_fonts_a_otf_shingopro_bold_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_bold_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/A-OTF-ShinGoPro-Bold.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "A-OTF Shin Go Pro B"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_a_otf_shingopro_debold_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_debold_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/A-OTF-ShinGoPro-DeBold.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "A-OTF Shin Go Pro DB"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_a_otf_shingopro_exlight_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_exlight_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/A-OTF-ShinGoPro-ExLight.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "A-OTF Shin Go Pro EL"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_a_otf_shingopro_heavy_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_heavy_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/A-OTF-ShinGoPro-Heavy.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "A-OTF Shin Go Pro H"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_a_otf_shingopro_light_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_light_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/A-OTF-ShinGoPro-Light.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "A-OTF Shin Go Pro L"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_a_otf_shingopro_medium_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_medium_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/A-OTF-ShinGoPro-Medium.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "A-OTF Shin Go Pro M"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_a_otf_shingopro_regular_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_regular_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/A-OTF-ShinGoPro-Regular.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "A-OTF Shin Go Pro R"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_a_otf_shingopro_ultra_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_a_otf_shingopro_ultra_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/A-OTF-ShinGoPro-Ultra.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "A-OTF Shin Go Pro U"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_contb_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_contb_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/contb.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Continuum Bold"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_contl_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_contl_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/contl.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Continuum Light"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_contm_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_contm_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/contm.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Continuum Medium"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_fot_rodinbokutohpro_b_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_b_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/FOT-RodinBokutohPro-B.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "FOT-RodinBokutoh Pro B"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_fot_rodinbokutohpro_db_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_db_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/FOT-RodinBokutohPro-DB.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "FOT-RodinBokutoh Pro DB"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_fot_rodinbokutohpro_eb_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_eb_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/FOT-RodinBokutohPro-EB.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "FOT-RodinBokutoh Pro EB"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_fot_rodinbokutohpro_l_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_l_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/FOT-RodinBokutohPro-L.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "FOT-RodinBokutoh Pro L"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_fot_rodinbokutohpro_m_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_m_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/FOT-RodinBokutohPro-M.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "FOT-RodinBokutoh Pro M"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_fot_rodinbokutohpro_ub_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_fot_rodinbokutohpro_ub_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/FOT-RodinBokutohPro-UB.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "FOT-RodinBokutoh Pro UB"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_bold_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_bold_otf extends openfl.text.Font { public function new () { name = "A-OTF Shin Go Pro B"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_debold_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_debold_otf extends openfl.text.Font { public function new () { name = "A-OTF Shin Go Pro DB"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_exlight_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_exlight_otf extends openfl.text.Font { public function new () { name = "A-OTF Shin Go Pro EL"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_heavy_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_heavy_otf extends openfl.text.Font { public function new () { name = "A-OTF Shin Go Pro H"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_light_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_light_otf extends openfl.text.Font { public function new () { name = "A-OTF Shin Go Pro L"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_medium_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_medium_otf extends openfl.text.Font { public function new () { name = "A-OTF Shin Go Pro M"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_regular_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_regular_otf extends openfl.text.Font { public function new () { name = "A-OTF Shin Go Pro R"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_ultra_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_ultra_otf extends openfl.text.Font { public function new () { name = "A-OTF Shin Go Pro U"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_contb_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_contb_ttf extends openfl.text.Font { public function new () { name = "Continuum Bold"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_contl_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_contl_ttf extends openfl.text.Font { public function new () { name = "Continuum Light"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_contm_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_contm_ttf extends openfl.text.Font { public function new () { name = "Continuum Medium"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_b_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_b_otf extends openfl.text.Font { public function new () { name = "FOT-RodinBokutoh Pro B"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_db_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_db_otf extends openfl.text.Font { public function new () { name = "FOT-RodinBokutoh Pro DB"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_eb_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_eb_otf extends openfl.text.Font { public function new () { name = "FOT-RodinBokutoh Pro EB"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_l_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_l_otf extends openfl.text.Font { public function new () { name = "FOT-RodinBokutoh Pro L"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_m_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_m_otf extends openfl.text.Font { public function new () { name = "FOT-RodinBokutoh Pro M"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_ub_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_ub_otf extends openfl.text.Font { public function new () { name = "FOT-RodinBokutoh Pro UB"; super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_bold_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_bold_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-Bold.otf"; name = "A-OTF Shin Go Pro B"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_debold_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_debold_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-DeBold.otf"; name = "A-OTF Shin Go Pro DB"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_exlight_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_exlight_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-ExLight.otf"; name = "A-OTF Shin Go Pro EL"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_heavy_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_heavy_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-Heavy.otf"; name = "A-OTF Shin Go Pro H"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_light_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_light_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-Light.otf"; name = "A-OTF Shin Go Pro L"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_medium_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_medium_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-Medium.otf"; name = "A-OTF Shin Go Pro M"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_regular_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_regular_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-Regular.otf"; name = "A-OTF Shin Go Pro R"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_a_otf_shingopro_ultra_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_a_otf_shingopro_ultra_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/A-OTF-ShinGoPro-Ultra.otf"; name = "A-OTF Shin Go Pro U"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_contb_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_contb_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/contb.ttf"; name = "Continuum Bold"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_contl_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_contl_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/contl.ttf"; name = "Continuum Light"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_contm_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_contm_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/contm.ttf"; name = "Continuum Medium"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_b_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_b_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/FOT-RodinBokutohPro-B.otf"; name = "FOT-RodinBokutoh Pro B"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_db_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_db_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/FOT-RodinBokutohPro-DB.otf"; name = "FOT-RodinBokutoh Pro DB"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_eb_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_eb_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/FOT-RodinBokutohPro-EB.otf"; name = "FOT-RodinBokutoh Pro EB"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_l_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_l_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/FOT-RodinBokutohPro-L.otf"; name = "FOT-RodinBokutoh Pro L"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_m_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_m_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/FOT-RodinBokutohPro-M.otf"; name = "FOT-RodinBokutoh Pro M"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_ub_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fot_rodinbokutohpro_ub_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/FOT-RodinBokutohPro-UB.otf"; name = "FOT-RodinBokutoh Pro UB"; super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end