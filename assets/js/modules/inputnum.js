// define('numberinput', ['$', 'widget'], function(require, exports, module) {
// 	var $ = require('$');
// 	var Widget = require('widget');

// 	var NumberInput = Widget.extend({
// 		element: "body",

// 		attrs: {
// 			min: 1,
// 			max: 5,
// 			decrease: {
// 				value: "[data-role=decrease]",
// 				getter: function(val) {
// 					return $(val);
// 				}
// 			},
// 			increase: {
// 				value: "[data-role=increase]",
// 				getter: function(val) {
// 					return $(val);
// 				}
// 			},
// 			number: {
// 				value: "[data-role=number]",
// 				getter: function(val) {
// 					return $(val);
// 				}
// 			}
// 		},

// 		events: {
// 			"click [data-role=decrease]:not(.f-disable)": "_decrease",
// 			"click [data-role=increase]:not(.f-disable)": "_increase",
// 			"keyup [data-role=number]": "_numHandler"
// 		},

// 		setup: function() {
// 			this.get('number').trigger('keyup');
// 		},

// 		// 减少操作处理 
// 		_decrease: function(e) {
// 			var elemInput = this.get('number');
// 			var numStr = elemInput.val();
// 			if(numStr == "") {
// 				elemInput.val(this.get("min")).trigger('keyup');
// 				return;
// 			}

// 			if(this._isNum(numStr)) {
// 				var num = parseInt(numStr);
// 				elemInput.val(num - 1).trigger('keyup');
// 			}
// 		},

// 		// 增加操作处理
// 		_increase: function(e) {
// 			var elemInput = this.get('number');
// 			var numStr = elemInput.val();
// 			if(numStr == "") {
// 				elemInput.val(this.get("min")).trigger('keyup');
// 				return;
// 			}

// 			if(this._isNum(numStr)) {
// 				var num = parseInt(numStr);
// 				elemInput.val(num + 1).trigger('keyup');
// 			}
// 		},

// 		_enable: function(elem) {
// 			return elem.removeClass('f-disable');
// 		},

// 		_disable: function(elem) {
// 			return elem.addClass('f-disable');
// 		},

// 		// Aspect切入预留外部接口，改变时触发
// 		change: function(left) {
// 			/* @TODO 处理库存或其他影响 */
// 			if(isNaN(left)) {
// 				return false;
// 			} else {
// 				return true;
// 			}
// 		},

// 		// 校验数字合法性
// 		_numHandler: function(e) {
// 			var elemDecrease = this.get('decrease');
// 			var elemIncrease = this.get('increase');
// 			var num = this.get('number').val();

// 			/* 校验数字格式 */
// 			if(!this._isNum(num)) {
// 				this.change(NaN);
// 				this._disable(elemDecrease);
// 				this._disable(elemIncrease);
// 				return;
// 			} else {
// 				num = parseInt(num);
// 				this._enable(elemDecrease);
// 				this._enable(elemIncrease);
// 			}

// 			this.change(this.get('max') - num);

// 			/* 满足范围 */
// 			if(num > this.get('min') && num < this.get('max')) {
// 				this._enable(elemDecrease);
// 				this._enable(elemIncrease);
// 				return;
// 			}

// 			/* 校验数字最小范围 */
// 			if(num <= this.get('min')) {
// 				this._disable(elemDecrease);
// 			} 

// 			/* 校验数字最大范围 */
// 			if(num >= this.get('max')) {
// 				this._disable(elemIncrease);
// 			}
// 		},

// 		// 是否为数字字符串
// 		_isNum: function(numStr) {
// 			return /^[0-9]*$/.test(numStr);
// 		}
// 	});

// 	module.exports = NumberInput;
// });