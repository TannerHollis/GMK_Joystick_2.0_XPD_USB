/**
  ******************************************************************************
  * @file    hal_usb.c
  * @author  Benedek Kupper
  * @version 0.1
  * @date    2018-11-03
  * @brief   HAL adapter for USBDevice
  *
  * Copyright (c) 2018 Benedek Kupper
  *
  * Licensed under the Apache License, Version 2.0 (the "License");
  * you may not use this file except in compliance with the License.
  * You may obtain a copy of the License at
  *
  *     http://www.apache.org/licenses/LICENSE-2.0
  *
  * Unless required by applicable law or agreed to in writing, software
  * distributed under the License is distributed on an "AS IS" BASIS,
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  */
#include "stm32l1xx_hal.h"

#include <xpd_usb.h>
#include <usb_device.h>

void USB_FS_MspInit(void* handle)
{
	PCD_HandleTypeDef hpcd_USB_FS;

	hpcd_USB_FS.Instance = USB;
	hpcd_USB_FS.Init.dev_endpoints = 8;
	hpcd_USB_FS.Init.speed = PCD_SPEED_FULL;
	hpcd_USB_FS.Init.phy_itface = PCD_PHY_EMBEDDED;
	hpcd_USB_FS.Init.low_power_enable = DISABLE;
	hpcd_USB_FS.Init.battery_charging_enable = DISABLE;
	HAL_PCD_Init(&hpcd_USB_FS);

	__HAL_RCC_USB_CLK_ENABLE();

	/* Peripheral interrupt init */
	HAL_NVIC_SetPriority(USB_HP_IRQn, 1, 0);
	HAL_NVIC_EnableIRQ(USB_HP_IRQn);
	HAL_NVIC_SetPriority(USB_LP_IRQn, 1, 0);
	HAL_NVIC_EnableIRQ(USB_LP_IRQn);
	HAL_NVIC_SetPriority(USB_FS_WKUP_IRQn, 1, 0);
	HAL_NVIC_EnableIRQ(USB_FS_WKUP_IRQn);
}

void USB_FS_MspDeInit(void* handle)
{
	__HAL_RCC_USB_CLK_DISABLE();

	/* Peripheral interrupt Deinit*/
	HAL_NVIC_DisableIRQ(USB_HP_IRQn);

	HAL_NVIC_DisableIRQ(USB_LP_IRQn);

	HAL_NVIC_SetPriority(USB_FS_WKUP_IRQn, 1, 0);
	HAL_NVIC_EnableIRQ(USB_FS_WKUP_IRQn);
}

void HAL_USBD_Setup(void)
{
    USB_INST2HANDLE(UsbDevice, USB);
    UsbDevice->Callbacks.DepInit = USB_FS_MspInit;
    UsbDevice->Callbacks.DepDeinit = USB_FS_MspDeInit;
}

void USB_IRQHandler(void)
{
	//HAL_NVIC_ClearPendingIRQ(USB_FS_WKUP_IRQn);

	USB_vIRQHandler(UsbDevice);
}

void USB_HP_IRQHandler(void)
{

	USB_vIRQHandler(UsbDevice);

}

void USB_LP_IRQHandler(void)
{

	USB_vIRQHandler(UsbDevice);

}
