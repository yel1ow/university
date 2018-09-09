// Все модули блока P (полиномы с рациональными коэффициентами)
#pragma once
#include "general.h"
// P-1
void callP1();
bool add_pp_p(const P * p1, const P * p2, P * pResult);
// P-2
void callP2();
bool sub_pp_p(const P * p1, const P * p2, P * pResult);
// P-3
void callP3();
bool mul_pq_p(const P* p, const Q* q, P* result);
// P-4
void callP4();
bool mul_pxk_p(const P*p, const int k, P* newP);
// P-5
void callP5();
void led_p_q(const P* p, Q* result);
// P-6
void callP6();
int deg_p_n(const P* p);
// P-7
void callP7();
bool fac_p_q(const P *p, P *resultP, Q *resultQ);
// P-8
void callP8();
bool mul_pp_p(const P* p1, const P* p2, P* result);
// P-9
void callP9();
bool div_pp_p(const P* m, const P* n, P* result);
// P-10
void callP10();
bool mod_pp_p(const P * a, const P * b, P * result);
// P-11
void callP11();
bool gcf_pp_p(const P* p1, const P* p2, P* result);
// P-12
void callP12();
bool der_p_p(const P * p, P * dp);
// P-13
void callP13();
void nmr_p_p(const P * p, P * result);

