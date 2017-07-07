<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <h1>java项目模板</h1>
    <p>author:梅葆瑞</p>
    <div>
        <h2>1、springmvc</h2>
        <h3>目录结构补充说明：</h3>
        <h4>后端文件夹(包括页面)：</h4>
        <p>
            main/java：Java代码<br/>
            main/java/web：controller<br/>
            main/java/util：工具类<br/>
            resource:资源文件<br/>
            webapp/WEB-INF/views:视图文件<br/>
        </p>
        <h4>前端文件夹：</h4>
        <p>
            webapp/content:前端文件<br/>
            webapp/content/css:样式表<br/>
            webapp/content/img:图片<br/>
            webapp/content/font:字体文件夹<br/>
            webapp/content/js:js文件<br/>
            webapp/content/js/lib:js库文件<br/>
            webapp/content/module:前端组件<br/>
            webapp/content/src:前端源码，此文件夹外边的前端代码都是编译或压缩后的，此文件夹中为源码，目录结构与外边相同<br/>

        </p>
    </div>
    <div>
        <h2>2、beetl配置</h2>
        <a href="/beetl">beetl样例页面</a>
        <p>
            <a href="http://ibeetl.com/guide/#beetl">beetl官方帮助文档</a><br/>
        </p>
        <h3>2.1添加beetl基本配置文件</h3>
        <p>
            配置文件路径：resources/beetl.properties。具体配置字段可以参考配置文件中的注释，更详细的信息请查看<a href="http://ibeetl.com/guide/#beetl">beetl官方帮助文档</a>中2.3. 模板基础配置相关内容。
        </p>
        <h3>2.2Beetl配置文件引入</h3>
        <p>
            在springMVC-servlet.xml中引入beetl配置文件。详见springMVC-servlet.xml中的“Beetl配置文件引入”注释下的内容。
        </p>
        <h3>2.3配置beetl视图解析器</h3>
        <p>
            在springMVC-servlet.xml中添加beetl视图解析器。详见springMVC-servlet.xml中的“Beetl视图解析器”注释下的内容。
        </p>
        <h3>2.4布局与视图引用（或称局部视图）</h3>
        <p>
            布局与视图引用是视图层复用的常用功能。本模板项目beetlpage.btl页面引用了布局页（WEB-INF/views/include/layout.btl）。视图页中引用了局部视图header和footer（与layout.btl在同级文件夹下边）。<br/>
            布局与视图引用的具体使用请参见<a href="http://ibeetl.com/guide/#beetl">beetl官方帮助文档</a>2.22. 标签函数中layout和include相关内容。
        </p>
        <p>
            <a href="/beetl">beetl样例页面</a>给出了简单的实例。
        </p>
    </div>
    <div>
        <h2>3、dubbo配置</h2>
        <a href="/dubbo">dubbo样例页面</a>
    </div>
    <div>
        <h2>4、cache(缓存)配置</h2>
        <p>
            对于一些数据不变或很少发生的页面，我们往往可以使用缓存功能来降低数据库压力或提升用户访问效率。下边向大家介绍Spring中ehcache的使用。
        </p>
        <a href="/cache">cache(缓存)样例页面</a>
        <h3>4.1启用缓存注解功能</h3>
        <p>
            参见springMVC-servlet.xml中“启用缓存注解功能”注释下的配置。
        </p>
        <h3>4.2配置缓存管理器</h3>
        <p>
            参见springMVC-servlet.xml中"cacheManagerFactory"和"cacheManager"两个bean的配置。
        </p>
        <h3>4.3配置缓存管理器配置文件</h3>
        <p>
            参见resources/encache.xml。本文件路径被配置在cacheManagerFactory的bean中。详细信息配置文件中有注释。
        </p>
        <h3>4.3在需要配置缓存的方法上添加Cacheable注解</h3>
        <p>
            参见com.wanfangdata.javatemplete.util.RandomNum类的getRandomInt()方法上的Cacheable注解。其中注解中的value = "myCache"对应encache.xml中name="myCache"的节点。<br/>
            注意，被Cacheable注解的方法，必须处于被Spring依赖注入的对象中才能起到缓存效果。
        </p>
        <p>
            具体功能详见<a href="/cache">cache(缓存)样例页面</a>。本页面展示一个每次刷新展示一个随机数，但是设置了5s的缓存。所以，每5s后刷新才会看到新的随机数，5s内看到的都是同样的随机数。
        </p>
    </div>
    <div>
        <h2>其他</h2>
    </div>
</div>
</body>
</html>
