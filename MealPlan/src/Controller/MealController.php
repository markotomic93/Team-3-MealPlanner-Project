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

use App\Entity\User;
use App\Entity\Meals;
use App\Entity\Schedule;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class MealController extends AbstractController
{
    //=== showing all the products===

    #[Route('/', name: 'meal')]
    public function index(): Response
    {
        $meals = $this->getDoctrine()->getRepository('App:Meals')->findAll();
        return $this->render('meal/index.html.twig', array('meals' => $meals));
    }

    //==
    //=== Creating new Products====
    //==

    #[Route('/create', name: 'create_meal')]
    public function create(Request $request): Response
    {
        $meals = new Meals;
        $form = $this->createFormBuilder($meals)
            ->add("name", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("description", TextareaType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("image", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("ingredients", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("prep_time", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("calories", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("url", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))

            ->add("type", ChoiceType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px"), "choices" => array('vegan' => 'vegan', 'vegetarian' => 'vegetarian', 'lowcarb' => 'lowcarb', 'glutenfree' => 'glutenfree', 'dairyfree' => 'dairyfree')))
            ->add("save", SubmitType::class, array('attr' => array("class" => "btn-outline-primary fw-light btn-sm border-1 shadow-sm rounded-pill m-3", "style" => "margin-bottom:15px"), "label" => "Create Meal"))->getForm();
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $name = $form["name"]->getData();
            $description = $form["description"]->getData();
            $image = $form["image"]->getData();
            $ingredients = $form["ingredients"]->getData();
            $prep_time = $form["prep_time"]->getData();
            $calories = $form["calories"]->getData();
            $url = $form["url"]->getData();

            $type = $form["type"]->getData();


            $meals->setName($name);
            $meals->setDescription($description);
            $meals->setImage($image);
            $meals->setIngredients($ingredients);
            $meals->setPrepTime($prep_time);
            $meals->setCalories($calories);
            $meals->setUrl($url);

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
            ->add("name", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("description", TextareaType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("image", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("ingredients", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("prep_time", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("calories", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("url", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))

            ->add("type", ChoiceType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px"), "choices" => array('vegan' => 'vegan', 'vegetarian' => 'vegetarian', 'lowcarb' => 'lowcarb', 'glutenfree' => 'gluten free', 'dairyfree' => 'dairyfree')))
            ->add("save", SubmitType::class, array('attr' => array("class" => "btn-outline-primary fw-light btn-sm border-1 shadow-sm rounded-pill m-3", "style" => "margin-bottom:15px"), "label" => "Edit Complete"))->getForm();
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $name = $form["name"]->getData();
            $description = $form["description"]->getData();
            $image = $form["image"]->getData();
            $ingredients = $form["ingredients"]->getData();
            $prep_time = $form["prep_time"]->getData();
            $calories = $form["calories"]->getData();
            $url = $form["url"]->getData();

            $type = $form["type"]->getData();


            $meals->setName($name);
            $meals->setDescription($description);
            $meals->setImage($image);
            $meals->setIngredients($ingredients);
            $meals->setPrepTime($prep_time);
            $meals->setCalories($calories);
            $meals->setUrl($url);

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
    {
        $em = $this->getDoctrine()->getManager();
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
    public function mealFilter(string $type): Response
    {
        $em = $this->getDoctrine()->getManager();
        $meals = $em->getRepository(Meals::class)->findByType($type);
        return $this->render(
            'meal/index.html.twig',
            array('meals' => $meals)
        );
    }
    //==
    //=== Filtering Calories ===
    //== 
    #[Route('/filter/calories/{a}/{b}', name: 'meal.caloriesFilter')]
    public function caloriesFilter(int $a, int $b): Response
    {
        $em = $this->getDoctrine()->getManager();
        $all = $em->getRepository(Meals::class)->findAll();
        $meals = array();

        foreach ($all as $meal) {
            if ($meal->getCalories() >= $a && $meal->getCalories() <= $b) {
                $meals[] = $meal;
            }
        }
        return $this->render(
            'meal/index.html.twig',
            array('meals' => $meals)
        );
    }


    //==
    //=== My Profile ====
    //==

    #[Route('/profile/{id}', name: 'profile')]
    public function profile($id, Request $request): Response
    {
        $user = $this->getDoctrine()->getRepository(User::class)->find($id);
        $form = $this->createFormBuilder($user)
            ->add("user_name", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("email", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("user_image", TextType::class, array('attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px")))
            ->add("save", SubmitType::class, array('attr' => array("class" => "btn-outline-primary fw-light btn-sm border-1 shadow-sm rounded-pill m-3", "style" => "margin-bottom:15px"), "label" => "Save changes"))->getForm();
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $user_name = $form["user_name"]->getData();
            $email = $form["email"]->getData();
            $user_image = $form["user_image"]->getData();


            $user->setUserName($user_name);
            $user->setEmail($email);
            $user->setUserImage($user_image);


            $em = $this->getDoctrine()->getManager();

            $em->persist($user);
            $em->flush();

            $this->addFlash('notice', 'Profile Edited');

            return $this->redirectToRoute('manageusers');
        }

        return $this->render('meal/profile.html.twig', [
            "form" => $form->createView()
        ]);
    }

    //==
    //=== Showing all the users ====
    //==


    #[Route('/manageusers', name: 'manageusers')]
    public function manageusers(): Response
    {
        $user = $this->getDoctrine()->getRepository('App:User')->findAll();
        return $this->render('meal/manageusers.html.twig', array('user' => $user));
    }

    //==
    //=== Delete  users ====
    //==

    #[Route('/deleteuser/{id}', name: 'deleteuser')]
    public function deleteuser($id): Response
    {
        $em = $this->getDoctrine()->getManager();
        $user = $em->getRepository('App:User')->find($id);
        $em->remove($user);
        $em->flush();

        $this->addFlash('notice', 'User Removed');

        return $this->redirectToRoute('manageusers');
    }

    //==
    //=== Blocking users ====
    //==
    #[Route('/block', name: 'block')]
    public function block(): Response
    {

        return $this->render('meal/block.html.twig');
    }



    //==
    //=== Schedule ====
    //==
    #[Route('/schedule', name: 'schedule')]
    public function schedule(): Response
    {
        $id = $this->getUser()->getId();

        $week = array("monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday");
        $meals = $this->getDoctrine()->getRepository(Schedule::class)->findAll();
        return $this->render('meal/schedule.html.twig', [
            "meals" => $meals,
            "week" => $week,
            "id" => $id,
            "statusMeal" => "false",
            "i" => 0
        ]);
    }

    #[Route('/add/schedule/{meal_id}', name: 'addSchedule')]
    public function addSchedule(Request $request, $meal_id): Response
    {
        $meal = $this->getDoctrine()->getRepository(Meals::class)->find($meal_id);

        //------------------- create add schedule form --------
        $schedule = new Schedule;
        $form = $this->createFormBuilder($schedule)

        


            ->add("day", ChoiceType::class, array(
                'attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px"),
                "choices" => array(
                    'Monday' => 'monday',
                    'Tuesday' => 'tuesday',
                    'Wednesday' => 'wednesday',
                    'Thursday' => 'thursday',
                    'Friday' => 'friday',
                    'Saturday' => 'saturday',
                    'Sunday' => 'sunday'
                )
            ))

            ->add("save", SubmitType::class, array(
                'attr' => array("class" => "form-control fw-light border-1 border-muted rounded-pill bg-light shadow-sm mt-3 text-muted", "style" => "margin-bottom:15px"),
                "label" => "Add to my schedule"
            ))->getForm();

        $form->handleRequest($request);

        //--------- end of add schedule form ---------

        //---------- store add schedule form --------

        if ($form->isSubmitted() && $form->isValid()) {


            $day = $form["day"]->getData();

           
            $schedule->setMealImage($meal->getImage());
            $schedule->setMealName($meal->getName());
            $schedule->setUserFkId($this->getUser()->getId());

            $schedule->setDay($day);

            $em = $this->getDoctrine()->getManager();
            $em->persist($schedule);
            $em->flush();

            $this->addFlash('notice', 'Meal Schedule Added');

            return $this->redirectToRoute('schedule');
        }


        //------------ end of add schedule form --------

        return $this->render('meal/add.html.twig', array(
            "meal" => $meal,
            "form" => $form->createView()
        ));
    }


    //==
    //=== Delete meal from schedule ====
    //==

    #[Route('/deleteschedule/{id}', name: 'delete_schedule')]
    public function deleteschedule($id): Response
    {
        $em = $this->getDoctrine()->getManager();
        $meals = $em->getRepository('App:Schedule')->find($id);
        $em->remove($meals);
        $em->flush();

        $this->addFlash('notice', 'Meal Removed');

        return $this->redirectToRoute('schedule');
    }
}
