# AppStore
iOS App 应用分发测试

### 主项目地址

[腾讯Coding](https://fir-im.coding.net/public/fir.im/AppStore/git/files) 用于提供资源存储的git仓库



### 应用分发网址

[4everland 静态网页托管](https://www.4everland.org/)：	[https://appstore.4everland.app/Home.html](https://appstore.4everland.app/Home.html)

[Github](https://github.com/RANSAA/AppStore.git)：	[https://ransaa.github.io/AppStore/Home.html](https://ransaa.github.io/AppStore/Home.html)

[腾讯](https://fir-im.coding.net/p/fir.im/d/AppStore/git)：			[https://fir-im.coding.net/p/fir.im/d/AppStore/git/raw/master/index.html](https://fir-im.coding.net/p/fir.im/d/AppStore/git/raw/master/index.html)



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

manifest配置参考路径： https://www.jianshu.com/p/1f88cc66809e




## FirBuilder H5

"""

		一：简介
				FirBuilder H5是一款类似fir.im应用分发的静态网页生成器。通过解析Android/iOS（以下统称APP）生成静态网页，不需要任何配置，然后发布到支持page的git仓库，或者服务器即可实现APP分发功能。



		二：环境要求
				1.如果只需要解析iOS安装包直接运行即可
				2.如果需要解析Android应用，则需要JAVA运行环境


		三：参数解释
				1.ServerRoot：用于存储资源的git仓库(服务器)根路径，它主要用来为apk提供云存储路径。本应用默认使用腾讯coding仓库来存储资源。
							  例如：coding仓库路径为：https://fir-im.coding.net/p/fir.im/d/AppStore/git/tree/master 那么他对应的资源存储仓库路径：
							  https://fir-im.coding.net/p/fir.im/d/AppStore/git/raw/master/ (注意区别)
				2.重新生成H5：即根据配置会重新生成所有HTML文件，修改ServerRoot后必须执行该操作


		四：使用
				FirBuilder会在当前目录生成H5，然后将文件提交到coding(服务器)上，然后在将sync目录同步到支持page的git仓库即可。

"""



## 推荐一个仿fir.im的开源项目
[intranet_app_manager](https://github.com/yizhaorong/intranet_app_manager)
