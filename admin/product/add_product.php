<div class="row">
  <div class="col-md-12 grid-margin stretch-card">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">Thêm sản phẩm</h4>
        <form action="index.php?act=add_product" enctype="multipart/form-data" method="post">
          <div class="form-group">
            <!-- <label for="">Mã sản phẩm</label>
            <input disabled name="product_id" type="text" class="form-control">
          </div> -->
          <div class="form-group">
            <label for="">Tên sản phẩm</label>
            <input name="product_name" type="text" class="form-control" required>
          </div>
          <div class="form-group">
            <label for="">Giá</label>
            <input name="price" type="number" class="form-control" required>
          </div>
          <div class="form-group">
            <label for="">Hình sản phẩm</label>
            <input name="img" multiple="multiple" type="file" class="form-control" required>
          </div>
          <div class="form-group">
            <label for="">Mô Tả</label>
            <input name="mo_ta" type="text" class="form-control" required>
          </div>
          
          
          <div class="form-group">
            <label for="">số lượt xem</label>
            <input type="text" name="number_of_view" id="" cols="" rows="" class="form-control"></input>
          </div>
          <div class="form-group">
            <label for="">Danh mục</label>
            <select name="categori_id" class="form-select" id="">
            <?php 
            foreach($result as $result){
                extract($result);
                echo '<option value="'.$categori_id.'">'.$categori_name.'</option>';
            }
            
            ?>
             
            </select>
          </div>
          
          <div class="form-group mt-3">
            <input class="btn btn-primary" type="submit" name="themmoi" value="Thêm mới">
            <input class="btn btn-secondary" type="reset" value="Nhập lại">
            <a href="index.php?act=list_product"><input class="btn btn-primary" type="button" value="Danh sách"></a>
          </div>
        </form>
      </div>
    </div>
  </div>