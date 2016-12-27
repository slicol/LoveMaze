package com.tencent.QQPet.Slicol.LoveMaze.vo
{
	import com.adobe.cairngorm.vo.IValueObject;

	public class MazeVO implements IValueObject
	{
		public var width:int;
		public var height:int;
		public var map:Array;
		
		public function MazeVO()
		{
		}

	}
}