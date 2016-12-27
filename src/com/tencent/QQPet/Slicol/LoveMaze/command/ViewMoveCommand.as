package com.tencent.QQPet.Slicol.LoveMaze.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.tencent.QQPet.Slicol.LoveMaze.event.ViewMoveEvent;
	import com.tencent.QQPet.Slicol.LoveMaze.model.GameModel;
	import com.tencent.QQPet.Slicol.LoveMaze.view.MazeView;

	public class ViewMoveCommand implements ICommand
	{
		private var model:GameModel = GameModel.getInstance();
		
		
		public function ViewMoveCommand()
		{
		}

		public function execute(event:CairngormEvent):void
		{
			var e:ViewMoveEvent = ViewMoveEvent(event);
			var view:MazeView = model.view;
			var curX:int = model.curX;
			var curY:int = model.curY;
			
			if(e.x > curX) view.drawDirection(curX + 12, curY,0);
			if(e.x < curX) view.drawDirection(curX - 13, curY,2);
			if(e.y > curY) view.drawDirection(curX, curY + 12,3);
			if(e.y < curY) view.drawDirection(curX, curY - 13,1);	
			
			if(Math.abs(e.x - curX) > 2 || Math.abs(e.y - curY) > 2)
			{
				curX = e.x;
				curY = e.y;
				model.curX = curX;
				model.curY = curY;
				
				view.drawRectMap(curX-10,curY-10,curX+10,curY+10,model.voMaze.map);
			}
		}
		
	}
}