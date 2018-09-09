#pragma once
#include <stdarg.h>
#include <ctime>

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
class Set
{
	public:
	Elem<T> * root = 0;
	int(*cmp)(T a, T b);

	private:
	void split(Elem<T> * t, T key, Elem<T> * & l, Elem<T> * & r);
	void insert(Elem<T> * & t, Elem<T> * it);
	void merge(Elem<T> * & t, Elem<T> * l, Elem<T> * r);
	void erase(Elem<T> * & t, T key);
	Elem<T> * search(Elem<T> * t, T x);
	void delTree(Elem<T> * t);
	//
	void _intersection(Elem<T> * t, Set<T> & set, Set<T> & res);
	void _uni(Elem<T> * t, Set<T> & res);
	void _difference(Set<T> & res, Elem<T> * t);
	void _discard(Elem<T> * & t, T x, bool signMore);

	public:
	Set(int(*_cmp)(T a, T b) = NULL);
	~Set();
	Set(const Set & s);
	void add(T x);
	void _add(int n, ...);
	bool exist(T x);
	void del(T x);
	void delAll();

	/*Set<T> & operator & (Set<T> & set);*/
	void intersection(Set<T> & set1, Set<T> & set2);
	void assignment(Elem<T> * t);
	Set<T> & operator = (Set<T> & set);
	//Set<T> & operator | (Set<T> & set);
	void uni(Set<T> & set1, Set<T> & set2);
	/*Set<T> & operator - (Set<T> & set);*/
	void difference(Set<T> & set);
	/*Set<T> & operator <= (T x);*/
	void discardLess(T x);
	/*Set<T> & operator >= (T x);*/
	void discardMore(T x);
	/*Set<T> & operator > (T x);*/
	void cuttingMore(Set<T> & set, T x);
	/*Set<T> & operator < (T x);*/
	void cuttingLess(Set<T> & set, T x);
};

template <class T>
void Set<T>::split(Elem<T> * t, T key, Elem<T> * & l, Elem<T> * & r)
{
	if (!t)
		l = r = NULL;
	else if (cmp(key, t->key) < 0)
		split(t->l, key, l, t->l), r = t;
	else
		split(t->r, key, t->r, r), l = t;
}

template <class T>
void Set<T>::insert(Elem<T> * & t, Elem<T> * it)
{
	if (!t)
		t = it;
	else if (it->prior > t->prior)
		split(t, it->key, it->l, it->r), t = it;
	else
		insert(cmp(it->key, t->key) < 0 ? t->l : t->r, it);
}

template <class T>
void Set<T>::merge(Elem<T> * & t, Elem<T> * l, Elem<T> * r)
{
	if (!l || !r)
		t = l ? l : r;
	else if (l->prior > r->prior)
		merge(l->r, l->r, r), t = l;
	else
		merge(r->l, l, r->l), t = r;
}

template <class T>
void Set<T>::erase(Elem<T> * & t, T key)
{
	if (t->key == key)
	{
		Elem<T>* toDel = t;
		merge(t, t->l, t->r);
		delete toDel;
	}
	else
		erase(cmp(key, t->key) < 0 ? t->l : t->r, key);
}

template <class T>
Elem<T> * Set<T>::search(Elem<T> * t, T x)
{
	if (!t)
		return NULL;
	if (cmp(t->key, x) == 0)
		return t;
	if (cmp(t->key, x) > 0)
		return search(t->l, x);
	else
		return search(t->r, x);
}

template <class T>
void Set<T>::delTree(Elem<T> * t)
{
	if (!t)
		return;
	delTree(t->l);
	delTree(t->r);
	delete t;
}

template <class T>
Set<T>::Set(int(*_cmp)(T a, T b) = NULL)
{
	root = NULL;
	if (_cmp)
		cmp = _cmp;
	else
		cmp = classicCmp;
}

template <class T>
Set<T>::~Set()
{
	delAll();
}

template <class T>
Set<T>::Set(const Set & s)
{
	assignment(s.root);
}

template <class T>
void Set<T>::add(T x)
{
	if (search(root, x))
		return;
	srand((unsigned int)time(0));
	int y = rand() % 999 + 1;
	insert(root, new Elem<T>(x, y));
}

template <class T>
void Set<T>::_add(int n, ...)
{
	va_list L;
	va_start(L, n);
	for (int i = 0; i < n; i++)
	{
		x = va_arg(L, T);
		add(x);
	}
	va_end(L);
}

template <class T>
bool Set<T>::exist(T x)
{
	return search(root, x);
}

template <class T>
void Set<T>::del(T x)
{
	if (exist(x))
		erase(root, x);
}

template <class T>
void Set<T>::delAll()
{
	delTree(root);
	root = NULL;
}

template <class T>
void Set<T>::_intersection(Elem<T> * t, Set<T> & set, Set<T> & res)
{
	if (t == NULL)
		return;
	if (set.exist(t->key))
	{
		res.add(t->key);
	}
	_intersection(t->l, set, res);
	_intersection(t->r, set, res);
}

/*Set<T> & operator & (Set<T> & set)
{
Set<T> res;
_intersection(root, set, res);
return res;
}*/

template <class T>
void Set<T>::intersection(Set<T> & set1, Set<T> & set2)
{
	if (!(this == &set1 || this == &set2))
		delAll();
	_intersection(set1.root, set2, *this);
}

template <class T>
void Set<T>::assignment(Elem<T> * t)
{
	if (!t)
		return;
	add(t->key);
	assignment(t->l);
	assignment(t->r);
}

template <class T>
Set<T> & Set<T>::operator = (Set<T> & set)
{
	if (this == &set)
		return *this;
	delAll();
	assignment(set.root);
	return *this;
}

template <class T>
void Set<T>::_uni(Elem<T> * t, Set<T> & res)
{
	if (!t)
		return;
	res.add(t->key);
	_uni(t->l, res);
	_uni(t->r, res);
}

//template <class T>
//Set<T> operator | (Set<T> & set)
//{
//	Set<T>* res = new Set<T>;
//	uni(root, *res);
//	uni(set.root, *res);
//	return *res;
//}

template <class T>
void Set<T>::uni(Set<T> & set1, Set<T> & set2)
{
	if (!(this == &set1 || this == &set2))
		delAll();
	_uni(set1.root, *this);
	_uni(set2.root, *this);
}

template <class T>
void Set<T>::_difference(Set<T> & res, Elem<T> * t)
{
	if (!t)
		return;
	if (res.exist(t->key))
		res.del(t->key);
	_difference(res, t->l);
	_difference(res, t->r);
}

/*Set<T> & operator - (Set<T> & set)
{
Set<T> res;
res = *this;
_difference(res, set.root);
return res;
}*/

template <class T>
void Set<T>::difference(Set<T> & set)
{
	_difference(*this, set.root);
}

template <class T>
void Set<T>::_discard(Elem<T> * & t, T x, bool signMore)
{
	if (!t)
		return;
	

	if (signMore)
	{
		if (cmp(t->key, x) > 0)
		{
			delTree(t->r);
			Elem<T>* toDel = t;
			t = t->l;
			delete toDel;
			_discard(t, x, signMore);
		}
		else
		{
			_discard(t->r, x, signMore);
		}
	}
	else
	{
		if (cmp(t->key, x) < 0)
		{
			delTree(t->l);
			Elem<T>* toDel = t;
			t = t->r;
			delete toDel;
			_discard(t, x, signMore);
		}
		else
		{
			_discard(t->l, x, signMore);
		}
	}

}

/*Set<T> & operator <= (T x)
{
_discard(root, x, 1);
return *this;
}*/

template <class T>
void Set<T>::discardLess(T x)
{
	_discard(root, x, 0);
}

/*Set<T> & operator >= (T x)
{
discard(root, x, 0);
return *this;
}*/

template <class T>
void Set<T>::discardMore(T x)
{
	_discard(root, x, 1);
}

/*Set<T> & operator > (T x)
{
Set<T> res = new Set<T>;
res = *this;
res >= x;
return res;
}*/

template <class T>
void Set<T>::cuttingMore(Set<T> & set, T x)
{
	if (this != &set)
		delAll();
	*this = set;
	_discard(root, x, 0);
}

/*Set<T> & operator < (T x)
{
Set<T> res;
res = *this;
res <= x;
return res;
}*/

template <class T>
void Set<T>::cuttingLess(Set<T> & set, T x)
{
	if (this != &set)
		delAll();
	*this = set;
	_discard(root, x, 1);
}

template <class T>
void show(std::ostream & os, Elem<T> * t)
{
	if (!t)
		return;
	show(os, t->l);
	os << t->key << ' ';
	show(os, t->r);
}

template <class T>
int classicCmp(T a, T b)
{
	if (a > b)
		return 1;
	else if (a == b)
		return 0;
	else return -1;
}

template <class T>
std::ostream & operator << (std::ostream & os, Elem<T> * t)
{
	show(os, t);
	return os;
}

template <class T>
std::ostream & operator << (std::ostream & os, Set<T> & set)
{
	os << set.root;
	return os;
}