package com.tencent.QQPet.Slicol.LoveMaze.event
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.tencent.QQPet.Slicol.LoveMaze.view.MazeView;

	public class GameStartEvent extends CairngormEvent
	{
		public static const EVENT_GAME_START:String = "EventGameStart";
		
		public var view:MazeView;
		
		public function GameStartEvent(type:String = EVENT_GAME_START)
		{
			super(type, false, false);
		}
		
	}
}