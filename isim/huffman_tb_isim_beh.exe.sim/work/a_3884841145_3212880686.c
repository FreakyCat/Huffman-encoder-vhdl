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
static const char *ng0 = "D:/Workspace/Xlinx/huffma_8_2/shift_component.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_3469716711_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_3472088553_1035706684(char *, char *, char *, char *, char *);


static void work_a_3884841145_3212880686_p_0(char *t0)
{
    char t5[16];
    char t7[16];
    char *t1;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 8067);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t6 = ((IEEE_P_2592010699) + 4024);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (1 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 7908U);
    t3 = xsi_base_array_concat(t3, t5, t6, (char)97, t1, t7, (char)97, t4, t9, (char)101);
    t11 = (2U + 4U);
    t12 = (6U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 5040);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 6U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 4928);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(6U, t11, 0);
    goto LAB6;

}

static void work_a_3884841145_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5104);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 6U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 4944);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3884841145_3212880686_p_2(char *t0)
{
    char t16[16];
    char t24[16];
    char t29[16];
    char t31[16];
    char t36[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    int t27;
    unsigned char t28;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t37;
    char *t38;
    int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned char t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1312U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5296);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 5424);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5488);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t1);
    t1 = (t0 + 4960);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 8069);
    t6 = (t0 + 5168);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 6U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 8075);
    t5 = (t0 + 5232);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5296);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1992U);
    t7 = *((char **)t2);
    t2 = (t0 + 7940U);
    t8 = (t0 + 8081);
    t10 = (t16 + 0U);
    t17 = (t10 + 0U);
    *((int *)t17) = 0;
    t17 = (t10 + 4U);
    *((int *)t17) = 5;
    t17 = (t10 + 8U);
    *((int *)t17) = 1;
    t18 = (5 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t17 = (t10 + 12U);
    *((unsigned int *)t17) = t19;
    t20 = ieee_p_1242562249_sub_3469716711_1035706684(IEEE_P_1242562249, t7, t2, t8, t16);
    if (t20 == 1)
        goto LAB16;

LAB17:    t15 = (unsigned char)0;

LAB18:    if (t15 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8004U);
    t5 = (t0 + 2152U);
    t6 = *((char **)t5);
    t5 = (t0 + 7956U);
    t7 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t16, t2, t1, t6, t5);
    t8 = (t16 + 12U);
    t19 = *((unsigned int *)t8);
    t42 = (1U * t19);
    t3 = (6U != t42);
    if (t3 == 1)
        goto LAB23;

LAB24:    t9 = (t0 + 5232);
    t10 = (t9 + 56U);
    t17 = *((char **)t10);
    t21 = (t17 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t7, 6U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 8105);
    t5 = (t24 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 0;
    t6 = (t5 + 4U);
    *((int *)t6) = 5;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t18 = (5 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t19;
    t6 = (t0 + 1992U);
    t7 = *((char **)t6);
    t6 = (t0 + 7940U);
    t8 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t16, t1, t24, t7, t6);
    t9 = (t16 + 12U);
    t19 = *((unsigned int *)t9);
    t42 = (1U * t19);
    t3 = (6U != t42);
    if (t3 == 1)
        goto LAB25;

LAB26:    t10 = (t0 + 5168);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 6U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 5360);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(63, ng0);
    t26 = (t0 + 2632U);
    t30 = *((char **)t26);
    t26 = (t0 + 8004U);
    t32 = (t0 + 2152U);
    t33 = *((char **)t32);
    t32 = (t0 + 7956U);
    t34 = (t0 + 8093);
    t37 = (t36 + 0U);
    t38 = (t37 + 0U);
    *((int *)t38) = 0;
    t38 = (t37 + 4U);
    *((int *)t38) = 5;
    t38 = (t37 + 8U);
    *((int *)t38) = 1;
    t39 = (5 - 0);
    t19 = (t39 * 1);
    t19 = (t19 + 1);
    t38 = (t37 + 12U);
    *((unsigned int *)t38) = t19;
    t38 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t31, t33, t32, t34, t36);
    t40 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t29, t30, t26, t38, t31);
    t41 = (t29 + 12U);
    t19 = *((unsigned int *)t41);
    t42 = (1U * t19);
    t43 = (6U != t42);
    if (t43 == 1)
        goto LAB19;

LAB20:    t44 = (t0 + 5232);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    memcpy(t48, t40, 6U);
    xsi_driver_first_trans_fast(t44);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 8099);
    t5 = (t24 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 0;
    t6 = (t5 + 4U);
    *((int *)t6) = 5;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t18 = (5 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t19;
    t6 = (t0 + 1992U);
    t7 = *((char **)t6);
    t6 = (t0 + 7940U);
    t8 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t16, t1, t24, t7, t6);
    t9 = (t16 + 12U);
    t19 = *((unsigned int *)t9);
    t42 = (1U * t19);
    t3 = (6U != t42);
    if (t3 == 1)
        goto LAB21;

LAB22:    t10 = (t0 + 5168);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 6U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5360);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

LAB16:    t17 = (t0 + 1992U);
    t21 = *((char **)t17);
    t17 = (t0 + 7940U);
    t22 = (t0 + 8087);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 0;
    t26 = (t25 + 4U);
    *((int *)t26) = 5;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t27 = (5 - 0);
    t19 = (t27 * 1);
    t19 = (t19 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t19;
    t28 = ieee_p_1242562249_sub_3472088553_1035706684(IEEE_P_1242562249, t21, t17, t22, t24);
    t15 = t28;
    goto LAB18;

LAB19:    xsi_size_not_matching(6U, t42, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(6U, t42, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(6U, t42, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(6U, t42, 0);
    goto LAB26;

}


extern void work_a_3884841145_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3884841145_3212880686_p_0,(void *)work_a_3884841145_3212880686_p_1,(void *)work_a_3884841145_3212880686_p_2};
	xsi_register_didat("work_a_3884841145_3212880686", "isim/huffman_tb_isim_beh.exe.sim/work/a_3884841145_3212880686.didat");
	xsi_register_executes(pe);
}
