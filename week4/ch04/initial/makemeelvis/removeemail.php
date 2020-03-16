
<?php
    $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME)
            or die('Error connecting to MySQL server.');
  
    //Delete the customer rows (only if the form has been submitted)
    if (isset($_POST['submit']) && isset($_POST['todelete']))
    {
        foreach ($_POST['todelete'] as $delete_id)
        {
            $query = "DELETE FROM email_list WHERE id = $delete_id";
            mysqli_query($dbc,$query)
                    or die('Error querying database');
    }
    echo 'Customer(s) removed.<br />';
  }

    //Display the customer rows with checkboxes for deleting
    $query = "SELECT * FROM email_list";
    $result = mysqli_query($dbc, $query)
            or die('Error querying DB');
    while ($row = mysqli_fetch_array($result)) 
    {
        echo '<input type = "checkbox" value="' . $row['id'] . '" name="todelete[]" />';
        echo $row['first_name'];
        echo ' ' .$row['last_name'];
        echo ' ' .$row['email'];
        echo '<br />';
    }
    //Close database
    mysqli_close($dbc);
?>

    <input type="submit" name="submit" value="Remove" />

</body>
</html>
