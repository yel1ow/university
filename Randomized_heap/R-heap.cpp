
#include <iostream>
#include <conio.h>
#include <stdio.h>
#include <stdarg.h>
#include <queue>

using namespace std;

template <class T>
struct Elem
{
	T value;
	Elem* right = NULL;
	Elem* left = NULL;
	Elem(T val)
	{
		value = val;
	}
};

template <class T>
void Swap(Elem<T> ** t1, Elem<T> ** t2)
{
	Elem<T> *t3 = *t1;
	*t1 = *t2;
	*t2 = t3;
}

template <class T>
Elem<T> * merge(Elem<T> * t1, Elem<T> * t2)
{
	if (!t1 || !t2)
		return t1 ? t1 : t2;
	if (t2->value < t1->value)
		Swap(&t1, &t2);
	if (rand() & 1)
		Swap(&(t1->left), &(t1->right));
	t1->left = merge(t1->left, t2);
	return t1;
}

template <class T>
class Heap
{
	public:
	Elem<T> * root;

	public:
	void addElem(Elem<T> * el)
	{
		
		root = merge(root, el);
	}

	Elem<T> showMin()
	{
		return root->value;
	}

	Elem<T> getMin()
	{
		T val = root->value;
		root = merge(root->left, root->right);
		return val;
	}

	void deleteVertex(Elem<T> * v)
	{
		v = merge(v->left, v->right);
	}

	Heap(int n, ...)
	{
		va_list L;
		va_start(L, n);
		T values[1000] = {};
		for (int i = 0; i < n; i++)
		{
			values[i] = va_arg(L, T);
		}
		va_end(L);
		for (int i = 0; i < n; i++)
		{
			Elem<T> * current = new Elem<T>(values[i]);
			addElem(current);
		}
	}

	Heap(int n, T * values)
	{
		for (int i = 0; i < n; i++)
		{
			Elem<T> * current = new Elem(values[i]);
			addElem(current);
		}
	}

	~Heap()
	{

	}

	template <class T>
	void show()
	{
		if (root)
		{
			cout << root->value << endl;
			show(root->left);
			show(root->right);
		}
	}

	void showHelper(Elem<T> * r)
	{
		if (r)
		{
			cout << r->value << endl;
			showHelper(r->left);
			showHelper(r->right);
		}
	}

};

template <class T>
void show(Elem<T> * root)
{
	queue<Elem<T>*> q;
	q.push(root);
	while (!q.empty())
	{
		Elem<T> * el = q.front();
		q.pop();
		cout << el->value << endl;
		if (el->left)
			q.push(el->left);
		if (el->right)
			q.push(el->right);
	}
	/*if (root)
	{
		show(root->left);
		cout << root->value << endl;
		show(root->right);
	}*/
}

int main()
{
	Heap<int> myHeap(12,/* 1, 2, 3, 4, 5, 4, 7,*/ 7, 4, 5, 4, 3, 2, 1, 10, 15, 33, 5, 17);
	show<int>(myHeap.root);

	/*cout << myHeap.root->value << endl;
	cout << myHeap.root->left->value << endl;
	cout << myHeap.root->right->value << endl;
	cout << myHeap.root->left->left->value << endl;
	cout << myHeap.root->left->right->value << endl;
	cout << myHeap.root->right->left->value << endl;
	cout << myHeap.root->right->right->value << endl;
	if(myHeap.root->left->left->left)
	cout << myHeap.root->left->left->left->value << endl;
	if (myHeap.root->left->left->right)
	cout << myHeap.root->left->left->right->value << endl;
	if (myHeap.root->left->right->left)
	cout << myHeap.root->left->right->left->value << endl;
	if (myHeap.root->left->right->right)
	cout << myHeap.root->left->right->right->value << endl;
	if (myHeap.root->right->right->right)
		cout << myHeap.root->right->right->right->value << endl;*/

	_getch();
}