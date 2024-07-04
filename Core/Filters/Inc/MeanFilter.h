// -------------------------------------------------------------------------------------
// Module          : MeanFilter.h
// Description     : Header file
// Author          : Vygoniuk O.V.
// Date            : 19/06/2024
// Refactored by   : -
// Refactoring date: --/--/----
// -------------------------------------------------------------------------------------
//
// Function prototypes for mean filter.
//
// -------------------------------------------------------------------------------------

#ifndef INC_MEANFILTER_H_
#define INC_MEANFILTER_H_

#include <stdint.h>
#include <stdlib.h>
#include <math.h>

typedef struct
{
	uint16_t DataArrayLength;
	uint16_t FilterWindowSize;
	uint16_t NextDataIndex;
	uint16_t* InputData;
	uint16_t FilteredValue;
} MeanFilter_TypeDef;

void MeanFilterInit(MeanFilter_TypeDef* filterInstance, uint16_t filterWindowSize);
void MeanFilterDeinit(MeanFilter_TypeDef* filterInstance);
void MeanFilterCalculateFilteredValue(MeanFilter_TypeDef* filterInstance);
void MeanFilterPutNewData(MeanFilter_TypeDef* filterInstance, uint16_t newValue);


#endif /* INC_MEANFILTER_H_ */
