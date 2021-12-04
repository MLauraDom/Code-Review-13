<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;


use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;



use App\Entity\Event;
use Symfony\Component\Validator\Constraints\Length;

class EventPageController extends AbstractController
{
    #[Route('/', name: 'event_page')]
    
    public function index(): Response
    {
        $eventPage = $this->getDoctrine()->getRepository("App:Event")->findAll();

        return $this->render("event_page/index.html.twig", array("eventPage"=>$eventPage));
    }

    #[Route('/create', name: 'create')]

    public function create(Request $request): Response
    {
        $event = new Event;

        $form = $this->createFormBuilder($event)
        ->add('name', TextType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('date', DateTimeType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('description', TextareaType::class, array('attr' =>array('class'=>'form-control mb-3', 'id'=>'textArea')))
        ->add('image', TextType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('capacity', NumberType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('email', TextType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('phone', TextType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('address', TextType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('url', TextType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('type', ChoiceType::class, array('choices'=>array('MUSIC'=>'MUSIC', 'SPORT'=>'SPORT', 'THEATER'=>'THEATER', 'MOVIE'=>'MOVIE'), 'attr'=>array('class'=>'form-control mb-3')))
        ->add('save', SubmitType::class, array('attr'=>array('class'=>'btn btn-info m-auto p-3', 'label'=>'Create Event'))) ->getForm();

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $name = $form['name'] -> getData();
            $date = $form['date'] -> getData();
            $description = $form['description'] -> getData();
            $image = $form['image'] -> getData();
            $capacity = $form['capacity'] -> getData();
            $email = $form['email'] -> getData();
            $phone = $form['phone'] -> getData();
            $address = $form['address'] -> getData();
            $url = $form['url'] -> getData();
            $type = $form['type'] -> getData();

            $event->setName($name);
            $event->setDate($date);
            $event->setDescription($description);
            $event->setImage($image);
            $event->setCapacity($capacity);
            $event->setEmail($email);
            $event->setPhone($phone);
            $event->setAddress($address);
            $event->setUrl($url);
            $event->setType($type);

            $em = $this->getDoctrine()->getManager();
            $em->persist($event);
            $em->flush();

            $this->addFlash('notice', 'Event Added');
            
            return $this->redirectToRoute('event_page');
        }

        return $this->render("event_page/create.html.twig", array('form'=>$form->createView()));
    }

   
    #[Route('/edit/{id}', name: 'edit')]

    public function edit($id, Request $request): Response
    {
        $event = $this->getDoctrine()->getManager()->getRepository("App:Event")->find($id);

        $form = $this->createFormBuilder($event)
        ->add('name', TextType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('date', DateTimeType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('description', TextareaType::class, array('attr' =>array('class'=>'form-control mb-3', 'id'=>'textArea')))
        ->add('image', TextType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('capacity', NumberType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('email', TextType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('phone', TextType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('address', TextType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('url', TextType::class, array('attr' =>array('class'=>'form-control mb-3')))
        ->add('type', ChoiceType::class, array('choices'=>array('MUSIC'=>'MUSIC', 'SPORT'=>'SPORT', 'THEATER'=>'THEATER', 'MOVIE'=>'MOVIE'), 'attr'=>array('class'=>'form-control mb-3')))
        ->add('save', SubmitType::class, array('attr'=>array('class'=>'btn btn-info m-auto p-3', 'label'=>'Create Event'))) ->getForm();

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $name = $form['name'] -> getData();
            $date = $form['date'] -> getData();
            $description = $form['description'] -> getData();
            $image = $form['image'] -> getData();
            $capacity = $form['capacity'] -> getData();
            $email = $form['email'] -> getData();
            $phone = $form['phone'] -> getData();
            $address = $form['address'] -> getData();
            $url = $form['url'] -> getData();
            $type = $form['type'] -> getData();

            $event->setName($name);
            $event->setDate($date);
            $event->setDescription($description);
            $event->setImage($image);
            $event->setCapacity($capacity);
            $event->setEmail($email);
            $event->setPhone($phone);
            $event->setAddress($address);
            $event->setUrl($url);
            $event->setType($type);

            $em = $this->getDoctrine()->getManager();
            $em->persist($event);
            $em->flush();

            $this->addFlash('notice', 'Event Added');
            
            return $this->redirectToRoute('event_page');
        }

        return $this->render("event_page/create.html.twig", array('form'=>$form->createView()));
    }

    #[Route('/details/{id}', name: 'details')]

    public function details($id): Response
    {
        $event = $this->getDoctrine()->getManager()->getRepository("App:Event")->find($id);
        return $this->render("event_page/details.html.twig", array('event'=>$event));
    }



    #[Route('/delete/{id}', name: 'delete')]
    public function delete($id): Response
    {
        $event = $this->getDoctrine()->getManager()->getRepository("App:Event")->find($id);

        $em = $this->getDoctrine()->getManager();

        $em->remove($event);
        $em->flush();
        $this->addFlash('notice', "Event removed");

        return $this->redirectToRoute('event_page');
    }
    

    

    #[Route('/category/{type}', name: 'category')]

    public function category($type): Response
    {
        $category=[];

        $event = $this->getDoctrine()->getManager()->getRepository("App:Event")->findAll;

        foreach($event as $i) {

            if ($i['type'] == $type){
                array_push($category, $i);
            }
        }
        
        return $this->render("event_page/category.html.twig", array('category'=>$category));
    }


}
