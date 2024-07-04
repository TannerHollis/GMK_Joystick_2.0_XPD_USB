// -------------------------------------------------------------------------------------
// Module          : AverageWeightedFilter.h
// Description     : Header file
// Author          : Vygoniuk O.V.
// Date            : 15/06/2024
// Refactored by   : -
// Refactoring date: --/--/----
// -------------------------------------------------------------------------------------
//
// Function prototypes for average weighted filter with non-linear characteristics (last
// data is more significant).
//
// -------------------------------------------------------------------------------------

#ifndef INC_AVERAGEWEIGHTEDFILTER_H_
#define INC_AVERAGEWEIGHTEDFILTER_H_

#include <stdint.h>
#include <stdlib.h>
#include <math.h>

#define AVERAGE_WEIGHTED_FILTER_MINIMAL_DATA_WEIGHT 0.05

typedef struct
{
	uint16_t DataArrayLength;
	uint16_t FilterWindowSize;
	uint16_t NextDataIndex;
	uint16_t* InputData;
	double* WeightCoefficients;
	uint16_t FilteredValue;
} AverageWeightedFilter_TypeDef;

void AverageWeightedFilterInit(AverageWeightedFilter_TypeDef* filterInstance, uint16_t filterWindowSize);
void AverageWeightedFilterDeinit(AverageWeightedFilter_TypeDef* filterInstance);
void AverageWeighedFilterCalculateFilteredValue(AverageWeightedFilter_TypeDef* filterInstance);
void AverageWeightedFilterPutNewData(AverageWeightedFilter_TypeDef* filterInstance, uint16_t newValue);

#endif /* INC_AVERAGEWEIGHTEDFILTER_H_ */
