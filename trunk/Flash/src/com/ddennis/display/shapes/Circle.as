package com.peachpit.aas3wdp.shapes {

	import com.peachpit.aas3wdp.shapes.AbstractBasicShape;
	import flash.display.Sprite;

	public class Circle extends AbstractBasicShape {
		
		public function Circle(radius:Number) {
			var shape:Sprite = new Sprite();
			addChild(shape);
			shape.graphics.lineStyle(0, 0, 0);
			shape.graphics.beginFill(0xFFFFFF);
			shape.graphics.drawCircle(radius, radius, radius);
			shape.graphics.endFill();
		}
		
	}
}
