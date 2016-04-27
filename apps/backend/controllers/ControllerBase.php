<?php

namespace AlbumOrama\Backend\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{
    protected function initialize()
    {
        Tag::setTitle('Album-O-Rama');
    }

}
