<?php
header("Content-Type:application/json;charset=UTF8");
require("link_sql.php");

//$sql="SELECT * FROM earPrimary";

//$result=mysqli_query($conn,$sql);

/*拿到所有的耳机种类*/
//$list=mysqli_fetch_all($result,1);

/*根据耳机的种类查询其款式(颜色)*/

 $sql="SELECT * FROM earPrimary";

$result=mysqli_query($conn,$sql);

$list=mysqli_fetch_all($result,1);

echo json_encode($list);
?>