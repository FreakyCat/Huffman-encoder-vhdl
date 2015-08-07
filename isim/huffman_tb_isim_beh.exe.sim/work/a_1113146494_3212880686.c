/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *IEEE_P_1242562249;
static const char *ng1 = "Function barrel_shift ended without a return statement";
extern char *IEEE_P_2592010699;
static const char *ng3 = "Function barrel_rotate ended without a return statement";
static const char *ng4 = "D:/Workspace/Xlinx/huffma_8_2/barrel_reg.vhd";

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1830103426_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2770553711_1035706684(char *, char *, char *, char *, int );
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


char *work_a_1113146494_3212880686_sub_182791470_3057020925(char *t1, char *t2, char *t3, unsigned char t4, char *t5)
{
    char t7[40];
    char t8[16];
    char t13[16];
    char t23[16];
    char *t0;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    char *t14;
    int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t20;
    char *t21;
    unsigned char t22;
    int t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    char *t29;
    int t30;
    char *t31;
    int t32;
    char *t33;
    char *t34;
    int t35;
    unsigned int t36;

LAB0:    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 31;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t11 = (0 - 31);
    t12 = (t11 * -1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = (t13 + 0U);
    t14 = (t10 + 0U);
    *((int *)t14) = 5;
    t14 = (t10 + 4U);
    *((int *)t14) = 0;
    t14 = (t10 + 8U);
    *((int *)t14) = -1;
    t15 = (0 - 5);
    t12 = (t15 * -1);
    t12 = (t12 + 1);
    t14 = (t10 + 12U);
    *((unsigned int *)t14) = t12;
    t14 = (t7 + 4U);
    t16 = (t3 != 0);
    if (t16 == 1)
        goto LAB3;

LAB2:    t17 = (t7 + 12U);
    *((char **)t17) = t8;
    t18 = (t7 + 20U);
    *((unsigned char *)t18) = t4;
    t19 = (t7 + 21U);
    t20 = (t5 != 0);
    if (t20 == 1)
        goto LAB5;

LAB4:    t21 = (t7 + 29U);
    *((char **)t21) = t13;
    t22 = (t4 == (unsigned char)3);
    if (t22 != 0)
        goto LAB6;

LAB8:    t11 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t13);
    t9 = ieee_p_1242562249_sub_2770553711_1035706684(IEEE_P_1242562249, t23, t3, t8, t11);
    t10 = (t23 + 12U);
    t12 = *((unsigned int *)t10);
    t12 = (t12 * 1U);
    t0 = xsi_get_transient_memory(t12);
    memcpy(t0, t9, t12);
    t25 = (t23 + 0U);
    t15 = *((int *)t25);
    t26 = (t23 + 4U);
    t24 = *((int *)t26);
    t27 = (t23 + 8U);
    t28 = *((int *)t27);
    t29 = (t2 + 0U);
    t31 = (t29 + 0U);
    *((int *)t31) = t15;
    t31 = (t29 + 4U);
    *((int *)t31) = t24;
    t31 = (t29 + 8U);
    *((int *)t31) = t28;
    t30 = (t24 - t15);
    t36 = (t30 * t28);
    t36 = (t36 + 1);
    t31 = (t29 + 12U);
    *((unsigned int *)t31) = t36;

LAB1:    return t0;
LAB3:    *((char **)t14) = t3;
    goto LAB2;

LAB5:    *((char **)t19) = t5;
    goto LAB4;

LAB6:    t24 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t13);
    t25 = ieee_p_1242562249_sub_1830103426_1035706684(IEEE_P_1242562249, t23, t3, t8, t24);
    t26 = (t23 + 12U);
    t12 = *((unsigned int *)t26);
    t12 = (t12 * 1U);
    t0 = xsi_get_transient_memory(t12);
    memcpy(t0, t25, t12);
    t27 = (t23 + 0U);
    t28 = *((int *)t27);
    t29 = (t23 + 4U);
    t30 = *((int *)t29);
    t31 = (t23 + 8U);
    t32 = *((int *)t31);
    t33 = (t2 + 0U);
    t34 = (t33 + 0U);
    *((int *)t34) = t28;
    t34 = (t33 + 4U);
    *((int *)t34) = t30;
    t34 = (t33 + 8U);
    *((int *)t34) = t32;
    t35 = (t30 - t28);
    t36 = (t35 * t32);
    t36 = (t36 + 1);
    t34 = (t33 + 12U);
    *((unsigned int *)t34) = t36;
    goto LAB1;

LAB7:    xsi_error(ng1);
    t0 = 0;
    goto LAB1;

LAB9:    goto LAB7;

LAB10:    goto LAB7;

}

char *work_a_1113146494_3212880686_sub_4024994328_3057020925(char *t1, char *t2, char *t3, unsigned char t4, char *t5)
{
    char t6[248];
    char t7[40];
    char t8[16];
    char t13[16];
    char t16[16];
    char t21[64];
    char t28[64];
    char t41[16];
    char *t0;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    char *t14;
    int t15;
    char *t17;
    int t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned char t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned char t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    static char *nl0[] = {&&LAB8, &&LAB8, &&LAB8, &&LAB7, &&LAB8, &&LAB8, &&LAB8, &&LAB8, &&LAB8};

LAB0:    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 31;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t11 = (0 - 31);
    t12 = (t11 * -1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = (t13 + 0U);
    t14 = (t10 + 0U);
    *((int *)t14) = 5;
    t14 = (t10 + 4U);
    *((int *)t14) = 0;
    t14 = (t10 + 8U);
    *((int *)t14) = -1;
    t15 = (0 - 5);
    t12 = (t15 * -1);
    t12 = (t12 + 1);
    t14 = (t10 + 12U);
    *((unsigned int *)t14) = t12;
    t14 = (t16 + 0U);
    t17 = (t14 + 0U);
    *((int *)t17) = 63;
    t17 = (t14 + 4U);
    *((int *)t17) = 0;
    t17 = (t14 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 63);
    t12 = (t18 * -1);
    t12 = (t12 + 1);
    t17 = (t14 + 12U);
    *((unsigned int *)t17) = t12;
    t17 = (t6 + 4U);
    t19 = ((IEEE_P_2592010699) + 4024);
    t20 = (t17 + 88U);
    *((char **)t20) = t19;
    t22 = (t17 + 56U);
    *((char **)t22) = t21;
    xsi_type_set_default_value(t19, t21, t16);
    t23 = (t17 + 64U);
    *((char **)t23) = t16;
    t24 = (t17 + 80U);
    *((unsigned int *)t24) = 64U;
    t25 = (t6 + 124U);
    t26 = ((IEEE_P_2592010699) + 4024);
    t27 = (t25 + 88U);
    *((char **)t27) = t26;
    t29 = (t25 + 56U);
    *((char **)t29) = t28;
    xsi_type_set_default_value(t26, t28, t16);
    t30 = (t25 + 64U);
    *((char **)t30) = t16;
    t31 = (t25 + 80U);
    *((unsigned int *)t31) = 64U;
    t32 = (t7 + 4U);
    t33 = (t3 != 0);
    if (t33 == 1)
        goto LAB3;

LAB2:    t34 = (t7 + 12U);
    *((char **)t34) = t8;
    t35 = (t7 + 20U);
    *((unsigned char *)t35) = t4;
    t36 = (t7 + 21U);
    t37 = (t5 != 0);
    if (t37 == 1)
        goto LAB5;

LAB4:    t38 = (t7 + 29U);
    *((char **)t38) = t13;
    t39 = (char *)((nl0) + t4);
    goto **((char **)t39);

LAB3:    *((char **)t32) = t3;
    goto LAB2;

LAB5:    *((char **)t36) = t5;
    goto LAB4;

LAB6:    xsi_error(ng3);
    t0 = 0;

LAB1:    return t0;
LAB7:    t42 = ((IEEE_P_2592010699) + 4024);
    t40 = xsi_base_array_concat(t40, t41, t42, (char)97, t3, t8, (char)97, t3, t8, (char)101);
    t43 = (t17 + 56U);
    t44 = *((char **)t43);
    t43 = (t44 + 0);
    t45 = (t8 + 12U);
    t12 = *((unsigned int *)t45);
    t12 = (t12 * 1U);
    t46 = (t8 + 12U);
    t47 = *((unsigned int *)t46);
    t47 = (t47 * 1U);
    t48 = (t12 + t47);
    memcpy(t43, t40, t48);
    t9 = (t17 + 56U);
    t10 = *((char **)t9);
    t11 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t13);
    t9 = ieee_p_1242562249_sub_1830103426_1035706684(IEEE_P_1242562249, t41, t10, t16, t11);
    t14 = (t25 + 56U);
    t19 = *((char **)t14);
    t14 = (t19 + 0);
    t20 = (t41 + 12U);
    t12 = *((unsigned int *)t20);
    t12 = (t12 * 1U);
    memcpy(t14, t9, t12);
    t9 = (t25 + 56U);
    t10 = *((char **)t9);
    t9 = (t16 + 0U);
    t11 = *((int *)t9);
    t12 = (t11 - 31);
    t47 = (t12 * 1U);
    t48 = (0 + t47);
    t14 = (t10 + t48);
    t15 = (0 - 31);
    t49 = (t15 * -1);
    t49 = (t49 + 1);
    t50 = (1U * t49);
    t0 = xsi_get_transient_memory(t50);
    memcpy(t0, t14, t50);
    t19 = (t2 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 31;
    t20 = (t19 + 4U);
    *((int *)t20) = 0;
    t20 = (t19 + 8U);
    *((int *)t20) = -1;
    t18 = (0 - 31);
    t51 = (t18 * -1);
    t51 = (t51 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t51;
    goto LAB1;

LAB8:    t10 = ((IEEE_P_2592010699) + 4024);
    t9 = xsi_base_array_concat(t9, t41, t10, (char)97, t3, t8, (char)97, t3, t8, (char)101);
    t14 = (t17 + 56U);
    t19 = *((char **)t14);
    t14 = (t19 + 0);
    t20 = (t8 + 12U);
    t12 = *((unsigned int *)t20);
    t12 = (t12 * 1U);
    t22 = (t8 + 12U);
    t47 = *((unsigned int *)t22);
    t47 = (t47 * 1U);
    t48 = (t12 + t47);
    memcpy(t14, t9, t48);
    t9 = (t17 + 56U);
    t10 = *((char **)t9);
    t11 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t13);
    t9 = ieee_p_1242562249_sub_2770553711_1035706684(IEEE_P_1242562249, t41, t10, t16, t11);
    t14 = (t25 + 56U);
    t19 = *((char **)t14);
    t14 = (t19 + 0);
    t20 = (t41 + 12U);
    t12 = *((unsigned int *)t20);
    t12 = (t12 * 1U);
    memcpy(t14, t9, t12);
    t9 = (t25 + 56U);
    t10 = *((char **)t9);
    t9 = (t16 + 0U);
    t11 = *((int *)t9);
    t12 = (t11 - 63);
    t47 = (t12 * 1U);
    t48 = (0 + t47);
    t14 = (t10 + t48);
    t15 = (32 - 63);
    t49 = (t15 * -1);
    t49 = (t49 + 1);
    t50 = (1U * t49);
    t0 = xsi_get_transient_memory(t50);
    memcpy(t0, t14, t50);
    t19 = (t2 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 63;
    t20 = (t19 + 4U);
    *((int *)t20) = 32;
    t20 = (t19 + 8U);
    *((int *)t20) = -1;
    t18 = (32 - 63);
    t51 = (t18 * -1);
    t51 = (t51 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t51;
    goto LAB1;

LAB9:    goto LAB6;

LAB10:    goto LAB6;

}

static void work_a_1113146494_3212880686_p_0(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(86, ng4);
    t1 = (t0 + 7280);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(87, ng4);
    t1 = (t0 + 7344);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(88, ng4);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB5;

LAB6:    t6 = (unsigned char)0;

LAB7:    if (t6 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7168);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(89, ng4);
    t3 = (t0 + 5032U);
    t4 = *((char **)t3);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(92, ng4);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5192U);
    t3 = *((char **)t1);
    t6 = *((unsigned char *)t3);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t1 = work_a_1113146494_3212880686_sub_4024994328_3057020925(t0, t12, t2, t6, t4);
    t5 = (t12 + 12U);
    t17 = *((unsigned int *)t5);
    t17 = (t17 * 1U);
    t7 = (32U != t17);
    if (t7 == 1)
        goto LAB13;

LAB14:    t13 = (t0 + 7408);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t1, 32U);
    xsi_driver_first_trans_fast(t13);

LAB9:    goto LAB3;

LAB5:    t1 = (t0 + 1312U);
    t9 = xsi_signal_has_event(t1);
    t6 = t9;
    goto LAB7;

LAB8:    xsi_set_current_line(90, ng4);
    t3 = (t0 + 2472U);
    t5 = *((char **)t3);
    t3 = (t0 + 5192U);
    t13 = *((char **)t3);
    t14 = *((unsigned char *)t13);
    t3 = (t0 + 1672U);
    t15 = *((char **)t3);
    t3 = work_a_1113146494_3212880686_sub_182791470_3057020925(t0, t12, t5, t14, t15);
    t16 = (t12 + 12U);
    t17 = *((unsigned int *)t16);
    t17 = (t17 * 1U);
    t18 = (32U != t17);
    if (t18 == 1)
        goto LAB11;

LAB12:    t19 = (t0 + 7408);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t3, 32U);
    xsi_driver_first_trans_fast(t19);
    goto LAB9;

LAB11:    xsi_size_not_matching(32U, t17, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(32U, t17, 0);
    goto LAB14;

}

static void work_a_1113146494_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(100, ng4);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 7184);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(101, ng4);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t9, (unsigned char)2);
    t7 = (t0 + 7472);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t10;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(102, ng4);
    t2 = (t0 + 3752U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t2 = (t0 + 7536);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(103, ng4);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7600);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 32U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(104, ng4);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 7664);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 32U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(105, ng4);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t2 = (t0 + 7728);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(106, ng4);
    t2 = (t0 + 4072U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t2 = (t0 + 7792);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(107, ng4);
    t2 = (t0 + 4232U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t2 = (t0 + 7856);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(108, ng4);
    t2 = (t0 + 4392U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t2 = (t0 + 7920);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(109, ng4);
    t2 = (t0 + 4552U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t2 = (t0 + 7984);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB5:    t2 = (t0 + 1312U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

}

static void work_a_1113146494_3212880686_p_2(char *t0)
{
    char t17[16];
    char t18[16];
    char t19[16];
    char t24[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;

LAB0:    xsi_set_current_line(117, ng4);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(136, ng4);
    t2 = (t0 + 4712U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(140, ng4);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)2, 16U);
    t7 = (t0 + 8304);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 16U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(141, ng4);
    t2 = (t0 + 8368);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB19:    t2 = (t0 + 7200);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(119, ng4);
    t7 = (t0 + 2152U);
    t8 = *((char **)t7);
    t9 = (31 - 31);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t7 = (t8 + t11);
    t12 = (t0 + 8048);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(120, ng4);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t9 = (31 - 15);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t2 = (t3 + t11);
    t7 = (t0 + 8112);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(121, ng4);
    t2 = (t0 + 3752U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)2);
    if (t4 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(126, ng4);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t9 = (31 - 31);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t2 = (t3 + t11);
    t7 = (t18 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 31;
    t8 = (t7 + 4U);
    *((int *)t8) = 16;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t20 = (16 - 31);
    t21 = (t20 * -1);
    t21 = (t21 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t21;
    t8 = (t0 + 2952U);
    t12 = *((char **)t8);
    t8 = (t0 + 11548U);
    t13 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t17, t2, t18, t12, t8);
    t14 = (t17 + 12U);
    t21 = *((unsigned int *)t14);
    t22 = (1U * t21);
    t1 = (16U != t22);
    if (t1 == 1)
        goto LAB13;

LAB14:    t15 = (t0 + 8048);
    t16 = (t15 + 56U);
    t25 = *((char **)t16);
    t26 = (t25 + 56U);
    t29 = *((char **)t26);
    memcpy(t29, t13, 16U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(127, ng4);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t9 = (31 - 15);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t2 = (t3 + t11);
    t7 = (t0 + 8112);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(128, ng4);
    t2 = (t0 + 8176);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);

LAB9:    xsi_set_current_line(130, ng4);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(133, ng4);
    t2 = (t0 + 3432U);
    t3 = *((char **)t2);
    t2 = (t0 + 8240);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 16U);
    xsi_driver_first_trans_fast(t2);

LAB16:    goto LAB3;

LAB5:    t2 = (t0 + 1312U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(122, ng4);
    t2 = (t0 + 2152U);
    t7 = *((char **)t2);
    t9 = (31 - 31);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t2 = (t7 + t11);
    t8 = (t19 + 0U);
    t12 = (t8 + 0U);
    *((int *)t12) = 31;
    t12 = (t8 + 4U);
    *((int *)t12) = 16;
    t12 = (t8 + 8U);
    *((int *)t12) = -1;
    t20 = (16 - 31);
    t21 = (t20 * -1);
    t21 = (t21 + 1);
    t12 = (t8 + 12U);
    *((unsigned int *)t12) = t21;
    t12 = (t0 + 2952U);
    t13 = *((char **)t12);
    t12 = (t0 + 11548U);
    t14 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t18, t2, t19, t13, t12);
    t15 = (t0 + 2152U);
    t16 = *((char **)t15);
    t21 = (31 - 15);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t15 = (t16 + t23);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 15;
    t26 = (t25 + 4U);
    *((int *)t26) = 0;
    t26 = (t25 + 8U);
    *((int *)t26) = -1;
    t27 = (0 - 15);
    t28 = (t27 * -1);
    t28 = (t28 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t28;
    t26 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t17, t14, t18, t15, t24);
    t29 = (t17 + 12U);
    t28 = *((unsigned int *)t29);
    t30 = (1U * t28);
    t5 = (16U != t30);
    if (t5 == 1)
        goto LAB11;

LAB12:    t31 = (t0 + 8112);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t26, 16U);
    xsi_driver_first_trans_fast(t31);
    xsi_set_current_line(123, ng4);
    t2 = (t0 + 8176);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB11:    xsi_size_not_matching(16U, t30, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(16U, t22, 0);
    goto LAB14;

LAB15:    xsi_set_current_line(131, ng4);
    t2 = (t0 + 2632U);
    t7 = *((char **)t2);
    t2 = (t0 + 8240);
    t8 = (t2 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t7, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB16;

LAB18:    xsi_set_current_line(137, ng4);
    t2 = (t0 + 3432U);
    t7 = *((char **)t2);
    t2 = (t0 + 8304);
    t8 = (t2 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t7, 16U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(138, ng4);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t2 = (t0 + 8368);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB19;

}


extern void work_a_1113146494_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1113146494_3212880686_p_0,(void *)work_a_1113146494_3212880686_p_1,(void *)work_a_1113146494_3212880686_p_2};
	static char *se[] = {(void *)work_a_1113146494_3212880686_sub_182791470_3057020925,(void *)work_a_1113146494_3212880686_sub_4024994328_3057020925};
	xsi_register_didat("work_a_1113146494_3212880686", "isim/huffman_tb_isim_beh.exe.sim/work/a_1113146494_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
