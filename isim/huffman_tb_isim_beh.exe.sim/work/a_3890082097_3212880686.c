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
static const char *ng0 = "D:/Workspace/Xlinx/huffma_8_2/match_dc.vhd";
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_337943598_1035706684(char *, char *, char *, char *, char *);


static void work_a_3890082097_3212880686_p_0(char *t0)
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
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned char t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;

LAB0:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t2 = (t0 + 3936);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t2 = (t0 + 4000);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 4U);
    xsi_driver_first_trans_fast(t2);
    t2 = (t0 + 3840);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1152U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(47, ng0);
    t7 = (t0 + 1352U);
    t12 = *((char **)t7);
    t7 = (t0 + 6020U);
    t13 = (t0 + 1512U);
    t14 = *((char **)t13);
    t13 = (t0 + 6036U);
    t15 = ieee_p_1242562249_sub_337943598_1035706684(IEEE_P_1242562249, t12, t7, t14, t13);
    if (t15 == 1)
        goto LAB14;

LAB15:    t11 = (unsigned char)0;

LAB16:    if (t11 != 0)
        goto LAB11;

LAB13:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6020U);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 6036U);
    t4 = ieee_p_1242562249_sub_337943598_1035706684(IEEE_P_1242562249, t3, t2, t8, t7);
    if (t4 == 1)
        goto LAB34;

LAB35:    t1 = (unsigned char)0;

LAB36:    if (t1 != 0)
        goto LAB32;

LAB33:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6020U);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 6036U);
    t4 = ieee_p_1242562249_sub_337943598_1035706684(IEEE_P_1242562249, t3, t2, t8, t7);
    if (t4 == 1)
        goto LAB54;

LAB55:    t1 = (unsigned char)0;

LAB56:    if (t1 != 0)
        goto LAB52;

LAB53:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6020U);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 6036U);
    t4 = ieee_p_1242562249_sub_337943598_1035706684(IEEE_P_1242562249, t3, t2, t8, t7);
    if (t4 == 1)
        goto LAB74;

LAB75:    t1 = (unsigned char)0;

LAB76:    if (t1 != 0)
        goto LAB72;

LAB73:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6020U);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 6036U);
    t4 = ieee_p_1242562249_sub_337943598_1035706684(IEEE_P_1242562249, t3, t2, t8, t7);
    if (t4 == 1)
        goto LAB94;

LAB95:    t1 = (unsigned char)0;

LAB96:    if (t1 != 0)
        goto LAB92;

LAB93:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6020U);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 6036U);
    t4 = ieee_p_1242562249_sub_337943598_1035706684(IEEE_P_1242562249, t3, t2, t8, t7);
    if (t4 == 1)
        goto LAB114;

LAB115:    t1 = (unsigned char)0;

LAB116:    if (t1 != 0)
        goto LAB112;

LAB113:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6020U);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 6036U);
    t4 = ieee_p_1242562249_sub_337943598_1035706684(IEEE_P_1242562249, t3, t2, t8, t7);
    if (t4 == 1)
        goto LAB134;

LAB135:    t1 = (unsigned char)0;

LAB136:    if (t1 != 0)
        goto LAB132;

LAB133:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6020U);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 6036U);
    t4 = ieee_p_1242562249_sub_337943598_1035706684(IEEE_P_1242562249, t3, t2, t8, t7);
    if (t4 == 1)
        goto LAB154;

LAB155:    t1 = (unsigned char)0;

LAB156:    if (t1 != 0)
        goto LAB152;

LAB153:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6020U);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 6036U);
    t4 = ieee_p_1242562249_sub_337943598_1035706684(IEEE_P_1242562249, t3, t2, t8, t7);
    if (t4 == 1)
        goto LAB174;

LAB175:    t1 = (unsigned char)0;

LAB176:    if (t1 != 0)
        goto LAB172;

LAB173:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6020U);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 6036U);
    t4 = ieee_p_1242562249_sub_337943598_1035706684(IEEE_P_1242562249, t3, t2, t8, t7);
    if (t4 == 1)
        goto LAB194;

LAB195:    t1 = (unsigned char)0;

LAB196:    if (t1 != 0)
        goto LAB192;

LAB193:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6020U);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 6036U);
    t4 = ieee_p_1242562249_sub_337943598_1035706684(IEEE_P_1242562249, t3, t2, t8, t7);
    if (t4 == 1)
        goto LAB214;

LAB215:    t1 = (unsigned char)0;

LAB216:    if (t1 != 0)
        goto LAB212;

LAB213:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 6450);
    t7 = (t0 + 2288U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    memcpy(t7, t2, 4U);
    t12 = (t0 + 2232U);
    xsi_variable_act(t12);

LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(48, ng0);
    t31 = (t0 + 6166);
    t33 = (t0 + 2288U);
    t34 = *((char **)t33);
    t33 = (t34 + 0);
    memcpy(t33, t31, 4U);
    t35 = (t0 + 2232U);
    xsi_variable_act(t35);
    goto LAB12;

LAB14:    t17 = (t0 + 1512U);
    t18 = *((char **)t17);
    t17 = (t0 + 6142);
    t20 = 1;
    if (12U == 12U)
        goto LAB20;

LAB21:    t20 = 0;

LAB22:    if (t20 == 1)
        goto LAB17;

LAB18:    t24 = (t0 + 1512U);
    t25 = *((char **)t24);
    t24 = (t0 + 6154);
    t27 = 1;
    if (12U == 12U)
        goto LAB26;

LAB27:    t27 = 0;

LAB28:    t16 = t27;

LAB19:    t11 = t16;
    goto LAB16;

LAB17:    t16 = (unsigned char)1;
    goto LAB19;

LAB20:    t21 = 0;

LAB23:    if (t21 < 12U)
        goto LAB24;
    else
        goto LAB22;

LAB24:    t22 = (t18 + t21);
    t23 = (t17 + t21);
    if (*((unsigned char *)t22) != *((unsigned char *)t23))
        goto LAB21;

LAB25:    t21 = (t21 + 1);
    goto LAB23;

LAB26:    t28 = 0;

LAB29:    if (t28 < 12U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t29 = (t25 + t28);
    t30 = (t24 + t28);
    if (*((unsigned char *)t29) != *((unsigned char *)t30))
        goto LAB27;

LAB31:    t28 = (t28 + 1);
    goto LAB29;

LAB32:    xsi_set_current_line(50, ng0);
    t26 = (t0 + 6194);
    t30 = (t0 + 2288U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    memcpy(t30, t26, 4U);
    t32 = (t0 + 2232U);
    xsi_variable_act(t32);
    goto LAB12;

LAB34:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t12 = (t0 + 6170);
    t6 = 1;
    if (12U == 12U)
        goto LAB40;

LAB41:    t6 = 0;

LAB42:    if (t6 == 1)
        goto LAB37;

LAB38:    t19 = (t0 + 1512U);
    t22 = *((char **)t19);
    t19 = (t0 + 6182);
    t9 = 1;
    if (12U == 12U)
        goto LAB46;

LAB47:    t9 = 0;

LAB48:    t5 = t9;

LAB39:    t1 = t5;
    goto LAB36;

LAB37:    t5 = (unsigned char)1;
    goto LAB39;

LAB40:    t21 = 0;

LAB43:    if (t21 < 12U)
        goto LAB44;
    else
        goto LAB42;

LAB44:    t17 = (t13 + t21);
    t18 = (t12 + t21);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB41;

LAB45:    t21 = (t21 + 1);
    goto LAB43;

LAB46:    t28 = 0;

LAB49:    if (t28 < 12U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t24 = (t22 + t28);
    t25 = (t19 + t28);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB47;

LAB51:    t28 = (t28 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(52, ng0);
    t26 = (t0 + 6222);
    t30 = (t0 + 2288U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    memcpy(t30, t26, 4U);
    t32 = (t0 + 2232U);
    xsi_variable_act(t32);
    goto LAB12;

LAB54:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t12 = (t0 + 6198);
    t6 = 1;
    if (12U == 12U)
        goto LAB60;

LAB61:    t6 = 0;

LAB62:    if (t6 == 1)
        goto LAB57;

LAB58:    t19 = (t0 + 1512U);
    t22 = *((char **)t19);
    t19 = (t0 + 6210);
    t9 = 1;
    if (12U == 12U)
        goto LAB66;

LAB67:    t9 = 0;

LAB68:    t5 = t9;

LAB59:    t1 = t5;
    goto LAB56;

LAB57:    t5 = (unsigned char)1;
    goto LAB59;

LAB60:    t21 = 0;

LAB63:    if (t21 < 12U)
        goto LAB64;
    else
        goto LAB62;

LAB64:    t17 = (t13 + t21);
    t18 = (t12 + t21);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB61;

LAB65:    t21 = (t21 + 1);
    goto LAB63;

LAB66:    t28 = 0;

LAB69:    if (t28 < 12U)
        goto LAB70;
    else
        goto LAB68;

LAB70:    t24 = (t22 + t28);
    t25 = (t19 + t28);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB67;

LAB71:    t28 = (t28 + 1);
    goto LAB69;

LAB72:    xsi_set_current_line(54, ng0);
    t26 = (t0 + 6250);
    t30 = (t0 + 2288U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    memcpy(t30, t26, 4U);
    t32 = (t0 + 2232U);
    xsi_variable_act(t32);
    goto LAB12;

LAB74:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t12 = (t0 + 6226);
    t6 = 1;
    if (12U == 12U)
        goto LAB80;

LAB81:    t6 = 0;

LAB82:    if (t6 == 1)
        goto LAB77;

LAB78:    t19 = (t0 + 1512U);
    t22 = *((char **)t19);
    t19 = (t0 + 6238);
    t9 = 1;
    if (12U == 12U)
        goto LAB86;

LAB87:    t9 = 0;

LAB88:    t5 = t9;

LAB79:    t1 = t5;
    goto LAB76;

LAB77:    t5 = (unsigned char)1;
    goto LAB79;

LAB80:    t21 = 0;

LAB83:    if (t21 < 12U)
        goto LAB84;
    else
        goto LAB82;

LAB84:    t17 = (t13 + t21);
    t18 = (t12 + t21);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB81;

LAB85:    t21 = (t21 + 1);
    goto LAB83;

LAB86:    t28 = 0;

LAB89:    if (t28 < 12U)
        goto LAB90;
    else
        goto LAB88;

LAB90:    t24 = (t22 + t28);
    t25 = (t19 + t28);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB87;

LAB91:    t28 = (t28 + 1);
    goto LAB89;

LAB92:    xsi_set_current_line(56, ng0);
    t26 = (t0 + 6278);
    t30 = (t0 + 2288U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    memcpy(t30, t26, 4U);
    t32 = (t0 + 2232U);
    xsi_variable_act(t32);
    goto LAB12;

LAB94:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t12 = (t0 + 6254);
    t6 = 1;
    if (12U == 12U)
        goto LAB100;

LAB101:    t6 = 0;

LAB102:    if (t6 == 1)
        goto LAB97;

LAB98:    t19 = (t0 + 1512U);
    t22 = *((char **)t19);
    t19 = (t0 + 6266);
    t9 = 1;
    if (12U == 12U)
        goto LAB106;

LAB107:    t9 = 0;

LAB108:    t5 = t9;

LAB99:    t1 = t5;
    goto LAB96;

LAB97:    t5 = (unsigned char)1;
    goto LAB99;

LAB100:    t21 = 0;

LAB103:    if (t21 < 12U)
        goto LAB104;
    else
        goto LAB102;

LAB104:    t17 = (t13 + t21);
    t18 = (t12 + t21);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB101;

LAB105:    t21 = (t21 + 1);
    goto LAB103;

LAB106:    t28 = 0;

LAB109:    if (t28 < 12U)
        goto LAB110;
    else
        goto LAB108;

LAB110:    t24 = (t22 + t28);
    t25 = (t19 + t28);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB107;

LAB111:    t28 = (t28 + 1);
    goto LAB109;

LAB112:    xsi_set_current_line(58, ng0);
    t26 = (t0 + 6306);
    t30 = (t0 + 2288U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    memcpy(t30, t26, 4U);
    t32 = (t0 + 2232U);
    xsi_variable_act(t32);
    goto LAB12;

LAB114:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t12 = (t0 + 6282);
    t6 = 1;
    if (12U == 12U)
        goto LAB120;

LAB121:    t6 = 0;

LAB122:    if (t6 == 1)
        goto LAB117;

LAB118:    t19 = (t0 + 1512U);
    t22 = *((char **)t19);
    t19 = (t0 + 6294);
    t9 = 1;
    if (12U == 12U)
        goto LAB126;

LAB127:    t9 = 0;

LAB128:    t5 = t9;

LAB119:    t1 = t5;
    goto LAB116;

LAB117:    t5 = (unsigned char)1;
    goto LAB119;

LAB120:    t21 = 0;

LAB123:    if (t21 < 12U)
        goto LAB124;
    else
        goto LAB122;

LAB124:    t17 = (t13 + t21);
    t18 = (t12 + t21);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB121;

LAB125:    t21 = (t21 + 1);
    goto LAB123;

LAB126:    t28 = 0;

LAB129:    if (t28 < 12U)
        goto LAB130;
    else
        goto LAB128;

LAB130:    t24 = (t22 + t28);
    t25 = (t19 + t28);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB127;

LAB131:    t28 = (t28 + 1);
    goto LAB129;

LAB132:    xsi_set_current_line(60, ng0);
    t26 = (t0 + 6334);
    t30 = (t0 + 2288U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    memcpy(t30, t26, 4U);
    t32 = (t0 + 2232U);
    xsi_variable_act(t32);
    goto LAB12;

LAB134:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t12 = (t0 + 6310);
    t6 = 1;
    if (12U == 12U)
        goto LAB140;

LAB141:    t6 = 0;

LAB142:    if (t6 == 1)
        goto LAB137;

LAB138:    t19 = (t0 + 1512U);
    t22 = *((char **)t19);
    t19 = (t0 + 6322);
    t9 = 1;
    if (12U == 12U)
        goto LAB146;

LAB147:    t9 = 0;

LAB148:    t5 = t9;

LAB139:    t1 = t5;
    goto LAB136;

LAB137:    t5 = (unsigned char)1;
    goto LAB139;

LAB140:    t21 = 0;

LAB143:    if (t21 < 12U)
        goto LAB144;
    else
        goto LAB142;

LAB144:    t17 = (t13 + t21);
    t18 = (t12 + t21);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB141;

LAB145:    t21 = (t21 + 1);
    goto LAB143;

LAB146:    t28 = 0;

LAB149:    if (t28 < 12U)
        goto LAB150;
    else
        goto LAB148;

LAB150:    t24 = (t22 + t28);
    t25 = (t19 + t28);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB147;

LAB151:    t28 = (t28 + 1);
    goto LAB149;

LAB152:    xsi_set_current_line(62, ng0);
    t26 = (t0 + 6362);
    t30 = (t0 + 2288U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    memcpy(t30, t26, 4U);
    t32 = (t0 + 2232U);
    xsi_variable_act(t32);
    goto LAB12;

LAB154:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t12 = (t0 + 6338);
    t6 = 1;
    if (12U == 12U)
        goto LAB160;

LAB161:    t6 = 0;

LAB162:    if (t6 == 1)
        goto LAB157;

LAB158:    t19 = (t0 + 1512U);
    t22 = *((char **)t19);
    t19 = (t0 + 6350);
    t9 = 1;
    if (12U == 12U)
        goto LAB166;

LAB167:    t9 = 0;

LAB168:    t5 = t9;

LAB159:    t1 = t5;
    goto LAB156;

LAB157:    t5 = (unsigned char)1;
    goto LAB159;

LAB160:    t21 = 0;

LAB163:    if (t21 < 12U)
        goto LAB164;
    else
        goto LAB162;

LAB164:    t17 = (t13 + t21);
    t18 = (t12 + t21);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB161;

LAB165:    t21 = (t21 + 1);
    goto LAB163;

LAB166:    t28 = 0;

LAB169:    if (t28 < 12U)
        goto LAB170;
    else
        goto LAB168;

LAB170:    t24 = (t22 + t28);
    t25 = (t19 + t28);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB167;

LAB171:    t28 = (t28 + 1);
    goto LAB169;

LAB172:    xsi_set_current_line(64, ng0);
    t26 = (t0 + 6390);
    t30 = (t0 + 2288U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    memcpy(t30, t26, 4U);
    t32 = (t0 + 2232U);
    xsi_variable_act(t32);
    goto LAB12;

LAB174:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t12 = (t0 + 6366);
    t6 = 1;
    if (12U == 12U)
        goto LAB180;

LAB181:    t6 = 0;

LAB182:    if (t6 == 1)
        goto LAB177;

LAB178:    t19 = (t0 + 1512U);
    t22 = *((char **)t19);
    t19 = (t0 + 6378);
    t9 = 1;
    if (12U == 12U)
        goto LAB186;

LAB187:    t9 = 0;

LAB188:    t5 = t9;

LAB179:    t1 = t5;
    goto LAB176;

LAB177:    t5 = (unsigned char)1;
    goto LAB179;

LAB180:    t21 = 0;

LAB183:    if (t21 < 12U)
        goto LAB184;
    else
        goto LAB182;

LAB184:    t17 = (t13 + t21);
    t18 = (t12 + t21);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB181;

LAB185:    t21 = (t21 + 1);
    goto LAB183;

LAB186:    t28 = 0;

LAB189:    if (t28 < 12U)
        goto LAB190;
    else
        goto LAB188;

LAB190:    t24 = (t22 + t28);
    t25 = (t19 + t28);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB187;

LAB191:    t28 = (t28 + 1);
    goto LAB189;

LAB192:    xsi_set_current_line(66, ng0);
    t26 = (t0 + 6418);
    t30 = (t0 + 2288U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    memcpy(t30, t26, 4U);
    t32 = (t0 + 2232U);
    xsi_variable_act(t32);
    goto LAB12;

LAB194:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t12 = (t0 + 6394);
    t6 = 1;
    if (12U == 12U)
        goto LAB200;

LAB201:    t6 = 0;

LAB202:    if (t6 == 1)
        goto LAB197;

LAB198:    t19 = (t0 + 1512U);
    t22 = *((char **)t19);
    t19 = (t0 + 6406);
    t9 = 1;
    if (12U == 12U)
        goto LAB206;

LAB207:    t9 = 0;

LAB208:    t5 = t9;

LAB199:    t1 = t5;
    goto LAB196;

LAB197:    t5 = (unsigned char)1;
    goto LAB199;

LAB200:    t21 = 0;

LAB203:    if (t21 < 12U)
        goto LAB204;
    else
        goto LAB202;

LAB204:    t17 = (t13 + t21);
    t18 = (t12 + t21);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB201;

LAB205:    t21 = (t21 + 1);
    goto LAB203;

LAB206:    t28 = 0;

LAB209:    if (t28 < 12U)
        goto LAB210;
    else
        goto LAB208;

LAB210:    t24 = (t22 + t28);
    t25 = (t19 + t28);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB207;

LAB211:    t28 = (t28 + 1);
    goto LAB209;

LAB212:    xsi_set_current_line(68, ng0);
    t26 = (t0 + 6446);
    t30 = (t0 + 2288U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    memcpy(t30, t26, 4U);
    t32 = (t0 + 2232U);
    xsi_variable_act(t32);
    goto LAB12;

LAB214:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t12 = (t0 + 6422);
    t6 = 1;
    if (12U == 12U)
        goto LAB220;

LAB221:    t6 = 0;

LAB222:    if (t6 == 1)
        goto LAB217;

LAB218:    t19 = (t0 + 1512U);
    t22 = *((char **)t19);
    t19 = (t0 + 6434);
    t9 = 1;
    if (12U == 12U)
        goto LAB226;

LAB227:    t9 = 0;

LAB228:    t5 = t9;

LAB219:    t1 = t5;
    goto LAB216;

LAB217:    t5 = (unsigned char)1;
    goto LAB219;

LAB220:    t21 = 0;

LAB223:    if (t21 < 12U)
        goto LAB224;
    else
        goto LAB222;

LAB224:    t17 = (t13 + t21);
    t18 = (t12 + t21);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB221;

LAB225:    t21 = (t21 + 1);
    goto LAB223;

LAB226:    t28 = 0;

LAB229:    if (t28 < 12U)
        goto LAB230;
    else
        goto LAB228;

LAB230:    t24 = (t22 + t28);
    t25 = (t19 + t28);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB227;

LAB231:    t28 = (t28 + 1);
    goto LAB229;

}

static void work_a_3890082097_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6454);
    t4 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6458);
    t4 = 1;
    if (4U == 4U)
        goto LAB13;

LAB14:    t4 = 0;

LAB15:    if (t4 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 4064);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 3856);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(82, ng0);
    t8 = (t0 + 4064);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 4U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(84, ng0);
    t8 = (t0 + 4064);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB3;

LAB13:    t5 = 0;

LAB16:    if (t5 < 4U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB14;

LAB18:    t5 = (t5 + 1);
    goto LAB16;

}


extern void work_a_3890082097_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3890082097_3212880686_p_0,(void *)work_a_3890082097_3212880686_p_1};
	xsi_register_didat("work_a_3890082097_3212880686", "isim/huffman_tb_isim_beh.exe.sim/work/a_3890082097_3212880686.didat");
	xsi_register_executes(pe);
}
