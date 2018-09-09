#include "n.h"
#include "z.h"
#include "q.h"
#include "p.h"
#include <iostream>
using namespace std;

// Съесть буфер
inline void eatline() { while (cin.get() != '\n') continue; }

//Функция проверки многочлена: нулевой он или нет. Результат - true или false.
bool isNullP(const P* p) {
    const Z * numerator = &(p->coefficients[0].numerator); //Берем данные из дробного коэфициента, а точнее числитель
    if (p->degree == 0 && numerator->n == 0 && numerator->a[0] == 0) //Проверка: если степень мн-на, разряд в числителе дроби и первое число в числителе дроби = 0,
        return true;  //значит многочлен нулевой
    return false;    //Иначе он не нулевой
}
bool isNullQ(const Q*q) {
    const Z * z = &q->numerator;
    if (z->n == 0 && z->a[0] == 0)
        return true;
    return false;
}


// P-1
//Функция складывает 2 многочлена
bool add_pp_p(const P * p1, const P * p2, P * pResult)
{
    int minDegree = (p1->degree >= p2->degree ? p2->degree : p1->degree);
    int maxDegree = (p1->degree >= p2->degree ? p1->degree : p2->degree);
    const P * maxDegreeP = (p1->degree >= p2->degree ? p1 : p2);
    Q temp;
    int i;

    for (i = 0; i <= minDegree; i++)
    {
        if (add_qq_q( &p1->coefficients[i], &p2->coefficients[i], &temp))
            pResult->coefficients[i] = temp;//Складываем соответствующие коэффициенты
        else return false;
    }
    for(i = minDegree + 1; i <= maxDegree; ++i)
    {
        pResult->coefficients[i] = maxDegreeP->coefficients[i];
    }

    // Пр-ка на понижени степени (старшие коэф. при сложении взаимно уничтожились)
    for (i = maxDegree; i > 0; --i) {
        if (isNullQ(&pResult->coefficients[i]) == false)
            break;
    }
    pResult->degree = i;
    return true;
}

void callP1() {
    P p1, p2, res;
    cout << "Polinomial A:\n";
    while (readP(&p1) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial A:\n";
    cout << "Polinomial B:\n";
    while (readP(&p2) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial B:\n";

    if (add_pp_p(&p1, &p2, &res) == true) {
        cout << "A = ";
        writeP(&p1);
        cout<<endl;
        cout << "B = ";
        writeP(&p2);
        cout<<endl;
        cout << "A + B = ";
        writeP(&res);
        cout << endl;
    }
    else
        cout << "Type overflow. I am sorry\n";
}

// P-2
//Вычитает 2 многочлена
bool sub_pp_p(const P * p1, const P * p2, P * pResult)
{
    P p2Copy = *p2;
    for (int i = 0; i <= p2->degree; ++i)     // Меняем знак коэффициентов 2го полинома (его копии)
        p2Copy.coefficients[i].numerator.b ^= 1;
    return add_pp_p(p1, &p2Copy, pResult);
}

void callP2() {
    P p1, p2, res;
    cout << "Polinomial A:\n";
    while (readP(&p1) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial A:\n";
    cout << "Polinomial B:\n";
    while (readP(&p2) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial B:\n";

    if (sub_pp_p(&p1, &p2, &res) == true) {
        cout << "A = ";
        writeP(&p1);
        cout << endl;
        cout << "B = ";
        writeP(&p2);
        cout << endl;
        cout << "A - B = ";
        writeP(&res);
        cout << endl;
    }
    else
        cout << "Type overflow. I am sorry\n";
}

// P-3
bool mul_pq_p(const P* p, const Q* q, P* result)
{
    Q temp;

    for(int i = 0; i <= p->degree; ++i)
    {
        if(mul_qq_q(&p->coefficients[i], q, &temp))
        {
            result->coefficients[i] = temp;
        }
        else
        {
            return false;
        }
    }
    result->degree = p->degree;
    return true;
}

void callP3() {
    P p, res;
    Q q;
    cout << "Polinomial P:\n";
    while (readP(&p) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial P:\n";
    cout << "Rational q:\n";
    while (readQ(&q) == false)
        cout << "Something was wrong, my friend. Try again.\nRational q:\n";

    if (mul_pq_p(&p, &q, &res) == true) {
        cout << "P = ";
        writeP(&p);
        cout << endl;
        cout << "q = ";
        writeQ(&q);
        cout << endl;
        cout << "q * P = ";
        writeP(&res);
        cout << endl;
    }
    else
        cout << "Type overflow. I am sorry\n";
}

// P-4
// умножает многочлен на x^k
// возвращает false, если старшая степень многочлена + k > 100, иначе true (выход за границы)
bool mul_pxk_p(const P*p, const int k, P* newP)
{
    if((k + p->degree) > ARR_SIZE)
    {
        return false;
    }

    for(int i = p->degree; i >= 0; --i)
    {
        newP->coefficients[i + k] = p->coefficients[i];
    }

    Q qNul = {{true, 0, { 0 } }, { 0, { 1 } } }; // рациональное равное нулю

    for(int i = k - 1; i >= 0; --i)
    {
        newP->coefficients[i] = qNul;
    }

    newP->degree = p->degree + k;
    return true;
}

void callP4() {
    P p, res;
    int k;
    char ch;
    cout << "Polinomial P:\n";
    while (readP(&p) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial P:\n";
    cout << "Enter positive number k:  ";
    while (true) {  // Вводим защищённо и рекурсивно int
        cin >> k;
        ch = cin.get();
        if (!cin || ch != '\n' || k < 0) {
            cin.clear();
            if (ch != '\n')
                eatline();
            if (k < 0) cout << "I need positive number, try again.\nk = ";
            else cout << "Something wrong in input. Try again.\nk = ";
        }
        else
            break;
    }
    if (mul_pxk_p(&p, k, &res) == true) {
        cout << "P = ";
        writeP(&p);
        cout << endl;
        cout << "k = " << k << endl;
        cout << "P * x^k = ";
        writeP(&res);
        cout << endl;
    }
    else
        cout << "Type overflow. I am sorry\n";
}

// P-5
//возвращает старший коэффициент многочлена
void led_p_q(const P* p, Q* result)
{
    *result = p->coefficients[p->degree];
}

void callP5() {
    P p;
    Q res;
    cout << "Polinomial P:\n";
    while (readP(&p) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial P:\n";
    led_p_q(&p, &res);
    cout << "P = ";
    writeP(&p);
    cout << endl;
    cout << "Leading coefficient of the polynomial P = ";
    writeQ(&res);
    cout << endl;
}

// P-6
// возвращает степень многочлена
int deg_p_n(const P* p)
{
    return p->degree;
}

void callP6() {
    P p;
    cout << "Polinomial P:\n";
    while (readP(&p) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial P:\n";
    cout << "P = ";
    writeP(&p);
    cout << endl;
    cout << "Highest degree of the polynomial = " << deg_p_n(&p) << endl;
}

// P-7
bool fac_p_q(const P *p1, P *resultP, Q *resultQ) {
    if (p1->degree == 0)
    {
        Q one = { { true, 0,{ 1 } },{ 0,{ 1 } } };
        P temp;
        temp = *p1;
        *resultP = temp;
        *resultQ = one;
        return true;
    }
    Z NOD = p1->coefficients[0].numerator;//Переменная для НОДа
    N NOK = p1->coefficients[0].denominator;//Переменная для НОКа
    for (int i = 1; i <= p1->degree; i++) {

        N nNOD, nNumenator,nNewNOD;//Временные переменные для хранения НОДа, числителя и нового НОДа в натуральном виде
        abs_z_n(&NOD, &nNOD);//Переводим целый НОД в натуральный
        abs_z_n(&p1->coefficients[i].numerator, &nNumenator);//Переводим целый числитель в натуральный
        gcf_nn_n(&nNumenator, &nNOD, &nNewNOD);//Находим НОД для старого НОДа и числителя
        trans_n_z(&nNewNOD, &NOD);//Переводим новый НОД в целый вид

        //Находим НОК для старого НОКа и знаменателя
        if (!lcm_nn_n(&NOK, &p1->coefficients[i].denominator, &NOK)) {
            return false;
        }
    }resultP->degree = p1->degree;
    for (int i = 0; i <= p1->degree; i++) {
        //выносим НОД
        if (!div_zz_z(&p1->coefficients[i].numerator, &NOD, &resultP->coefficients[i].numerator)) {
            return false;
        }


        //выносим НОК
        Z temp;
        N temp2;
        if (!div_nn_n(&NOK, &p1->coefficients[i].denominator, &temp2)) {
            return false;
        }
        trans_n_z(&temp2, &temp);
        Z temp3;
        if (!mul_zz_z(&temp, &resultP->coefficients[i].numerator, &temp3)) {
            return false;
        }
        resultP->coefficients[i].numerator = temp3;

        resultP->coefficients[i].denominator.a[0] = 1;
        resultP->coefficients[i].denominator.n=0;

    }
    resultQ->denominator = NOK;
    resultQ->numerator = NOD;

    if(resultP->coefficients[resultP->degree].numerator.b == false)
    {
        resultQ->numerator.b ^= true;
        for(int i = 0; i <= resultP->degree; ++i)
        {
            resultP->coefficients[i].numerator.b ^= true;
        }
    }

    return true;
}

void callP7() {
    P p, pRes;
    Q qRes;
    cout << "Polinomial P:\n";
    while (readP(&p) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial A:\n";

    if (fac_p_q(&p, &pRes, &qRes) == true) {
        writeP(&p);
        cout << " =\n= ";
        writeQ(&qRes);
        cout << "[ ";
        writeP(&pRes);
        cout << "]\n";
    }
    else
        cout << "Type overflaw, most probably. I am sorry\n";
}

// P-8
//Функция умножает два многочлена, результат - многочлен.
bool mul_pp_p(const P* p1, const P* p2, P* result)
{
    bool mulSuccess=true, addSuccess=true;//переменные для проверки успешности выполнения умножения(mulSuccess) и сложения(addSuccess) коэффииентов

    result->degree = p1->degree + p2->degree; //Получаем новую степень результирующего многочлена
    if (result->degree > ARR_SIZE) return false;//Проверка того, что степень не больше размера массива

    Q nullQ = { { true, 0, { 0 } }, { 0, { 1 } } }; //Создаем "нулевую" дробную переменную
    for (int i = 0; i <= result->degree; ++i) { result->coefficients[i] = nullQ; } //Обнуляем результирующий многочлен

    if (isNullP(p1) || isNullP(p2)) //Если первый или второй многочлен (или оба) = 0
        return true; //Возращаем уже обнуленный результирующий многочлен

    Q temp; //Временная переменная для перемножения коэфициентов
    Q temp2;//Временная переменная для корректного сложения
    /*Производим перемножение поэтапно: начиная от нулевой степени первого мн-на на
    нулевую степень второго мн-на, нулевой первого мн-на на первую второго мн-на и так далее.
    Результат получается в ячейке с i+j степенью, так как степени складываются*/
    for (int i = 0; i <= p1->degree; ++i) {
        for (int j = 0; j <= p2->degree; ++j) {
            mulSuccess = mul_qq_q(&p1->coefficients[i], &p2->coefficients[j], &temp); //Записываем во временную переменную результат перемножения коэфициентов
            if (mulSuccess == false) return false; //Если произвошла ошибка в функции перемножения (переполнение и т. п.)

            addSuccess = add_qq_q(&result->coefficients[i + j], &temp, &temp2); //Прибавляется то, что уже лежало в ячейке результирующего многочлена
            if (addSuccess == false) return false; //Если произвошла ошибка в функции сложения
            result->coefficients[i + j] = temp2;
        }
    }
    return true;
}

void callP8() {
    P p1, p2, res;
    cout << "Polinomial A:\n";
    while (readP(&p1) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial A:\n";
    cout << "Polinomial B:\n";
    while (readP(&p2) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial B:\n";

    if (mul_pp_p(&p1, &p2, &res) == true) {
        cout << "A = ";
        writeP(&p1);
        cout << endl;
        cout << "B = ";
        writeP(&p2);
        cout << endl;
        cout << "A * B = ";
        writeP(&res);
        cout << endl;
    }
    else
        cout << "Type overflow. I am sorry\n";
}

// P-9
bool div_pp_p(const P* m, const P* n, P* result) // M(x) / N(x)
{
    if(m->degree < n->degree || isNullP(n))
        return false;

    Q div;
    if(n->degree == 0)
    {
        for(int i = 0; i <= m->degree; ++i)
        {
            div_qq_q(&m->coefficients[i], &n->coefficients[0], &div);
            result->coefficients[i] = div;
        }

        result->degree = m->degree;
        return true;
    }
    Q qNull = { { true, 0, { 0 } }, { 0, { 1 } } };
    P tempResult;
    tempResult.degree = 0;
    tempResult.coefficients[0] = qNull;
    P r;
    r = *m;

    Q rDivN;

    Q ledR;
    Q ledN;

    P tempP;
    P t;
    int deg;

    P newResult;

    P newR;
    P nMulT;

    if(r.degree == 0)
    {
        result->degree = 0;
        div_qq_q(&r.coefficients[0], &n->coefficients[0], &result->coefficients[0]);
        return true;
    }

    while(r.degree >= n->degree && r.degree != 0)
    {
        led_p_q(&r, &ledR);
        led_p_q(n, &ledN);

        div_qq_q(&ledR, &ledN, &rDivN);

        deg = r.degree - n->degree;

        t.degree = 0;
        t.coefficients[0] = rDivN;

        mul_pxk_p(&t, deg, &tempP);
        t = tempP;

        add_pp_p(&tempResult, &t, &newResult);
        tempResult = newResult;

        mul_pp_p(n, &t, &nMulT);
        sub_pp_p(&r, &nMulT, &newR);
        r = newR;
    }

    *result = tempResult;
    return true;
}

void callP9() {
    P p1, p2, res;
    cout << "Polinomial A:\n";
    while (readP(&p1) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial A:\n";
    cout << "Polinomial B:\n";
    while (readP(&p2) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial B:\n";

    if (div_pp_p(&p1, &p2, &res) == true) {
        cout << "A = ";
        writeP(&p1);
        cout << endl;
        cout << "B = ";
        writeP(&p2);
        cout << endl;
        cout << "A / B = ";
        writeP(&res);
        cout << endl;
    }
    else
        cout << "A < B or B == 0 or Type overflaw. I can't keep track of everything\n";
}

// P-10
bool mod_pp_p(const P * a, const P * b, P * result)//Принимает на вход a, b, result и записывает в result остаток от деления a на b
{
    P quotient;//Частное от деления a на b
    bool correct = true;
    correct = correct && div_pp_p(a, b, &quotient);//Вычисляем это частное
    P temp;
    correct = correct && mul_pp_p(&quotient, b, &temp);//Домножаем частное на делитель
    correct = correct && sub_pp_p(a, &temp, result);//Вычитаем из делимого произведения делителя на частное = вычисляем остаток
    return correct;//Возвращяем ошибки, полученные при вызовах вспомогательных функций
}

void callP10() {
    P p1, p2, res;
    cout << "Polinomial A:\n";
    while (readP(&p1) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial A:\n";
    cout << "Polinomial B:\n";
    while (readP(&p2) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial B:\n";

    if (mod_pp_p(&p1, &p2, &res) == true) {
        cout << "A = ";
        writeP(&p1);
        cout << endl;
        cout << "B = ";
        writeP(&p2);
        cout << endl;
        cout << "A % B = ";
        writeP(&res);
        cout << endl;
    }
    else
        cout << "A < B or B == 0 or Type overflaw. I can't keep track of everything\n";
}

// P-11
bool gcf_pp_p(const P* p1, const P* p2, P* result) {
    if (isNullP(p1) || isNullP(p2)) //если один из многочленов(или оба) равен нулю, то функция
        return false; //вовращает false


    P divinded; // делимое
    P divisor; // делитель
    P remainder; // остаток

    if (p1->degree > p2->degree) {
        divinded = *p1;
        divisor = *p2;
    }
    else {
        divinded = *p2;
        divisor = *p1;
    }
    // Алгоритм Евклида
    mod_pp_p(&divinded, &divisor, &remainder); /* нахождение остатка первый раз, чтобы не
                                                 использовать цикл do-while, если при первом же
                                                 делении окажется ноль в остатке*/
    while (isNullP(&remainder) == false) {
        divinded = divisor;
        divisor = remainder;
        mod_pp_p(&divinded, &divisor, &remainder);
    }

    // Запись результата
    if(divisor.degree == 0)// если взаимно простые вывести 1
    {
        result->degree = 0;
        Q one = { { true, 0, { 1 } }, { 0, { 1 } } };
        result->coefficients[0] = one;
        return true;
    }
    P fin;
    Q mn;
    fac_p_q(&divisor, &fin, &mn);
    *result = fin;
    return true;
}

void callP11() {
    P p1, p2, res;
    cout << "Polinomial A:\n";
    while (readP(&p1) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial A:\n";
    cout << "Polinomial B:\n";
    while (readP(&p2) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial B:\n";

    if (gcf_pp_p(&p1, &p2, &res) == true) {
        cout << "A = ";
        writeP(&p1);
        cout << endl;
        cout << "B = ";
        writeP(&p2);
        cout << endl;
        cout << "GCF(A, B) = ";
        writeP(&res);
        cout << endl;
    }
    else
        cout << "A or B == 0\n";
}

// P-12
int orderOfDegree(int degree){
    int N = degree;
    if (N <= 9)
        return 0;
    return 1;
}
int orderOfCoefficient(const Q*coefficients){
    return coefficients->numerator.n;
}

bool der_p_p(const P * p, P * dp) {

    if(p->degree == 0)
    {
        dp->degree = 0;
        Q qNull = { { true, 0, { 0 } }, { 0, { 1 } } };
        dp->coefficients[0] = qNull;
        return true;
    }

    dp->degree = p->degree - 1;

    Q multiplierCoefficient = p->coefficients[1];      // множитель при коэффиценте
    Q multiplierDegree;                                // множитель при степени

    const Q oneQ = { { true, 0 , { 1 }}, { 0, { 1 }}};
    multiplierDegree = oneQ;
    for (int i = 0; i <= dp->degree; i++) {
        if (orderOfDegree(i) + orderOfCoefficient(&multiplierCoefficient) + 1 >= ARR_SIZE)
            return false;

        multiplierCoefficient = p->coefficients[i + 1];
        mul_qq_q(&multiplierDegree, &multiplierCoefficient, &(dp->coefficients[i]));//перемножение коэффицента при текущем члене на степень первоначального многочлена

        add_qq_q(&multiplierDegree, &oneQ, &multiplierDegree); // переход на следющий этап цикла (multiplierDegree);
    }
    return true;
}

void callP12() {
    P p, res;
    cout << "Polinomial P:\n";
    while (readP(&p) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial P:\n";

    if (der_p_p(&p, &res) == true) {
        cout << "P = ";
        writeP(&p);
        cout << endl;
        cout << "P\' = ";
        writeP(&res);
        cout << endl;
    }
    else
        cout << "Type overflaw. I do this not purposely\n";
}

// P-13
void nmr_p_p(const P*p, P*result) {
    P p1; // для производной
    P p2; // для НОДа
    der_p_p(p, &p1);
    gcf_pp_p(p, &p1, &p2);
    div_pp_p(p, &p2, result);
}

void callP13() {
    P p, res;
    cout << "Polinomial P:\n";
    while (readP(&p) == false)
        cout << "Something was wrong, my friend. Try again.\nPolinomial P:\n";

    nmr_p_p(&p, &res);
    cout << "P = ";
    writeP(&p);
    cout << endl;
    cout << "Result = ";
    writeP(&res);
    cout << endl;
}
