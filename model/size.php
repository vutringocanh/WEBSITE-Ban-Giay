<?php
function loadall_size(){
    $sql = "SELECT * FROM size ORDER BY size_id desc";
    $list_size=pdo_query($sql);
    return $list_size;
}
?>