#ifndef __MATRIX_COMMON_HPP__
#define __MATRIX_COMMON_HPP__

#include <cassert>
#include <iostream>

template <template <class S> class T, typename S>
T<S> mult(const T<S>& A, const T<S>& B)
{
	assert(A.getNumCols() == B.getNumRows());
	T<S> result(A.getNumRows(), B.getNumCols());
	for(std::size_t r = 0; r < result.getNumRows(); ++r)
	{
		for(std::size_t c = 0; c < result.getNumCols(); ++c)
		{
			S sum = 0;
			for(std::size_t m = 0; m < A.getNumCols(); ++m)
			{
				sum += A.at(r,m) * B.at(m,c);
			}
			result.at(r,c) = sum;
		}
	}
	return result;
}

template <template <class S> class T, typename S>
T<S> add(const T<S>& A, const T<S>& B)
{
	assert(A.getNumCols() == B.getNumRows());
	assert(A.getNumRows() == A.getNumRows());
	T<S> result(A.getNumRows(), A.getNumCols());
	for(std::size_t r = 0; r < result.getNumRows(); ++r)
	{
		for(std::size_t c = 0; c < result.getNumCols(); ++c)
		{
			result.at(r,c) = A.at(r,c) + B.at(r,c);
		}
	}
}

template <template <class S> class T, typename S>
void addInPlace(T<S>& A, const T<S>& B)
{
	assert(A.getNumCols() == B.getNumRows());
	assert(A.getNumRows() == A.getNumRows());
	T<S> result(A.getNumRows(), A.getNumCols());
	for(std::size_t r = 0; r < result.getNumRows(); ++r)
	{
		for(std::size_t c = 0; c < result.getNumCols(); ++c)
		{
			A.at(r,c) += B.at(r,c);
		}
	}
}

template <template <class S> class T, typename S>
void print(T<S>& A)
{
	std::cout << std::endl;
	for(auto r = 0; r < A.getNumRows(); ++r)
	{
		for(auto c = 0; c < A.getNumCols(); ++c)
		{
			std::cout << A.at(r,c) << ' ';
		}
		std::cout << std::endl;
	}
	std::cout << std::endl;
}

#endif
