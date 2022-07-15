function hook_java() {
	Java.perform(function () {
		var ChatSquareListFrameLayoutClass = Java.use('com.mosheng.chatroom.entity.binder.ChatSquareListFrameLayout');
		ChatSquareListFrameLayoutClass.a.overload("com.mosheng.chatroom.entity.binder.ChatSquareListFrameLayout", "int").implementation = function (arg0, arg1) { 
			var ret = this.a(arg0, arg1); 
			console.log('ChatSquareListFrameLayoutClass.a [*] arg0: ' + arg0);
			console.log('ChatSquareListFrameLayoutClass.a [*] arg1: ' + arg1);
 			console.log('ChatSquareListFrameLayoutClass.a [*] ret: ' + ret);
 			return ret;
		};
		ChatSquareListFrameLayoutClass.a.overload("com.mosheng.chat.data.bean.ChatSquareListBean", "boolean").implementation = function (arg0, arg1) { 
			this.a(arg0, arg1); 
			console.log('ChatSquareListFrameLayoutClass.a [*] arg0: ' + arg0);
			console.log('ChatSquareListFrameLayoutClass.a [*] arg1: ' + arg1);
  		};
		ChatSquareListFrameLayoutClass.a.overload("com.mosheng.chatroom.entity.binder.ChatSquareListFrameLayout").implementation = function (arg0) { 
			this.a(arg0); 
			console.log('ChatSquareListFrameLayoutClass.a [*] arg0: ' + arg0);
  		};
		ChatSquareListFrameLayoutClass.a.overload("com.mosheng.chatroom.entity.binder.ChatSquareListFrameLayout", "com.mosheng.family.entity.FamilyInfo").implementation = function (arg0, arg1) { 
			this.a(arg0, arg1); 
			console.log('ChatSquareListFrameLayoutClass.a [*] arg0: ' + arg0);
			console.log('ChatSquareListFrameLayoutClass.a [*] arg1: ' + arg1);
  		};
		ChatSquareListFrameLayoutClass.a.overload("com.mosheng.family.entity.FamilyInfo").implementation = function (arg0) { 
			this.a(arg0); 
			console.log('ChatSquareListFrameLayoutClass.a [*] arg0: ' + arg0);
  		};
		ChatSquareListFrameLayoutClass.a.overload("com.mosheng.chat.data.bean.ChatSquareListBean", "int").implementation = function (arg0, arg1) { 
			this.a(arg0, arg1); 
			console.log('ChatSquareListFrameLayoutClass.a [*] arg0: ' + arg0);
			console.log('ChatSquareListFrameLayoutClass.a [*] arg1: ' + arg1);
  		};
		ChatSquareListFrameLayoutClass.a.implementation = function () { 
			var ret = this.a(); 
 			console.log('ChatSquareListFrameLayoutClass.a [*] ret: ' + ret);
 			return ret;
		};

	});
}

function hook_native() {

}

function main() {
	hook_java();
	hook_native();
} 

setImmediate(main);
