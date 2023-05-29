<?php
session_start();
?>
<?php
			include "conexion.php";			
			$sql = 'UPDATE user SET fullname="'.$_POST["fullname"].'",password="'.$_POST["password"].'" WHERE id = '.$_SESSION["user_id"];

			$query = $con->query($sql);
			if($query!=null){
				print "<script>alert(\"Informacion editada correctamente\");window.location='/page/login.php';</script>";
			}
		


?>