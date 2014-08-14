<?php
namespace Livraria\Service;

use Doctrine\ORM\EntityManager;

// todo: ATENÇÃO, A CLASSE CategoriaService NÃO É UM SERVIÇO, MAS A CLASSE Categoria É UM SERVIÇO! 
// FICOU CONFUSO MAIS FUNCIONA!

use Livraria\Entity\Configurator;

class Categoria extends AbstractService {
    
    public function __construct(EntityManager $em) {
        parent::__construct($em);
        $this->entity = "Livraria\Entity\Categoria";
    }
    
}
