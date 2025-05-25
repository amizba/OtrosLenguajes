<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Buscador Web sencillo con PHP5 y MySQL</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header">
  <h1><a href="index.html"><img src="images/blank.png" alt="" /></a> amizba <span style="font-weight:bold; color:#73868C;">@</span> gmail.com</h1>
</div>
<div id="container">
  <div id="navcontainer">
    <ul id="nav">
      <li id="nav-1"><a href="index.html">Home</a></li>
      <li id="nav-2"><a href="catalogo.html">Catálogo</a></li>
    </ul>
  </div>
  <div id="contentleft">
    
    <?php

	$termino = $_POST['terminobusqueda']; 
    $tipo = $_POST['tipobusqueda']; 
   

	trim ($tipo);

	if(!$tipo || !$termino)
	{

		echo "<h2>No has introducido los detalles <span style=\"font-weight:bold; color:#C4DA64;\">de la búsqueda. </span>Por favor, inténtalo de nuevo.</h2>";
		
		exit;
	}

	$tipo=addslashes($tipo);
	$termino=addslashes($termino);

	$obj_conexion=mysqli_connect('localhost', 'root', '', 'ebook');
    if(!$obj_conexion)
    {
        echo "<h2>No podemos conectar <span style=\"font-weight:bold; color:#C4DA64;\">con la base de datos en estos momentos. </span>Disculpe las molestia</h2><br>";

        exit;
    }
    

	$consulta="select * from manuales where ".$tipo." like'%".$termino."%'";
	$resultado= $obj_conexion->query($consulta);
	$num_resultados=mysqli_num_rows($resultado);
	echo "<h1>Número de<span style=\"font-weight:bold; color:#C4DA64;\"> manuales</span> encontrados: $num_resultados</h1>";
	for($i=0; $i<$num_resultados; $i++)
	{
		$row=mysqli_fetch_array($resultado);

		echo "<p><strong>".($i+1).". Titulo: ";
		echo stripcslashes($row["Titulo"]);
		echo "</strong><br>Autor: ";
		echo stripcslashes($row["Autor"]);
	}


	?>
    
  </div>
</div>
<div id="footer">
  <div id="bottom">
    
    </div>
    <center><a href="index.html">Home</a> | <a href="catalogo.html">Catálogo</a> | &copy; 2020 Amparo Izquierdo | Design by <a href="mailto:amizba@gmail.com">amizba@gmail.com</a>|  </div></center>
</div>
</body>
</html>
