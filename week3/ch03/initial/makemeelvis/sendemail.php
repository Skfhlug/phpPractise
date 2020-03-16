<?php
    // Get Email sales blast from form
    $from = 'elmer@makemeelvis.com';
    $subject = $_POST['subject'];
    $text = $_POST['elvismail'];
    
    // Get all customer contact info from DB
    $dbc = mysqli_connect('localhost', 'root', '', 'elvis_store')
            or die('Error connecting to mySql');
        
    $query = "SELECT * FROM email_list";
    
    $result = mysqli_query($dbc, $query)
            or die('Error querying database');
    
    mysqli_close($dbc);
    
    // Email sales blast to all customers 
    while($row = mysqli_fetch_array($result)) {
        $first_name = $row['first_name'];
        $last_name = $row['last_name'];
        
        $msg = "Dear $first_name $last_name,\n $text".
        $to = $row['email'];
        mail($to, $subject,$msg, 'From:'.$from);
        echo 'Email sent to: '. $to.'<br />';
    }
?>