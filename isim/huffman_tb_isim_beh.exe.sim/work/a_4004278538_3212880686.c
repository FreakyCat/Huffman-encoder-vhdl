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
static const char *ng0 = "D:/Workspace/Xlinx/huffma_8_2/counter_gen.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_3620187407;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_4004278538_3212880686_p_0(char *t0)
{
    char t5[16];
    char t16[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
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
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;

LAB0:    xsi_set_current_line(45, ng0);
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
LAB3:    t1 = (t0 + 3800);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t5, 0, 8);
    t6 = (t0 + 3896);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(48, ng0);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t13 = *((unsigned char *)t7);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t1 = (t0 + 992U);
    t12 = xsi_signal_has_event(t1);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(49, ng0);
    t6 = (t0 + 1832U);
    t8 = *((char **)t6);
    t6 = (t0 + 6016U);
    t9 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t5, 63, 8);
    t15 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t8, t6, t9, t5);
    if (t15 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6016U);
    t6 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t16, 1, 8);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t5, t2, t1, t6, t16);
    t8 = (t5 + 12U);
    t22 = *((unsigned int *)t8);
    t23 = (1U * t22);
    t3 = (8U != t23);
    if (t3 == 1)
        goto LAB16;

LAB17:    t9 = (t0 + 3896);
    t10 = (t9 + 56U);
    t17 = *((char **)t10);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 3960);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(50, ng0);
    t10 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t16, 0, 8);
    t17 = (t0 + 3896);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 8U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3960);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB14;

LAB16:    xsi_size_not_matching(8U, t23, 0);
    goto LAB17;

}

static void work_a_4004278538_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(59, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4024);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3816);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4004278538_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4004278538_3212880686_p_0,(void *)work_a_4004278538_3212880686_p_1};
	xsi_register_didat("work_a_4004278538_3212880686", "isim/huffman_tb_isim_beh.exe.sim/work/a_4004278538_3212880686.didat");
	xsi_register_executes(pe);
}
