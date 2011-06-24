package app {
	
	import com.ddennis.display.drawing.DrawStateApp;
	import flash.events.MouseEvent;

	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	
	
	
	
	/**
	 * ... app.Main
	 * @author ddennis.dk - aka fantastisk.dk/works aka meresukker.dk
	 */
	
	public class Main extends MovieClip {
		
		public var squareBtn:MovieClip
		public var lineBtn:MovieClip
		public var circleBtn:MovieClip
		public var triangleBtn:MovieClip
		private var drawApp:DrawStateApp;
		
		
		
		public function Main() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}

		private function init(e:Event = null):void {
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			squareBtn.addEventListener(MouseEvent.CLICK , toSquare)
			lineBtn.addEventListener(MouseEvent.CLICK , toLine)
			circleBtn.addEventListener(MouseEvent.CLICK , toCircle)
			triangleBtn.addEventListener(MouseEvent.CLICK , toTriangle)
						
			var sp:Sprite = new Sprite ()			
			//var drawTool:DrawTool = new DrawTool ()
			drawApp = new DrawStateApp ()
			addChild (drawApp)
			
		}
		
		private function toLine(e:MouseEvent):void {
			trace ("Main.as > toLine  = ")
			drawApp.toLineState ()
			drawApp.startDrawingApp()
		}
		
		private function toSquare(e:MouseEvent):void {
			trace ("Main.as > toSQua  = ")
			drawApp.toSquareState ()
			drawApp.startDrawingApp()
		}
		
		
		private function toCircle(e:MouseEvent):void {
			trace ("Main.as > Cir  = ")
			drawApp.toCircleState ()
			drawApp.startDrawingApp()
		}
		
		private function toTriangle(e:MouseEvent):void {
			trace ("Main.as > Cir  = ")
			drawApp.toTriangleState ()
			drawApp.startDrawingApp()
		}
		
	}
	
}




		