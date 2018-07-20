package
{

	import ui.GameBgUI;

	public class GameMap extends GameBgUI
	{
		public function GameMap ()
		{
		}

		/**
		 游戏背景移动更新
		 */
		public function updateMap () : void
		{

			//地图每帧在y向下移动1像素，根据喜好调整
			this.y += 1;

			//如果背景图到了下面不可见，立即调整位置到上方继续循环
			//游戏舞台高为1280
			if ( bg1.y + this.y >= 1280 )
			{
				bg1.y -= 1280 * 2;
			}

			if ( bg2.y + this.y >= 1280 )
			{
				bg2.y -= 1280 * 2;
			}

		}
	}
}
