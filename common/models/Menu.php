<?php

namespace AlbumOrama\Models;

use Phalcon\Mvc\Model;

class Menus extends Model
{
    public function getSource()
    {
        return 'menu';
    }

    public function initialize()
    {
        //$this->hasMany('id', 'AlbumOrama\Models\AlbumsTags', 'tags_id');
    }
    public static function getMenu()
    {
        $me = new Menus();
        $me->_getMenu();
    }
    public function _getMenu()
    {
        $list_menu = $this->db->fetchAll("SELECT t.*,'0' as chk ,(select count(*) 
        from menu m where m.parent = t.id) have_child FROM menu t WHERE status = :status",
            Phalcon\Db::FETCH_ASSOC,
            array('status' => '1')
        );
        foreach($list_menu as $key=>$row){
            if($row['have_child']>0 && $list_menu[$key]['chk']=='0'){
                echo '<li class="dropdown">'.$this->tag->linkTo( 'category/view?id=' . $row['id'], $row['title']);
                echo '<ul class="sub-menu">';
                foreach($list_menu as $key1=>$sub){
                    if($sub['parent']==$row['id'] && $list_menu[$key1]['chk']=='0' ){
                        if($sub['have_child']>0){
                            echo '<li class="dropdown">'.$this->tag->linkTo( 'category/view?id=' . $sub['id'], $sub['title']);
                            echo '<ul class="sub-menu">';
                            foreach($list_menu as $key2=>$sub2){
                                if($sub2['parent']==$sub['id'] && $list_menu[$key2]['chk']=='0' ){
                                    echo '<li>'.$this->tag->linkTo( 'category/view?id=' . $sub2['id'], $sub2['title']).'</li>';
                                    $list_menu[$key2]['chk']='1';
                                }
                            }
                            echo '</ul>';
                            $list_menu[$key1]['chk']='1';
                        }else{
                            if($list_menu[$key1]['chk']=='0'){
                                echo '<li>'.$this->tag->linkTo( 'category/view?id=' . $sub['id'], $sub['title']).'</li>';
                                $list_menu[$key1]['chk']='1';
                            }
                        }
                    }
                }
                echo '</ul>';
                $list_menu[$key]['chk']='1';
            }else{
                if($list_menu[$key]['chk']=='0'){
                    echo '<li>'.$this->tag->linkTo( 'category/view?id=' . $row['id'], $row['title']).'</li>';
                    $list_menu[$key]['chk']='1';
                }                            
            }
        }
        /*
        $auth = $this->session->get('auth');
        if ($auth) {
            $this->_headerMenu['navbar-right']['session'] = array(
                'caption' => 'Log Out',
                'action' => 'end'
            );
        } else {
            unset($this->_headerMenu['navbar-left']['invoices']);
        }*/     
        /*$controllerName = $this->view->getControllerName();
        foreach ($this->_headerMenu as $position => $menu) {
            echo '<div class="nav-collapse">';
            echo '<ul class="nav navbar-nav ', $position, '">';
            foreach ($menu as $controller => $option) {
                if ($controllerName == $controller) {
                    echo '<li class="active">';
                } else {
                    echo '<li>';
                }
                echo $this->tag->linkTo($controller . '/' . $option['action'], $option['caption']);
                echo '</li>';
            }
            echo '</ul>';
            echo '</div>';
        }*/

    }
}
