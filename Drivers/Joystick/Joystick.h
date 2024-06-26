/*
 * Joystick.h
 *
 *  Created on: Jan 17, 2022
 *      Author: THollis
 */

#ifndef JOYSTICK_JOYSTICK_H_
#define JOYSTICK_JOYSTICK_H_

#include "main.h"

#define JOYSTICK_DEADZONE 0.05f
#define JOYSTICK_ALIVEZONE 1.1f
#define JOYSTICK_MINIMAL_AXIS_CHANGE 1

typedef struct{
	struct{
		uint16_t *adc;
		uint16_t previousAdcValue;
		uint16_t min;
		uint16_t max;
		uint16_t offset;
		float deadzone;
		float alivezone;
		float val;
	} x;
	struct{
		uint16_t *adc;
		uint16_t previousAdcValue;
		uint16_t min;
		uint16_t max;
		uint16_t offset;
		float deadzone;
		float alivezone;
		float val;
	} y;
	struct{
		uint16_t iters_max;
		uint16_t iters;
		uint8_t flag;
		float weight;
	} calibrate;
} Joystick_HandleTypeDef;

Joystick_HandleTypeDef Joystick_Init(uint16_t *x_buffer, uint16_t *y_buffer);
void Joystick_Calibrate(Joystick_HandleTypeDef *js, uint16_t iters, float weight);
void Joystick_Update(Joystick_HandleTypeDef *js);
uint8_t JoystickDataChangesInTheRange(Joystick_HandleTypeDef *js);

#endif /* JOYSTICK_JOYSTICK_H_ */
