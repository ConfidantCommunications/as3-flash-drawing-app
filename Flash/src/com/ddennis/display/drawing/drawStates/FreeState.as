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
	public class FreeState extends DrawState implements IDrawState{
		
		public function FreeState(drawApp:DrawStateApp) {
			super( drawApp)
			type = "FreeState"
			
		}
		
		/* INTERFACE com.ddennis.display.drawing.IDrawState */
		
	public function startDraw(shape:CanvasSprite , xOffset:int = 0, yOffset:int = 0, color:uint = 0xFF0000):void{
			
			_content = shape		
			_content.graphics.lineStyle(3, color);					
			_content.graphics.moveTo(0, 0);
		}
		
		
		
		
		public function tick(xPos:int , yPos:int ):void{
			_content.graphics.lineTo(xPos, yPos);
		}
		
	
		
		
		
		public function stopDraw():void{
			
		}
		
		
		public function get content():DisplayObject { return _content; }
		
		
	
		
	}

}