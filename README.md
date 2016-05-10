###修改端口方法：
React Native 包服务器的默认启动的端口是8081，如果你想修改端口要修改一下地方：


1、找到项目目录下的**node_moudles/react-native/packager/packager.js**

找到一下代码

```objc
var options = {
	command:'port',
	default:8081,
	type:'string',
	...
}
```
 	 
 	 
 2、修改AppDelegate.m下面的
 
```objc
jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.js"]
```


3、找到项目目录下的**node_moudles/react-native/Libraries/WebSocket/RCTWebSocketExecutor.m** 中的以下代码：

```objc
	 -(instancetype)init{
   		return [self initWithURL:[RCTConvert NSURL:@"http://localhost:8081/debugger-proxy"]];
 	}
```
 
然后修改掉相应的端口
