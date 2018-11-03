<%--
  Created by IntelliJ IDEA.
  User: 59611
  Date: 2018/10/16
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>zTree</title>
    <link rel="stylesheet" href="/css/demo.css" type="text/css">
    <link rel="stylesheet" href="/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="/js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="/js/jquery.ztree.excheck.js"></script>
</head>
<body>
<div class="content_wrap">
    <div class="zTreeDemoBackground">
        <ul id="treeDemo" class="ztree"></ul>
    </div>
</div>
<script>
    var treeNodes = ${data};
    var setting = {
        check: {
            enable: true
        },
        data: {
            key:{
                name:"permName"
            },
            simpleData: {
                enable: true,  //开启简单数据模式
                idKey: "id",   //通过id属性指定节点标识
                pIdKey: "parentId", //通过pId属性指定上节点ID
                rootPId: 0,    //根节点ID 是0
            }
        }
    };

    /*初始化zTree树*/
    $(document).ready(function(){
        $.fn.zTree.init($("#treeDemo"), setting, treeNodes);
        /*定义一个zTree树*/
        var zTree = $.fn.zTree.getZTreeObj("treeDemo");
        /*设置关联关系：勾选时关联子，取消时关联子*/
        zTree.setting.check.chkboxType = { "Y" : "s", "N" : "s" };
    });
</script>
</body>
</html>

