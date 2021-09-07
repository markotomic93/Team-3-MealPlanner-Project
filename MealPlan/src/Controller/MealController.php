<?php

namespace App\Controller;

use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;


use App\Entity\Meals;


class MealController extends AbstractController
{
    //=== showing all the products===

    #[Route('/', name: 'meal')]
    public function index(): Response
    {
        $meals = $this->getDoctrine()->getRepository('App:Meals')->findAll();  
       return $this->render('meal/index.html.twig', array('meals'=>$meals));
    }

    //==
    //=== Creating new Products====
    //==

    #[Route('/create', name: 'create_meal')]
    public function create(Request $request): Response
    {
        $meals = new Meals;
        $form = $this->createFormBuilder($meals)
        ->add("name", TextType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("description", TextareaType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("image", TextType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("ingredients", TextType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("prep_time", TextType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("calories", TextType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("url", TextType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("cooking_steps", TextareaType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("type", ChoiceType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px"), "choices"=> array('vegan'=>'vegan', 'vegetarian'=>'vegetarian', 'low carb'=>'low carb','gluten free'=>'gluten free','dairy free'=>'dairy free')))
        ->add("save", SubmitType::class, array('attr'=>array("class"=>"btn-outline-primary fw-light btn-sm border-1 shadow-sm rounded-pill m-3", "style"=>"margin-bottom:15px"),"label"=>"Create Meal"))->getForm();
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $name = $form["name"]->getData();
            $description = $form["description"]->getData();
            $image = $form["image"]->getData();
            $ingredients = $form["ingredients"]->getData();
            $prep_time = $form["prep_time"]->getData();
            $calories = $form["calories"]->getData();
            $url = $form["url"]->getData();
            $cooking_steps = $form["cooking_steps"]->getData();
            $type = $form["type"]->getData();
            $cooking_steps = $form["cooking_steps"]->getData();

            $meals->setName($name);
            $meals->setDescription($description);
            $meals->setImage($image);
            $meals->setIngredients($ingredients);
            $meals->setPrepTime($prep_time);
            $meals->setCalories($calories);
            $meals->setUrl($url);
            $meals->setCookingSteps($cooking_steps);
            $meals->setType($type);

            $em = $this->getDoctrine()->getManager();

            $em->persist($meals);
            $em->flush();

            $this->addFlash('notice', 'Meal Added');

            return $this->redirectToRoute('meal');
        }

        return $this->render('meal/create.html.twig', [  
            "form" => $form->createView()
         ]);
    }

    //==
    //=== Details of the Products ====
    //==

    #[Route('/details/{id}', name: 'details_meal')]
    public function details($id): Response
    {
        $meals = $this->getDoctrine()->getRepository('App:Meals')->find($id);
        return $this->render('meal/details.html.twig', [
            "meals" => $meals
        ]);
    }

    //==
    //=== Edit the Products ====
    //==

    #[Route('/edit/{id}', name: 'edit_meal')]
    public function edit($id, Request $request): Response
    {
        $meals = $this->getDoctrine()->getRepository(Meals::class)->find($id);
        $form = $this->createFormBuilder($meals)
        ->add("name", TextType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("description", TextareaType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("image", TextType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("ingredients", TextType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("prep_time", TextType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("calories", TextType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("url", TextType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("cooking_steps", TextareaType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px")))
        ->add("type", ChoiceType::class, array('attr'=>array("class"=>"form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style"=>"margin-bottom:15px"), "choices"=> array('vegan'=>'vegan', 'vegetarian'=>'vegetarian', 'low carb'=>'low carb','gluten free'=>'gluten free','dairy free'=>'dairy free')))
        ->add("save", SubmitType::class, array('attr'=>array("class"=>"btn-outline-primary fw-light btn-sm border-1 shadow-sm rounded-pill m-3", "style"=>"margin-bottom:15px"),"label"=>"Edit Complete"))->getForm();
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $name = $form["name"]->getData();
            $description = $form["description"]->getData();
            $image = $form["image"]->getData();
            $ingredients = $form["ingredients"]->getData();
            $prep_time = $form["prep_time"]->getData();
            $calories = $form["calories"]->getData();
            $url = $form["url"]->getData();
            $cooking_steps = $form["cooking_steps"]->getData();
            $type = $form["type"]->getData();
            $cooking_steps = $form["cooking_steps"]->getData();

            $meals->setName($name);
            $meals->setDescription($description);
            $meals->setImage($image);
            $meals->setIngredients($ingredients);
            $meals->setPrepTime($prep_time);
            $meals->setCalories($calories);
            $meals->setUrl($url);
            $meals->setCookingSteps($cooking_steps);
            $meals->setType($type);

            $em = $this->getDoctrine()->getManager();

            $em->persist($meals);
            $em->flush();

            $this->addFlash('notice', 'Meal Edited');

            return $this->redirectToRoute('meal');
        }
        
        return $this->render('meal/edit.html.twig', [  
            "form" => $form->createView()
         ]);
    }
    //==
    //=== Delete the Product ====
    //==
    
    #[Route('/delete/{id}', name: 'delete_meal')]
    public function delete($id): Response
    {   $em = $this->getDoctrine()->getManager();
        $meals = $em->getRepository('App:Meals')->find($id);
        $em->remove($meals);
        $em->flush();

        $this->addFlash('notice', 'Meal Removed');

        return $this->redirectToRoute('meal');
    }



    
    //==
    //=== Filtering Meals ===
    //==
    #[Route('/filter/{type}', name: 'meal.filter')]
    public function mealFilter(string $type): Response {
        $em = $this->getDoctrine()->getManager();
        $meals = $em->getRepository(Meals::class)->findByType($type);
        return $this->render('meal/index.html.twig', 
            array('meals'=>$meals)
        );
    }
}



















