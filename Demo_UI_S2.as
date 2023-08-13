import flash.events.MouseEvent;
import flash.events.KeyboardEvent;
import flash.display.Scene;
import flash.display.DisplayObject;

stop();

// event listeners top menu
this.Btn_Inventory.addEventListener(MouseEvent.CLICK, change_top_menu_s2);
this.Btn_Mission_Log.addEventListener(MouseEvent.CLICK, change_top_menu_s2);
this.Btn_Settings.addEventListener(MouseEvent.CLICK, change_top_menu_s2);

this.Btn_Left_Top.addEventListener(MouseEvent.CLICK, nav_top_menu_s2);
this.Btn_Right_Top.addEventListener(MouseEvent.CLICK, nav_top_menu_s2);

// event listeners lower menu
this.Btn_Left_Lower.addEventListener(MouseEvent.CLICK, nav_lower_menu_s2);
this.Btn_Right_Lower.addEventListener(MouseEvent.CLICK, nav_lower_menu_s2);

this.Btn_Inventory_Weapons.addEventListener(MouseEvent.CLICK, change_lower_menu_s2);
this.Btn_Inventory_Consumables.addEventListener(MouseEvent.CLICK, change_lower_menu_s2);
this.Btn_Inventory_Junk.addEventListener(MouseEvent.CLICK, change_lower_menu_s2);

// function to navigate top menu
function nav_top_menu_s2(e:MouseEvent):void{
	var top_nav_button:DisplayObject = DisplayObject(e.target);
	if(top_nav_button == Btn_Right_Top){
		//trace('on mission log');
		gotoAndStop(1, "Scene 4");
	}else{
		gotoAndStop(1, "Scene 1");
		//trace('on inventory');
	}
}

// function to navigate lower menu
function nav_lower_menu_s2(e:MouseEvent):void{
	var lower_nav_button:DisplayObject = DisplayObject(e.target);
	if(lower_nav_button == Btn_Right_Lower){
		gotoAndStop(1, "Scene 3");
		//trace('on junk');
	}else if(lower_nav_button == Btn_Left_Lower){
		gotoAndStop(1, "Scene 1");
		//trace('on weapons');
	}
}

// function to change top menu using mouse
function change_top_menu_s2(e:MouseEvent):void{
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
function change_lower_menu_s2(e:MouseEvent):void{
	var lower_menu_button:DisplayObject = DisplayObject(e.target);
	if(lower_menu_button == Btn_Inventory_Weapons){
		//trace('weapons clicked');
		gotoAndStop(1, "Scene 1");
	}else if(lower_menu_button == Btn_Inventory_Consumables){
		gotoAndStop(1, "Scene 2");
		//trace('consumables clicked');
	}else if(lower_menu_button == Btn_Inventory_Junk){
		gotoAndStop(1, "Scene 3");
		//trace('junk clicked');
	}
}