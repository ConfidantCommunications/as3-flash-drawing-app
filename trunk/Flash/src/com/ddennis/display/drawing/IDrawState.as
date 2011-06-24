package com.ddennis.display.drawing {
	import flash.display.DisplayObject;
	import flash.display.Shape;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author ddennis.dk - aka fantastisk.dk/works aka meresukker.dk
	 */
	public interface IDrawState {
		
		function startDraw(shape:CanvasSprite, xOffset:int = 0, yOffset:int = 0, color:uint = 0xFF0000):void
		function stopDraw():void
		
		function tick(xPos:int , yPos:int):void;
								
		function line():void
		function square():void
			
		function circle():void;
		
		function triangle():void;
		
		function get content():DisplayObject;
		function get type():String ;
		
		
		function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void;
		
	}
	
}