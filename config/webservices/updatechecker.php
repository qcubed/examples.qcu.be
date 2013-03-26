<?php

require_once("../qcubed.inc.php");
$items = QcubedUpdates::LoadAll();

$result = array();
foreach ($items as $item) {
	/** @var $item QcubedUpdates */
	$toAppend = array(
		"name"          => $item->Name,
		"description"   => $item->Description,
		"version"       => $item->Version,
		"downloadUrl"   => $item->DownloadUrl
	);
	$result[] = $toAppend;
}

echo json_encode($result);

?>
