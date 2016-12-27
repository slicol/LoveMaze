package com.tencent.QQPet.Slicol.LoveMaze.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.tencent.QQPet.Slicol.LoveMaze.event.GameStartEvent;
	import com.tencent.QQPet.Slicol.LoveMaze.model.GameModel;

	public class GameStartCommand implements ICommand
	{
		private var model:GameModel = GameModel.getInstance();
		
		public function GameStartCommand()
		{
		}

		public function execute(event:CairngormEvent):void
		{
			var e:GameStartEvent = GameStartEvent(event);
			model.view = e.view;
			model.init(80,60);
			model.start();
		}
		
	}
}