#include <thrust/sort.h>
#include <thrust/device_ptr.h>

void SortCellIndices(uint32_t* cellIds, uint32_t* particleIndices, uint32_t numGrains)
{
	thrust::sort_by_key(thrust::device_ptr<uint32_t>(cellIds), 
		 				thrust::device_ptr<uint32_t>(cellIds+numGrains),
						thrust::device_ptr<uint32_t>(particleIndices));
}

void SortCellIndices(float* cellIds, uint32_t* particleIndices, uint32_t numGrains)
{
	thrust::sort_by_key(thrust::device_ptr<float>(cellIds), 
		 				thrust::device_ptr<float>(cellIds+numGrains),
						thrust::device_ptr<uint32_t>(particleIndices));
}