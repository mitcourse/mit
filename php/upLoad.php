<?php

class upLoad
{
    private $courseFile = NULL;
    private $textBookFile = NULL;
    private $sudo = 'echo " " | sudo ';
    private $cwd = NULL;
    private $courseFileName = NULL;
    private $textBookFileName = NULL;
    private $courseFlag = FALSE;
    private $textBookFlag = FALSE;
    private $UPLOADFOLDER = '../upload/';
    
    private function checkfile()
    {
        if(!$this->courseFile['size'] == 0)
        {
            $this->courseFileName = $this->courseFile['name'];
            $temp = explode('.', $this->courseFileName);
            $suffix = $temp[sizeof($temp)-1];
            if (! "rar" === $suffix) {
                throw new RuntimeException('upload fail! course file must be rar.');
            }
            $this->courseFlag = TRUE;
        }
        if(!$this->textBookFile['size'] == 0)
        {
            $this->textBookFileName = $this->textBookFile['name'];
            $temp = explode('.', $this->textBookFileName);
            $suffix = $temp[sizeof($temp)-1];
            if (! "rar" === $suffix) {
                throw new RuntimeException('upload fail! textbook file must be rar.');
            }
            $this->textBookFlag = TRUE;
        }
    }
    function __construct($courseFile,$textBook)
    {
        $this->courseFile = $courseFile;
        $this->textBookFile = $textBook;
        $this->cwd = getcwd();
        $this->checkfile();
    }
    
    public function doUpLoad($new_folder)
    {
        $courseFileUrl = NULL;
        $textBookFileUrl = NULL;
        if ($this->courseFlag) 
        {

            echo 'new folder: '.$new_folder.'<br/>';
            echo 'new file name: '.$this->courseFileName.'<br/>';
            $cmd = $this->sudo.' ../config/upload_sh '.$this->courseFileName.' '.$new_folder;
            // 上传文件
            if (! move_uploaded_file($this->courseFile['tmp_name'], $this->UPLOADFOLDER.$this->courseFile['name'])) {
                throw new RuntimeException('Failed to move uploaded file.');
            }
            $out_put = shell_exec($cmd);
            //更新url
            $courseFileUrl = explode('.', $this->courseFileName)[0].'/'.'START.htm';
        }
//         if($this->textBookFlag)
//         {
            
//         }
        return array($courseFileUrl,$textBookFileUrl);
    }
   
    /**
     * @param field_type $courseFile
     */
    public function setCourseFile($courseFile)
    {
        $this->courseFile = $courseFile;
    }

    /**
     * @param field_type $textBookFile
     */
    public function setTextBookFile($textBookFile)
    {
        $this->textBookFile = $textBookFile;
    }

    
    
    
}

