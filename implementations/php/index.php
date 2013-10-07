<?php

header("Content-Type: text/javascript; charset=utf-8");
echo json_encode(array('datetime' => date('Y/m/d H:i:s')));