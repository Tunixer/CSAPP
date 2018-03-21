#define M 7
#define N 5
long P[M][N];
long Q[N][M];
long sum_lement(long i, long j) {
	return P[i][j] + Q[j][i];
}