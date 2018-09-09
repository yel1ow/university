//#define Solve
//#ifdef Solve
#include<iostream>
#include<fstream>
#include<cstdio>
#include<vector>
#include<set>
#include <conio.h>

using namespace std;
const int N = 13;

struct matrix
{
	double a, b, c, d;
};
const matrix e = {1, 0, 0, 1};
matrix operator *(const matrix &x, const  matrix &y)
{
	matrix ans = {(x.a * y.a + x.b * y.c),
		(x.a * y.b + x.b * y.d),
		(x.c * y.a + x.d * y.c),
		(x.c * y.b + x.d * y.d)};
	return ans;
}
bool operator == (const matrix &x, const  matrix &y)
{
	if (x.a == y.a && x.b == y.b && x.c == y.c && x.d == y.d)
	{
		return true;
	}
	else
	{
		return false;
	}
}
matrix transposition(const matrix &x)
{
	matrix ans = {x.a, x.c, x.b, x.d};
	return ans;
}
int ord(const matrix &x)
{
	matrix p = x;
	for (int i = 1; i < 25; i++)
	{

		if (p == e)
		{
			return i;
		}
		p = p * x;
	}
	return -1;
}
void print(const matrix &x)
{
	cout << x.a << " " << x.b << endl << x.c << " " << x.d << endl << " ord = " << ord(x) << endl;;
}
vector<matrix> group;
void search()
{
	for (int a = 0; a < N; a++)
	{
		for (int b = 0; b < N; b++)
		{
			for (int c = 0; c < N; c++)
			{
				for (int d = 0; d < N; d++)
				{
					matrix m = {a, b, c, d};
					if (m * transposition(m) == e)
					{
						group.push_back(m);
					}
				}
			}
		}
	}
}
int cnt = 0;
bool check(const vector<matrix> & gr)
{
	bool flag = false;
	for (auto v : gr)
	{
		if (v == e)
		{
			flag = true;
			break;
		}
	}
	int n = gr.size();
	for (int i = 0; i < n; i++)
	{
		for (int j = 0; j < n; j++)
		{
			matrix th = gr[i] * gr[j];
			bool flag = false;
			for (auto e : gr)
			{
				if (th == e)
				{
					flag = true;
					break;
				}
			}
			if (!flag)
			{
				return false;
			}
		}
	}

	if (!flag)
	{
		return false;
	}
	for (auto f : gr)
	{
		bool flag = false;
		for (auto v : gr)
		{
			if (f * v == e)
			{
				flag = true;
				break;
			}
		}
		if (!flag)
		{
			return false;
		}
	}
	return true;
}
vector<matrix> gr4;
void findgr4()
{
	for (int i = 0; i < 22; i++)
	{
		if (group[i] == e)
		{
			continue;
		}
		for (int j = i + 1; j < 23; j++)
		{
			if (group[j] == e)
			{
				continue;
			}
			for (int k = j + 1; k < 24; k++)
			{
				if (group[k] == e || group[k] == group[i] || group[k] == group[j])
				{
					continue;
				}

				vector<matrix> gr;
				gr.push_back(e);
				gr.push_back(group[i]);
				gr.push_back(group[j]);
				gr.push_back(group[k]);
				if (check(gr))
				{
					cnt++;
					for (auto v : gr)
					{
						print(v);
					}
					//cout << i << " " << j << endl;

					cout << "________________________________________________" << endl;
				}
			}
		}
	}
}
void test(int i, int j)
{
	i--;
	j--;
	print(group[i] * group[j]);
}
vector<matrix>gr3;
void findgr3()
{
	for (int i = 0; i < 23; i++)
	{
		if (group[i] == e)
		{
			continue;
		}
		for (int j = i + 1; j < 24; j++)
		{
			if (group[j] == e)
			{
				continue;
			}
			vector<matrix> gr;
			gr.push_back(e);
			gr.push_back(group[i]);
			gr.push_back(group[j]);
			if (check(gr))
			{
				cnt++;
				for (auto v : gr)
				{
					gr3.push_back(v);
					print(v);
				}

				cout << "________________________________________________" << endl;
			}
		}
	}
}
void findgr6()
{
	for (int i = 0; i < 20; i++)
	{
		if (group[i] == e)
		{
			continue;
		}
		for (int j = i + 1; j < 21; j++)
		{
			if (group[j] == e)
			{
				continue;
			}
			for (int k = j + 1; k < 22; k++)
			{
				if (group[k] == e)
				{
					continue;
				}
				for (int t = k + 1; t < 23; t++)
				{
					if (group[t] == e)
					{
						continue;
					}
					for (int l = t + 1; l < 24; l++)
					{
						if (group[j] == e)
						{
							continue;
						}
						vector<matrix> gr;
						gr.push_back(e);
						gr.push_back(group[i]);
						gr.push_back(group[j]);
						gr.push_back(group[k]);
						gr.push_back(group[t]);
						gr.push_back(group[l]);
						if (check(gr))
						{
							cnt++;
							for (auto v : gr)
							{
								//gr3.push_back(v);
								print(v);
							}

							cout << "________________________________________________" << endl;
						}
					}
				}
			}

		}
	}
}
vector<matrix> commutant;
void printleftclass(int j)
{
	j--;
	for (int i = 0; i < 6; i++)
	{
		print(group[j] * commutant[i]);
	}

}

void printrightclass(int j)
{
	j--;
	for (int i = 0; i < 6; i++)
	{
		print(commutant[i] * group[j]);
	}
}

void search_commutant()
{
	for (int i = 0; i < 24; i++)
	{
		for (int j = 0; j < 24; j++)
		{
			matrix p = group[i] * group[j];
			p = p * transposition(group[i]);
			p = p * transposition(group[j]);
			bool flag = false;
			for (auto x : commutant)
			{
				if (x == p)
				{
					flag = true;
					break;
				}
			}

			if (!flag)
			{
				commutant.push_back(p);
			}

		}
	}
	for (auto x : commutant)
	{
		print(x);
	}
}
int main()
{
	search();
	//freopen("a.out", "w", stdout);
	//cout << group.size() << endl << endl;
	//for (auto v : group)
	//{
	//	print(v);
	//}

	//cout << "###########################################################" << endl;
	//vector<matrix> gr12;
	//for (auto v : group)
	//{
	//	if (ord(v) <= 2)
	//	{
	//		if (v.b != 8)
	//		{
	//			gr12.push_back(v);
	//		}
	//	}
	//}
	//for (auto v : gr12)
	//{
	//	print(v);
	//}


	//cout << "###########################################################" << endl;
	////search_commutant();
	//matrix p = {6, 1, 8, 6};
	//matrix cur = p;


	//cout << "###########################################################" << endl;
	//while (true)
	//{
	//	int x, y;
	//	cin >> x >> y;
	//	x--;
	//	y--;
	//	print(group[x] * group[y]);

	//}

	//cout << endl << endl;

	//search_commutant();

	/*matrix a, b;
	cin >> a.a >> a.b >> a.c >> a.d >> b.a >> b.b >> b.c >> b.d;
	print(a*b);*/

	//matrix c{2, 7, 3, 9};
	//print(c);

	/*matrix a(e), b{2, 6, 7, 2};
	int n = 0;
	for (int i = 1; i < 13; i++)
	{
		a = a * b;
		cout << i << ": " << endl;
		print(a);
		print(a * matrix{0, 1, 1, 0});
	}*/

	matrix R{0.0, 1, 0.7, 0.3};
	print(R);
	while (true)
	{
		char c = _getch();
		if (c == 27)
			exit(0);
		R = R * R;
		print(R);
	}

	system("pause");
}
//#endif