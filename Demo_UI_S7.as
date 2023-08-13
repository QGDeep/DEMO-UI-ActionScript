import flash.events.MouseEvent;
import flash.events.KeyboardEvent;
import flash.display.Scene;
import flash.display.DisplayObject;

stop();

// event listeners top menu
this.Btn_Inventory.addEventListener(MouseEvent.CLICK, change_top_menu_s7);
this.Btn_Mission_Log.addEventListener(MouseEvent.CLICK, change_top_menu_s7);
this.Btn_Settings.addEventListener(MouseEvent.CLICK, change_top_menu_s7);

this.Btn_Left_Top.addEventListener(MouseEvent.CLICK, nav_top_menu_s7);
this.Btn_Right_Top.addEventListener(MouseEvent.CLICK, nav_top_menu_s7);

// function to navigate top menu
function nav_top_menu_s7(e:MouseEvent):void{
	var top_nav_button:DisplayObject = DisplayObject(e.target);
	if(top_nav_button == Btn_Right_Top){
		//trace('on settings');
		gotoAndStop(1, "Scene 7");
	}else if(top_nav_button == Btn_Left_Top){
		//trace('on mission log');
		gotoAndStop(1, "Scene 4");
	}
}

// function to change top menu using mouse
function change_top_menu_s7(e:MouseEvent):void{
	var top_menu_button:DisplayObject = DisplayObject(e.target);
	if(top_menu_button == Btn_Inventory){
		gotoAndStop(1, "Scene 1");
		//trace('Inventory Clicked');
	}else if(top_menu_button == Btn_Mission_Log){
		gotoAndStop(1, "Scene 4");
		//trace('Mission Log Clicked');
	}else if(top_menu_button == Btn_Settings){
		gotoAndStop(1, "Scene 7");
		//trace('Settings Clicked');
	}
}