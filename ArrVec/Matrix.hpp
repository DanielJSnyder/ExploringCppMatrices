#ifndef __MATRIX2D_HPP__
#define __MATRIX2D_HPP__

#include <vector>
template <typename T>
class MatrixVec2D
{
	std::vector<T> mat;
	std::size_t rows;
	std::size_t cols;
	std::size_t rcToIdx(std::size_t r, std::size_t c) const
	{
		return cols * r + c;
	}
public:
	MatrixVec2D<T>(std::size_t r, std::size_t c) : mat(r*c, 0), rows(r), cols(c)
	{
	}
	MatrixVec2D<T>(const MatrixVec2D<T> & m): mat(m.mat), rows(m.rows), cols(m.cols)
	{
	}

	std::size_t getNumRows() const
	{
		return rows;
	}
	std::size_t getNumCols() const
	{
		return cols;
	}
	const T& at(std::size_t row, std::size_t col) const
	{
		return mat[rcToIdx(row, col)];
	}
	T& at(std::size_t row, std::size_t col)
	{
		return mat[rcToIdx(row, col)];
	}
};

template <typename T>
class MatrixArr2D
{
	T * mat;
	std::size_t rows;
	std::size_t cols;
	std::size_t rcToIdx(std::size_t r, std::size_t c) const
	{
		return cols * r + c;
	}
public:
	MatrixArr2D<T>(std::size_t r, std::size_t c): mat(new T[r*c]), rows(r), cols(c)
	{
		for(auto i = 0; i < r*c; ++i)
		{
			mat[i] = 0;
		}
	}
	MatrixArr2D<T>(const MatrixArr2D<T> & m): mat(new T[m.rows * m.cols]), rows(m.rows), cols(m.cols)
	{
		for(auto i = 0; i < rows*cols; ++i)
		{
			mat[i] = m.mat[i];
		}
	}
	~MatrixArr2D()
	{
		delete [] mat;
	}
	std::size_t getNumRows() const
	{
		return rows;
	}
	std::size_t getNumCols() const
	{
		return cols;
	}
	const T& at(std::size_t row, std::size_t col) const
	{
		return mat[rcToIdx(row, col)];
	}
	T& at(std::size_t row, std::size_t col)
	{
		return mat[rcToIdx(row, col)];
	}
};
#endif
