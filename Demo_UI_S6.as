import flash.events.MouseEvent;
import flash.events.KeyboardEvent;
import flash.display.Scene;
import flash.display.DisplayObject;

stop();

// event listeners top menu
this.Btn_Inventory.addEventListener(MouseEvent.CLICK, change_top_menu_s6);
this.Btn_Mission_Log.addEventListener(MouseEvent.CLICK, change_top_menu_s6);
this.Btn_Settings.addEventListener(MouseEvent.CLICK, change_top_menu_s6);

this.Btn_Left_Top.addEventListener(MouseEvent.CLICK, nav_top_menu_s6);
this.Btn_Right_Top.addEventListener(MouseEvent.CLICK, nav_top_menu_s6);

// event listeners lower menu
this.Btn_Left_Lower.addEventListener(MouseEvent.CLICK, nav_lower_menu_s6);
this.Btn_Right_Lower.addEventListener(MouseEvent.CLICK, nav_lower_menu_s6);

this.Btn_ML_Main.addEventListener(MouseEvent.CLICK, change_lower_menu_s6);
this.Btn_ML_Side.addEventListener(MouseEvent.CLICK, change_lower_menu_s6);
this.Btn_ML_Docs.addEventListener(MouseEvent.CLICK, change_lower_menu_s6);

// function to navigate top menu
function nav_top_menu_s6(e:MouseEvent):void{
	var top_nav_button:DisplayObject = DisplayObject(e.target);
	if(top_nav_button == Btn_Right_Top){
		//trace('on settings');
		gotoAndStop(1, "Scene 7");
	}else if(top_nav_button == Btn_Left_Top){
		//trace('on inventory');
		gotoAndStop(1, "Scene 1");
	}
}

// function to navigate lower menu
function nav_lower_menu_s6(e:MouseEvent):void{
	var lower_nav_button:DisplayObject = DisplayObject(e.target);
	if(lower_nav_button == Btn_Right_Lower){
		gotoAndStop(1, "Scene 6");
		//trace('on docs');
	}else if(lower_nav_button == Btn_Left_Lower){
		//trace('on side mission');
		gotoAndStop(1, "Scene 5");
	}
}

// function to change top menu using mouse
function change_top_menu_s6(e:MouseEvent):void{
	var top_menu_button:DisplayObject = DisplayObject(e.target);
	if(top_menu_button == Btn_Inventory){
		gotoAndStop(1, "Scene 1");
		//trace('inventory Clicked');
	}else if(top_menu_button == Btn_Mission_Log){
		gotoAndStop(1, "Scene 4");
		//trace('mission log Clicked');
	}else if(top_menu_button == Btn_Settings){
		gotoAndStop(1, "Scene 7");
		//trace('settings Clicked');
	}
}

// function to change lower menu using mouse
function change_lower_menu_s6(e:MouseEvent):void{
	var lower_menu_button:DisplayObject = DisplayObject(e.target);
	if(lower_menu_button == Btn_ML_Main){
		gotoAndStop(1, "Scene 4");
		//trace('main mission');
	}else if(lower_menu_button == Btn_ML_Side){
		gotoAndStop(1, "Scene 5");
		//trace('side misson');
	}else if(lower_menu_button == Btn_ML_Docs){
		gotoAndStop(1, "Scene 6");
		//trace('docs');
	}
}