// Все модули блока Z (целых чисел)
#pragma once
#include "general.h"

// Z-1
void callZ1();
void abs_z_n(const Z * z, N * result);
// Z-2
void callZ2();
int poz_z_d(const Z* input);
// Z-3
void callZ3();
void mul_zm_z(const Z * input, Z * result);
// Z-4
void callZ4();
void trans_n_z(const N* input, Z* result);
// Z-5
void callZ5();
bool trans_z_n(const Z* input, N* result);
// Z-6
void callZ6();
bool add_zz_z(const Z* z1, const Z* z2, Z* result);
// Z-7
void callZ7();
bool sub_zz_z(const Z * z1, const Z * z2, Z * result);
// Z-8
void callZ8();
bool mul_zz_z(const Z* z1, const Z* z2, Z* result);
// Z-9
void callZ9();
bool div_zz_z(const Z* a, const Z* b, Z* result);
// Z-10
void callZ10();
bool mod_zz_z(const Z * z1, const Z * z2, Z * result);
