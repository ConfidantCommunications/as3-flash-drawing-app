
package com.ddennis.display.drawing.drawStates {

	import com.ddennis.display.drawing.CanvasSprite;
	import com.ddennis.display.drawing.DrawState;
	import com.ddennis.display.drawing.DrawStateApp;
	import flash.display.DisplayObject;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;

	import com.ddennis.display.drawing.IDrawState;
	/**
	 * ...
	 * @author ddennis.dk - aka fantastisk.dk/works aka meresukker.dk
	 */
	
	 
	public class LineState extends DrawState implements IDrawState{
		private var color:uint;
							
		
		public function LineState(drawApp:DrawStateApp) {
			super( drawApp)
			type = "LineState"
				
		}
		
		
		public function propeties(thinkness:int ):void {
			trace ("LineState.as > thinkness  = "+thinkness)
		}
		
				
		public function startDraw(shape:CanvasSprite , xOffset:int = 0, yOffset:int = 0, color:uint = 0xFF0000):void {
			
			shape.stage.addEventListener(MouseEvent.MOUSE_UP , stopIt)			
			this.color = color;
			
			_content = shape		
			_content.graphics.lineStyle(3, color);					
			_content.graphics.moveTo(0, 0);
					
		}
		
		private function stopIt(e:MouseEvent):void {
			dispatchEvent(new Event(DrawState.DRAWING_STOP))
		}
		
		
		
		
		public function tick(xPos:int , yPos:int ):void {
			
			_content.graphics.clear()
			_content.graphics.lineStyle(3, color);
			_content.graphics.moveTo(0, 0);
			_content.graphics.lineTo(xPos, yPos);
			
		}
		
	
		
		
		
		public function stopDraw():void{
			trace ("   STOP LINE")			
		}
		
		
		
		public function get content():DisplayObject { return _content; }
		
		
	
		
	}

}