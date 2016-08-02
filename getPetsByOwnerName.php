<?php

	$owner = $_GET['owner'];
	
	$dbConn = new mysqli('localhost', 'root', '', 'promisesBack');

	if ($dbConn->connect_error) 
	{
    	die('Connect Error (' . $dbConn->connect_errno . ') '. $dbConn->connect_error);
	}

	$query = "select pt.petName, ps.speciesName
				from pets pt
				inner join pplpets plpt on plpt.idPet = pt.id
				inner join people pp on plpt.idPeople = pp.id
				inner join petspecies ps on ps.idSpecies = pt.idPetSpecies
				where pp.firstName = '".$owner."'";
	$result = $dbConn->query($query);
	$jsonArr = array();
	for($i=0;$i<$result->num_rows;$i++)
	{
		$json[$i]=$result->fetch_array(MYSQLI_ASSOC);
	}
	
	$jsonObj=json_encode($json,JSON_FORCE_OBJECT);

	echo($jsonObj);
?>