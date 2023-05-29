<?php
session_start();
?>
<?php
			include "conexion.php";			
			$sql = 'DELETE FROM user WHERE id='.$_SESSION["user_id"];            

			$query = $con->query($sql);
			if($query!=null){
				print "<script>alert(\"Usuario eliminado correctamente\");window.location='/page/login.php';</script>";
			}		
			include 'logout.php';
?>