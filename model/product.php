<?php
function insert_product ($product_name,$price,$img,$mo_ta,$number_of_view,$categori_id){
 $sql="insert into product(product_name,price,img,mo_ta,number_of_view,categori_id) values('$product_name','$price','$img','$mo_ta','$number_of_view','$categori_id')";
 pdo_execute($sql);
}    
function loadall_product($kyw="",$categori_id=0){
    $sql = "SELECT * FROM product where 1";
    if($kyw!=""){
        $sql.=" and product_name like '%".$kyw."%'";
    }
    if($categori_id>0){
        $sql.=" and categori_id=  '".$categori_id."'";
    }
    $sql.= " ORDER BY product_id desc";
    $list_product =pdo_query($sql);
    return $list_product;
}
function loadone_product($product_id){
    $sql="select * from product where product_id=".$product_id;
    $product_one=pdo_query_one($sql);
    return $product_one;
}
function delete_product($product_id){
    $sql= "delete  from product where product_id=".$_GET['product_id'];
    pdo_execute($sql);
}function  update_product($product_id,$product_name,$price,$img,$mo_ta,$number_of_view,$categori_id){
    if($img!=""){
        $sql = "update product set product_name='".$product_name."',price='".$price."',img='".$img."',mo_ta='".$mo_ta."',number_of_view='".$number_of_view."',categori_id='".$categori_id."' where product_id= ".$product_id;
    }else
    $sql = "update product set product_name='".$product_name."',price='".$price."',mo_ta='".$mo_ta."',number_of_view='".$number_of_view."',categori_id='".$categori_id."' where product_id= ".$product_id;
    
    pdo_execute($sql);
}


?>