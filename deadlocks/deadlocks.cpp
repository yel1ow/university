
#define _CRT_SECURE_NO_WARNINGS
#include <iostream>
#include <conio.h>
#include <fstream>
#include <cstring>

using namespace std;

const int MAX_COM = 200,
		  MAX_LEN = 50;

void reading(char ** commands, int & n)
{
	fstream in("input.txt");
	in >> n;
	in.get();
	for (int i = 0; i < n; i++)
	{
		char s[MAX_LEN];
		in.getline(s, MAX_LEN);
		commands[i][0] = s[1] - 48;
		commands[i][1] = s[0];
		for (int k = 3; k < strlen(s); k++)
			commands[i][k - 1] = s[k];
	}
}

//bool correctness(char ** commands, int n)
//{
//	for (int i = 0; i < n; i++)
//	{
//		if (commands[i][1] == 'T')
//		{
//			int k = 0;
//			for (int j = 0; j < n; j++)
//				if (commands[j][1] == 'R');
//		}
//		else
//		if (commands[i][1] == 'R')
//		{
//
//		}
//		else
//		{
//			cout << "Komanda " << i + 1 << " neopoznana" << endl;
//		}
//	}
//}

void delCom(char ** commands, int k, int & n)
{
	for (int i = k; i < n; i++)
	{
		strcpy(commands[i], commands[i + 1]);
	}
	n--;
}

bool wantsN(int ** graph, int n)
{
	for (int i = 0; i < MAX_LEN; i++)
		if (graph[i][n])
			return true;
	return false;
}

void go(int ** graph)
{
	for (int i = 0; i < MAX_LEN; i++)
		for(int j = 0; j < MAX_LEN; j++)
			if (i != j)
			{
				if (graph[i][j] && !graph[j][j])
				{
					graph[j][j] = graph[i][j];
					graph[i][j] = 0;
				}
			}
}

bool makeEdges(int ** graph, int from, int to)
{
	bool f = false;
	for(int i = 0; i < MAX_LEN; i++)
		if (graph[i][i] == from)
		{
			graph[i][to] = from;
			f = true;
		}
	return f;
}

bool check(int ** graph, bool * f, int k)
{
	for (int i = 0; i < MAX_LEN; i++)
	{
		if(graph[k][i] && k != i)
			if (!f[i])
			{
				f[i] = true;
				return check(graph, f, i);
			}
			else
			{
				return true;
			}
	}
	return false;
}

bool cycles(int ** graph, int & k)
{
	bool f[MAX_LEN] = {};
	for (int i = 0; i < MAX_LEN; i++)
	{
		if (!f[i])
		{
			f[i] = true;
			if (check(graph, f, i))
			{
				k = i;
				return true;
			}
		}
	}
	return false;
}

void addProg(int k, int * deleted)
{
	int i = 0;
	while (deleted[i])
		i++;
	deleted[i] = k;
}

void delProg(int k, int ** graph, char ** commands, int & n, int * deleted)
{
	for (int i = 0; i < MAX_LEN; i++)
		for (int j = 0; j < MAX_LEN; j++)
			if (graph[i][j] == k)
				graph[i][j] = 0;
	for (int i = 0; i < n; i++)
		if (commands[i][0] == k)
			delCom(commands, i, n);
	addProg(k, deleted);
}

int main()
{
	
	ofstream out("output.txt");

	char ** commands = (char **)malloc(sizeof(int) * MAX_COM);
	for (int i = 0; i < MAX_COM; i++)
		commands[i] = (char *)malloc(sizeof(int) * MAX_LEN);
	for (int i = 0; i < MAX_COM; i++)
		for (int j = 0; j < MAX_LEN; j++)
			commands[i][j] = 0;

	int ** graph = (int **)malloc(sizeof(int) * MAX_LEN);
	for (int i = 0; i < MAX_LEN; i++)
		graph[i] = (int *)malloc(sizeof(int) * MAX_LEN);
	for (int i = 0; i < MAX_LEN; i++)
		for (int j = 0; j < MAX_LEN; j++)
			graph[i][j] = 0;

	int n;
	int deleted[100] = {};
	reading(commands, n);

	while (n != 0)
	{
		go(graph);
		for (int i = 0; i < n; i++)
		{
			if (commands[i][1] == 'T')
			{
				bool needDel = true;
				for (int j = 2; j < strlen(commands[i]); j++)
				{
					if (!graph[commands[i][j] - 'A'][commands[i][j] - 'A'] || graph[commands[i][j] - 'A'][commands[i][j] - 'A'] == commands[i][0])
					{
						graph[commands[i][j] - 'A'][commands[i][j] - 'A'] = commands[i][0];
					}
					else
					{
						if (!makeEdges(graph, commands[i][0], commands[i][j] - 'A'))
						{
							needDel = false;
							i++;
						}
					}	
				}
				if(needDel)
					delCom(commands, i, n);
			}
			else if (commands[i][1] == 'R')
			{
				bool empty = false;
				for (int j = 2; j < strlen(commands[i]); j++)
				{
					if (graph[commands[i][j] - 'A'][commands[i][j] - 'A'] != commands[i][0])
					{
						empty = true;
						i++;
						break;
					}
					else
						graph[commands[i][j] - 'A'][commands[i][j] - 'A'] = 0;
				}
				if(!empty)
					delCom(commands, i, n);
			}
			i--;
			int k;
			if (cycles(graph, k))
			{
				delProg(graph[k][k], graph, commands, n, deleted);
				go(graph);
			}
		}
	}
	for (int i = 0; deleted[i]; i++)
	{
		out << deleted[i] << endl;
	}
	for (int i = 0; i < MAX_LEN; i++)
		for (int j = 0; j < MAX_LEN; j++)
			if (graph[i][j])
				out << "warning! resources are not released" << endl;
}