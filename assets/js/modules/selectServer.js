/**
 * @function 区服选择弹出层
 */
define(function(require,exports,module){

	seajs.use(['arale/popup/1.1.6/popup','arale/overlay/1.1.4/overlay', '$'], function(Popup, Overlay, $){
		var selectServer = $(".js-server-btn");
		var selectText = selectServer.find(".select-text");
		var ALL_AREA = $.trim(selectText.html());
		var ALL_SERVER = "全部服务器";
		var GUIDE_SELECT_AREA = "请选择游戏区：";
		var GUIDE_SELECT_SERVER = "请选择服务器：";
		var SERVER_WITHOUT_AREA = [];

		/* 服务器排序分开 */
		SERVER_INFO = SERVER_INFO.sort(function compare(a,b){
			if(a.net>b.net){
				return -1;
			}
			if(a.net<b.net){
				return 1;
			}
			if(a.net=b.net){
				if(a.name.length<b.name.length){
					return -1;
				}
				if(a.name.length>b.name.length){
					return 1;
				}
				if(a.name.length=b.name.length){
					if(a.id>b.id){
						return -1;
					}
					if(a.id<b.id){
						return 1;
					}
				}
			}
			return 1;
		});

		/* 计算格式 */
		var areaSize = SERVER_INFO.length;
		var areaRow;
		if(areaSize <= 7) {
			areaRow = 7;
		} else {
			var areaList = 5;
			areaRow = Math.ceil(areaSize/areaList);
			if(areaRow < 5) {
				areaRow = 5;
			}
		}

		/*全服快速查询*/
		var SearchServer = Overlay.extend({
			attrs : {
				selected : undefined
			},
			triggeed : $(".select-search"),
			element : $(".select-search-tip"),
			setup : function() {
				var that = this, triggeed = this.triggeed;
				var align = this.get('align');
				SearchServer.superclass.setup.call(this);
				align.baseElement = this.triggeed;
				align.baseXY = [0, 26];
				this._blurHide([this.triggeed]);
				triggeed.on("keyup", function(e) {
					that._keyOperation(e);
				});
				$("#searchServer").click(function(){
					that._submit();
				});
			},
			toggle : function() {
				this[this.get('visible') ? 'hide' : 'show']();
			},
			events : {
				'mouseover li' : '_mouseover',
				'click li' : '_select'
			},
			_mouseover : function(item) {
				this.set('selected', $(item.currentTarget));
			},
			_onRenderSelected : function() {
				$(this.get('selected')).addClass("hover").siblings().removeClass("hover");
			},
			//获取数据并显示
			_getData : function() {
				var value = ($.trim($(".select-search-input").val())).toLowerCase();
				var reg = /^[\u4e00-\u9fa5|\(|\)|（|）]+$/gi;
				var html = "";
				var count = 0;
				if (reg.test(value)) {
					$.each(SERVER_WITHOUT_AREA,function(n,e){
						if (e.name.indexOf(value) != -1){
							count++;
							if(count>10){
								return false;
							}
							html += '<li data-key="world_id" data-value="'+e.id+'" data-other="'+e.name+'" data-area ="'+e.area+'">' + e.name.replace(value,'<b>'+value+'</b>') +'</li>';
						}
					});
				}
				if(html){
					$(".select-search-tip").html(html).show();
				}else{
					$(".select-search-tip").html(html).hide();
				}
			},
			//键盘操作
			_keyOperation : function(item) {
				var KEY = {
					UP : 38,
					DOWN : 40,
					LEFT : 37,
					RIGHT : 39,
					ENTER : 13,
					ESC : 27,
					BACKSPACE : 8,
					TAB: 9,
					SHIFT: 16,
					CONTROL: 17,
					ALT: 18,
					CAPE: 20
				};
				if ($(".select-search-tip").length === 0) {
					return
				}
				switch (item.which) {
					// top arrow
					case KEY.UP:
						var last = $('.select-search-tip li:last'), prev = this.get('selected') ? this.get('selected').prev() : last;
						if (prev && prev.length) {
							this.set('selected', prev);
						}else{
							this.set('selected', last);
						}
						break;

					// bottom arrow
					case KEY.DOWN:
						var first = $('.select-search-tip li:first'), next = this.get('selected') ? this.get('selected').next() : first;
						if (next && next.length) {
							this.set('selected', next);
						}else{
							this.set('selected', first);
						}
						break;

					// enter
					case KEY.ENTER:
						this._select();
						break;
					case KEY.CONTROL:
						break;
					case KEY.ALT:
						break;
					case KEY.SHIFT:
						break;
					case KEY.CAPE:
						break;
					case KEY.TAB:
						break;
					case KEY.LEFT:
						break;
					case KEY.RIGHT:
						break;
					// other
					default:
						this._getData();
						break;
				};
			},
			_select : function(item) {
				var serverLi = null;
				if(item&&item.currentTarget){
					serverLi = $(item.currentTarget);
				}
				if(this.get('selected')){
					serverLi = this.get('selected');
				}
				if(serverLi){
					var serverData = serverLi.data();
					return false;
				}else{
					this._submit();
				}
			},
			_submit : function(){
				var list = [];
				var value = ($.trim($(".select-search-input").val())).toLowerCase();
				var reg = /^[\u4e00-\u9fa5|\(|\)|（|）]+$/gi;
				if(!value){
					return false;
				}
				if (reg.test(value)) {
					$.each(SERVER_WITHOUT_AREA,function(n,e){
						if (e.name.indexOf(value) != -1){
							list.push(e);
						}
					});
				}
				initList(list,"search-list",value);
				this.element.hide();
			}
		});

		var serverList = new Popup({
			trigger : '.js-server-btn',
			element : '#server-box',
			triggerType: 'click',
			align: {baseXY: [-100, 40]}
		});

		serverList.after("show", function(){
			$(".server-condition-wrapper").css("z-index",'20');
			$(".ui-cnt-main-bd").css("z-index",'10');
			selectServer.addClass("active");
			/* 初始化服务器列表  */
			initList(SERVER_INFO, "area-list");
			if(!searchServer){
				var searchServer = new SearchServer();
				searchServer.render();
			}
		}).after('hide', function(){
			$(".server-condition-wrapper").css("z-index",'0');
			$(".ui-cnt-main-bd").css("z-index",'0');
			selectServer.removeClass("active");
			$("a.all-below").html(ALL_AREA);
			$(".selected-item").remove();
		});

		/* 删除选中区  */
		$("body").delegate(".selected-item a", "click", function(){
			$(this).parent().remove();
			$("a.all-below").html(ALL_AREA);
			initList(SERVER_INFO, "area-list");
			return false;
		});

		/* 删除全区快搜  */
		$("body").delegate("#allServerSearch", "click", function(){
			$("a.all-below").html(ALL_AREA);
			initList(SERVER_INFO, "area-list");
			return false;
		});

		var serverAreaList = $("#server-area-list");
		/* 区域选中处理  */
		serverAreaList.on("click", "#area-list a:not('.out-control')", function(e){
			var elem = $(e.target);
			var areaId = elem.attr("data-value");
			var serverList = {};
			var selectedHtml = '<span class="selected-item">'
								+ '<span data-other="'+ elem.attr("data-other") +'" class="item-text">'+ elem.html() +'</span>'
								+ '<a href="javascript:;" class="ui-btn-close f-iconfont">&#xe60f;</a>'
								+ '</span>';
			$(selectedHtml).insertBefore($(".all-below"));
			$("a.all-below").html(ALL_SERVER);
			$.each(SERVER_INFO, function(n,e){
				if(e.id === Number(areaId)){
					serverList = e.server;
					return false;
				}
			});
			initList(serverList, "server-list");
			return false;
		});

		/* 全部区(服)处理  */
		$("#server-box").on("click", "a.all-below", function(){
			var text = $.trim($(this).html());
			if(ALL_AREA == text) {
				selectText.html(ALL_AREA);
			} else {
				selectText.html($('.selected-item span').html());
			}
			serverList.hide();
			return false;
		});

		/* 服务器选中处理  */
		serverAreaList.on("click", "#server-list a", function(e){
			var elem = $(e.target);
			var areaName = $('.selected-item span').attr('data-other');
			selectText.html($('.selected-item span').html()+"-"+elem.html());
			serverList.hide();
			return false;
		});

		/*搜索服务器选中处理*/
		serverAreaList.on("click", "#search-list a", function(e){
			var elem = $(e.target);
			var serverData = elem.data();
			serverList.hide();
			return false;
		});

		$(".server-list-close").click(function(){
			serverList.hide();
			return false;
		});


		/* 加载服务器  */
		function initList(list, type, keyword) {
			var html = "<div id="+ type +">";
			var item;
			var step = $("#select-step").find("span");
			if(type=="area-list"){
				html+= '<div class="area-row">';
				var num=0;
				for(var i=0,len=list.length; i<len; i++) {
					item = list[i];
					html += '<span class="server-item"><a data-key="world_id" data-value="'+ item.id +'" data-other="'+ encodeURIComponent(encodeURIComponent(item.name)) +'" href="javascript:;">'+ item.name +'</a></span>';
					if((num+1)%areaRow===0 && num!==len){
						html+= '</div><div class="area-row">';
					}
					num++;
				}
				// html+= site + '</div>';
				html += '</div>';
			}
			if(type=="search-list"){
				var len = list.length;
				for(var i=0; i<len; i++) {
					item = list[i];
					html += '<span class="server-item"><a data-key="world_id" data-value="'+ item.id +'" data-other="'+ encodeURIComponent(encodeURIComponent(item.name)) +'" data-area ="'+ encodeURIComponent(encodeURIComponent(item.area))+'" href="javascript:;">'+ item.name +'</a></span>';
				}
				if(!len){
					html += "对不起没有名字带<b>"+keyword+"</b>的服务器";
				}
			}
			if(type=="server-list"){
				for(var i=0,len=list.length; i<len; i++) {
					item = list[i];
					html += '<span class="server-item"><a data-key="world_id" data-value="'+ item.id +'" data-other="'+ encodeURIComponent(encodeURIComponent(item.name)) +'" href="javascript:;">'+ item.name +'</a></span>';
				}
			}
			html += "</div>";
			$("#server-area-list").html(html);

			if(type=="area-list") {
				$(".all-below").show();
				$("#allServerSearch").hide();
				$(step[0]).addClass("active");
				$(step[1]).removeClass("active");
				$("#select-guide").html(GUIDE_SELECT_AREA);
			}
			if(type=="server-list"){
				$(".all-below").hide();
				$("#allServerSearch").hide();
				$(step[1]).addClass("active");
				$(step[0]).removeClass("active");
				$("#select-guide").html(GUIDE_SELECT_SERVER);
			}
			if(type=="search-list"){
				$("#allServerSearch").show();
				$(".all-below").hide();
				$(".selected-item").remove();
				$(step[1]).addClass("active");
				$(step[0]).removeClass("active");
				$("#select-guide").html(GUIDE_SELECT_SERVER);
			}
		}

	});

});