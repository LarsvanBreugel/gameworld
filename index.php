<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="Positionering">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>GameWorld</title>
</head>
<body id="index">

<div id="main-container"> 

<?php
require_once 'header.php'; 
?>


<div id="center">

<div class= "centertext1"> Welcome to GameWorld </div>
 <hr /> 
<div class="centertext2"> The most complete webshop! </div> 

</div> 
<div id="undercenter">
		<div class="category-item">
			<a class="Playstation" href="products.php?category=1"> Playstation </a> 
		</div>

		<div class="category-item">
			<a class="Xbox" href="products.php?category=2"> Xbox </a> 
		</div>

		<div class="category-item">
			<a class="PC" href="products.php?category=3"> PC </a> 
		</div>
 		<div class="clearfix"></div>
</div> 
<?php
require_once 'footer.php';
?>

</div> 



</body>


</html> 

