<?php

namespace App\Entity;

use App\Repository\ScheduleRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=ScheduleRepository::class)
 */
class Schedule
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="integer")
     */
    private $user_fk_id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $meal_name;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $meal_time;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $day;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUserFkId(): ?int
    {
        return $this->user_fk_id;
    }

    public function setUserFkId(int $user_fk_id): self
    {
        $this->user_fk_id = $user_fk_id;

        return $this;
    }

    public function getMealName(): ?string
    {
        return $this->meal_name;
    }

    public function setMealName(string $meal_name): self
    {
        $this->meal_name = $meal_name;

        return $this;
    }

    public function getMealTime(): ?string
    {
        return $this->meal_time;
    }

    public function setMealTime(string $meal_time): self
    {
        $this->meal_time = $meal_time;

        return $this;
    }

    public function getDay(): ?string
    {
        return $this->day;
    }

    public function setDay(string $day): self
    {
        $this->day = $day;

        return $this;
    }
}
