<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use App\Entity\Event;

class EventPageController extends AbstractController
{
    #[Route('/', name: 'event_page')]
    
    public function index(): Response
    {
        $eventPage = $this->getDoctrine()->getRepository("App:Event")->findAll();

        return $this->render("event_page/index.html.twig", array("eventPage"=>$eventPage));
    }

    #[Route('/create', name: 'create')]

    public function create(): Response
    {

        return $this->render("event_page/create.html.twig");
    }

   
    #[Route('/edit/{id}', name: 'edit')]

    public function edit(): Response
    {

        return $this->render("event_page/edit.html.twig");
    }

    #[Route('/details/{id}', name: 'details')]

    public function details(): Response
    {

        return $this->render("event_page/details.html.twig");
    }
    
}
