package com.tencent.QQPet.Slicol.LoveMaze.event
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class ViewMoveEvent extends CairngormEvent
	{
		public static const EVENT_VIEW_MOVE:String = "EventViewMove";
		
		public var x:int;
		public var y:int;
		
		public function ViewMoveEvent(type:String = EVENT_VIEW_MOVE)
		{
			super(type, false, false);
		}		
		
	}
}