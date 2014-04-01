<?php
// Please note that this is for testing purposes only and is a bad example
// of how to structure an application.

// Test for form submission
if ($_POST) {
    $errors = array();
    if (!isset($_POST['name'])) {
        $errors['name'] = "Name is a required field";
    }

    if (strpos($_POST['email'],'@') === false) {
        $errors['email'] = "Invalid email address";
    }

    if (!$errors) {
        header("Location: success.php");
    }
}

?>
<html>
  <body>
    <h1>Please enter your details to register</h1>
    <form method='post'>
      <label for='name'>Name: </label><input type='text' name='name' id='name' /><br />
      <label for='email'>Email: </label><input type='text' name='email' id='email' />
      <p style='color:red'><?php if ($errors) { echo "Error: ".implode("<br />",$errors); } ?></p>
      <input type='submit' value='Register' />
    </form>
  </body>
</html>