<div>
  <h2>Product Items</h2>
  
  <!-- Search Box -->
  <input type="text" id="searchBox" onkeyup="filterTable()" placeholder="Search by product name..">

  <table class="table">
    <thead>
      <tr>
        <th class="text-center">S.N.</th>
        <th class="text-center">Product Image</th>
        <th class="text-center">Product Name</th>
        <th class="text-center">Product Description</th>
        <th class="text-center">Category Name</th>
        <th class="text-center">Unit Price</th>
        <th class="text-center" colspan="2">Action</th>
      </tr>
    </thead>
    <?php
      // Rest of the PHP code remains the same
    ?>
  </table>

  <!-- Rest of the code remains the same -->

</div>

<script>
  function filterTable() {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("searchBox");
    filter = input.value.toUpperCase();
    table = document.getElementsByTagName("table")[0];
    tr = table.getElementsByTagName("tr");

    for (i = 1; i < tr.length; i++) {
      td = tr[i].getElementsByTagName("td")[2]; // Index 2 is the product name column
      if (td) {
        txtValue = td.textContent || td.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          tr[i].style.display = "";
        } else {
          tr[i].style.display = "none";
        }
      }
    }
  }
</script>
