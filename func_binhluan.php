<?php

    function addComment($noiDung,$maSP,$maKH,$ngayBL)
      {
        $sql="insert into binhluan(noiDung,maSP,maKH,ngayBL) values('$noiDung','$maSP','$maKH','$ngayBL')";
        execute($sql);
      }

    function deleteComment($maBL)
      {
        $sql="delete from binhluan where maBL='$maBL'";
          execute($sql);
      }
    
    function updateComment($noiDung,$maSP,$maKH,$ngayBL)
      {
        $sql="update binhluan maBL='$productId',noiDung='$noiDung',maSP='$maSP',maKH='$maKH',ngayBL='$ngayBL',";
        execute($sql);
      }
    
    

?>