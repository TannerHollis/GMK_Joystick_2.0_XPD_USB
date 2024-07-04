// -------------------------------------------------------------------------------------
// Module          : MeanFilter.c
// Description     : C functions implementation
// Author          : Vygoniuk O.V.
// Date            : 19/06/2024
// Refactored by   : -
// Refactoring date: --/--/----
// -------------------------------------------------------------------------------------
//
// This module implements mean filter.
//
// -------------------------------------------------------------------------------------

#include "MeanFilter.h"

/**
 * Filter instance structure initialization
 * @param filterInstance  - structure to be initialized
 * @param filterWindowSize - data counts to be used in the filter
 */
void MeanFilterInit(MeanFilter_TypeDef *filterInstance,
		uint16_t filterWindowSize)
{
 	filterInstance->NextDataIndex = 0;
	filterInstance->FilteredValue = 0;

	if (filterWindowSize < 2)
	{
		filterWindowSize = 2; // set minimal filter window to 2 counts
	}

	filterInstance->FilterWindowSize = filterWindowSize;

	filterInstance->InputData = (uint16_t*) malloc(filterWindowSize * sizeof(uint16_t));

	// data initialization
	for (int i = 0; i < filterWindowSize; i++)
	{
		filterInstance->InputData[i] = 0;
	}
}

/**
 * @brief Filter instance resources freeing
 * @param filterInstance  - structure to be deinitialized
 */
void MeanFilterDeinit(MeanFilter_TypeDef *filterInstance)
{
	if (filterInstance == NULL)
	{
		return;
	}
	else
	{
		free(filterInstance->InputData);
	}
}

/**
 * @brief Filtered value calculation using data in InputData array
 * @param filterInstance  - structure to be initialized
 */
void MeanFilterCalculateFilteredValue(
		MeanFilter_TypeDef *filterInstance)
{
	if (filterInstance == NULL)
	{
		return;
	}

	uint16_t result = 0;

	uint16_t filterWindowSize = filterInstance->FilterWindowSize;

	for (int i = 0; i<filterWindowSize; i++)
	{
		result += filterInstance->InputData[i];
	}

	filterInstance->FilteredValue = result / filterWindowSize;
}

/**
 * @brief This method adds new data to the array
 * @param filterInstance  - structure to be initialized
 * @param newValue - new value
 */
void MeanFilterPutNewData(
		MeanFilter_TypeDef *filterInstance,
		uint16_t newValue)
{
	if (filterInstance == NULL)
	{
		return;
	}

	int dataIndex = filterInstance->NextDataIndex;
	uint16_t filterWindowSize = filterInstance->FilterWindowSize;

	filterInstance->InputData[dataIndex] = newValue;

	filterInstance->NextDataIndex = (dataIndex + 1) % filterWindowSize;

	if (filterInstance->DataArrayLength < filterWindowSize)
	{
		filterInstance->DataArrayLength++;
	}
}
