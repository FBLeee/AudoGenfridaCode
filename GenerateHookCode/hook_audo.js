function hook_java() {
	Java.perform(function () {
		var cClass = Java.use('a.c');
		cClass.v.implementation = function (arg0, arg1, arg2, arg3, arg4, arg5) { 
			this.v(arg0, arg1, arg2, arg3, arg4, arg5); 
			console.log('cClass.v [*] arg0: ' + arg0);
			console.log('cClass.v [*] arg1: ' + arg1);
			console.log('cClass.v [*] arg2: ' + arg2);
			console.log('cClass.v [*] arg3: ' + arg3);
			console.log('cClass.v [*] arg4: ' + arg4);
			console.log('cClass.v [*] arg5: ' + arg5);
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
