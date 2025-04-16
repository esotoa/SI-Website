<?php
  if(session_status()===PHP_SESSION_NONE)
  {
    session_start();
  }
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&family=Roboto:wght@400;500&display=swap" rel="stylesheet">
   <link rel="stylesheet" href="css/styles.css">
    <title></title>
    
  </head>
  <body>
  	<?php
  	
    function pageHeader($title, $img, $logged)
    {
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in']) {
            $logged = "Logout";
        } else {
            $logged = "Login";
        }

        $upperLogged = strtoupper($logged);
        echo <<<EOT
        <header class="p-3">
            <div class="d-flex align-items-center mb-3">
                <img src="$img" class="img-thumbnail me-3" alt="Logo" style="height: 100px; width: auto;">
                <h2 class="m-0">$title</h2>
            </div>
            <nav class="nav-bar">
                <ul class="nav justify-content-end align-items-center">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="https://sidocuments.com">SI Documents</a>
                    </li>
EOT;

        if (!isset($_SESSION['logged_in']) || !$_SESSION['logged_in']) {
            echo <<<EOT
                    <li class="nav-item">
                        <a class="nav-link" href="signup.php">Signup</a>
                    </li>
EOT;
        }
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in']){
            echo <<<EOT
                    <li class="nav-item">
                        <a class="nav-link" href="addLeader.php">Add Leader</a>
                    </li>
EOT;
        }
        echo <<<EOT
                    <li class="nav-item">
                        <a class="nav-link" href="$logged.php">$logged</a>
                    </li>
                </ul>
            </nav>
        </header>
        <hr class="style1"/>
EOT;
    }

  	?>
    
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
  </script>
  </body>
</html>



