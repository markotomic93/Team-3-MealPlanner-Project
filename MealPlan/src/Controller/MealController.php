<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Meals;


class MealController extends AbstractController
{
    #[Route('/meal', name: 'meal')]
    public function index(): Response
    {
        $meals = $this->getDoctrine()->getRepository('App:Meals')->findAll();
      
       return $this->render('meal/index.html.twig', array('meals'=>$meals));
    }
}
