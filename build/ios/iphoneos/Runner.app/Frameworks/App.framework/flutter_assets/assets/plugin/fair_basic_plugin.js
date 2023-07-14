let FairBasicPluginCallBack = {};
let FairBasicPluginCallBackId = 0;
//变量名需要与flutter中的plugin类名保持一致
let FairBasicPlugin = function() {
    return {
            mFairPluginId: 0,
            call: function (params) {
                console.log('----------------------------');
                let respMap = {};
                respMap = mapOrSetToObject(params);
                var id = 'FairBasicPlugin$' + (++FairBasicPluginCallBackId);
                let paramsMap = {};
                FairBasicPluginCallBack[id] = respMap['args']['response'];
                paramsMap['className'] = "FairBasicPlugin#call";
                paramsMap['funcName'] = 'invokePlugin';
                paramsMap['pageName'] = respMap['pageName'];
                paramsMap['id'] = id;
                paramsMap['args'] = respMap['args'];
                let map = JSON.stringify(paramsMap);
                console.log('FairBasicPlugin 请求参数：' + map);
                invokeFlutterCommonChannel(map, (resultStr) => {
                    let responseMap = JSON.parse(resultStr);
                    let data = responseMap['response'];
                    let id = responseMap['id'];
                    //这两个函数用户拓展的
                    if (FairBasicPluginCallBack[id] === null) {
                        return;
                    }
                    FairBasicPluginCallBack[id](data);
                });
            }
    };
}

