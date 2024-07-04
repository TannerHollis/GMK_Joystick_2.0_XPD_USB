// -------------------------------------------------------------------------------------
// Module          : AverageWeightedFilter.c
// Description     : C function implementation
// Author          : Vygoniuk O.V.
// Date            : 15/06/2024
// Refactored by   : -
// Refactoring date: --/--/----
// -------------------------------------------------------------------------------------
//
// This module implements average weighted filter with non-linear characteristics (last
// data is more significant).
//
// -------------------------------------------------------------------------------------

#include "AverageWeightedFilter.h"

/**
 * @brief Filter instance structure initialization
 * @param filterInstance  - structure to be initialized
 * @param  filterWindowSize - data counts to be used in the filter
 */
void AverageWeightedFilterInit(AverageWeightedFilter_TypeDef *filterInstance,
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
	filterInstance->WeightCoefficients = (double*) malloc(filterWindowSize * sizeof(double));

	double coeffSum = 0;
	double coeff = 1.0;

	double pi_2 = acos(0.0);
	double halfFilterWindowSize = (double)filterWindowSize / 2.0;

	// data initialization and weight coefficients initialization
	for (int i = 0; i < filterWindowSize; i++)
	{
		if (i < filterWindowSize / 4)
		{
			coeff = 0.6*i/(double)filterWindowSize+0.85;
		}
		else if (i < filterWindowSize/2)
		{
			coeff = 1.0;
		}
		else if (i >= filterWindowSize/2 && i <filterWindowSize*0.65)
		{
			coeff = 0.95;
		}
		else
		{
			coeff  = cos(((double)i-halfFilterWindowSize)/halfFilterWindowSize*pi_2)*(1.65*i/(double)filterWindowSize);
		}

		if (coeff < 0)
		{
			coeff = AVERAGE_WEIGHTED_FILTER_MINIMAL_DATA_WEIGHT;
		}

		filterInstance->InputData[i] = 0;
		filterInstance->WeightCoefficients[i] = coeff;
		coeffSum += coeff;
	}

	for (int i = 0; i < filterWindowSize; i++) // coefficients normalization
	{
		filterInstance->WeightCoefficients[i] =
			filterInstance->WeightCoefficients[i] / coeffSum;
	}
}

/**
 * @brief Filter instance resources freeing
 * @param filterInstance  - structure to be deinitialized
 */
void AverageWeightedFilterDeinit(AverageWeightedFilter_TypeDef *filterInstance)
{
	if (filterInstance == NULL)
	{
		return;
	}
	else
	{
		free(filterInstance->InputData);
		free(filterInstance->WeightCoefficients);
	}
}

/**
 * @brief Filtered value calculation using data in InputData array
 * @param filterInstance  - structure to be initialized
 */
void AverageWeighedFilterCalculateFilteredValue(
		AverageWeightedFilter_TypeDef *filterInstance)
{
	if (filterInstance == NULL)
	{
		return;
	}

	double result = 0;

	uint16_t filterWindowSize = filterInstance->FilterWindowSize;
	int dataIndex = filterInstance->NextDataIndex;

	for (int i = 0; i<filterWindowSize; i++)
	{
		result += filterInstance->InputData[dataIndex]
				* filterInstance->WeightCoefficients[dataIndex];

		dataIndex = (dataIndex + 1) % filterWindowSize;
	}

	filterInstance->FilteredValue = (uint16_t) result;
}

/**
 * @brief This method adds new data to the array
 * @param filterInstance  - structure to be initialized
 * @param newValue - new value
 */
void AverageWeightedFilterPutNewData(
		AverageWeightedFilter_TypeDef *filterInstance,
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
