/*
 * Controller_Config.h
 *
 *  Created on: Feb 5, 2022
 *      Author: TannerGaming
 */

#ifndef CONTROLLER_CONTROLLER_H_
#define CONTROLLER_CONTROLLER_H_

typedef struct {
	union {
		struct {
			uint8_t up : 1;
			uint8_t down : 1;
			uint8_t left : 1;
			uint8_t right : 1;
			uint8_t start : 1;
			uint8_t back : 1;
			uint8_t lth : 1;
			uint8_t rth : 1;
			uint8_t lb : 1;
			uint8_t rb : 1;
			uint8_t xbox : 1;
			uint8_t _reserved : 1;
			uint8_t a : 1;
			uint8_t b : 1;
			uint8_t x : 1;
			uint8_t y : 1;
		};
		uint16_t _bits;
	} buttons;
	union {
		struct {
			struct {
				int16_t x;
				int16_t y;
			} left;
			struct {
				int16_t x;
				int16_t y;
			} right;
		};
		int16_t _bits[4];
	}joysticks;
	union {
		struct {
			uint8_t left;
			uint8_t right;
		};
		uint8_t _bits[2];
	} triggers;
} Controller_HandleTypeDef;

#endif /* CONTROLLER_CONTROLLER_H_ */
