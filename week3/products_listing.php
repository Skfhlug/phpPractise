<html>
    <head>
        <title>Fetching Multiple Rows</title>
    </head>
    <body>
        <?php
            $dbc = mysqli_connect('localhost', 'root', '', 'northwind')
                or die('Error connecting to MySQL server.');
             
            $query = "SELECT ProductName, UnitPrice, UnitsInStock FROM Products";
               
            $result = mysqli_query($dbc, $query)
                or die('Error querying database.');
        ?> 
        <table border='1px solid;'>
            <tr><th>Product Name
            </th><th>Unit Price
            </th><th>Units in Stock</th></tr>
        <?php     
            while($row = mysqli_fetch_array($result))
            {
                echo '<tr><td>' . $row['ProductName'] . '</td><td>'
                        . $row['UnitPrice'] . '</td><td>'
                        . $row['UnitsInStock'] . '</td></tr>';
            }
            mysqli_close($dbc);
        ?>     
        </table>
    </body>
</html>