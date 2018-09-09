#include <iostream>
#include <conio.h>
#include <stdio.h>
#include <stdarg.h>
#include <queue>
#include <ctime>
#include <fstream>

using namespace std;

template <class T>
struct Elem
{
	T key;
	int prior;
	Elem* r = NULL;
	Elem* l = NULL;
	Elem(T value, int priority)
	{
		key = value;
		prior = priority;
	}
};

template <class T>
void split(Elem<T> * t, int key, Elem<T> * & l, Elem<T> * & r)
{
	if (!t)
		l = r = NULL;
	else if (key < t->key)
		split(t->l, key, l, t->l), r = t;
	else
		split(t->r, key, t->r, r), l = t;
}

template <class T>
void insert(Elem<T> * & t, Elem<T> * it)
{
	if (!t)
		t = it;
	else if (it->prior > t->prior)
		split(t, it->key, it->l, it->r), t = it;
	else
		insert(it->key < t->key ? t->l : t->r, it);
}

template <class T>
void merge(Elem<T> * & t, Elem<T> * l, Elem<T> * r)
{
	if (!l || !r)
		t = l ? l : r;
	else if (l->prior > r->prior)
		merge(l->r, l->r, r), t = l;
	else
		merge(r->l, l, r->l), t = r;
}

template <class T>
void erase(Elem<T> * & t, int key)
{
	if (t->key == key)
		merge(t, t->l, t->r);
	else
		erase(key < t->key ? t->l : t->r, key);
}

template <class T>
Elem<T> * search(Elem<T> * t, int x)
{
	if (!t)
		return NULL;
	if (t->key == x)
		return t;
	if (t->key > x)
		srch(t->l, x);
	else
		srch(t->r, x);
}

template <class T>
void showold(Elem<T> * t, int level)
{
	if (!t)
		return;
	else
	{
		show(t->l, level + 1);
		cout << t->key << ", " << t->prior << "  " << level << endl;
		show(t->r, level + 1);
	}
}

template <class T>
void show(ostream & os, Elem<T> * t)
{
	if (!t)
		return;
	show(os, t->l);
	os << t->key << ' ';
	show(os, t->r);
}

template <class T>
ostream & operator << (ostream & os, Elem<T> * t)
{
	show(os, t);
	return os;
}

template <class T>
void showq(Elem<T> * t)
{
	queue<Elem<T>*> l;
	l.push(t);
	while (!l.empty())
	{
		Elem<T>* current = l.front();
		l.pop();
		cout << current->key << "," << current->prior << endl;
		if (current->l)
			l.push(current->l);
		if (current->r)
			l.push(current->r);
	}
}



int main()
{
	srand(1); //time(0)
	Elem<int> * tree = NULL;
	bool f[100] = {};
	for (int i = 0; i < 7; i++)
	{
		bool q = false;
		int y;
		while (!q)
		{
			y = rand() % 50 + 1;
			if (!f[y])
			{
				f[y] = true;
				q = true;
			}
		}
		int x = rand() % 99 + 1;
		insert(tree, new Elem<int>(x, y));
	}
	showq(tree);
	cout << endl;
	erase(tree, 68);
	showq(tree);
	/*std::cout << endl;
	std::cout << tree;*/
	_getch();
}