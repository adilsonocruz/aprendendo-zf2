<?php

namespace LivrariaAdmin\Controller;

use Zend\Mvc\Controller\AbstractActionController,
    Zend\View\Model\ViewModel;

use Zend\Paginator\Paginator,
    Zend\Paginator\Adapter\ArrayAdapter;

class CategoriasController extends AbstractActionController {

    protected $em;

    public function indexAction() {
        $list = $this->getEm()->getRepository('Livraria\Entity\Categoria')->findAll();
        
        $page = $this->params()->fromRoute('page');
        
        $paginator = new Paginator(new ArrayAdapter($list));
        $paginator->setCurrentPageNumber($page);
        $paginator->setDefaultItemCountPerPage(4);
        
        return new ViewModel(array('data' => $paginator, 'page' => $page));
    }

    /**
     * @return EntityManager
     */
    protected function getEm() {
        if ($this->em == null) {
            $this->em = $this->getServiceLocator()->get('Doctrine\ORM\EntityManager');
        }

        return $this->em;
    }

}
