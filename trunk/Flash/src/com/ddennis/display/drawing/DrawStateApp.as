package com.ddennis.display.drawing {
	
	import com.ddennis.display.drawing.drawStates.CircleState;
	import com.ddennis.display.drawing.drawStates.LineState;
	import com.ddennis.display.drawing.drawStates.SquareState;
	import com.ddennis.display.drawing.drawStates.TriangleState;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author ddennis.dk aka meresukker.dk aka fantastisk.dk - info@ddennis.dk
	 */
	public class DrawStateApp extends Sprite{
		
		private var currentCanvas:CanvasSprite;
		private var isActive:Boolean = false
		
		
	//	public var state:IDrawState; // is always equal to a specific state - states are changes inside DrawState.as
		public var state:IDrawState; // is always equal to a specific state - states are changes inside DrawState.as
		public var lineState:LineState
		public var squareState:SquareState;		
		public var circleState:CircleState;
		public var triangleState:TriangleState
				
		
		
		
		public function DrawStateApp() {			
			
			lineState = new LineState (this)			
			squareState = new SquareState (this)				
			circleState = new CircleState (this)				
			triangleState = new TriangleState(this)				
			state = lineState		
			
		}
		
		
		
		
		// overvejelser  - vil det være lettere hvis vi passer en sprite ind ude fra ved hver tegning.
		
		
		
		
		public function startDrawingApp():void {
						
			state.addEventListener(DrawState.DRAWING_STOP , drawingStop)			
			stage.addEventListener(MouseEvent.MOUSE_DOWN , mouseDown)
			//stage.addEventListener(MouseEvent.MOUSE_UP , mouseUp)
			
		}
		
		private function drawingStop(e:Event):void {

			
			mouseUp()
		}
		
		
		
		public function stopDrawingApp():void {	
			
			stage.removeEventListener(MouseEvent.MOUSE_DOWN , mouseDown)
			//stage.removeEventListener(MouseEvent.MOUSE_UP , mouseUp)
		}
				
		
		
		private function mouseDown(e:MouseEvent = null):void {	
			
			currentCanvas = new CanvasSprite ()	
			currentCanvas.drawType = state.type
			currentCanvas.x = mouseX
			currentCanvas.y = mouseY		
		
			addChild (currentCanvas)	
			state.startDraw (currentCanvas)
			this.addEventListener(Event.ENTER_FRAME, tick)			
			
			isActive = true
			
		}
		
		
		
		private function tick(e:Event):void {
			state.tick(currentCanvas.mouseX , currentCanvas.mouseY)
		}
		
			
		
		
		private function mouseUp(e:MouseEvent = null):void {	
			
			isActive = false
			this.removeEventListener(Event.ENTER_FRAME, tick)
			state.stopDraw()
			stopDrawingApp()	
		
			
		}
		
		
		/**
		 * Basic flow - this function is called from outside the drawing app
		 * this function then calles to the DrawStates which all the drawingtype extends - which switces to the LineState class.
		 * 
		 * @param	thinkness
		 */
		public function toLineState(thinkness:int = 888 ):void {			
			state.line (thinkness)	
			
		}
		
		
		
		public function toSquareState():void {			
			state.square ()			
			//startDrawingApp	()
		}
		
		public function toCircleState():void {
			state.circle ()
			
		}
		
		
		public function toTriangleState():void {
			state.triangle ()
			
		}
		
		
	}

}