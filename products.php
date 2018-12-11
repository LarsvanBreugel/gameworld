<?php
$servername = "localhost";
$username = "root";
$password = "leeg";
$dbname = "gameworld";
$connection = new mysqli ($servername, $username, $password, $dbname) or die ($connection->error);


if(isset($_GET["category"])){
	$category = $_GET["category"];
}
else 
{
	$category = false; 
}

$selectGamesQuery =" SELECT * FROM `gamecategorie`, `games` WHERE `gamecategorie` . `categoryId` = `games` . `categoryId`"; 

if(isset($category) && $category != false) 
{
    $selectGamesQuery .=" AND `gamecategorie` . `categoryId` = '".$category."'"; 
}

$selectGamesQuery .= " ORDER BY `games`. `gamePrice` DESC"; 

$results = mysqli_query ($connection,$selectGamesQuery);

while ($row = mysqli_fetch_assoc($results))
{
    $games[] = $row;
}

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="Positionering">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>GameWorld</title>
</head>
<body id="index2">

<div id="main-container"> 

<?php
require_once 'header.php';
?>


<div class="category">

  <?php
	if	($category == 1)
	{
		  ?> <a class="playstationheader"> Playstation </a> 
		  <?php 
	}
	 
	if	($category == 2)
	{
		  ?> <a class="xboxheader"> Xbox </a> 
		  <?php 
	}
	
	if	($category == 3)
	{
		  ?> <a class="pcheader"> PC </a> 
		  <?php 
	}
	?> 


</div>

<?php
foreach($games as $key => $game)
{
    ?> 
		<div id ="product-item"> 
        <h2 class="gameTitle"> <?php echo $game ['gameTitle']; ?> </h2> 
        <img class="image" src="<?php echo $game ['gameImg']; ?>" />
        <a class="gamePrice"> <?php echo $game ['gamePrice']; ?> </a> 
        <button class="order"> <a href="checkout.php"> ORDER </a> </button>  
		</div> 
    <?php  
} 
?>
<div class="clearfix"></div>

<?php
require_once 'footer.php'; 
?>


</div> 
</body>

</html> 

