 <?php
 header("Content-Type:application/json;charset=UTF8");
 require("link_sql.php");

  @$ID=$_REQUEST['id'] or die("ear id is required");

  $sql="SELECT * FROM earPicNum WHERE eId='$ID'";

 $result=mysqli_query($conn,$sql);

 $list=mysqli_fetch_all($result,1);

 echo json_encode($list);
 ?>