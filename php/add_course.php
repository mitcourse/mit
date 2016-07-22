<?php
header('Content-Type: text/html; charset=utf-8');

require_once 'course.php';
require_once 'upLoad.php';
require_once 'sql.php';

$course = new course();
$course->setId($_POST["id"]);
$course->setName($_POST["name"]);
$course->setType($_POST["type"]);

$upCourseFile = $_FILES["courseFile"];
$upTextBook = $_FILES["textBook"];
#echo $upTextBook['size'].'<br>';

try {
    if (! isset($upCourseFile['error']) || is_array($upCourseFile['error'] || ! isset($upTextBook['error']) || is_array($upTextBook['error']))) {
        throw new RuntimeException('Invalid parameters.');
    }
    $upload = new upLoad($upCourseFile, $upTextBook);
    $url = $upload->doUpLoad($course->getFolder());
    $course->setUrl($course->getUrl().'/'.$url[0]);
    echo 'id: '.$course->getId().'<br>';
    echo 'name: '.$course->getName().'<br>';
    echo 'tyep: '.$course->getType().'<br>';
    echo 'url: '.$course->getUrl().'<br>';
    $sqls = new sql();
    $sqls->insert($course);
    
    
} catch (Exception $e) {
    echo $e->getMessage();
}

?>
