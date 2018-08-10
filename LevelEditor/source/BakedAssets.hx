package;
import flash.display.BitmapData;

/**
 * ...
 * @author 
 */
class BakedAssets
{

	public static function getTxt(str:String):String{
		return switch(str){
			case "dq1.xml": dq1xml();
			case "dq2.xml": dq2xml();
			case "graphics.xml" : graphicsxml();
			case "bonus.xml": bonusxml();
			default: "";
		}
	}
	
	public static function getBMP(str:String):BitmapData{
		return switch(str){
			case "dq1.png": dq1png();
			case "dq2.png": dq2png();
			default: null;
		}
	}
	
	private static function dq2png():BitmapData{
		var png = new BitmapData(115, 15, true, 0xFF000000);
		return png;
	}
	
	private static function dq1png():BitmapData{
		var png = new BitmapData(72, 14, true, 0xFF000000);
		return png;
	}
	
	private static function dq2xml():String{
		var N = "\n";
		var T = "\t";
		var str = '<?xml version="1.0" encoding="utf-8" ?>$N<data>$N$T<title id="0" value=""/>$N$T<music value="evil"/>$N$T<victory>$N$T$T<condition value="kill_all"/>$N$T</victory>$N$T<failure/>$N$T<tiles>$N$T$T<start rgb="0xFF00FF" id="a" y="7" x="22"/>$N$T$T<end   rgb="0x00FFFF" id="a" y="7" x="4"/>$N$T$T<tile  rgb="0x000000" value="dq2_noise" layer="0" tile_sheet="single"/>$N$T$T<tile  rgb="0xFF0000" value="dq2_red"   layer="1"/>$N$T$T<tile  rgb="0x00FF00" value="dq2_green" layer="2"/>$N$T$T<tile  rgb="0x808080" value="dq2_black" layer="3"/>$N$T$T<tile  rgb="0x0000FF" value="dq2_blue"  layer="4"/>$N$T</tiles>$N$T<waves first_wait="1" diff="easy">$N$T$T<wave count="1" wait="1" type="normal" level="1" rate="1" loc="a"/>$N$T</waves>$N$T<waves first_wait="1" diff="normal">$N$T$T<wave count="1" wait="1" type="normal" level="1" rate="1" loc="a"/>$N$T</waves>$N</data>';
		return str;
	}
	
	private static function dq1xml():String{
		var N = "\n";
		var T = "\t";
		var str = '<?xml version="1.0" encoding="utf-8" ?>$N<data>$N$T<title value="" id=""/>$N$T<music value="battle"/>$N$T<victory>$N$T$T<condition value="kill_all"/>$N$T</victory>$N$T<failure/>$N$T<tiles>$N$T$T<start x="0" y="7" id="a"/>$N$T$T<end x="14" y="7" id="a"/>$N$T$T<tile tile_sheet="single" layer="0" value="grey_dirt" rgb="0x000000"/>$N$T$T<tile layer="1" value="grass" doodad="0x2C5E18" rgb="0x3C7D20"/>$N$T$T<tile layer="2" value="dark_cliff" doodad="0x323C3F" rgb="0x435054"/>$N$T$T<tile layer="3" value="water" rgb="0x132F54"/>$N$T</tiles>$N$T<waves first_wait="1" diff="easy">$N$T$T<wave loc="a" rate="1" level="1" wait="1" type="normal" count="1"/>$N$T</waves>$N$T<waves first_wait="1" diff="normal">$N$T$T<wave loc="a" rate="1" level="1" wait="1" type="normal" count="1"/>$N$T</waves>$N$T<waves first_wait="1" diff="hard">$N$T$T<wave loc="a" rate="1" level="1" wait="1" type="normal" count="1"/>$N$T</waves>$N</data>';
		return str;
	}
	
	private static function graphicsxml():String{
		var N = "\n";
		var T = "\t";
		var str = '<?xml version="1.0" encoding="utf-8" ?>$N<data>$N$T<mode id="sprites" values="hd">$N$T$T<merge key="id" value="sprites"/>$N$T</mode>$N</data>';
		return str;
	}
	
	private static function bonusxml():String{
		var N = "\n";
		var T = "\t";
		var ID = "$ID";
		var str = '<bonus id="$ID$" title="untitled" description="description goes here" stars="1" color="blue" color_plus="gold" stars_plus="1">$N$T<rewards>$N$T$T<reward feat="pass"    type="xp" value="100" type_plus="xp" value_plus="1000" goal="true"/>$N$T$T<reward feat="perfect" type="xp" value="200" type_plus="xp" value_plus="2000" goal="true"/>$N$T</rewards>$N</bonus>$N';
		return str;
	}
	
	private static function fix(str:String){
		str = StringTools.replace(str, "$N", "\n");
		str = StringTools.replace(str, "$T", "\t");
		return str;
	}
}