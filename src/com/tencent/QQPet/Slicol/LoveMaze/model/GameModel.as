package com.tencent.QQPet.Slicol.LoveMaze.model
{
	import com.adobe.cairngorm.model.IModelLocator;
	import com.tencent.QQPet.Slicol.LoveMaze.view.MazeView;
	import com.tencent.QQPet.Slicol.LoveMaze.vo.MazeVO;

	public class GameModel implements IModelLocator
	{
		private static var instance : GameModel;
		
		public var view:MazeView;
		public var voMaze:MazeVO;
		public var curX:int;
		public var curY:int;
		
		public function GameModel()
		{
	         if ( instance != null )
			 {
			 	throw new Error( "Only one GameModel instance should be instantiated" );	
			 }
		}
  
		public static function getInstance() : GameModel 
		{
			if ( instance == null )
			{
				instance = new GameModel();
				instance.initialize();
			}
  			return instance;
		}
		
		private function initialize():void
		{
			
		}

		public function init(w:int,h:int):void
		{
			var x:int;
			var y:int;
			
			var arrMap:Array = new Array(w);

			for(x = 0; x < w; ++x)
			{
				arrMap[x] = new Array(h);		
				for(y = 0; y < h; ++y)
				{
					var value:int = Math.random() * 2;
					arrMap[x][y] = value;
				}
			}
			
			this.voMaze = new MazeVO;
			this.voMaze.width = w;
			this.voMaze.height = h;
			this.voMaze.map = arrMap;

		}	
		
		public function start():void
		{
			view.load(voMaze.width, voMaze.height, voMaze.map);
		}

	}
}