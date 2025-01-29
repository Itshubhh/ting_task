<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Financial Articles</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link rel="stylesheet" href="assets/style/style.css">
</head>
<body>

<div class="container-fluid my-5">
  <select class="selectBox form-select w-25 ms-3 mt-5" onchange="eye_filter()" id="business_select">
    <option value="0" disabled>Select Category</option>
    <option value="all" selected>All</option>
    <option value="Asset Management">Asset Management</option>
    <option value="Corporate">Corporate</option>
    <option value="Credit Solutions">Credit Solutions</option>
    <option value="Equity Capital Markets">Equity Capital Markets</option>
    <option value="Institutional Equities">Institutional Equities</option>
    <option value="Investment Banking">Investment Banking</option>
    <option value="Wealth Management">Wealth Management</option>
  </select>
  <hr>

  <div class="row " id="content-container">

  </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
function eye_filter() {
    var selectedValue = document.getElementById("business_select").value;

    $.ajax({
        url: 'fetch_data.php', 
        type: 'GET',
        data: { category: selectedValue },
        success: function(response) {
            document.getElementById("content-container").innerHTML = response;
        }
    });
}

$(document).ready(function() {
    eye_filter();
});
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
