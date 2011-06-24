package com.ddennis.display.drawing {
	import com.ddennis.display.shapes.Box;
	import flash.display.Sprite;
	/**
	 * ...
	 * @author ddennis.dk aka meresukker.dk aka fantastisk.dk - info@ddennis.dk
	 */
	public class CanvasSprite extends Sprite{
		
		private var _drawType:String 
		
		
		public function CanvasSprite() {
			var b:Box = new Box(5, 5)
			addChild (b)
		}
		
		
		
		
		
		
		public function get drawType():String { return _drawType; }
		
		public function set drawType(value:String):void {
			_drawType = value;
		}
		
	}

}