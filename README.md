# AppStore
iOS App 应用分发测试


### manifest配置注意事项
1. 所以资源必须在https服务器上
2. manifest.plist中的资源配置路径不能为中文
3. manifest.plist文件本身所在路径也不能包含中文
4. manifest.plist文件的名称可以任意，但是不能包含中文
5. itms-services配置中的url地址必须以.plist结尾，否则即使url能正确请求到manifest.plist资源也会失败。
```
<a id="clickMe"
	href="itms-services://?action=download-manifest&url=https://raw.githubusercontent.com/RANSAA/AppStore/master/ios/com.sayaDev.test/1.0/manifest-github.plist">
	Github
</a>

<a id="clickMe"
	href="itms-services://?action=download-manifest&url=https://raw.githubusercontent.com/RANSAA/AppStore/master/ios/com.sayaDev.test/1.0/manifest.plist">
	Github
</a>
```


### 应用分发网址

[Github](https://github.com/RANSAA/AppStore)：	[https://ransaa.github.io/AppStore/index.html](https://ransaa.github.io/AppStore/index.html)

[腾讯](https://fir-im.coding.net/public/fir.im/AppStore/git/files)：	[https://fir-im.coding.net/p/fir.im/d/AppStore/git/raw/master/index.html](https://fir-im.coding.net/p/fir.im/d/AppStore/git/raw/master/index.html)




#### 参考网址：
https://www.jianshu.com/p/1f88cc66809e

