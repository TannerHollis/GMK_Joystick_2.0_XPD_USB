// -------------------------------------------------------------------------------------
// Module          : SavitskiyGolayFilter.h
// Description     : Header file
// Author          : Vygoniuk O.V.
// Date            : 03/07/2024
// Refactored by   : -
// Refactoring date: --/--/----
// -------------------------------------------------------------------------------------
//
// Function prototypes for Savitskiy-Golay filter
//
// -------------------------------------------------------------------------------------

#ifndef INC_SAVITSKIYGOLAY_H_
#define INC_SAVITSKIYGOLAY_H_

#include <stdint.h>
#include <stdlib.h>

typedef struct
{
	uint16_t DataArrayLength;
	uint16_t FilterWindowSize;
	uint16_t NextDataIndex;
	uint16_t* InputData;
	double* WeightCoefficients;
	uint16_t FilteredValue;
} SavitskiyGolayFilter_TypeDef;

void SavitskiyGolayFilterInit(SavitskiyGolayFilter_TypeDef* filterInstance, uint16_t filterWindowSize);
void SavitskiyGolayFilterDeinit(SavitskiyGolayFilter_TypeDef* filterInstance);
void SavitskiyGolayFilterCalculateFilteredValue(SavitskiyGolayFilter_TypeDef* filterInstance);
void SavitskiyGolayFilterPutNewData(SavitskiyGolayFilter_TypeDef* filterInstance, uint16_t newValue);

#endif /* INC_SAVITSKIYGOLAY_H_ */
