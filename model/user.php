<?php
function insert_client_user($username,$password,$avatar,$address,$phone,$email){
    $sql = "INSERT INTO user(username,password,avatar,address,phone,email) VALUES('$username','$password','$avatar','$address','$phone','$email') ";
    pdo_execute($sql);
}
function checkuser($username,$password){
    $sql="select *from user where username='".$username."' and password='".$password."' ";
    $user=pdo_query_one($sql);
    return $user;
 }
 function update_user_dk($user_id,$username,$password,$avatar,$address,$phone,$email){
  if($avatar!=""){
    $sql = "update user set username='".$username."',password='".$password."',avatar='".$avatar."',address='".$address."',phone='".$phone."',email='".$email."' where user_id= ".$user_id;    
  }else{
    $sql = "update user set username='".$username."',password='".$password."',address='".$address."',phone='".$phone."',email='".$email."' where user_id= ".$user_id;       
  }
  pdo_execute($sql);
  
}

 function check_password($username,$email,$phone){
    $sql="select *from user where username='".$username."'and email='".$email."'and phone='".$phone."' ";
    $user=pdo_query_one($sql);
    return $user;
 }


?>