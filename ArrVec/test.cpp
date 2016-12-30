#include "MatCommon.hpp"
#include "Matrix.hpp"
#include <iostream>
#include <chrono>
using namespace std;

template <typename T>
void setupMats(T& A, T&B)
{
	for(auto i = 0; i < A.getNumCols(); ++i)
	{
		A.at(i,i) = rand();
	}

	for(auto i = 0; i < B.getNumCols(); ++i)
	{
		B.at(i,i) = rand();
	}

}
template <typename T>
void multTest(const T& A, const T& B)
{
	volatile T result = mult(A,B);
}

int main(int argc, char ** argv)
{
	if(argc != 4)
	{
		return 0;
	}

	auto start = std::chrono::high_resolution_clock::now();
	for(int i = 0; i < atoi(argv[3]); ++i)
	{
		if(argv[1][0] == 'V')
		{
			MatrixVec2D<double> A(atoi(argv[2]), atoi(argv[2]));
			MatrixVec2D<double> B(atoi(argv[2]), atoi(argv[2]));
			setupMats(A,B);
			multTest(A,B);
		}
		else
		{
			MatrixArr2D<double> C(atoi(argv[2]), atoi(argv[2]));
			MatrixArr2D<double> D(atoi(argv[2]), atoi(argv[2]));
			setupMats(C,D);
			multTest(C,D);
		}
	}
	auto end = std::chrono::high_resolution_clock::now();
	std::chrono::duration<double> diff = end-start;
	cout << "," << diff.count() << endl;
}


