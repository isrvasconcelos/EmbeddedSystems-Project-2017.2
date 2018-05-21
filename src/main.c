/*
 * Copyright (c) 2017 Intel Corporation
 * SPDX-License-Identifier: Apache-2.0
 *
 *  Description: 1) Early LED Matrix tests.
 *  		 2) Pushbutton tests.
 */

#include <zephyr.h>
#include <misc/printk.h>
#include <board.h>
#include <gpio.h>
#include <pwm.h>
#include <device.h>

#include <display/mb_display.h>

static struct device *pwm;
static struct device *gpio;

static void button_pressed(struct device *dev, struct gpio_callback *cb,
			   u32_t pins)
{

	if (pins & BIT(SW0_GPIO_PIN)) {
		printk("A pressed\n");

	} else {
		printk("B pressed\n");
	}
}

static void configure_buttons(void) {

	static struct gpio_callback button_cb;

	gpio = device_get_binding(SW0_GPIO_NAME);

	gpio_pin_configure(gpio, SW0_GPIO_PIN, (GPIO_DIR_IN | GPIO_INT | GPIO_INT_EDGE | GPIO_INT_ACTIVE_LOW));
	gpio_pin_configure(gpio, SW1_GPIO_PIN, (GPIO_DIR_IN | GPIO_INT | GPIO_INT_EDGE | GPIO_INT_ACTIVE_LOW));

	gpio_init_callback(&button_cb, button_pressed, BIT(SW0_GPIO_PIN) | BIT(SW1_GPIO_PIN));
	gpio_add_callback(gpio, &button_cb);

	pwm = device_get_binding(CONFIG_PWM_NRF5_SW_0_DEV_NAME);

	gpio_pin_enable_callback(gpio, SW0_GPIO_PIN);
	gpio_pin_enable_callback(gpio, SW1_GPIO_PIN);
}

void main(void)
{

	configure_buttons();
}
