<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "s" uri = "/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Sctipt-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>管理者画面</title>
<style type="text/css">
body {
  margin: 0;
  padding: 0;
  line-height: 1.6;
  letter-spacing: 1px;
  font-family: Verdana, Helvetica, sans-self;
  font-size: 12px;
  color: #333;
  background: #fff;
}

table {
  text-align: center;
  margin: 0 auto;
}

.left{
  float:left;
  height: 200px;
  width: 300px;
  border: 1px solid black;
  margin: 50px 0 0 50px;
}

.right{
  float:right;
  height: 200px;
  width: 300px;
  border: 1px solid black;
  margin: 50px 50px 0 0;
}

a{
  color: black;
  border: 1px solid black;
}


#top {
  width: 780px;
  margin: 30px auto;
  border: 1px solid #333;
}

#header {
  width: 100%;
  height: 80px;
  background-color: black;
}

#main {
  width: 100%;
  height: 500px;
  text-align: center;
}

#footer {
  width: 100%;
  height: 80px;
  background-color: black;
  clear: both;
}

#text-right{
  display: inline-block;
  text-align: right;
}
</style>

</head>
<body>
<div id="header">
    <div id="pr">
    </div>
  </div>
  <div id="main">
    <div id="top">
      <p>管理者画面</p>
    </div>
  <div class="left">
    <p>商品</p>
      <a href='<s:url action="ItemCreateAction"/>'>新規登録</a><br>
      <a href='<s:url action="ItemListAction"/>'>一覧</a>
  </div>
  <div class="right">
    <p>ユーザー</p>
      <a href='<s:url action="UserCreateAction"/>'>新規登録</a><br>
     <a href='<s:url action="UserListAction"/>'>一覧</a>
    </div>
  </div>
  <div id="footer">
    <div id="pr">
    </div>
  </div>
</body>
</html>