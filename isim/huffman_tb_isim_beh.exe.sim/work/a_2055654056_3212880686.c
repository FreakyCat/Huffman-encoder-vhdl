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
static const char *ng0 = "D:/Workspace/Xlinx/huffma_8_2/dc_rom.vhd";



static void work_a_2055654056_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    int t46;
    char *t47;
    int t49;
    char *t50;
    int t52;
    char *t53;
    int t55;
    char *t56;
    int t58;
    char *t59;
    int t61;
    char *t62;
    int t64;
    char *t65;
    int t67;
    char *t68;
    int t70;
    char *t71;
    int t73;
    char *t74;
    int t76;
    char *t77;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;

LAB0:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 3360);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 12U);
    xsi_driver_first_trans_fast_port(t2);
    t2 = (t0 + 3152);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t4 = (t0 + 5226);
    t10 = xsi_mem_cmp(t4, t8, 5U);
    if (t10 == 1)
        goto LAB9;

LAB33:    t11 = (t0 + 5231);
    t13 = xsi_mem_cmp(t11, t8, 5U);
    if (t13 == 1)
        goto LAB10;

LAB34:    t14 = (t0 + 5236);
    t16 = xsi_mem_cmp(t14, t8, 5U);
    if (t16 == 1)
        goto LAB11;

LAB35:    t17 = (t0 + 5241);
    t19 = xsi_mem_cmp(t17, t8, 5U);
    if (t19 == 1)
        goto LAB12;

LAB36:    t20 = (t0 + 5246);
    t22 = xsi_mem_cmp(t20, t8, 5U);
    if (t22 == 1)
        goto LAB13;

LAB37:    t23 = (t0 + 5251);
    t25 = xsi_mem_cmp(t23, t8, 5U);
    if (t25 == 1)
        goto LAB14;

LAB38:    t26 = (t0 + 5256);
    t28 = xsi_mem_cmp(t26, t8, 5U);
    if (t28 == 1)
        goto LAB15;

LAB39:    t29 = (t0 + 5261);
    t31 = xsi_mem_cmp(t29, t8, 5U);
    if (t31 == 1)
        goto LAB16;

LAB40:    t32 = (t0 + 5266);
    t34 = xsi_mem_cmp(t32, t8, 5U);
    if (t34 == 1)
        goto LAB17;

LAB41:    t35 = (t0 + 5271);
    t37 = xsi_mem_cmp(t35, t8, 5U);
    if (t37 == 1)
        goto LAB18;

LAB42:    t38 = (t0 + 5276);
    t40 = xsi_mem_cmp(t38, t8, 5U);
    if (t40 == 1)
        goto LAB19;

LAB43:    t41 = (t0 + 5281);
    t43 = xsi_mem_cmp(t41, t8, 5U);
    if (t43 == 1)
        goto LAB20;

LAB44:    t44 = (t0 + 5286);
    t46 = xsi_mem_cmp(t44, t8, 5U);
    if (t46 == 1)
        goto LAB21;

LAB45:    t47 = (t0 + 5291);
    t49 = xsi_mem_cmp(t47, t8, 5U);
    if (t49 == 1)
        goto LAB22;

LAB46:    t50 = (t0 + 5296);
    t52 = xsi_mem_cmp(t50, t8, 5U);
    if (t52 == 1)
        goto LAB23;

LAB47:    t53 = (t0 + 5301);
    t55 = xsi_mem_cmp(t53, t8, 5U);
    if (t55 == 1)
        goto LAB24;

LAB48:    t56 = (t0 + 5306);
    t58 = xsi_mem_cmp(t56, t8, 5U);
    if (t58 == 1)
        goto LAB25;

LAB49:    t59 = (t0 + 5311);
    t61 = xsi_mem_cmp(t59, t8, 5U);
    if (t61 == 1)
        goto LAB26;

LAB50:    t62 = (t0 + 5316);
    t64 = xsi_mem_cmp(t62, t8, 5U);
    if (t64 == 1)
        goto LAB27;

LAB51:    t65 = (t0 + 5321);
    t67 = xsi_mem_cmp(t65, t8, 5U);
    if (t67 == 1)
        goto LAB28;

LAB52:    t68 = (t0 + 5326);
    t70 = xsi_mem_cmp(t68, t8, 5U);
    if (t70 == 1)
        goto LAB29;

LAB53:    t71 = (t0 + 5331);
    t73 = xsi_mem_cmp(t71, t8, 5U);
    if (t73 == 1)
        goto LAB30;

LAB54:    t74 = (t0 + 5336);
    t76 = xsi_mem_cmp(t74, t8, 5U);
    if (t76 == 1)
        goto LAB31;

LAB55:
LAB32:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 5617);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);

LAB8:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3296);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(46, ng0);
    t77 = (t0 + 5341);
    t79 = (t0 + 3232);
    t80 = (t79 + 56U);
    t81 = *((char **)t80);
    t82 = (t81 + 56U);
    t83 = *((char **)t82);
    memcpy(t83, t77, 12U);
    xsi_driver_first_trans_fast(t79);
    goto LAB8;

LAB10:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 5353);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB11:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 5365);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB12:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 5377);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB13:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 5389);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB14:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 5401);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB15:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 5413);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB16:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 5425);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB17:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 5437);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB18:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 5449);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB19:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 5461);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB20:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 5473);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB21:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 5485);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB22:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 5497);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB23:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 5509);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB24:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 5521);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB25:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 5533);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB26:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 5545);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB27:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 5557);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB28:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 5569);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB29:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 5581);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB30:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 5593);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB31:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 5605);
    t5 = (t0 + 3232);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB56:;
}


extern void work_a_2055654056_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2055654056_3212880686_p_0};
	xsi_register_didat("work_a_2055654056_3212880686", "isim/huffman_tb_isim_beh.exe.sim/work/a_2055654056_3212880686.didat");
	xsi_register_executes(pe);
}
