<style>
  .thaotac {
    display: flex;
    flex-direction: row;
    gap: 10px;
  }

  a {
    text-decoration: none;
  }

  td {
    line-height: 40px;
  }

  .btn1 input:nth-child(1) {
    margin-right: 10px;
  }

  .btn2 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .boloc {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    margin-bottom: 15px;
  }

  .boloc2 {
    display: flex;
    flex-direction: row;
    gap: 10px;
  }

  .boloc select {
    height: 38px;
  }

  .table1 thead tr th {
    font-weight: 600;
    font-size: 1rem;
  }
</style>
<div class="row">
  <div class="col-12 grid-margin">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">Danh sách bình luận</h4>
        <div class="table-responsive">
          <table class="table text-center table-bordered table1">
            <thead>
              <tr>
                <th style="width: 5%;">#</th>
                <th>ID</th>
                <th>Username</th>
                <th>Nội dung</th>
                <th>Tên sản phẩm</th>
                <th>Hình ảnh sản phẩm</th>
                <th>Ngày bình luận</th>
                <th style="width: 17%;">Thao tác</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><input type="checkbox" name="" id=""></td>
                <td>binhluan_id</td>
                <td>username</td>
                <td>binhluan_detail</td>
                <td>pr_name</td>
                <td><img src="pr_img" alt=""></td>
                <td>date_comment</td>
                <td class="btn1"><a href="delete_binhluan" onclick="return confirm(`Bạn muốn xóa?`)" ; id="delete"><input class="btn btn-danger btn2" type="button" value="Xóa"></a></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
