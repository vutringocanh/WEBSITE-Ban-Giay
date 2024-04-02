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
        <h2 class="card-title">Danh sách đơn hàng</h2>
        <form class="boloc" action="index.php?act=list_bill" method="post">
          <div class="boloc2 form-group">
            <select style="width: 11rem;" class="form-select" name="id_search_bill" id="tt">
              <option value="0" selected>Tất cả</option>
              <option value="">Giày nam</option>
              <option value="">Giày nam</option>
            </select>
            <button type="submit" class="btn btn-primary" name="search_bill" value="Search">Tìm kiếm</button>
          </div>
        </form>
        <div class="table-responsive">
          <table class="table text-center">
            <table class="table table-bordered text-center table1">
              <thead>
                <tr>
                  <th>Mã đơn hàng</th>
                  <th>Khách hàng</th>
                  <th>Số lượng hàng</th>
                  <th>Giá trị đơn hàng</th>
                  <th>Ngày đặt hàng</th>
                  <th>Tình trạng đơn hàng</th>
                  <th style="width: 22%;">Thao tác</th>
                </tr>
              </thead>
              <tbody>

                <tr>
                  <td>DAM- $bill['bill_id']</td>
                  <td>$user</td>
                  <td>$count_product</td>
                  <td>$bill['bill_total']</td>
                  <td>$bill['bill_date']</td>
                  <td>$status_bill</td>
                  <td class="btn1"><a href=""><input class="btn btn-primary btn2" type="button" value="Cập nhật trạng thái"></a></td>
                </tr>
              </tbody>
            </table>
        </div>
      </div>
    </div>
  </div>
</div>
