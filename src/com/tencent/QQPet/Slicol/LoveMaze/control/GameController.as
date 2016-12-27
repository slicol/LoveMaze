package com.tencent.QQPet.Slicol.LoveMaze.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.tencent.QQPet.Slicol.LoveMaze.command.GameStartCommand;
	import com.tencent.QQPet.Slicol.LoveMaze.command.ViewMoveCommand;
	import com.tencent.QQPet.Slicol.LoveMaze.event.GameStartEvent;
	import com.tencent.QQPet.Slicol.LoveMaze.event.ViewMoveEvent;

	public class GameController extends FrontController
	{
		public function GameController()
		{
			super();
			initialiseCommands();
		}
		
		
		public function initialiseCommands() : void
		{
			addCommand(GameStartEvent.EVENT_GAME_START, GameStartCommand);
			addCommand(ViewMoveEvent.EVENT_VIEW_MOVE, ViewMoveCommand);
		}		
		
	}
}