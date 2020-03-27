/*
 * This file is part of the libopencm3 project.
 *
 * Copyright (C) 2009 Uwe Hermann <uwe@hermann-uwe.de>
 *
 * This library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library.  If not, see <http://www.gnu.org/licenses/>.
 */
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>

static void
gpio_setup(void) {

	/* Enable GPIOC clock. */
	rcc_periph_clock_enable(RCC_GPIOA);

	/* Set GPIO12 (in GPIO port A) to 'output push-pull'. */
	gpio_mode_setup(GPIOA,GPIO_MODE_OUTPUT,GPIO_PUPD_NONE,GPIO12);
}

int
main(void) {
	int i;

	gpio_setup();

	for (;;) {
		gpio_clear(GPIOA,GPIO12);	/* LED on */
		for (i = 0; i < 1024000; i++)	/* Wait a bit. */
			__asm__("nop");

		gpio_set(GPIOA,GPIO12);		/* LED off */
		for (i = 0; i < 1024000; i++)	/* Wait a bit. */
			__asm__("nop");
	}

	return 0;
}
