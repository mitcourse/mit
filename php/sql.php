<?php
require_once 'course.php';

class sql
{

    private $host = "localhost";

    private $user = "root";

    private $passwd = "toor";

    private $db = "mit";

    private $con;

    private $course;

    function __construct()
    {
        $this->con = new mysqli($this->host, $this->user, $this->passwd, $this->db);
        if ($this->con->connect_error)
            throw new RuntimeException('Failed to connect DB.');
    }

    public function insert($course)
    {
        $this->course = $course;
        $sql = 'insert into course values("' . $this->course->getId() . '","' . $this->course->getName() . '","' . $this->course->getType() . '","' . $this->course->getUrl() . '","' . $this->course->getTextbook() . '")';
        echo "sql: " . $sql . '<br/>';
        if (! $this->con->query($sql) === TRUE)
            throw new RuntimeException('Failed to insert data.' . "<br>" . $this->con->error);
    }
    
    public function select($sql)
    {
        $res = $this->con->query($sql);
        return $res;
    }
}

