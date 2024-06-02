package main

import (
	"fmt"
	"log"

	"github.com/gofiber/fiber/v2"
)

const (
	PORT = 3030
)

func main() {
	app := fiber.New()

	app.Get("/", func (c *fiber.Ctx) error {
		return c.SendString("Basic Route");
	})

	log.Fatal(app.Listen(fmt.Sprintf(":%d", PORT)))
}