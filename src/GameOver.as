package
{

	import laya.events.Event;
	import laya.utils.Ease;
	import laya.utils.Handler;
	import laya.utils.Tween;

	import ui.GameOverUI;

	public class GameOver extends GameOverUI
	{
		public function GameOver ()
		{

			//"重新开始"按钮按下鼠标事件
			this.btn_restart.on ( Event.MOUSE_DOWN , this , onRestart );

		}

		/**
		 游戏重新开始
		 */
		private function onRestart () : void
		{

			//播放IDE中编辑的按钮动画
			this.ani_restart.play ( 0 , false );
			//监听动画完成事件
			this.ani_restart.once ( Event.COMPLETE , this , AniComplete );

		}

		/**
		 按钮动画播放完成
		 */
		private function AniComplete () : void
		{

			//发送重新开始事件，在LayaSample类中监听
			this.event ( "reStart" )

			//缓动动画关闭效果。IDE中页面为Dialog类型才可用
			//start.close();
		}
	}
}
