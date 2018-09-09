#include <iostream>
#include <conio.h>
#include <stdarg.h>
#include <fstream>

template <class T>
struct Elem
{
	T key;
	Elem* next = NULL;
	Elem* prev = NULL;
	Elem(T _key = {})
	{
		key = _key;
		prev = NULL;
		next = NULL;
	}
};

template <class T>
class List
{
private:
	Elem<T>* first;
	
public:
	List()
	{
		first = new Elem<T>();
	}

	Elem<T>* getFirst()
	{
		return first->next;
	}

	void add(Elem<T>* x)
	{
		x->next = first->next;
		if (x->next)
			x->next->prev = x;
		first->next = x;
		x->prev = first;
	}

	void del(Elem<T>* x)
	{
		Elem<T>* cur = first;
		while (cur->next && cur->next != x)
		{
			cur = cur->next;
		}
		Elem<T>* toDel = cur->next;
		if (cur->next)
		{
			cur->next = cur->next->next;
			if (cur->next)
				cur->next->prev = cur;
		}
		delete(toDel);
	}

	void _del(Elem<T>* x)
	{
		if (!x)
			return;
		_del(x->next);
		del(x);
	}

	void delAll()
	{
		_del(first->next);
	}

	Elem<T>* search(T x)
	{
		Elem<T>* cur = getFirst();
		while (cur)
		{
			if (cur->key == x)
				return cur;
			cur = cur->next;
		}
		return NULL;
	}

	void show()
	{
		std::cout << "list:" << std::endl;
		Elem<T>* cur = getFirst();
		while (cur)
		{
			std::cout << cur->key << std::endl;
			cur = cur->next;
		}
	}

	List<T> operator = (List<T> list)
	{
		delAll();
		Elem<T>* cur = list.getFirst();
		while (cur)
		{
			Elem<T>* x = new Elem<T>(cur->key);
			add(x);
			cur = cur->next;
		}
		return *this;
	}

	void turn()
	{
		Elem<T>* cur = getFirst();
		while (cur)
		{
			Elem<T>* x = new Elem<T>(cur->key);
			add(x);
			if (cur->next)
			{
				cur = cur->next;
				del(cur->prev);
			}
			else
			{
				del(cur);
				break;
			}
		}
	}
};

//template <class T>
//operator = (List<T> list)
//{
//	List<T> result;
//	Elem<T>* cur = l.getFirst();
//	while (cur)
//	{
//		result.add(cur);
//		cur = cur->next;
//	}
//	return result;
//}

template <class T>
List<T> operator + (List<T> l1, List<T> l2)
{
	List<T> result;
	Elem<T>* cur = l1.getFirst();
	while (cur)
	{
		Elem<T>* x = new Elem<T>(cur->key);
		result.add(x);
		cur = cur->next;
	}
	cur = l2.getFirst();
	while (cur)
	{
		Elem<T>* x = new Elem<T>(cur->key);
		result.add(x);
		cur = cur->next;
	}
	return result;
}

template <class T>
std::ostream & operator << (std::ostream & os, List<T> list)
{
	os << "list:" << std::endl;
	Elem<T>* cur = list.getFirst();
	while (cur)
	{
		os << cur->key;
		os << std::endl;
		cur = cur->next;
	}
	return os;
}


int main()
{
	List<int> list1;
	list1.add(new Elem<int>(1));
	list1.add(new Elem<int>(2));
	list1.add(new Elem<int>(3));

	List<int> list2;
	list2.add(new Elem<int>(10));
	list2.add(new Elem<int>(20));
	list2.add(new Elem<int>(30));

	List<int> list3;
	list3.add(new Elem<int>(100));
	list3.add(new Elem<int>(200));
	list3.add(new Elem<int>(300));

	List<int> list4;
	list4 = list1 + list2 + list3;

	list3 = list1;
	std::cout << list3 << std::endl;

	list4.del(list4.search(20));//delete 20

	std::cout << list4 << std::endl;
	list4.turn();
	std::cout << list4 << std::endl;
	_getch();
}