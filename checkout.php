

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

<div class="checkoutlogo">
    <a> Checkout </a> 
</div>

<div>
<table id="table">>
	<thead class="thead">
		<tr>
			<th>Image </th> 
			<th>Game</th>
			<th>Description</th>
			<th>Price</th>
		</tr>
	</thead>
	<tbody class="tbody">
		<tr>
			<td class="fifa"></td>
			<td>FIFA 2019</td>
			<td>FIFA 19 is a football simulation video game.</td>
			<td>&euro;59,99</td>
		</tr>
		<tr>
			<td class="blackops"> </td>
			<td>Black Ops 4</td>
			<td>Black ops 4 is a shooter video game.</td>
			<td>&euro;59,99</td>
		</tr>
		<tr>
			<td class="gta"> </td> 
			<td> Grand Theft Auto V </td>
			<td> Grand Theft Auto V is a real life video game. </td>
			<td>&euro;59,99</td> 
		</tr>
	</tbody>
	<tfoot class="tfoot">
		<tr>
			<td colspan="4">&euro; 179,97</td>
		</tr>
	</tfoot>
</table>
</div> 

<?php
require_once 'footer.php'; 
?>

</div>