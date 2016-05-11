###修改端口方法：
React Native 包服务器的默认启动的端口是8081，如果你想修改端口要修改一下地方：

	react-native start --port 9988
	https://github.com/facebook/react-native/blob/master/local-cli/server/server.js#L30


1、找到项目目录下的**node_moudles/react-native/local-cli/server/server.js**

找到一下代码

```objc
const args = parseCommandLine([{
    command: 'port',
    default: 8081,
    type: 'string',
  }
```
 	 
 	 
 2、修改AppDelegate.m下面的
 
```objc
jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.js"]
```


3、找到项目目录下的**node_moudles/react-native/Libraries/WebSocket/RCTWebSocketExecutor.m** 中的以下代码：

```objc
	 NSInteger port = [standardDefaults integerForKey:@"websocket-executor-port"] ?: 8081;
```
 
然后修改掉相应的端口
