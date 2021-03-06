<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>移动优先前端产品的探索</title>
    <meta name="description" content="Web的出现正在彻底改变着生活的各个方面，FE这个职业的发展历程">
    <meta name="author" content="蔡忠华 jack.cai@ucloud.cn">
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <link rel="stylesheet" href="./css/reveal.min.css">
    <link rel="stylesheet" href="./css/theme/default.css" id="theme">
    <!-- For syntax highlighting -->
    <link rel="stylesheet" href="../lib/css/zenburn.css">
    <!-- If the query includes 'print-pdf', use the PDF print sheet -->
    <script>
        document.write('' + ( window.location.search.match(/print-pdf/gi) ? '' : '<link rel="stylesheet" href="./css/print/pdf.css" type="text/css" media="print"><link rel="stylesheet" href="./css/print/paper.css" type="text/css" media="print">' ) + '');
    </script>
    <!--[if lt IE 9]>
    <script src="../lib/js/html5shiv.js"></script><![endif]-->

    <base target="_blank"/>
    <!--这么写更方便slide中插入script，此处忽略性能吧-->
    <script src="./js/jquery-min.js"></script>
    <script src="./js/jquery.lightbox-0.5.pack.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/jquery.lightbox-0.5.css" media="screen"/>
</head>
<body>
<div class="reveal">
    <!--TODO 确认现场wifi的情况，可能要考虑专辑demo所有图片下载到本地 
      已确认，可能比较烂，要有本地服务器 -->
    <!--TODO 使用演讲视图 -->
    <!--TODO 强烈推荐调试一遍投影仪 -->
    <!--CASE 通知闭月，focus会再d2上演示 -->
    <!--CASE 易读性，避免上下导航 -->
    <!--CASE revealjs 是否有markdown渲染完毕的事件？ 
      Reveal.addEventListener('slidechanged', function(){}); -->
    <!--CASE lightbox image size control？
      看dom结构应该不好弄，需要改源码了 -->
    <!--CASE 寻找一枚适合在页面上做标记的chrome插件 
      找到的都是文字高亮，没有直接绘图的 -->

    <div class="slides">
        <style type="text/css">
            .proto em {
                /*color: #b10000;*/
                font-weight: bold;
                font-size: 110%;
            }
        </style>
        <section data-markdown>
            # 移动优先前端产品的探索
            <br><br>
            ### 天猫前端
            #### [@徐凯-鬼道](http://weibo.com/77786515) | [luics@gmail](mailto:luics.xu@gmail.com) | [luics.github.io](http://luics.github.io)
        </section>
        <section data-markdown>
            ## 天猫现状
            <div class="lightbox-wrapper">
                <a href="images/seller.png" height="100" title="商家烦恼"><img height="250" src="images/seller.png"/></a>
                <a href="images/tmall.png" title="天猫现状"><img height="250" src="images/tmall.png"/></a>
            </div>
            <ol class="lightbox-wrapper">
                <li class="fragment">导购渠道碎片化：消费者在各个导购渠道上看到的<a
                       data-notlb="1" href="http://focus.peaches.io/?url=http%3A%2F%2Fdetail.tmall.com%2Fitem.htm%3Fid%3D20771459742">核心业务不一致</a>
                </li>
                <li class="fragment">商家和小二各导购渠道运营需求无法满足</li>
                <li class="fragment">实施成本高，基础设施重复建设</li>
            </ol>
        </section>
        <section data-markdown>
            ## 移动优先
            [《Mobile First》](http://www.lukew.com/ff/entry.asp?933)

            <ol class="lightbox-wrapper">
                <li class="fragment"><a href="images/cnnic-user-201304.png" title="中国移动互联网发展状况报告 2013.04">流量暴涨</a><a
                        href="images/baidu-time-13q1.png" title="百度移动互联网发展趋势报告 2013年Q1"></a>：移动端的用户和流量越来越多
                </li>
                <li class="fragment">小屏专注：各种屏幕让我们更聚焦业务的本质</li>
                <li class="fragment">能力扩展：移动设备有<a data-notlb="1" href="http://www.cnblogs.com/luics/archive/2012/11/17/2775190.html">更先进</a>的人机<a data-notlb="1" href="https://github.com/kissyteam/kissy-mobile/issues/3">交互体验</a>
                </li>
            </ol>
        </section>
        <section data-markdown>
            ## 解决方案
            1. 内容开发过程中，优先考虑最小最重要的移动端，然后适配到所有终端，同时能够为其他终端提供适当差异化的能力
            2. 为了确保核心内容(非视觉效果)在不同终端上的一致性，自动适配会遵循事先制定好的核心内容规则
        </section>
        <section data-markdown>
            ## 方案价值
            1. 商家：天猫提供把服务低成本推送到任何终端的能⼒
            2. 消费者：天猫提供从任何终端能够快速达到天猫的能⼒
            3. 最终：所有互动数据在天猫上沉淀下来更好地服务商家和消费者
        </section>
        <section data-markdown>
            ## 原型
            「技术验证原型」

            [点击访问PC版](http://luics.github.io/demo/d2-demo/index.html)
            <br>
            或
            <br>
            <a href="http://luics.github.io/demo/d2-demo/demo/sub.html">
                <img style="width:300px;"
                     src="http://ma.taobao.com/api/qrcode.html?activity=encode&text=http%253A%252F%252Fluics.github.io%252Fdemo%252Fd2-demo%252Findex.html&width=300&height=300&ecLevel=L&characterSet=gbk&t=1372599739542"/></a>
        </section>
        <section data-markdown>
            ## 原型：Mobile 版本
            <iframe src="http://luics.github.io/demo/d2-demo/demo/sub.html" frameborder="0"
                    style="width: 320px; height: 533px"></iframe>

            <!--<a data-notlb="1" href="http://focus.peaches.io/?url=http%3A%2F%2Fluics.github.io%2Fdemo%2Fd2-demo%2Fdemo%2Fsub.html">完整版本</a>-->
            <a data-notlb="1" href="http://luics.github.io/demo/d2-demo/demo/sub.html">完整版本</a>
        </section>
        <section data-markdown>
            ## 原型：「加法」过程
            <ol>
                <li class="fragment">屏幕太小，什么是核心内容？</li>
                <li class="fragment">核心内容，专辑图片显然是核心内容，如何突出？</li>
                <li class="fragment">突出显示，首先想到了全屏</li>
                <li class="fragment">导航问题，专辑内导航、专辑间导航</li>
                <li class="fragment">专辑内导航，左右手势、底部导航</li>
                <li class="fragment">专辑间导航，侧栏导航</li>
                <li class="fragment">附加功能，分享、收藏</li>
                <li class="fragment">反观<a href="http://subject.tmall.com/subject/subject.htm?id=2478">pc专辑</a>，却没有易用的专辑间导航</li>
            </ol>
        </section>
        <section data-markdown>
            ## 传统：「减法」过程
            0. PC Web 更早出现
            0. 运营驱动
        </section>
        <section data-markdown>
            <h2>专辑内导航</h2>
            <div class="lightbox-wrapper">
                <a href="images/hashbang-multiview%201.png" title="基于hashbang的专辑内导购"><img height="250"
                                                                                       src="images/hashbang-multiview%201.png"/></a>
                <a href="images/historyapi-multiview%201.png" title="基于history-api的专辑内导购"><img height="250"
                                                                                            src="images/historyapi-multiview%201.png"/></a>
            </div>
            * [History-API Demo](http://html5demos.com/history)
            * [History API 与 Hashbang 的对比](https://github.com/browserstate/history.js/wiki/Intelligent-State-Handling)
            <aside class="notes">
                对比2种方案：history-api对搜索引擎更友好，实现成本更大
            </aside>
        </section>
        <section>
            <h2>专辑间导航</h2>
            <div class="lightbox-wrapper">
                <a href="images/historyapi-multipage%201.png" title="专辑间导购方案"><img width="400"
                                                                                src="images/historyapi-multipage%201.png"/></a>
            </div>
        </section>
        <section data-markdown>
            ## 原型关注点
            1. 一致入口
            2. 一套数据
            3. 多套模板
            4. 多个项目
            <aside class="notes">
                在pc和移动的融合上，天猫前端这边以天猫专辑为参考做了一个技术验证原型（以下简称原型）：
            </aside>
        </section>
        <section data-markdown>
            ## 1. 一致入口
            0. 考虑：天猫某pc页面<a data-notlb="1" href="http://focus.peaches.io/?url=http%3A%2F%2Fdetail.tmall.com%2Fitem.htm%3Fid%3D20771459742">分享到微博</a>，用户在移动微博上访问该链接
            0. 上述情况的<a data-notlb="1" href="http://focus.peaches.io/?url=http%3A%2F%2Fa.m.tmall.com%2Fi20771459742.htm">逆向场景</a>
            0. 多样的实现方式：单URL、多URL
        </section>
        <section data-markdown>
            ## 2. 一套数据
            1. 后端向所有终端只提供一套数据
            2. 避免每个终端重复繁琐的接入过程
            <div class="lightbox-wrapper">
                <a href="images/if-struct.png"><img height="300" src="images/if-struct.png"/></a>
                <a href="images/if.png"><img height="300" src="images/if.png"/></a>
            </div>
        </section>
        <section data-markdown>
            ## 3. 多套模板
            0. 不同终端使用不同的模板
            0. 移动端更多关注移动特有的交互属性
        </section>
        <section data-markdown>
            ## 4. 多个项目 <!--TODO 确认合适的项目、并补齐所有链接-->
            * **[天猫专辑](#)**
            * [一周新发现](#)
            * [今日最大牌](#)
            * [品牌街](#)
            * [天猫预售](#)
            * [品牌特卖](#)
            * ...
        </section>
        <section data-markdown>
            ## 未来
            0. 一致入口：MED（多终端检测，Multi End Detector）
            0. 一套数据：IF （天猫前后端接口, tmall InterFace）
            0. 多套模板：高度可定制的模板系统
            0. 多个项目：刚启航，[欢迎交流、自荐、推荐](http://weibo.com/77786515)
        </section>
        <section data-markdown>
            ## Q & A
            <br><br>
            ### 天猫前端
            #### [@徐凯-鬼道](http://weibo.com/77786515) | [luics@gmail](mailto:luics.xu@gmail.com) | [luics.github.io](http://luics.github.io)
        </section>
    </div>
</div>

<script src="../lib/js/head.min.js"></script>
<script src="./js/reveal.min.js"></script>
<script src="./js/index.js"></script>
</body>
</html>