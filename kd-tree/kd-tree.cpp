#include <iostream>
#include <conio.h>
#include <stdarg.h>
#include <math.h>

struct Elem
{
	int * x;
	Elem * l = NULL;
	Elem * r = NULL;
	Elem(){}
	Elem(Elem* _l, Elem* _r)
	{
		l = _l;
		r = _r;
	}
	Elem(int n, ...)
	{
		x = new int[n];
		va_list L;
		va_start(L, n);
		for (int i = 0; i < n; i++)
		{
			x[i] = va_arg(L, int);
		}
		va_end(L);
	}
};

int count(Elem * t)
{
	if (!t)
		return 0;
	if (t->l && !t->r || !t->l && t->r)
		return 0;
	if (!t->l && !t->r)
		return 1;
	else
	{
		int l = count(t->l);
		int r = count(t->r);
		if (r * l)
			return r + l;
		else return 0;
	}
}

void Max(Elem * t, int coord, int & max)
{
	if (t->l == t->r)
	{
		if (t->x[coord] > max)
			max = t->x[coord];
		return;
	}
	Max(t->l, coord, max);
	Max(t->r, coord, max);
}

bool allMore(Elem * t, int coord, int value)
{
	if (t->l == t->r)
	{
		if (t->x[coord] < value)
			return false;
		else return true;
	}
	return allMore(t->l, coord, value) && allMore(t->r, coord, value);
}

bool validator(Elem * t, int n, int coord = 0)
{
	if (!t)
		return true;
	if (!t->l && !t->r)
		return true;
	int l = count(t->l);
	int r = count(t->r);
	if (l == 0 || r == 0 || abs(l - r) > 1)
		return false;
	int maxLeft;
	Max(t->l, coord, maxLeft);
	if (!allMore(t->r, coord, maxLeft))
		return false; 
	return validator(t->l, n, (coord + 1) % n) && validator(t->r, n, (coord + 1) % n);
}

void del(Elem* t)
{
	if (!t)
		return;
	del(t->l);
	del(t->r);
	delete(t);
}

int main()
{
	//const int N = 2;
	//Elem * root = new Elem;//l1
	//Elem * cur = root;
	//cur->l = new Elem;//l2
	//cur = cur->l;
	//cur->l = new Elem;//l4
	//cur = cur->l;
	//cur->r = new Elem(N, 3, 2);//p3
	//cur->l = new Elem;//l8
	//cur = cur->l;
	//cur->l = new Elem(N, 1, 4);//p1
	//cur->r = new Elem(N, 2, 6);//p2
	//cur = root;
	//cur = cur->l;
	//cur->r = new Elem;//l5
	//cur = cur->r;
	//cur->l = new Elem(N, 1, 9);//p4
	//cur->r = new Elem(N, 4, 8);//p5
	//cur = root;
	//cur->r = new Elem;//l3
	//cur = cur->r;
	//cur->l = new Elem;//l6
	//cur = cur->l;
	//cur->r = new Elem(N, 9, 3);//p8
	//cur->l = new Elem;//l9
	//cur = cur->l;
	//cur->l = new Elem(N, 8, 1);//p6
	//cur->r = new Elem(N, 5, 5);//p7
	//cur = root;
	//cur = cur->r;
	//cur->r = new Elem;//l7
	//cur = cur->r;
	//cur->l = new Elem(N, 6, 9);//p9
	//cur->r = new Elem(N, 7, 7);//p10
	
	Elem* root = new Elem(             /*1мерный*/
		new Elem(
			new Elem(
				new Elem(1, -1),
				new Elem(1, 0)
			),
			new Elem(1, 2)
		),
		new Elem(
			new Elem(1, 3),
			new Elem(1, 4)
		)
	);

	/*Elem* root = new Elem(1, 2);*/

	//Elem* root = new Elem(                          /* 3д*/
	//	new Elem(
	//		new Elem(
	//			new Elem(3, -1, -1, -1),
	//			new Elem(3, -1, 0, 1)
	//		),
	//		new Elem(3, -1, 1, -1)
	//	),
	//	new Elem(
	//		new Elem(
	//			new Elem(3, 1, -1, -1),
	//			new Elem(3, 1, 0, 1)
	//		),
	//		new Elem(3, 1, 1, -1)
	//	)
	//);

	//Elem* root = new Elem(                  /*прямая*/
	//	new Elem(
	//		new Elem(
	//			new Elem(2, -1, 0),
	//			new Elem(2, 0, 0)
	//		),
	//		new Elem(2, 2, 0)
	//	),
	//	new Elem(
	//		new Elem(2, 3, 0),
	//		new Elem(2, 4, 0)
	//	)
	//);

	if (validator(root, 2))
		std::cout << "Yes";
	else std::cout << "No";

	del(root);
	
	_getch();
}