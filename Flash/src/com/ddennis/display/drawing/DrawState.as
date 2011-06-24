package com.ddennis.display.drawing {
	import flash.display.Shape;
	import flash.events.EventDispatcher;
	
	/**
	 * ...
	 * @author ddennis.dk - aka fantastisk.dk/works aka meresukker.dk
	 */
	public class DrawState extends EventDispatcher{
		
		public static const DRAWING_STOP:String = "drawingStop"
		
		public var drawApp:DrawStateApp
		public var _content:CanvasSprite;
		private var _type:String
		
		
		public function DrawState(drawApp:DrawStateApp) {
			this.drawApp = drawApp;			
		}
		
				
		public function line():void {			
			drawApp.state = drawApp.lineState
		}
				
		public function square():void {				
			drawApp.state = drawApp.squareState
		}
		
	
		public function circle():void {				
			drawApp.state = drawApp.circleState
		}
		
		
		public function triangle():void {				
			drawApp.state = drawApp.triangleState
		}
		
		
		public function get type():String { return _type; }
		
		public function set type(value:String):void {
			_type = value;
		}
		
		/**
		public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void {
						
		}
		*/
		
	}

}