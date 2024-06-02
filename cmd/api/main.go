package main

import (
	"log"
	"os"

	"github.com/gofiber/fiber/v2"
	"github.com/joho/godotenv"
)

func main() {
	err := godotenv.Load()

	if err != nil {
		log.Fatal("Failed to load environment variables")
	}

	app := fiber.New()

	app.Get("/", func (c *fiber.Ctx) error {
		return c.SendString("Basic Route");
	})

	log.Fatal(app.Listen(":"+os.Getenv("LISTEN_ADDR")))
}