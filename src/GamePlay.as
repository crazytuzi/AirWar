package
{

	import laya.events.Event;

	import ui.GamePlayUI;

	public class GamePlay extends GamePlayUI
	{
		/**
		 * 游戏内UI,血量、积分、等级显示、暂停等
		 */
		public function GamePlay ()
		{

			//监听暂停按钮事件
			this.btn_pause.on ( Event.MOUSE_DOWN , this , onPause )
			//隐藏暂停提示，也可在IDE中设置为false
			this.gamePause.visible = false;

		}

		/**
		 游戏暂停
		 */
		private function onPause () : void
		{

			//显示暂停界面
			this.gamePause.visible = true;
			//暂停界面加点击监听
			this.gamePause.once ( Event.MOUSE_DOWN , this , onContinue )
			//时间对象缩放为0就是停止
			Laya.timer.scale = 0;

		}

		/**
		 游戏继续
		 */
		private function onContinue () : void
		{

			//隐藏暂停界面
			this.gamePause.visible = false;
			//时间对象缩放为1就是正常速度播放
			Laya.timer.scale = 1;

		}

		/****角色属性UI更新***/
		public function update ( hp : int , level : int , score : int ) : void
		{

			//角色血量更新
			this.txt_hp.text = "HP:" + hp;
			//关卡等级更新
			this.txt_level.text = "LEVEL:" + level;
			//游戏分数更新
			this.txt_score.text = "SCORE:" + score;

		}
	}
}
