package nme.system;
#if code_completion


extern class System {
	static var deviceID(default, null):String;
	//@:require(flash10_1) static var freeMemory(default,null) : Float;
	//static var ime(default,null) : IME;
	//@:require(flash10_1) static var privateMemory(default,null) : Float;
	//@:require(flash11) static var processCPUUsage(default,null) : Float;
	static var totalMemory(default, null):Int;
	//@:require(flash10_1) static var totalMemoryNumber(default,null) : Float;
	//static var useCodePage : Bool;
	//static var vmVersion(default,null) : String;
	//@:require(flash10_1) static function disposeXML(node : nme.xml.XML) : Void;
	static function exit(code : Int) : Void;
	static function gc() : Void;
	//static function pause() : Void;
	//@:require(flash11) static function pauseForGCIfCollectionImminent(imminence : Float = 0.75) : Void;
	//static function resume() : Void;
	//static function setClipboard(string : String) : Void;
}


#elseif (cpp || neko)
typedef System = neash.system.System;
#elseif js
typedef System = jeash.system.System;
#else
typedef System = flash.system.System;
#end