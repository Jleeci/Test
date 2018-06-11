Asynchronous JavaScript and XML
Ajax流程

操作XMLHttpRequest对象相关方法:

打开请求

XMLHttpRequest.open(传递方式,地址,是否异步请求)

准备就绪执行

XMLHttpRequest.onreadystatechange

获取执行结果

首先你得定义一个全局变量来保存XMLHttpRequest对象，然后写一个函数用来创建XMLHttpRequest对象

复制代码
 1 var xmlHttp;
 3 function createXMLHttpRequest(){
 4  if(window.ActiveXObject){
 5        //这个是创建一个IE浏览器的XMLHttpRequest对象；
 6   xmlHttp=new ActiveXObject('Microsoft.XMLHTTP');
 7   
 8  }else{
 9        //这个是创建一个其它浏览器的XMLHttpRequest对象；
10   xmlHttp=new XMLHttpRequest();
11   
12  }
13 }
14 
15 再然后定义一个回调函数，用于处理你想处理的数据；
17 function handleStateChange(){
18  if(xmlHttp.readyState==4){
19   if(xmlHttp.status==200){
20 //在这里写你要做的实现的功，就弹出一个消息吧；
21    alert("OK");
22   }
24  }
25 }
复制代码
然后再定义一个函数用于与服务器端进行通信

复制代码
1 function doSearch(){
2  //创建XMLHttpRequest对象；
3  createXMLHttpRequest();
4 //将回调函数赋值给XMLHttpRequest对象的onreadystatechange   方法；
5  xmlHttp.onreadystatechange=handleStateChange;
6  //调用XMLHttpRequest对象的open方法，并且给定相关参数
7  xmlHttp.open("GET","url",true);
8  xmlHttp.send(null);
9 }
复制代码
然后在你要用的页面当中的某个地方调用doSearch()方法就行了

例如：

 <input type="button" value="Search" onclick="doSearch();"/>

1、什么是ajax，为什么要使用Ajax（请谈一下你对Ajax的认识）

什么是ajax：

AJAX是“Asynchronous JavaScript and XML”的缩写。他是指一种创建交互式网页应用的网页开发技术。

Ajax包含下列技术：

基于web标准（standards-based presentation）XHTML+CSS的表示；

使用 DOM（Document Object Model）进行动态显示及交互；

使用 XML 和 XSLT 进行数据交换及相关操作；

使用 XMLHttpRequest 进行异步数据查询、检索；

使用 JavaScript 将所有的东西绑定在一起。

为什么要用ajax：

Ajax应用程序的优势在于：

1. 通过异步模式，提升了用户体验

2. 优化了浏览器和服务器之间的传输，减少不必要的数据往返，减少了带宽占用

3. Ajax引擎在客户端运行，承担了一部分本来由服务器承担的工作，从而减少了大用户量下的服务器负载。

2、Ajax的最大的特点是什么？



Ajax可以实现动态不刷新（局部刷新）

就是能在不更新整个页面的前提下维护数据。这使得Web应用程序更为迅捷地回应用户动作，并避免了在网络上发送那些没有改变过的信息。

3、请介绍一下XMLHTTPREQUEST对象？ 

Ajax的核心是JavaScript对象XmlHttpRequest。该对象在Internet Explorer 5中首次引入，它是一种支持异步请求的技术。简而言之，XmlHttpRequest使您可以使用JavaScript向服务器提出请求并处理响应，而不阻塞用户。通过XMLHttpRequest对象，Web开发人员可以在页面加载以后进行页面的局部更新。 

4、Ajax技术体系的组成部分有哪些？

HTML，css，dom，xml，xmlHttpRequest，javascript

5、AJAX应用和传统Web应用有什么不同？ 

在传统的Javascript编程中，如果想得到服务器端数据库或文件上的信息，或者发送客户端信息到服务器，需要建立一个HTML form然后GET或者POST数据到服务器端。用户需要点击”Submit”按钮来发送或者接受数据信息，然后等待服务器响应请求，页面重新加载。

因为服务器每次都会返回一个新的页面， 所以传统的web应用有可能很慢而且用户交互不友好。

使用AJAX技术， 就可以使Javascript通过XMLHttpRequest对象直接与服务器进行交互。

通过HTTP Request， 一个web页面可以发送一个请求到web服务器并且接受web服务器返回的信息(不用重新加载页面)，展示给用户的还是通一个页面，用户感觉页面刷新，也看不到到Javascript后台进行的发送请求和接受响应。 

6、AJAX请求总共有多少种CALLBACK？

复制代码
1 Ajax请求总共有八种Callback 
2 onSuccess 
3 onFailure 
4 onUninitialized 
5 onLoading 
6 onLoaded 
7 onInteractive 
8 onComplete 
9 onException
复制代码
7、Ajax和javascript的区别？
  javascript是一种在浏览器端执行的脚本语言，Ajax是一种创建交互式网页应用的开发技术 ，它是利用了一系列相关的技术其中就包括javascript。Javascript是由网景公司开发的一种脚本语言，它和sun公司的java语言是没有任何关系的，它们相似的名称只是一种行销策略。在一般的web开发中，javascript是在浏览器端执行的，我们可以用javascript控制浏览器的行为和内容。在 Ajax应用中信息是如何在浏览器和服务器之间传递的 通过XML数据或者字符串。

8、在浏览器端如何得到服务器端响应的XML数据？
 XMLHttpRequest对象的responseXML属性

9、XMLHttpRequest对象在IE和Firefox中创建方式有没有不同？

有，IE中通过new ActiveXObject()得到，Firefox中通过new XMLHttpRequest()得到。

10、 介绍一下XMLHttpRequest对象的常用方法和属性（回答的越多越好）
复制代码
1 open(“method”,”URL”) 建立对服务器的调用，第一个参数是HTTP请求    方式可以为GET，POST或任何服务器所支持的您想调用的方式。 
2  第二个参数是请求页面的URL。 
3 send()方法，发送具体请求
4 abort()方法，停止当前请求
5 readyState属性   请求的状态 有5个可取值 0=未初始化 ，1=正在加载 2=以加载，3=交互中，4=完成
7 responseText 属性  服务器的响应，表示为一个串
8 reponseXML 属性 服务器的响应，表示为XML
9 status    服务器的HTTP状态码，200对应ok  400对应not found
复制代码
11、Ajax的优点和缺点
使用Ajax的最大优点，就是能在不更新整个页面的前提下维护数据。这使得Web应用程序更为迅捷地回应用户动作，并避免了在网络上发送那些没有改变过的信息。对应用Ajax最主要的缺点就是，它可能破坏浏览器后退按钮的正常行为因为Ajax中采用了xml技术，所以在Ajax中也可能问到XML的问题。

12、什么是XML？
XML是扩展标记语言，能够用一系列简单的标记描述数据。

13、xml的解析方式 

常用的用dom解析和sax解析。dom解析是一次性读取xml文件并将其构造为DOM对象供程序使用，优点是操作方便，但是比较耗内存。Sax是按事件驱动的方式解析的，占用内存少，但是编程复杂。

14、你采用的是什么框架（架包）？
       这题是必问的，一般也是最开始就会问到。

       在java中比较流行的有 dojo, Prototype , JQuery, Dwr, extjs  等等

15、如果熟悉某种ajax框架，他可能会问到怎样在程序中使用这种框架
DWR框架介绍

n DWR(Direct Web Remoting)是一个WEB远程调用框架.利用这个框架可以让AJAX开发变得很简单.利用DWR可以在客户端利用JavaScript直接调用服务端的Java方法并返回值给JavaScript就好像直接本地客户端调用一样(DWR根据Java类来动态生成JavaScrip代码).

n DWR的实现原理是通过反射，将java翻译成javascript，然后利用回调机制，从而实现了javascript调用Java代码

16、介绍一下Prototype的$()函数，$F()函数，$A()函数都是什么作用？
$() 方法是在DOM中使用过于频繁的 document.getElementById() 方法的一个便利的简写，就像这个DOM方法一样，这个方法返回参数传入的id的那个元素。

$F()函数是另一个大收欢迎的“快捷键”，它能用于返回任何表单输入控件的值，比如text box,drop-down list。这个方法也能用元素id或元素本身做为参数。

$A()函数能把它接收到的单个的参数转换成一个Array对象。

17、介绍一下XMLHttpRequest对象
通过XMLHttpRequest对象，Web开发人员可以在页面加载以后进行页面的局部更新。

18、AJAX应用和传统Web应用有什么不同？
在传统的Javascript编程中，如果想得到服务器端数据库或文件上的信息，或者发送客户端信息到服务器，需要建立一个HTML form然后GET或者POST数据到服务器端。用户需要点击”Submit”按钮来发送或者接受数据信息，然后等待服务器响应请求，页面重新加载。

因为服务器每次都会返回一个新的页面， 所以传统的web应用有可能很慢而且用户交互不友好。

使用AJAX技术， 就可以使Javascript通过XMLHttpRequest对象直接与服务器进行交互。

通过HTTP Request， 一个web页面可以发送一个请求到web服务器并且接受web服务器返回的信息(不用重新加载页面)，展示给用户的还是通一个页面，用户感觉页面刷新，也看不到到Javascript后台进行的发送请求和接受响应。

19、AJAX的全称是什么？ 介绍一下AJAX？
AJAX的全称是Asynchronous JavaScript And XML.

AJAX是2005年由Google发起并流行起来的编程方法， AJAX不是一个新的编程语言，但是它是一个使用已有标准的新的编程技术。

使用AJAX可以创建更好，更快，更用户界面友好的Web应用。

AJAX技术基于Javascript和HTTP Request.

20、介绍一下XMLHttpRequest对象的常用方法和属性？
open(“method”,”URL”) 建立对服务器的调用，第一个参数是HTTP请求    方式可以为GET，POST或任何服务器所支持的您想调用的方式。

第二个参数是请求页面的URL。

send()方法，发送具体请求

abort()方法，停止当前请求

readyState属性   请求的状态 有5个可取值 0=未初始化 ，1=正在加载

2=以加载，3=交互中，4=完成

responseText 属性 服务器的响应，表示为一个串

reponseXML 属性 服务器的响应，表示为XML

status    服务器的HTTP状态码，200对应ok 400对应not found

21、Ajax主要包含了哪些技术？
J主要是avaScript + XML

22、AJAX都有哪些有点和缺点？
ajax的优点

1、最大的一点是页面无刷新，用户的体验非常好。

2、使用异步方式与服务器通信，具有更加迅速的响应能力。

3、可以把以前一些服务器负担的工作转嫁到客户端，利用客户端闲置的能力来处理，减轻服务器和带宽的负担，节约空间和宽带租用成本。并且减轻服务器的负担，ajax的原则是“按需取数据”，可以最大程度的减少冗余请求，和响应对服务器造成的负担。

4、基于标准化的并被广泛支持的技术，不需要下载插件或者小程序。

ajax的缺点

1、ajax不支持浏览器back按钮。

2、安全问题 AJAX暴露了与服务器交互的细节。

3、对搜索引擎的支持比较弱。

4、破坏了程序的异常机制。

5、不容易调试。
