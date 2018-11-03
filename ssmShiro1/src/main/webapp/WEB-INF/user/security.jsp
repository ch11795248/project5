<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/13
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>权限展示</title>
    <script src="/js/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script src="/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="/css/bootstrap.min.3.3.5.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div style="height: 500px;">
        <div class="col-lg-4">
            <div class="text-center"><kbd>一级权限</kbd></div>
            <a class="list-group-item text-center active" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                商品系统管理
                <div style="float: right;" hidden="hidden" >
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
            <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                订单系统管理
                <div style="float: right;" hidden>
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
            <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                报表系统管理
                <div style="float: right;" hidden>
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
            <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                客户系统管理
                <div style="float: right;" hidden>
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
            <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                用户系统管理
                <div style="float: right;" hidden>
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
            <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                物流系统管理
                <div style="float: right;" hidden>
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
            <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                账单系统管理
                <div style="float: right;" hidden>
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
        </div>
        <div class="col-lg-4 col-lg-push-0">
            <div class="text-center"><kbd>二级权限</kbd></div>
            <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                管理员权限管理
                <div style="float: right;" hidden>
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
            <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                运维权限管理
                <div style="float: right;" hidden>
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
            <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                策划权限管理
                <div style="float: right;" hidden>
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
            <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                商品操作管理
                <div style="float: right;" hidden>
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
        </div>
        <div class="col-lg-4 col-lg-push-0">
            <div class="text-center"><kbd>三级级权限</kbd></div>
            <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                新增运维人员
                <div style="float: right;" hidden>
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
            <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                修改运维人员
                <div style="float: right;" hidden>
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
            <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                删除运维人员
                <div style="float: right;" hidden>
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
            <a class="list-group-item text-center" onmouseover="showbtn(this)" onmouseout="hidebtn(this)" onclick="showMsg(this)">
                查看运维人员
                <div style="float: right;" hidden>
                    <button type="button" class="btn btn-warning btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span> 修改
                    </button>
                    <button type="button" class="btn btn-danger btn-xs">
                        <span class="	glyphicon glyphicon-remove"></span> 删除
                    </button>
                </div>
            </a>
        </div>
    </div>
</div>
<script type="application/javascript">
    function showbtn(obj){
        $(obj).find("div").removeAttr("hidden")
    }

    function hidebtn(obj){
        $(obj).find("div").attr("hidden","hidden")
    }
    function showMsg(obj){
        $(obj).parent().find("a").removeClass("active")
        $(obj).addClass("active")
    }
</script>
</body>
</html>
