package com.ddennis.display.drawing.drawStates {
	import com.ddennis.display.drawing.DrawStateApp;
	import flash.display.DisplayObject;
	import com.ddennis.display.drawing.CanvasSprite;
	import com.ddennis.display.drawing.DrawState;
	import com.ddennis.display.drawing.IDrawState;
	/**
	 * ...
	 * @author ddennis.dk aka meresukker.dk aka fantastisk.dk - info@ddennis.dk
	 */
	public class TriangleState extends DrawState implements IDrawState {
		private var color:uint;
		
		public function TriangleState(drawApp:DrawStateApp) {
			super(drawApp)
		}
		
		/* INTERFACE com.ddennis.display.drawing.IDrawState */
		
		public function startDraw(shape:CanvasSprite, xOffset:int = 0, yOffset:int = 0, color:uint = 0xFF0000):void {
			this.color = color;
					
			_content = shape		
			_content.graphics.moveTo(0, 0);	
		}
		
		
		
		public function stopDraw():void {
			
		}
		
		
		
		
		public function tick(xPos:int, yPos:int):void {
			
			//_content.graphics.clear()					
			//_content.graphics.beginFill( color);			
			var mx:int = Math.max(xPos,4)
			var my:int = Math.max(yPos, 4) 			
		//	_content.graphics.drawTriangles(		
		//	_content.graphics.endFill ()
			
			var triangleHeight:int =  mx
			_content.graphics.clear()	
			
			_content.graphics.beginFill(color);
			_content.graphics.moveTo(mx, my);
			_content.graphics.lineTo(0, my);
			_content.graphics.lineTo(mx*.5, 0);
			//_content.graphics.lineTo(triangleHeight/2, 0);
			
			
		}
		
		
		
		public function get content():DisplayObject { return _content; }
		
	}

}