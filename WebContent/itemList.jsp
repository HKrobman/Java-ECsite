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
<title>商品一覧画面</title>
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
      <p>ItemList</p>
    </div>
    <div>
    <s:if test="itemList == null">
      <h3>登録商品はありません</h3>
    </s:if>
      <h3>登録済み商品は以下になります</h3>
      <table border = "1">
        <tr>
          <th>商品名</th>
          <th>商品価格</th>
          <th>商品在庫</th>
          <th>登録日時</th>
        </tr>
        <s:iterator value="itemList">
          <tr>
            <td><s:property value="itemName" /></td>
            <td><s:property value="itemPrice" /><span>円</span></td>
            <td><s:property value="itemStock" /><span>個</span></td>
            <td><s:property value="insert_date" /><span></span></td>
          </tr>
        </s:iterator>
      </table>
      <s:form action="ItemListDeleteConfirmAction">
        <s:submit value="削除" />
      </s:form>
      <div id="text-right">
        <p>Admin画面へ戻る場合は<a href='<s:url action="AdminAction" />'>こちら</a></p>
      </div>
    </div>
  </div>
  <div id="footer">
    <div id="pr">
    </div>
  </div>
</body>
</html>