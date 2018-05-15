<?php
define("APP_NAME","BLOOD MS");
define("APP_AUTHOR","Claude NTWALI");
define("APP_ORGANIZATION","Addax tech");

/*
This is the function that is responsible for database connection
*/
class connection{
  public  $db;
  public  $host;
  public  $db_user;
  public $pass_phrase;
    function __construct(){        
        if(!isset($this->host)||!isset($this->db_user)||!isset($this->db)||!isset($this->pass_phrase)){
            /*
            * Live connection
            */
            $url = parse_url(getenv("CLEARDB_DATABASE_URL")); 
            if (isset($url)&&isset($url["host"])&&isset($url["user"])) {
                $this->host = $url["host"];
                $this->db_user = $url["user"];
                $this->pass_phrase = $url["pass"];
                $this->db = substr($url["path"], 1);
            } else {
                /*
                 * Local connection
                 */
                $this->host = "localhost";
                $this->db = "ncbt";
                //Make sure yu have the environment variables set.
                $this->db_user = getenv("DB_USER");
                $this->pass_phrase =getenv("DB_PASSWORD");
            }
        }        
    }
}
