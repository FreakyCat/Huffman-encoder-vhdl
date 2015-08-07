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
static const char *ng0 = "D:/Workspace/Xlinx/huffma_8_2/counter.vhd";
extern char *IEEE_P_0774719531;

unsigned char ieee_p_0774719531_sub_2698824431_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);


static void work_a_4000226436_3212880686_p_0(char *t0)
{
    char t15[16];
    char t26[16];
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
    char *t16;
    int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t27;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3400);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 5352);
    t6 = (t0 + 3496);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(50, ng0);
    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t1 = (t0 + 992U);
    t12 = xsi_signal_has_event(t1);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(51, ng0);
    t5 = (t0 + 1672U);
    t7 = *((char **)t5);
    t5 = (t0 + 5320U);
    t8 = (t0 + 5357);
    t10 = (t15 + 0U);
    t16 = (t10 + 0U);
    *((int *)t16) = 0;
    t16 = (t10 + 4U);
    *((int *)t16) = 4;
    t16 = (t10 + 8U);
    *((int *)t16) = 1;
    t17 = (4 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t10 + 12U);
    *((unsigned int *)t16) = t18;
    t19 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t7, t5, t8, t15);
    if (t19 != 0)
        goto LAB13;

LAB15:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5320U);
    t5 = (t0 + 5367);
    t7 = (t15 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t17 = (4 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t18;
    t3 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t2, t1, t5, t15);
    if (t3 != 0)
        goto LAB16;

LAB17:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5320U);
    t5 = (t0 + 5377);
    t7 = (t26 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t17 = (4 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t18;
    t8 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t15, t2, t1, t5, t26);
    t9 = (t15 + 12U);
    t18 = *((unsigned int *)t9);
    t27 = (1U * t18);
    t3 = (5U != t27);
    if (t3 == 1)
        goto LAB18;

LAB19:    t10 = (t0 + 3496);
    t16 = (t10 + 56U);
    t20 = *((char **)t16);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 5U);
    xsi_driver_first_trans_fast(t10);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(52, ng0);
    t16 = (t0 + 5362);
    t21 = (t0 + 3496);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t16, 5U);
    xsi_driver_first_trans_fast(t21);
    goto LAB14;

LAB16:    xsi_set_current_line(54, ng0);
    t8 = (t0 + 5372);
    t10 = (t0 + 3496);
    t16 = (t10 + 56U);
    t20 = *((char **)t16);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 5U);
    xsi_driver_first_trans_fast(t10);
    goto LAB14;

LAB18:    xsi_size_not_matching(5U, t27, 0);
    goto LAB19;

}

static void work_a_4000226436_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3560);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3416);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4000226436_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4000226436_3212880686_p_0,(void *)work_a_4000226436_3212880686_p_1};
	xsi_register_didat("work_a_4000226436_3212880686", "isim/huffman_tb_isim_beh.exe.sim/work/a_4000226436_3212880686.didat");
	xsi_register_executes(pe);
}
