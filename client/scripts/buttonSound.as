package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextFieldAutoSize;
   
   public class buttonSound extends MovieClip
   {
       
      
      private var _bubble:bubblepopup5;
      
      public function buttonSound()
      {
         var __transpiler_comment__:String = "Removed empty super call";
         gotoAndStop(1);
         addEventListener(MouseEvent.CLICK,this.Click);
         addEventListener(MouseEvent.MOUSE_OVER,this.Over);
         addEventListener(MouseEvent.MOUSE_OUT,this.Out);
         buttonMode = true;
      }
      
      private function Click(param1:MouseEvent) : void
      {
         SOUNDS.Toggle();
         this.Over();
      }
      
      private function Over(param1:MouseEvent = null) : void
      {
         this.Out();
         this._bubble = new bubblepopup5();
         this._bubble.x = 12;
         this._bubble.y = 20;
         this._bubble.mcText.autoSize = TextFieldAutoSize.LEFT;
         this._bubble.mouseChildren = this._bubble.mouseEnabled = false;
         if(SOUNDS._muted)
         {
            this._bubble.mcText.htmlText = "<b>" + KEYS.Get("settings_soundoff") + "</b>";
         }
         else
         {
            this._bubble.mcText.htmlText = "<b>" + KEYS.Get("settings_soundon") + "</b>";
         }
         this._bubble.mcText.x = 10 - this._bubble.mcText.width;
         this._bubble.mcBG.x = this._bubble.mcText.x - 5;
         this._bubble.mcBG.width = this._bubble.mcText.width + 10;
         this.addChild(this._bubble);
      }
      
      private function Out(param1:MouseEvent = null) : void
      {
         if(Boolean(this._bubble) && Boolean(this._bubble.parent))
         {
            this._bubble.parent.removeChild(this._bubble);
         }
      }
   }
}
