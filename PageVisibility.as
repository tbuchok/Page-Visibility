package {

  import flash.display.*;
  import flash.events.*;
  import flash.text.*;
  import flash.external.ExternalInterface

  [SWF(backgroundColor="0x00FF00" , width="300" , height="250")]
  public class PageVisibility extends MovieClip {

    function PageVisibility() {
      stage.invalidate();
      ExternalInterface.call("console.log( 'Browser:\t', navigator.userAgent )");
      ExternalInterface.call("console.log('Page location:\t', top.location.href )");
      addEventListener(Event.ADDED, handleEvent);
      addEventListener(Event.ADDED_TO_STAGE, handleEvent);
      addEventListener(Event.FRAME_CONSTRUCTED, handleEvent);
      addEventListener(Event.ENTER_FRAME, handleEvent);
      addEventListener(Event.RENDER, handleEvent);
      addEventListener(Event.ACTIVATE, handleEvent);
      addEventListener(Event.ACTIVATE, addSquareToStage);
    }

    private function handleEvent(event:Event) : void { 
      removeEventListener(event.type, handleEvent);
      ExternalInterface.call("console.log", event.type); 
    }

    private function addSquareToStage(event:Event) : void {
      removeEventListener(event.type, addSquareToStage);

      var square:Sprite = new Sprite();
      square.graphics.lineStyle(1,0xff0000);
      square.graphics.beginFill(0x0000FF);
      square.graphics.drawRect(0,0,100,100);
      square.graphics.endFill();
      square.x = (stage.stageWidth - square.width)  / 2;
      square.y = (stage.stageHeight - square.height) / 2;
      addChild(square);
      square.addEventListener(MouseEvent.CLICK, handleSquareClick);
    }

    private function handleSquareClick(event:MouseEvent) : void {
      ExternalInterface.call("console.log('`spongecell`:\t', spongecell)"); 
      ExternalInterface.call("console.log('`publisher`:\t', top.publisher)"); 
    }

  };
};