<?php

class course
{

    private $id = "";

    private $name = "";

    private $type = "";

    private $url = "";

    private $textbook = "";

    private $types = [
        "物理" => "physics",
        "数学" => "mathematics"
    ];

    private $typeFolder = [
        "physics" => "8-physics",
        "mathematics" => "18-mathematics"
    ];

    /**
     * @return the $typeFolder
     */
    public function getFolder()
    {
        $new_folder = $this->id.'--'.str_replace(' ', '-', $this->name);
        $new_folder = $this->typeFolder[$this->type].'/'.$new_folder;
        $this->url = $new_folder;
        return $new_folder;
    }

    function __construct()
    {}

    /**
     *
     * @return the $id
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     *
     * @return the $name
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     *
     * @return the $type
     */
    public function getType()
    {
        return $this->type;
    }

    /**
     *
     * @return the $url
     */
    public function getUrl()
    {
        return $this->url;
    }

    /**
     *
     * @return the $textbook
     */
    public function getTextbook()
    {
        return $this->textbook;
    }

    /**
     *
     * @param field_type $id            
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     *
     * @param field_type $name            
     */
    public function setName($name)
    {
        $this->name = $name;
    }

    /**
     *
     * @param field_type $type            
     */
    public function setType($type)
    {
        $this->type = $this->types[$type];
    }

    /**
     *
     * @param field_type $url            
     */
    public function setUrl($url)
    {
        $this->url = $url;
    }

    /**
     *
     * @param field_type $textbook            
     */
    public function setTextbook($textbook)
    {
        $this->textbook = $textbook;
    }
}

