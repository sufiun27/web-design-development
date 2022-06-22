<?php
$string = "This is test string..";
echo $string . "\n</br>";

// substr function
echo "substr: " . substr($string, 4,);

echo "\n</br>";

// mb_substr multibyte version
echo "mb_substr: " . mb_substr($string, 0, -1);

echo "\n</br>";




?>