/*global exports, require */
(function() {
	"use strict";
	exports.extend({
		driver: require('./lib/mysql_module'),
		MySQL: require('./lib/MySQL').MySQL,
		Schema: require('./lib/Schema').Schema
	});
}());
