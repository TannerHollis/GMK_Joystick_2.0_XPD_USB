// -------------------------------------------------------------------------------------
// Module          : SavitskiyGolayFilter.c
// Description     : C function implementation
// Author          : Vygoniuk O.V.
// Date            : 03/07/2024
// Refactored by   : -
// Refactoring date: --/--/----
// -------------------------------------------------------------------------------------
//
// This module implements Savitskiy-Golay filter.
//
// -------------------------------------------------------------------------------------

#include "SavitskiyGolayFilter.h"

/**
 * @brief Filter instance structure initialization
 * @param filterInstance  - structure to be initialized
 * @param  filterWindowSize - data counts to be used in the filter
 */
void SavitskiyGolayFilterInit(SavitskiyGolayFilter_TypeDef *filterInstance,
		uint16_t filterWindowSize)
{
	const WeightCoefficientsLength = 13;

	double weightDivider;

	filterInstance->NextDataIndex = 0;
	filterInstance->FilteredValue = 0;

	if (filterWindowSize % 2 == 0)
	{
		filterWindowSize++;
	}

	if (filterWindowSize < 5)
	{
		filterWindowSize = 5; // set minimal filter window to 5 counts
	}
	else if (filterWindowSize >25)
	{
		filterWindowSize = 25;
	}

	filterInstance->FilterWindowSize = filterWindowSize;

	filterInstance->InputData = (uint16_t*) malloc(filterWindowSize * sizeof(uint16_t));
	filterInstance->WeightCoefficients = (double*) malloc(WeightCoefficientsLength * sizeof(double));

	switch (filterWindowSize)
	{
		case 5:
			{
				weightDivider = 35;
				filterInstance->WeightCoefficients[0] = 17;
				filterInstance->WeightCoefficients[1] = 12;
				filterInstance->WeightCoefficients[2] = -3;
			}
			break;
		case 7:
			{
				weightDivider = 21;
				filterInstance->WeightCoefficients[0] = 7;
				filterInstance->WeightCoefficients[1] = 6;
				filterInstance->WeightCoefficients[2] = 3;
				filterInstance->WeightCoefficients[3] = -2;
			}
			break;
		case 9:
			{
				weightDivider = 231;
				filterInstance->WeightCoefficients[0] = 59;
				filterInstance->WeightCoefficients[1] = 54;
				filterInstance->WeightCoefficients[2] = 39;
				filterInstance->WeightCoefficients[3] = 14;
				filterInstance->WeightCoefficients[4] = -21;
			}
			break;
		case 11:
			{
				weightDivider = 429;
				filterInstance->WeightCoefficients[0] = 89;
				filterInstance->WeightCoefficients[1] = 84;
				filterInstance->WeightCoefficients[2] = 69;
				filterInstance->WeightCoefficients[3] = 44;
				filterInstance->WeightCoefficients[4] = 9;
				filterInstance->WeightCoefficients[5] = -36;
			}
			break;
		case 13:
			{
				weightDivider = 143;
				filterInstance->WeightCoefficients[0] = 25;
				filterInstance->WeightCoefficients[1] = 24;
				filterInstance->WeightCoefficients[2] = 21;
				filterInstance->WeightCoefficients[3] = 16;
				filterInstance->WeightCoefficients[4] = 9;
				filterInstance->WeightCoefficients[5] = 0;
				filterInstance->WeightCoefficients[6] = -11;
			}
			break;
		case 15:
			{
				weightDivider = 1105;
				filterInstance->WeightCoefficients[0] = 167;
				filterInstance->WeightCoefficients[1] = 162;
				filterInstance->WeightCoefficients[2] = 147;
				filterInstance->WeightCoefficients[3] = 122;
				filterInstance->WeightCoefficients[4] = 87;
				filterInstance->WeightCoefficients[5] = 42;
				filterInstance->WeightCoefficients[6] = -13;
				filterInstance->WeightCoefficients[7] = -78;
			}
			break;
		case 17:
			{
				weightDivider = 323;
				filterInstance->WeightCoefficients[0] = 43;
				filterInstance->WeightCoefficients[1] = 42;
				filterInstance->WeightCoefficients[2] = 39;
				filterInstance->WeightCoefficients[3] = 34;
				filterInstance->WeightCoefficients[4] = 27;
				filterInstance->WeightCoefficients[5] = 18;
				filterInstance->WeightCoefficients[6] = 7;
				filterInstance->WeightCoefficients[7] = -6;
				filterInstance->WeightCoefficients[8] = -21;
			}
			break;
		case 19:
			{
				weightDivider = 2261;
				filterInstance->WeightCoefficients[0] = 269;
				filterInstance->WeightCoefficients[1] = 264;
				filterInstance->WeightCoefficients[2] = 249;
				filterInstance->WeightCoefficients[3] = 224;
				filterInstance->WeightCoefficients[4] = 189;
				filterInstance->WeightCoefficients[5] = 144;
				filterInstance->WeightCoefficients[6] = 89;
				filterInstance->WeightCoefficients[7] = 24;
				filterInstance->WeightCoefficients[8] = -51;
				filterInstance->WeightCoefficients[9] = -136;
			}
			break;
		case 21:
			{
				weightDivider = 3059;
				filterInstance->WeightCoefficients[0] = 329;
				filterInstance->WeightCoefficients[1] = 324;
				filterInstance->WeightCoefficients[2] = 309;
				filterInstance->WeightCoefficients[3] = 284;
				filterInstance->WeightCoefficients[4] = 249;
				filterInstance->WeightCoefficients[5] = 204;
				filterInstance->WeightCoefficients[6] = 149;
				filterInstance->WeightCoefficients[7] = 84;
				filterInstance->WeightCoefficients[8] = 9;
				filterInstance->WeightCoefficients[9] = -76;
				filterInstance->WeightCoefficients[10] = -171;
			}
			break;
		case 23:
			{
				weightDivider = 805;
				filterInstance->WeightCoefficients[0] = 79;
				filterInstance->WeightCoefficients[1] = 78;
				filterInstance->WeightCoefficients[2] = 75;
				filterInstance->WeightCoefficients[3] = 70;
				filterInstance->WeightCoefficients[4] = 63;
				filterInstance->WeightCoefficients[5] = 54;
				filterInstance->WeightCoefficients[6] = 43;
				filterInstance->WeightCoefficients[7] = 30;
				filterInstance->WeightCoefficients[8] = 15;
				filterInstance->WeightCoefficients[9] = -2;
				filterInstance->WeightCoefficients[10] = -21;
				filterInstance->WeightCoefficients[11] = -42;
			}
			break;
		case 25:
			{
				weightDivider = 5175;
				filterInstance->WeightCoefficients[0] = 467;
				filterInstance->WeightCoefficients[1] = 462;
				filterInstance->WeightCoefficients[2] = 447;
				filterInstance->WeightCoefficients[3] = 422;
				filterInstance->WeightCoefficients[4] = 387;
				filterInstance->WeightCoefficients[5] = 343;
				filterInstance->WeightCoefficients[6] = 287;
				filterInstance->WeightCoefficients[7] = 222;
				filterInstance->WeightCoefficients[8] = 147;
				filterInstance->WeightCoefficients[9] = 62;
				filterInstance->WeightCoefficients[10] = -33;
				filterInstance->WeightCoefficients[11] = -138;
				filterInstance->WeightCoefficients[12] = -253;
			}
			break;
		default:
			break;

	}

	// data initialization and weight coefficients initialization
	for (int i = 0; i < filterWindowSize; i++)
	{
		filterInstance->InputData[i] = 0;
	}

	for (int i=0; i<WeightCoefficientsLength; i++)
	{
		filterInstance->WeightCoefficients[i] /= weightDivider;
	}
}

/**
 * @brief Filter instance resources freeing
 * @param filterInstance  - structure to be deinitialized
 */
void SavitskiyGolayFilterDeinit(SavitskiyGolayFilter_TypeDef *filterInstance)
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
void SavitskiyGolayFilterCalculateFilteredValue(
		SavitskiyGolayFilter_TypeDef *filterInstance)
{
	if (filterInstance == NULL)
	{
		return;
	}

	double result = 0;

	uint16_t filterWindowSize = filterInstance->FilterWindowSize;
	int16_t halfFilterWindowSize = filterWindowSize / 2;

	int16_t dataIndex = filterInstance->NextDataIndex;
	int16_t coeffIndex = -halfFilterWindowSize;

	for (int16_t i = 0; i<filterWindowSize; i++, coeffIndex++)
	{
		int coefficientIndex = coeffIndex <0 ? -coeffIndex : coeffIndex;

		result +=
				filterInstance->InputData[dataIndex] *
				filterInstance->WeightCoefficients[coefficientIndex];

		dataIndex = (dataIndex + 1) % filterWindowSize;
	}

	if (result < 0)
	{
		result = 0;
	}

	filterInstance->FilteredValue = (uint16_t) result;
}

/**
 * @brief This method adds new data to the array
 * @param filterInstance  - structure to be initialized
 * @param newValue - new value
 */
void SavitskiyGolayFilterPutNewData(
		SavitskiyGolayFilter_TypeDef *filterInstance,
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
}
