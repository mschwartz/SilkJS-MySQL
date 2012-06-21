var console = require('console');

function main() {
	var o = loadDll('../mysql_module.so');
	console.dir(o);
}

